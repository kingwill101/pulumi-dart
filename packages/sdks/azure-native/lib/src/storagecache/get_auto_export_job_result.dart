// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAutoExportJob.
class GetAutoExportJobResult {
  /// The administrative status of the auto export job. Possible values: 'Enable', 'Disable'. Passing in a value of 'Disable' will disable the current active auto export job. By default it is set to 'Enable'.
  final String? adminStatus;
  /// An array of blob paths/prefixes that get auto exported to the cluster namespace. It has '/' as the default value. Number of maximum allowed paths for now is 1.
  final List<String>? autoExportPrefixes;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Files discovered for export in current iteration. It may increase while more export items are found.
  final double currentIterationFilesDiscovered;
  /// Files that have been exported in current iteration.
  final double currentIterationFilesExported;
  /// Files failed to export in current iteration.
  final double currentIterationFilesFailed;
  /// Data (in MiB) discovered for export in current iteration. It may increase while more export items are found.
  final double currentIterationMiBDiscovered;
  /// Data (in MiB) that have been exported in current iteration.
  final double currentIterationMiBExported;
  /// Number of iterations completed since the start of the export.
  final int exportIterationCount;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The time (in UTC) of the last completed auto export job.
  final String lastCompletionTimeUTC;
  /// The time (in UTC) the latest auto export job started.
  final String lastStartedTimeUTC;
  /// Time (in UTC) of the last successfully completed export iteration. Look at logging container for details.
  final String lastSuccessfulIterationCompletionTimeUTC;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// ARM provisioning state.
  final String provisioningState;
  /// The operational state of auto export. InProgress indicates the export is running.  Disabling indicates the user has requested to disable the export but the disabling is still in progress. Disabled indicates auto export has been disabled.  DisableFailed indicates the disabling has failed.  Failed means the export was unable to continue, due to a fatal error.
  final String? state;
  /// Server-defined status code for auto export job.
  final String statusCode;
  /// Server-defined status message for auto export job.
  final String statusMessage;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Total files exported since the start of the export. This is accumulative, some files may be counted repeatedly.
  final double totalFilesExported;
  /// Total files failed to be export since the last successfully completed iteration. This is accumulative, some files may be counted repeatedly.
  final double totalFilesFailed;
  /// Total data (in MiB) exported since the start of the export. This is accumulative, some files may be counted repeatedly.
  final double totalMiBExported;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAutoExportJobResult].
  /// [adminStatus] The administrative status of the auto export job. Possible values: 'Enable', 'Disable'. Passing in a value of 'Disable' will disable the current active auto export job. By default it is set to 'Enable'.
  /// [autoExportPrefixes] An array of blob paths/prefixes that get auto exported to the cluster namespace. It has '/' as the default value. Number of maximum allowed paths for now is 1.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [currentIterationFilesDiscovered] Files discovered for export in current iteration. It may increase while more export items are found.
  /// [currentIterationFilesExported] Files that have been exported in current iteration.
  /// [currentIterationFilesFailed] Files failed to export in current iteration.
  /// [currentIterationMiBDiscovered] Data (in MiB) discovered for export in current iteration. It may increase while more export items are found.
  /// [currentIterationMiBExported] Data (in MiB) that have been exported in current iteration.
  /// [exportIterationCount] Number of iterations completed since the start of the export.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [lastCompletionTimeUTC] The time (in UTC) of the last completed auto export job.
  /// [lastStartedTimeUTC] The time (in UTC) the latest auto export job started.
  /// [lastSuccessfulIterationCompletionTimeUTC] Time (in UTC) of the last successfully completed export iteration. Look at logging container for details.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] ARM provisioning state.
  /// [state] The operational state of auto export. InProgress indicates the export is running.  Disabling indicates the user has requested to disable the export but the disabling is still in progress. Disabled indicates auto export has been disabled.  DisableFailed indicates the disabling has failed.  Failed means the export was unable to continue, due to a fatal error.
  /// [statusCode] Server-defined status code for auto export job.
  /// [statusMessage] Server-defined status message for auto export job.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [totalFilesExported] Total files exported since the start of the export. This is accumulative, some files may be counted repeatedly.
  /// [totalFilesFailed] Total files failed to be export since the last successfully completed iteration. This is accumulative, some files may be counted repeatedly.
  /// [totalMiBExported] Total data (in MiB) exported since the start of the export. This is accumulative, some files may be counted repeatedly.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAutoExportJobResult({
    this.adminStatus,
    this.autoExportPrefixes,
    required this.azureApiVersion,
    required this.currentIterationFilesDiscovered,
    required this.currentIterationFilesExported,
    required this.currentIterationFilesFailed,
    required this.currentIterationMiBDiscovered,
    required this.currentIterationMiBExported,
    required this.exportIterationCount,
    required this.id,
    required this.lastCompletionTimeUTC,
    required this.lastStartedTimeUTC,
    required this.lastSuccessfulIterationCompletionTimeUTC,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.state,
    required this.statusCode,
    required this.statusMessage,
    required this.systemData,
    this.tags,
    required this.totalFilesExported,
    required this.totalFilesFailed,
    required this.totalMiBExported,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStatus': ?adminStatus,
      'autoExportPrefixes': ?autoExportPrefixes,
      'azureApiVersion': azureApiVersion,
      'currentIterationFilesDiscovered': currentIterationFilesDiscovered,
      'currentIterationFilesExported': currentIterationFilesExported,
      'currentIterationFilesFailed': currentIterationFilesFailed,
      'currentIterationMiBDiscovered': currentIterationMiBDiscovered,
      'currentIterationMiBExported': currentIterationMiBExported,
      'exportIterationCount': exportIterationCount,
      'id': id,
      'lastCompletionTimeUTC': lastCompletionTimeUTC,
      'lastStartedTimeUTC': lastStartedTimeUTC,
      'lastSuccessfulIterationCompletionTimeUTC': lastSuccessfulIterationCompletionTimeUTC,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'state': ?state,
      'statusCode': statusCode,
      'statusMessage': statusMessage,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'totalFilesExported': totalFilesExported,
      'totalFilesFailed': totalFilesFailed,
      'totalMiBExported': totalMiBExported,
      'type': type,
    };
  }

  factory GetAutoExportJobResult.fromMap(Map<String, dynamic> map) {
    return GetAutoExportJobResult(
      adminStatus: map['adminStatus'] == null ? null : map['adminStatus'] as String,
      autoExportPrefixes: map['autoExportPrefixes'] == null ? null : (map['autoExportPrefixes'] as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      currentIterationFilesDiscovered: map['currentIterationFilesDiscovered'] as double,
      currentIterationFilesExported: map['currentIterationFilesExported'] as double,
      currentIterationFilesFailed: map['currentIterationFilesFailed'] as double,
      currentIterationMiBDiscovered: map['currentIterationMiBDiscovered'] as double,
      currentIterationMiBExported: map['currentIterationMiBExported'] as double,
      exportIterationCount: map['exportIterationCount'] as int,
      id: map['id'] as String,
      lastCompletionTimeUTC: map['lastCompletionTimeUTC'] as String,
      lastStartedTimeUTC: map['lastStartedTimeUTC'] as String,
      lastSuccessfulIterationCompletionTimeUTC: map['lastSuccessfulIterationCompletionTimeUTC'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      statusCode: map['statusCode'] as String,
      statusMessage: map['statusMessage'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      totalFilesExported: map['totalFilesExported'] as double,
      totalFilesFailed: map['totalFilesFailed'] as double,
      totalMiBExported: map['totalMiBExported'] as double,
      type: map['type'] as String,
    );
  }
}

