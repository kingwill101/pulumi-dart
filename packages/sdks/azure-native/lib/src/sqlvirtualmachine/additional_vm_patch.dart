/// Additional Patch to be enable or enabled on the SQL Virtual Machine.
enum AdditionalVmPatch {
  notSet("NotSet"),
  microsoftUpdate("MicrosoftUpdate");

  const AdditionalVmPatch(this.wireValue);
  final String wireValue;

  static AdditionalVmPatch fromValue(String value) {
    for (final item in AdditionalVmPatch.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdditionalVmPatch value: $value');
  }
}

