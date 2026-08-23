enum JobJobBenefitsItemJobsV4 {
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

  const JobJobBenefitsItemJobsV4(this.wireValue);
  final String wireValue;

  static JobJobBenefitsItemJobsV4 fromValue(String value) {
    for (final item in JobJobBenefitsItemJobsV4.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobJobBenefitsItemJobsV4 value: $value');
  }
}
