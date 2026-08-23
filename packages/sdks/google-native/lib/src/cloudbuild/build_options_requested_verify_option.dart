/// Requested verifiability options.
enum BuildOptionsRequestedVerifyOption {
  notVerified("NOT_VERIFIED"),
  verified("VERIFIED");

  const BuildOptionsRequestedVerifyOption(this.wireValue);
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
