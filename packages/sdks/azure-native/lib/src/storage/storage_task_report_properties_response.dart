// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage task execution report for a run instance.
class StorageTaskReportPropertiesResponse {
  /// End time of the run instance. Filter options such as startTime gt '2023-06-26T20:51:24.4494016Z' and other comparison operators can be used as described for DateTime properties in https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#supported-comparison-operators
  final pulumi.Input<String> finishTime;
  /// Total number of objects where task operation failed when was attempted. Filter options such as objectFailedCount eq 0 and other comparison operators can be used as described for Numerical properties in https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#supported-comparison-operators
  final pulumi.Input<String> objectFailedCount;
  /// Total number of objects that meet the storage tasks condition and were operated upon. Filter options such as objectsOperatedOnCount ge 100 and other comparison operators can be used as described for Numerical properties in https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#supported-comparison-operators
  final pulumi.Input<String> objectsOperatedOnCount;
  /// Total number of objects where task operation succeeded when was attempted.Filter options such as objectsSucceededCount gt 150 and other comparison operators can be used as described for Numerical properties in https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#supported-comparison-operators
  final pulumi.Input<String> objectsSucceededCount;
  /// Total number of objects that meet the condition as defined in the storage task assignment execution context. Filter options such as objectsTargetedCount gt 50 and other comparison operators can be used as described for Numerical properties in https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#supported-comparison-operators
  final pulumi.Input<String> objectsTargetedCount;
  /// Represents the overall result of the execution for the run instance
  final pulumi.Input<String> runResult;
  /// Represents the status of the execution.
  final pulumi.Input<String> runStatusEnum;
  /// Well known Azure Storage error code that represents the error encountered during execution of the run instance.
  final pulumi.Input<String> runStatusError;
  /// Start time of the run instance. Filter options such as startTime gt '2023-06-26T20:51:24.4494016Z' and other comparison operators can be used as described for DateTime properties in https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#supported-comparison-operators
  final pulumi.Input<String> startTime;
  /// Represents the Storage Account Id where the storage task definition was applied and executed.
  final pulumi.Input<String> storageAccountId;
  /// Full path to the verbose report stored in the reporting container as specified in the assignment execution context for the storage account.
  final pulumi.Input<String> summaryReportPath;
  /// Represents the Storage Task Assignment Id associated with the storage task that provided an execution context.
  final pulumi.Input<String> taskAssignmentId;
  /// Storage Task Arm Id.
  final pulumi.Input<String> taskId;
  /// Storage Task Version
  final pulumi.Input<String> taskVersion;

  /// Creates a new [StorageTaskReportPropertiesResponse].
  /// [finishTime] End time of the run instance. Filter options such as startTime gt '2023-06-26T20:51:24.4494016Z' and other comparison operators can be used as described for DateTime properties in https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#supported-comparison-operators
  /// [objectFailedCount] Total number of objects where task operation failed when was attempted. Filter options such as objectFailedCount eq 0 and other comparison operators can be used as described for Numerical properties in https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#supported-comparison-operators
  /// [objectsOperatedOnCount] Total number of objects that meet the storage tasks condition and were operated upon. Filter options such as objectsOperatedOnCount ge 100 and other comparison operators can be used as described for Numerical properties in https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#supported-comparison-operators
  /// [objectsSucceededCount] Total number of objects where task operation succeeded when was attempted.Filter options such as objectsSucceededCount gt 150 and other comparison operators can be used as described for Numerical properties in https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#supported-comparison-operators
  /// [objectsTargetedCount] Total number of objects that meet the condition as defined in the storage task assignment execution context. Filter options such as objectsTargetedCount gt 50 and other comparison operators can be used as described for Numerical properties in https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#supported-comparison-operators
  /// [runResult] Represents the overall result of the execution for the run instance
  /// [runStatusEnum] Represents the status of the execution.
  /// [runStatusError] Well known Azure Storage error code that represents the error encountered during execution of the run instance.
  /// [startTime] Start time of the run instance. Filter options such as startTime gt '2023-06-26T20:51:24.4494016Z' and other comparison operators can be used as described for DateTime properties in https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#supported-comparison-operators
  /// [storageAccountId] Represents the Storage Account Id where the storage task definition was applied and executed.
  /// [summaryReportPath] Full path to the verbose report stored in the reporting container as specified in the assignment execution context for the storage account.
  /// [taskAssignmentId] Represents the Storage Task Assignment Id associated with the storage task that provided an execution context.
  /// [taskId] Storage Task Arm Id.
  /// [taskVersion] Storage Task Version
  StorageTaskReportPropertiesResponse({
    required this.finishTime,
    required this.objectFailedCount,
    required this.objectsOperatedOnCount,
    required this.objectsSucceededCount,
    required this.objectsTargetedCount,
    required this.runResult,
    required this.runStatusEnum,
    required this.runStatusError,
    required this.startTime,
    required this.storageAccountId,
    required this.summaryReportPath,
    required this.taskAssignmentId,
    required this.taskId,
    required this.taskVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'finishTime': finishTime,
      'objectFailedCount': objectFailedCount,
      'objectsOperatedOnCount': objectsOperatedOnCount,
      'objectsSucceededCount': objectsSucceededCount,
      'objectsTargetedCount': objectsTargetedCount,
      'runResult': runResult,
      'runStatusEnum': runStatusEnum,
      'runStatusError': runStatusError,
      'startTime': startTime,
      'storageAccountId': storageAccountId,
      'summaryReportPath': summaryReportPath,
      'taskAssignmentId': taskAssignmentId,
      'taskId': taskId,
      'taskVersion': taskVersion,
    };
  }

  factory StorageTaskReportPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StorageTaskReportPropertiesResponse(
      finishTime: pulumi.Input.fromValue(map['finishTime'] as String),
      objectFailedCount: pulumi.Input.fromValue(map['objectFailedCount'] as String),
      objectsOperatedOnCount: pulumi.Input.fromValue(map['objectsOperatedOnCount'] as String),
      objectsSucceededCount: pulumi.Input.fromValue(map['objectsSucceededCount'] as String),
      objectsTargetedCount: pulumi.Input.fromValue(map['objectsTargetedCount'] as String),
      runResult: pulumi.Input.fromValue(map['runResult'] as String),
      runStatusEnum: pulumi.Input.fromValue(map['runStatusEnum'] as String),
      runStatusError: pulumi.Input.fromValue(map['runStatusError'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
      summaryReportPath: pulumi.Input.fromValue(map['summaryReportPath'] as String),
      taskAssignmentId: pulumi.Input.fromValue(map['taskAssignmentId'] as String),
      taskId: pulumi.Input.fromValue(map['taskId'] as String),
      taskVersion: pulumi.Input.fromValue(map['taskVersion'] as String),
    );
  }
}

