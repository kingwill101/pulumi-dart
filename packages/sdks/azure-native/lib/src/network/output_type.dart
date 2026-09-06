import 'package:pulumi/pulumi.dart' as pulumi;

/// Connection monitor output destination type. Currently, only "Workspace" is supported.
enum OutputType implements pulumi.PulumiEnum<String> {
  valueWorkspace("Workspace");

  const OutputType(this.wireValue);
  @override
  final String wireValue;

  static OutputType fromValue(String value) {
    for (final item in OutputType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OutputType value: $value');
  }
}
