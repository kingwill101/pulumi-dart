/// The name of the SKU.
enum WorkspaceSkuNameEnum {
  valueFree("Free"),
  valueStandard("Standard"),
  valuePremium("Premium"),
  valuePerNode("PerNode"),
  valuePerGB2018("PerGB2018"),
  valueStandalone("Standalone"),
  valueCapacityReservation("CapacityReservation"),
  valueLACluster("LACluster");

  const WorkspaceSkuNameEnum(this.wireValue);
  final String wireValue;

  static WorkspaceSkuNameEnum fromValue(String value) {
    for (final item in WorkspaceSkuNameEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkspaceSkuNameEnum value: $value');
  }
}

