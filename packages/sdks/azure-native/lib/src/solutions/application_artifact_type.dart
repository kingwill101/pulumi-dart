import 'package:pulumi/pulumi.dart' as pulumi;

/// The managed application definition artifact type.
enum ApplicationArtifactType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueTemplate("Template"),
  valueCustom("Custom");

  const ApplicationArtifactType(this.wireValue);
  @override
  final String wireValue;

  static ApplicationArtifactType fromValue(String value) {
    for (final item in ApplicationArtifactType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationArtifactType value: $value');
  }
}
