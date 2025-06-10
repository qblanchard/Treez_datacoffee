# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "5d3cd10c-bf25-49a3-a2bb-a0ea75aacee1",
# META       "default_lakehouse_name": "ADLSToLakehouse",
# META       "default_lakehouse_workspace_id": "45a3ad81-8aa8-4019-8235-501678c74f60",
# META       "known_lakehouses": [
# META         {
# META           "id": "5d3cd10c-bf25-49a3-a2bb-a0ea75aacee1"
# META         }
# META       ]
# META     }
# META   }
# META }

# CELL ********************


df = spark.read.format("csv").load(f"Files/fabrictest/TABLE_ANALYSES.csv")
df.show(10)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark",
# META   "editable": true
# META }

# CELL ********************

storage_account = "adlsfabrictesttreez"


# write
df.write.format("delta").mode("overwrite").save(f"abfss://45a3ad81-8aa8-4019-8235-501678c74f60@onelake.dfs.fabric.microsoft.com/5d3cd10c-bf25-49a3-a2bb-a0ea75aacee1/Files/fabrictest/Delta")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
