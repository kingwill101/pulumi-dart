// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BatchOperationsJobLoggingConfig {
  /// States in which Action are logged.If empty, no logs are generated.
  /// Possible values include `SUCCEEDED`, `FAILED`.
  /// See [LoggingConfig](https://cloud.google.com/storage/docs/batch-operations/reference/rest/v1/projects.locations.jobs#LoggingConfig) for allowed values.
  final pulumi.Input<List<String>> logActionStates;
  /// Specifies the actions to be logged.
  /// Possible values include `TRANSFORM`.
  /// See [LoggingConfig](https://cloud.google.com/storage/docs/batch-operations/reference/rest/v1/projects.locations.jobs#LoggingConfig) for allowed values.
  final pulumi.Input<List<String>> logActions;

  /// Creates a new [BatchOperationsJobLoggingConfig].
  /// [logActionStates] States in which Action are logged.If empty, no logs are generated.
  /// [logActions] Specifies the actions to be logged.
  const BatchOperationsJobLoggingConfig({
    required this.logActionStates,
    required this.logActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logActionStates': logActionStates,
      'logActions': logActions,
    };
  }

  factory BatchOperationsJobLoggingConfig.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobLoggingConfig(
      logActionStates: pulumi.Input.fromValue((map['logActionStates'] as List).cast<String>()),
      logActions: pulumi.Input.fromValue((map['logActions'] as List).cast<String>()),
    );
  }
}
