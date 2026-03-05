/// Type of workload for the backup management
enum WorkloadType {
  valueInvalid("Invalid"),
  valueVM("VM"),
  valueFileFolder("FileFolder"),
  valueAzureSqlDb("AzureSqlDb"),
  valueSQLDB("SQLDB"),
  valueExchange("Exchange"),
  valueSharepoint("Sharepoint"),
  valueVMwareVM("VMwareVM"),
  valueSystemState("SystemState"),
  valueClient("Client"),
  valueGenericDataSource("GenericDataSource"),
  valueSQLDataBase("SQLDataBase"),
  valueAzureFileShare("AzureFileShare"),
  valueSAPHanaDatabase("SAPHanaDatabase"),
  valueSAPAseDatabase("SAPAseDatabase"),
  valueSAPHanaDBInstance("SAPHanaDBInstance");

  const WorkloadType(this.wireValue);
  final String wireValue;

  static WorkloadType fromValue(String value) {
    for (final item in WorkloadType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadType value: $value');
  }
}

