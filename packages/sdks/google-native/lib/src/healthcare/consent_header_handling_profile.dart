/// Optional. Specifies the default server behavior when the header is empty. If not specified, the `ScopeProfile.PERMIT_EMPTY_SCOPE` option is used.
enum ConsentHeaderHandlingProfile {
  scopeProfileUnspecified("SCOPE_PROFILE_UNSPECIFIED"),
  permitEmptyScope("PERMIT_EMPTY_SCOPE"),
  requiredOnRead("REQUIRED_ON_READ");

  const ConsentHeaderHandlingProfile(this.value);
  final String value;

  static ConsentHeaderHandlingProfile fromValue(String value) {
    for (final item in ConsentHeaderHandlingProfile.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConsentHeaderHandlingProfile value: $value');
  }
}

