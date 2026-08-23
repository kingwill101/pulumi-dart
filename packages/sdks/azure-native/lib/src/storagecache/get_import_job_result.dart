// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getImportJob.
class GetImportJobResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A recent and frequently updated rate of total files, directories, and symlinks imported per second.
  final double blobsImportedPerSecond;
  /// A recent and frequently updated rate of blobs walked per second.
  final double blobsWalkedPerSecond;
  /// How the import job will handle conflicts. For example, if the import job is trying to bring in a directory, but a file is at that path, how it handles it. Fail indicates that the import job should stop immediately and not do anything with the conflict. Skip indicates that it should pass over the conflict. OverwriteIfDirty causes the import job to delete and re-import the file or directory if it is a conflicting type, is dirty, or was not previously imported. OverwriteAlways extends OverwriteIfDirty to include releasing files that had been restored but were not dirty. Please reference https://learn.microsoft.com/en-us/azure/azure-managed-lustre/ for a thorough explanation of these resolution modes.
  final String? conflictResolutionMode;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// An array of blob paths/prefixes that get imported into the cluster namespace. It has '/' as the default value.
  final List<String>? importPrefixes;
  /// The time of the last completed archive operation
  final String lastCompletionTime;
  /// The time the latest archive operation started
  final String lastStartedTime;
  /// The geo-location where the resource lives
  final String location;
  /// Total non-conflict oriented errors the import job will tolerate before exiting with failure. -1 means infinite. 0 means exit immediately and is the default.
  final int? maximumErrors;
  /// The name of the resource
  final String name;
  /// ARM provisioning state.
  final String provisioningState;
  /// The state of the import job. InProgress indicates the import is still running. Canceled indicates it has been canceled by the user. Completed indicates import finished, successfully importing all discovered blobs into the Lustre namespace. CompletedPartial indicates the import finished but some blobs either were found to be conflicting and could not be imported or other errors were encountered. Failed means the import was unable to complete due to a fatal error.
  final String state;
  /// The status message of the import job.
  final String statusMessage;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The total blobs that have been imported since import began.
  final double totalBlobsImported;
  /// The total blob objects walked.
  final double totalBlobsWalked;
  /// Number of conflicts in the import job.
  final int totalConflicts;
  /// Number of errors in the import job.
  final int totalErrors;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetImportJobResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [blobsImportedPerSecond] A recent and frequently updated rate of total files, directories, and symlinks imported per second.
  /// [blobsWalkedPerSecond] A recent and frequently updated rate of blobs walked per second.
  /// [conflictResolutionMode] How the import job will handle conflicts. For example, if the import job is trying to bring in a directory, but a file is at that path, how it handles it. Fail indicates that the import job should stop immediately and not do anything with the conflict. Skip indicates that it should pass over the conflict. OverwriteIfDirty causes the import job to delete and re-import the file or directory if it is a conflicting type, is dirty, or was not previously imported. OverwriteAlways extends OverwriteIfDirty to include releasing files that had been restored but were not dirty. Please reference https://learn.microsoft.com/en-us/azure/azure-managed-lustre/ for a thorough explanation of these resolution modes.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [importPrefixes] An array of blob paths/prefixes that get imported into the cluster namespace. It has '/' as the default value.
  /// [lastCompletionTime] The time of the last completed archive operation
  /// [lastStartedTime] The time the latest archive operation started
  /// [location] The geo-location where the resource lives
  /// [maximumErrors] Total non-conflict oriented errors the import job will tolerate before exiting with failure. -1 means infinite. 0 means exit immediately and is the default.
  /// [name] The name of the resource
  /// [provisioningState] ARM provisioning state.
  /// [state] The state of the import job. InProgress indicates the import is still running. Canceled indicates it has been canceled by the user. Completed indicates import finished, successfully importing all discovered blobs into the Lustre namespace. CompletedPartial indicates the import finished but some blobs either were found to be conflicting and could not be imported or other errors were encountered. Failed means the import was unable to complete due to a fatal error.
  /// [statusMessage] The status message of the import job.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [totalBlobsImported] The total blobs that have been imported since import began.
  /// [totalBlobsWalked] The total blob objects walked.
  /// [totalConflicts] Number of conflicts in the import job.
  /// [totalErrors] Number of errors in the import job.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetImportJobResult({
    required this.azureApiVersion,
    required this.blobsImportedPerSecond,
    required this.blobsWalkedPerSecond,
    this.conflictResolutionMode,
    required this.id,
    this.importPrefixes,
    required this.lastCompletionTime,
    required this.lastStartedTime,
    required this.location,
    this.maximumErrors,
    required this.name,
    required this.provisioningState,
    required this.state,
    required this.statusMessage,
    required this.systemData,
    this.tags,
    required this.totalBlobsImported,
    required this.totalBlobsWalked,
    required this.totalConflicts,
    required this.totalErrors,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'blobsImportedPerSecond': blobsImportedPerSecond,
      'blobsWalkedPerSecond': blobsWalkedPerSecond,
      'conflictResolutionMode': ?conflictResolutionMode,
      'id': id,
      'importPrefixes': ?importPrefixes,
      'lastCompletionTime': lastCompletionTime,
      'lastStartedTime': lastStartedTime,
      'location': location,
      'maximumErrors': ?maximumErrors,
      'name': name,
      'provisioningState': provisioningState,
      'state': state,
      'statusMessage': statusMessage,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'totalBlobsImported': totalBlobsImported,
      'totalBlobsWalked': totalBlobsWalked,
      'totalConflicts': totalConflicts,
      'totalErrors': totalErrors,
      'type': type,
    };
  }

  factory GetImportJobResult.fromMap(Map<String, dynamic> map) {
    return GetImportJobResult(
      azureApiVersion: map['azureApiVersion'] as String,
      blobsImportedPerSecond: map['blobsImportedPerSecond'] as double,
      blobsWalkedPerSecond: map['blobsWalkedPerSecond'] as double,
      conflictResolutionMode: (() { final guardedValue = map['conflictResolutionMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      importPrefixes: (() { final guardedValue = map['importPrefixes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      lastCompletionTime: map['lastCompletionTime'] as String,
      lastStartedTime: map['lastStartedTime'] as String,
      location: map['location'] as String,
      maximumErrors: (() { final guardedValue = map['maximumErrors']; if (guardedValue == null) return null; return guardedValue as int; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      state: map['state'] as String,
      statusMessage: map['statusMessage'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      totalBlobsImported: map['totalBlobsImported'] as double,
      totalBlobsWalked: map['totalBlobsWalked'] as double,
      totalConflicts: map['totalConflicts'] as int,
      totalErrors: map['totalErrors'] as int,
      type: map['type'] as String,
    );
  }
}
