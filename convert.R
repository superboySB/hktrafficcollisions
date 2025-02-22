library(fst)
library(arrow)  # 用于保存parquet格式

# 读取fst文件
collisions <- read_fst("./inst/app/data/hk_casualties.fst")
vehicles <- read_fst("./inst/app/data/hk_casualties.fst")
casualties <- read_fst("./inst/app/data/hk_casualties.fst")

# 显示数据基本信息
print("Data summary:")
print(paste("collisions:", dim(collisions)[1], "rows,", dim(collisions)[2], "columns"))
print(paste("vehicles:", dim(vehicles)[1], "rows,", dim(vehicles)[2], "columns"))
print(paste("casualties:", dim(casualties)[1], "rows,", dim(casualties)[2], "columns"))

# # 保存为parquet格式
# write_parquet(collisions, "./data/hk_collisions.parquet")
# write_parquet(vehicles, "./data/hk_vehicles.parquet")
# write_parquet(casualties, "./data/hk_casualties.parquet")

# 或保存为csv格式
write.csv(collisions, "./inst/app/data/hk_casualties.csv", row.names = True)
write.csv(vehicles, "./inst/app/data/hk_casualties.csv", row.names = True)
write.csv(casualties, "./inst/app/data/hk_casualties.csv", row.names = True)