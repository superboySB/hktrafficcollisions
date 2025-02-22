library(fst)
library(arrow)  # 用于保存parquet格式

# 读取fst文件
collisions <- read_fst("./inst/app/data/hk_casualties.fst")
vehicles <- read_fst("./inst/app/data/hk_casualties.fst")
casualties <- read_fst("./inst/app/data/hk_casualties.fst")

# # 保存为parquet格式
# write_parquet(collisions, "./data/hk_collisions.parquet")
# write_parquet(vehicles, "./data/hk_vehicles.parquet")
# write_parquet(casualties, "./data/hk_casualties.parquet")

# 或保存为csv格式
write.csv(collisions, "./inst/app/data/hk_casualties.csv", row.names = FALSE)
write.csv(vehicles, "./inst/app/data/hk_casualties.csv", row.names = FALSE)
write.csv(casualties, "./inst/app/data/hk_casualties.csv", row.names = FALSE)