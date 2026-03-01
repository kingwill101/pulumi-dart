/// The employer's company size.
enum CompanySizeJobsV4 {
  companySizeUnspecified("COMPANY_SIZE_UNSPECIFIED"),
  mini("MINI"),
  small("SMALL"),
  smedium("SMEDIUM"),
  medium("MEDIUM"),
  big("BIG"),
  bigger("BIGGER"),
  giant("GIANT");

  const CompanySizeJobsV4(this.value);
  final String value;

  static CompanySizeJobsV4 fromValue(String value) {
    for (final item in CompanySizeJobsV4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompanySizeJobsV4 value: $value');
  }
}

