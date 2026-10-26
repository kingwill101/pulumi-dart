import 'package:pulumi/pulumi.dart' as pulumi;

/// Requested verifiability options.
enum BuildOptionsRequestedVerifyOption implements pulumi.PulumiEnum<String> {
  notVerified("NOT_VERIFIED"),
  verified("VERIFIED");

  const BuildOptionsRequestedVerifyOption(this.wireValue);
  @override
  final String wireValue;

  static BuildOptionsRequestedVerifyOption fromValue(String value) {
    for (final item in BuildOptionsRequestedVerifyOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuildOptionsRequestedVerifyOption value: $value');
  }
}
