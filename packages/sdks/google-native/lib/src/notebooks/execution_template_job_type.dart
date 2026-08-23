/// The type of Job to be used on this execution.
enum ExecutionTemplateJobType {
  jobTypeUnspecified("JOB_TYPE_UNSPECIFIED"),
  vertexAi("VERTEX_AI"),
  dataproc("DATAPROC");

  const ExecutionTemplateJobType(this.wireValue);
  final String wireValue;

  static ExecutionTemplateJobType fromValue(String value) {
    for (final item in ExecutionTemplateJobType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExecutionTemplateJobType value: $value');
  }
}
