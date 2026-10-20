import 'package:pulumi/pulumi.dart' as pulumi;

/// The employer's company size.
enum CompanySizeJobsV4 implements pulumi.PulumiEnum<String> {
  companySizeUnspecified("COMPANY_SIZE_UNSPECIFIED"),
  mini("MINI"),
  small("SMALL"),
  smedium("SMEDIUM"),
  medium("MEDIUM"),
  big("BIG"),
  bigger("BIGGER"),
  giant("GIANT");

  const CompanySizeJobsV4(this.wireValue);
  @override
  final String wireValue;

  static CompanySizeJobsV4 fromValue(String value) {
    for (final item in CompanySizeJobsV4.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompanySizeJobsV4 value: $value');
  }
}
