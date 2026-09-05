import 'package:pulumi/pulumi.dart' as pulumi;

/// The version of the Docker builder.
enum BuilderVersion implements pulumi.PulumiEnum<String> {
  builderV1("BuilderV1"),
  builderBuildKit("BuilderBuildKit");

  const BuilderVersion(this.wireValue);
  @override
  final String wireValue;

  static BuilderVersion fromValue(String value) {
    for (final item in BuilderVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuilderVersion value: $value');
  }
}
