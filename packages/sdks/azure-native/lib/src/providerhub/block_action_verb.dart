import 'package:pulumi/pulumi.dart' as pulumi;

/// The action verb that will be blocked when the resource group is locked during move.
enum BlockActionVerb implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  read("Read"),
  write("Write"),
  action("Action"),
  delete("Delete"),
  unrecognized("Unrecognized");

  const BlockActionVerb(this.wireValue);
  @override
  final String wireValue;

  static BlockActionVerb fromValue(String value) {
    for (final item in BlockActionVerb.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BlockActionVerb value: $value');
  }
}
