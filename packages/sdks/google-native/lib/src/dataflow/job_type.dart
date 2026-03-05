/// The type of Cloud Dataflow job.
enum JobType {
  jobTypeUnknown("JOB_TYPE_UNKNOWN"),
  jobTypeBatch("JOB_TYPE_BATCH"),
  jobTypeStreaming("JOB_TYPE_STREAMING");

  const JobType(this.wireValue);
  final String wireValue;

  static JobType fromValue(String value) {
    for (final item in JobType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobType value: $value');
  }
}

