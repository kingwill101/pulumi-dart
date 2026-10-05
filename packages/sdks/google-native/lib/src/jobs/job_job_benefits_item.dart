import 'package:pulumi/pulumi.dart' as pulumi;

enum JobJobBenefitsItem implements pulumi.PulumiEnum<String> {
  jobBenefitUnspecified("JOB_BENEFIT_UNSPECIFIED"),
  childCare("CHILD_CARE"),
  dental("DENTAL"),
  domesticPartner("DOMESTIC_PARTNER"),
  flexibleHours("FLEXIBLE_HOURS"),
  medical("MEDICAL"),
  lifeInsurance("LIFE_INSURANCE"),
  parentalLeave("PARENTAL_LEAVE"),
  retirementPlan("RETIREMENT_PLAN"),
  sickDays("SICK_DAYS"),
  vacation("VACATION"),
  vision("VISION");

  const JobJobBenefitsItem(this.wireValue);
  @override
  final String wireValue;

  static JobJobBenefitsItem fromValue(String value) {
    for (final item in JobJobBenefitsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobJobBenefitsItem value: $value');
  }
}
