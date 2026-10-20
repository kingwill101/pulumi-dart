import 'package:pulumi/pulumi.dart' as pulumi;

/// URI Override Enforce Mode When specified, determines the Target UriOverride mode. If not specified, it defaults to ALWAYS.
enum UriOverrideUriOverrideEnforceModeCloudtasksV2beta2 implements pulumi.PulumiEnum<String> {
  uriOverrideEnforceModeUnspecified("URI_OVERRIDE_ENFORCE_MODE_UNSPECIFIED"),
  ifNotExists("IF_NOT_EXISTS"),
  always("ALWAYS");

  const UriOverrideUriOverrideEnforceModeCloudtasksV2beta2(this.wireValue);
  @override
  final String wireValue;

  static UriOverrideUriOverrideEnforceModeCloudtasksV2beta2 fromValue(String value) {
    for (final item in UriOverrideUriOverrideEnforceModeCloudtasksV2beta2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UriOverrideUriOverrideEnforceModeCloudtasksV2beta2 value: $value');
  }
}
