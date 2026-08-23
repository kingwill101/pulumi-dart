/// Optional. The employer's company size.
enum CompanySize {
  companySizeUnspecified("COMPANY_SIZE_UNSPECIFIED"),
  mini("MINI"),
  small("SMALL"),
  smedium("SMEDIUM"),
  medium("MEDIUM"),
  big("BIG"),
  bigger("BIGGER"),
  giant("GIANT");

  const CompanySize(this.wireValue);
  final String wireValue;

  static CompanySize fromValue(String value) {
    for (final item in CompanySize.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompanySize value: $value');
  }
}
