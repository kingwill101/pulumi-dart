/// Option to specify behavior when there is an error in the substitution checks. NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden in the build configuration file.
enum BuildOptionsSubstitutionOption {
  mustMatch("MUST_MATCH"),
  allowLoose("ALLOW_LOOSE");

  const BuildOptionsSubstitutionOption(this.wireValue);
  final String wireValue;

  static BuildOptionsSubstitutionOption fromValue(String value) {
    for (final item in BuildOptionsSubstitutionOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuildOptionsSubstitutionOption value: $value');
  }
}
