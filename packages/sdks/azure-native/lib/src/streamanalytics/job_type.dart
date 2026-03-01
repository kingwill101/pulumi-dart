/// Describes the type of the job. Valid modes are `Cloud` and 'Edge'.
enum JobType {
  valueCloud("Cloud"),
  valueEdge("Edge");

  const JobType(this.value);
  final String value;

  static JobType fromValue(String value) {
    for (final item in JobType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobType value: $value');
  }
}

