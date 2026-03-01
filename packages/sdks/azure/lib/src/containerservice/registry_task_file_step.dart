// ignore_for_file: unused_element, unnecessary_cast


class RegistryTaskFileStep {
  /// The token (Git PAT or SAS token of storage account blob) associated with the context for this step.
  final String? contextAccessToken;
  /// The URL (absolute or relative) of the source context for this step.
  final String? contextPath;
  /// Specifies a map of secret values that can be passed when running a task.
  final Map<String, String>? secretValues;
  /// The task template file path relative to the source context.
  final String taskFilePath;
  /// The parameters file path relative to the source context.
  final String? valueFilePath;
  /// Specifies a map of values that can be passed when running a task.
  final Map<String, String>? values;

  /// Creates a new [RegistryTaskFileStep].
  /// [contextAccessToken] The token (Git PAT or SAS token of storage account blob) associated with the context for this step.
  /// [contextPath] The URL (absolute or relative) of the source context for this step.
  /// [secretValues] Specifies a map of secret values that can be passed when running a task.
  /// [taskFilePath] The task template file path relative to the source context.
  /// [valueFilePath] The parameters file path relative to the source context.
  /// [values] Specifies a map of values that can be passed when running a task.
  RegistryTaskFileStep({
    this.contextAccessToken,
    this.contextPath,
    this.secretValues,
    required this.taskFilePath,
    this.valueFilePath,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextAccessToken': ?contextAccessToken,
      'contextPath': ?contextPath,
      'secretValues': ?secretValues,
      'taskFilePath': taskFilePath,
      'valueFilePath': ?valueFilePath,
      'values': ?values,
    };
  }

  factory RegistryTaskFileStep.fromMap(Map<String, dynamic> map) {
    return RegistryTaskFileStep(
      contextAccessToken: map['contextAccessToken'] == null ? null : map['contextAccessToken'] as String,
      contextPath: map['contextPath'] == null ? null : map['contextPath'] as String,
      secretValues: map['secretValues'] == null ? null : (map['secretValues'] as Map).cast<String, String>(),
      taskFilePath: map['taskFilePath'] as String,
      valueFilePath: map['valueFilePath'] == null ? null : map['valueFilePath'] as String,
      values: map['values'] == null ? null : (map['values'] as Map).cast<String, String>(),
    );
  }
}

