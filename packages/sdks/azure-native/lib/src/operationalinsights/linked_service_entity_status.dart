/// The provisioning state of the linked service.
enum LinkedServiceEntityStatus {
  valueSucceeded("Succeeded"),
  valueDeleting("Deleting"),
  valueProvisioningAccount("ProvisioningAccount"),
  valueUpdating("Updating");

  const LinkedServiceEntityStatus(this.wireValue);
  final String wireValue;

  static LinkedServiceEntityStatus fromValue(String value) {
    for (final item in LinkedServiceEntityStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinkedServiceEntityStatus value: $value');
  }
}

