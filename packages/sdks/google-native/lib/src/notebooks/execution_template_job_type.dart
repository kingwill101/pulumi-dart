/// The type of Job to be used on this execution.
enum ExecutionTemplateJobType {
  jobTypeUnspecified("JOB_TYPE_UNSPECIFIED"),
  vertexAi("VERTEX_AI"),
  dataproc("DATAPROC");

  const ExecutionTemplateJobType(this.value);
  final String value;

  static ExecutionTemplateJobType fromValue(String value) {
    for (final item in ExecutionTemplateJobType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExecutionTemplateJobType value: $value');
  }
}

