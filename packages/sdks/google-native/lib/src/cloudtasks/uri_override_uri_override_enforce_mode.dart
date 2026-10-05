import 'package:pulumi/pulumi.dart' as pulumi;

/// URI Override Enforce Mode When specified, determines the Target UriOverride mode. If not specified, it defaults to ALWAYS.
enum UriOverrideUriOverrideEnforceMode implements pulumi.PulumiEnum<String> {
  uriOverrideEnforceModeUnspecified("URI_OVERRIDE_ENFORCE_MODE_UNSPECIFIED"),
  ifNotExists("IF_NOT_EXISTS"),
  always("ALWAYS");

  const UriOverrideUriOverrideEnforceMode(this.wireValue);
  @override
  final String wireValue;

  static UriOverrideUriOverrideEnforceMode fromValue(String value) {
    for (final item in UriOverrideUriOverrideEnforceMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UriOverrideUriOverrideEnforceMode value: $value');
  }
}
