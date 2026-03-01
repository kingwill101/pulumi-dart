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

  const CompanySize(this.value);
  final String value;

  static CompanySize fromValue(String value) {
    for (final item in CompanySize.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompanySize value: $value');
  }
}

