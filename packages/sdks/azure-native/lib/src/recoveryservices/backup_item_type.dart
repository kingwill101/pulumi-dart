import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of backup items associated with this container.
enum BackupItemType implements pulumi.PulumiEnum<String> {
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

  const BackupItemType(this.wireValue);
  @override
  final String wireValue;

  static BackupItemType fromValue(String value) {
    for (final item in BackupItemType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupItemType value: $value');
  }
}
