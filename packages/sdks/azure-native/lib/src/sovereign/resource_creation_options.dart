/// Parameter used to deploy a log analytics workspace: Select 'Yes' to enable deployment, 'No' to skip it, or 'Existing' to reuse an existing log analytics workspace.
enum ResourceCreationOptions {
  yes("Yes"),
  no("No"),
  useExisting("UseExisting");

  const ResourceCreationOptions(this.wireValue);
  final String wireValue;

  static ResourceCreationOptions fromValue(String value) {
    for (final item in ResourceCreationOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceCreationOptions value: $value');
  }
}

