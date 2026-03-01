/// Optional. The experience level associated with the job, such as "Entry Level".
enum JobJobLevel {
  jobLevelUnspecified("JOB_LEVEL_UNSPECIFIED"),
  entryLevel("ENTRY_LEVEL"),
  experienced("EXPERIENCED"),
  manager("MANAGER"),
  director("DIRECTOR"),
  executive("EXECUTIVE");

  const JobJobLevel(this.value);
  final String value;

  static JobJobLevel fromValue(String value) {
    for (final item in JobJobLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobJobLevel value: $value');
  }
}

