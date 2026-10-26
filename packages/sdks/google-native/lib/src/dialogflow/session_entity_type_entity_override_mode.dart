import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Indicates whether the additional data should override or supplement the custom entity type definition.
enum SessionEntityTypeEntityOverrideMode implements pulumi.PulumiEnum<String> {
  entityOverrideModeUnspecified("ENTITY_OVERRIDE_MODE_UNSPECIFIED"),
  entityOverrideModeOverride("ENTITY_OVERRIDE_MODE_OVERRIDE"),
  entityOverrideModeSupplement("ENTITY_OVERRIDE_MODE_SUPPLEMENT");

  const SessionEntityTypeEntityOverrideMode(this.wireValue);
  @override
  final String wireValue;

  static SessionEntityTypeEntityOverrideMode fromValue(String value) {
    for (final item in SessionEntityTypeEntityOverrideMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionEntityTypeEntityOverrideMode value: $value');
  }
}
