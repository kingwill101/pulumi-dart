/// Workload item type of the item for which intent is to be set
enum WorkloadItemType {
  valueInvalid("Invalid"),
  valueSQLInstance("SQLInstance"),
  valueSQLDataBase("SQLDataBase"),
  valueSAPHanaSystem("SAPHanaSystem"),
  valueSAPHanaDatabase("SAPHanaDatabase"),
  valueSAPAseSystem("SAPAseSystem"),
  valueSAPAseDatabase("SAPAseDatabase"),
  valueSAPHanaDBInstance("SAPHanaDBInstance");

  const WorkloadItemType(this.wireValue);
  final String wireValue;

  static WorkloadItemType fromValue(String value) {
    for (final item in WorkloadItemType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadItemType value: $value');
  }
}
