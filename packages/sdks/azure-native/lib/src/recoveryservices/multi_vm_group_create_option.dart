import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether Multi VM group is auto created or specified by user.
enum MultiVmGroupCreateOption implements pulumi.PulumiEnum<String> {
  valueAutoCreated("AutoCreated"),
  valueUserSpecified("UserSpecified");

  const MultiVmGroupCreateOption(this.wireValue);
  @override
  final String wireValue;

  static MultiVmGroupCreateOption fromValue(String value) {
    for (final item in MultiVmGroupCreateOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MultiVmGroupCreateOption value: $value');
  }
}
