enum JobEmploymentTypesItemJobsV4 {
  employmentTypeUnspecified("EMPLOYMENT_TYPE_UNSPECIFIED"),
  fullTime("FULL_TIME"),
  partTime("PART_TIME"),
  contractor("CONTRACTOR"),
  contractToHire("CONTRACT_TO_HIRE"),
  temporary("TEMPORARY"),
  intern("INTERN"),
  volunteer("VOLUNTEER"),
  perDiem("PER_DIEM"),
  flyInFlyOut("FLY_IN_FLY_OUT"),
  otherEmploymentType("OTHER_EMPLOYMENT_TYPE");

  const JobEmploymentTypesItemJobsV4(this.wireValue);
  final String wireValue;

  static JobEmploymentTypesItemJobsV4 fromValue(String value) {
    for (final item in JobEmploymentTypesItemJobsV4.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobEmploymentTypesItemJobsV4 value: $value');
  }
}
