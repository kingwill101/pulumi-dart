// ignore_for_file: unused_element, unnecessary_cast

import 'auto_import_job_response_blob_sync_events.dart';
import 'system_data_response.dart';

/// Result data returned by getAutoImportJob.
class GetAutoImportJobResult {
  /// The administrative status of the auto import job. Possible values: 'Enable', 'Disable'. Passing in a value of 'Disable' will disable the current active auto import job. By default it is set to 'Enable'.
  final String? adminStatus;
  /// An array of blob paths/prefixes that get auto imported to the cluster namespace. It has '/' as the default value. Number of maximum allowed paths is 100.
  final List<String>? autoImportPrefixes;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The storage account blob change feed status of the auto import job.
  final AutoImportJobResponseBlobSyncEvents? blobSyncEvents;
  /// How the auto import job will handle conflicts. For example, if the auto import job is trying to bring in a directory, but a file is at that path, how it handles it. Fail indicates that the auto import job should stop immediately and not do anything with the conflict. Skip indicates that it should pass over the conflict. OverwriteIfDirty causes the auto import job to delete and re-import the file or directory if it is a conflicting type, is dirty, or is currently released. OverwriteAlways extends OverwriteIfDirty to include releasing files that had been restored but were not dirty. Please reference https://learn.microsoft.com/en-us/azure/azure-managed-lustre/blob-integration#conflict-resolution-mode for a thorough explanation of these resolution modes.
  final String? conflictResolutionMode;
  /// Whether or not to enable deletions during auto import. This only affects overwrite-dirty.
  final bool? enableDeletions;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Number of directories imported during full scan.
  final double? importedDirectories;
  /// Number of files imported during full scan.
  final double? importedFiles;
  /// Number of symlinks imported during full scan.
  final double? importedSymlinks;
  /// The time (in UTC) of the last completed auto import job.
  final String? lastCompletionTimeUTC;
  /// The time (in UTC) the latest auto import job started.
  final String? lastStartedTimeUTC;
  /// The geo-location where the resource lives
  final String? location;
  /// Total non-conflict-oriented errors (e.g., OS errors) Import will tolerate before exiting with failure. -1 means infinite. 0 means exit immediately on any error.
  final double? maximumErrors;
  /// The name of the resource
  final String? name;
  /// Number of preexisting directories during full scan.
  final double? preexistingDirectories;
  /// Number of preexisting files during full scan.
  final double? preexistingFiles;
  /// Number of preexisting symlinks during full scan.
  final double? preexistingSymlinks;
  /// ARM provisioning state.
  final String? provisioningState;
  /// Rate of blob import during full scan.
  final double? rateOfBlobImport;
  /// Rate of blobs walked during full scan.
  final double? rateOfBlobWalk;
  /// Date and time of when the full scan ended.
  final String? scanEndTime;
  /// Date and time of when the currently running full scan began.
  final String? scanStartTime;
  /// The state of the auto import operation.
  final String? state;
  /// Server-defined status code for auto import job.
  final String? statusCode;
  /// Server-defined status message for auto import job.
  final String? statusMessage;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Total number of blobs imported during full scan.
  final double? totalBlobsImported;
  /// Total number of blobs walked during full scan.
  final double? totalBlobsWalked;
  /// Total conflicts encountered during full scan.
  final double? totalConflicts;
  /// Total errors encountered during full scan.
  final double? totalErrors;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAutoImportJobResult].
  /// [adminStatus] The administrative status of the auto import job. Possible values: 'Enable', 'Disable'. Passing in a value of 'Disable' will disable the current active auto import job. By default it is set to 'Enable'.
  /// [autoImportPrefixes] An array of blob paths/prefixes that get auto imported to the cluster namespace. It has '/' as the default value. Number of maximum allowed paths is 100.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [blobSyncEvents] The storage account blob change feed status of the auto import job.
  /// [conflictResolutionMode] How the auto import job will handle conflicts. For example, if the auto import job is trying to bring in a directory, but a file is at that path, how it handles it. Fail indicates that the auto import job should stop immediately and not do anything with the conflict. Skip indicates that it should pass over the conflict. OverwriteIfDirty causes the auto import job to delete and re-import the file or directory if it is a conflicting type, is dirty, or is currently released. OverwriteAlways extends OverwriteIfDirty to include releasing files that had been restored but were not dirty. Please reference https://learn.microsoft.com/en-us/azure/azure-managed-lustre/blob-integration#conflict-resolution-mode for a thorough explanation of these resolution modes.
  /// [enableDeletions] Whether or not to enable deletions during auto import. This only affects overwrite-dirty.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [importedDirectories] Number of directories imported during full scan.
  /// [importedFiles] Number of files imported during full scan.
  /// [importedSymlinks] Number of symlinks imported during full scan.
  /// [lastCompletionTimeUTC] The time (in UTC) of the last completed auto import job.
  /// [lastStartedTimeUTC] The time (in UTC) the latest auto import job started.
  /// [location] The geo-location where the resource lives
  /// [maximumErrors] Total non-conflict-oriented errors (e.g., OS errors) Import will tolerate before exiting with failure. -1 means infinite. 0 means exit immediately on any error.
  /// [name] The name of the resource
  /// [preexistingDirectories] Number of preexisting directories during full scan.
  /// [preexistingFiles] Number of preexisting files during full scan.
  /// [preexistingSymlinks] Number of preexisting symlinks during full scan.
  /// [provisioningState] ARM provisioning state.
  /// [rateOfBlobImport] Rate of blob import during full scan.
  /// [rateOfBlobWalk] Rate of blobs walked during full scan.
  /// [scanEndTime] Date and time of when the full scan ended.
  /// [scanStartTime] Date and time of when the currently running full scan began.
  /// [state] The state of the auto import operation.
  /// [statusCode] Server-defined status code for auto import job.
  /// [statusMessage] Server-defined status message for auto import job.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [totalBlobsImported] Total number of blobs imported during full scan.
  /// [totalBlobsWalked] Total number of blobs walked during full scan.
  /// [totalConflicts] Total conflicts encountered during full scan.
  /// [totalErrors] Total errors encountered during full scan.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAutoImportJobResult({
    String? adminStatus,
    this.autoImportPrefixes,
    this.azureApiVersion,
    this.blobSyncEvents,
    String? conflictResolutionMode,
    bool? enableDeletions,
    this.id,
    this.importedDirectories,
    this.importedFiles,
    this.importedSymlinks,
    this.lastCompletionTimeUTC,
    this.lastStartedTimeUTC,
    this.location,
    this.maximumErrors,
    this.name,
    this.preexistingDirectories,
    this.preexistingFiles,
    this.preexistingSymlinks,
    this.provisioningState,
    this.rateOfBlobImport,
    this.rateOfBlobWalk,
    this.scanEndTime,
    this.scanStartTime,
    this.state,
    this.statusCode,
    this.statusMessage,
    this.systemData,
    this.tags,
    this.totalBlobsImported,
    this.totalBlobsWalked,
    this.totalConflicts,
    this.totalErrors,
    this.type,
  }) : adminStatus = adminStatus ?? 'Enable', conflictResolutionMode = conflictResolutionMode ?? 'Skip', enableDeletions = enableDeletions ?? false;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStatus': ?adminStatus,
      'autoImportPrefixes': ?autoImportPrefixes,
      'azureApiVersion': ?azureApiVersion,
      'blobSyncEvents': ?blobSyncEvents?.toMap(),
      'conflictResolutionMode': ?conflictResolutionMode,
      'enableDeletions': ?enableDeletions,
      'id': ?id,
      'importedDirectories': ?importedDirectories,
      'importedFiles': ?importedFiles,
      'importedSymlinks': ?importedSymlinks,
      'lastCompletionTimeUTC': ?lastCompletionTimeUTC,
      'lastStartedTimeUTC': ?lastStartedTimeUTC,
      'location': ?location,
      'maximumErrors': ?maximumErrors,
      'name': ?name,
      'preexistingDirectories': ?preexistingDirectories,
      'preexistingFiles': ?preexistingFiles,
      'preexistingSymlinks': ?preexistingSymlinks,
      'provisioningState': ?provisioningState,
      'rateOfBlobImport': ?rateOfBlobImport,
      'rateOfBlobWalk': ?rateOfBlobWalk,
      'scanEndTime': ?scanEndTime,
      'scanStartTime': ?scanStartTime,
      'state': ?state,
      'statusCode': ?statusCode,
      'statusMessage': ?statusMessage,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'totalBlobsImported': ?totalBlobsImported,
      'totalBlobsWalked': ?totalBlobsWalked,
      'totalConflicts': ?totalConflicts,
      'totalErrors': ?totalErrors,
      'type': ?type,
    };
  }

  factory GetAutoImportJobResult.fromMap(Map<String, dynamic> map) {
    return GetAutoImportJobResult(
      adminStatus: (() { final guardedValue = map['adminStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoImportPrefixes: (() { final guardedValue = map['autoImportPrefixes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      blobSyncEvents: (() { final guardedValue = map['blobSyncEvents']; if (guardedValue == null) return null; return AutoImportJobResponseBlobSyncEvents.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      conflictResolutionMode: (() { final guardedValue = map['conflictResolutionMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableDeletions: (() { final guardedValue = map['enableDeletions']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      importedDirectories: (() { final guardedValue = map['importedDirectories']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      importedFiles: (() { final guardedValue = map['importedFiles']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      importedSymlinks: (() { final guardedValue = map['importedSymlinks']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      lastCompletionTimeUTC: (() { final guardedValue = map['lastCompletionTimeUTC']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastStartedTimeUTC: (() { final guardedValue = map['lastStartedTimeUTC']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maximumErrors: (() { final guardedValue = map['maximumErrors']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preexistingDirectories: (() { final guardedValue = map['preexistingDirectories']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      preexistingFiles: (() { final guardedValue = map['preexistingFiles']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      preexistingSymlinks: (() { final guardedValue = map['preexistingSymlinks']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rateOfBlobImport: (() { final guardedValue = map['rateOfBlobImport']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      rateOfBlobWalk: (() { final guardedValue = map['rateOfBlobWalk']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      scanEndTime: (() { final guardedValue = map['scanEndTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scanStartTime: (() { final guardedValue = map['scanStartTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      totalBlobsImported: (() { final guardedValue = map['totalBlobsImported']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      totalBlobsWalked: (() { final guardedValue = map['totalBlobsWalked']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      totalConflicts: (() { final guardedValue = map['totalConflicts']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      totalErrors: (() { final guardedValue = map['totalErrors']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
