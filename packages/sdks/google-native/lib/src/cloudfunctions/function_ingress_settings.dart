import 'package:pulumi/pulumi.dart' as pulumi;

/// The ingress settings for the function, controlling what traffic can reach it.
enum FunctionIngressSettings implements pulumi.PulumiEnum<String> {
  ingressSettingsUnspecified("INGRESS_SETTINGS_UNSPECIFIED"),
  allowAll("ALLOW_ALL"),
  allowInternalOnly("ALLOW_INTERNAL_ONLY"),
  allowInternalAndGclb("ALLOW_INTERNAL_AND_GCLB");

  const FunctionIngressSettings(this.wireValue);
  @override
  final String wireValue;

  static FunctionIngressSettings fromValue(String value) {
    for (final item in FunctionIngressSettings.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FunctionIngressSettings value: $value');
  }
}
