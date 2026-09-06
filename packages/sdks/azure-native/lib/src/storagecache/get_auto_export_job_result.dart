// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAutoExportJob.
class GetAutoExportJobResult {
  /// The administrative status of the auto export job. Possible values: 'Enable', 'Disable'. Passing in a value of 'Disable' will disable the current active auto export job. By default it is set to 'Enable'.
  final String? adminStatus;
  /// An array of blob paths/prefixes that get auto exported to the cluster namespace. It has '/' as the default value. Number of maximum allowed paths for now is 1.
  final List<String>? autoExportPrefixes;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Files discovered for export in current iteration. It may increase while more export items are found.
  final double? currentIterationFilesDiscovered;
  /// Files that have been exported in current iteration.
  final double? currentIterationFilesExported;
  /// Files failed to export in current iteration.
  final double? currentIterationFilesFailed;
  /// Data (in MiB) discovered for export in current iteration. It may increase while more export items are found.
  final double? currentIterationMiBDiscovered;
  /// Data (in MiB) that have been exported in current iteration.
  final double? currentIterationMiBExported;
  /// Number of iterations completed since the start of the export.
  final int? exportIterationCount;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The time (in UTC) of the last completed auto export job.
  final String? lastCompletionTimeUTC;
  /// The time (in UTC) the latest auto export job started.
  final String? lastStartedTimeUTC;
  /// Time (in UTC) of the last successfully completed export iteration. Look at logging container for details.
  final String? lastSuccessfulIterationCompletionTimeUTC;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// ARM provisioning state.
  final String? provisioningState;
  /// The operational state of auto export. InProgress indicates the export is running.  Disabling indicates the user has requested to disable the export but the disabling is still in progress. Disabled indicates auto export has been disabled.  DisableFailed indicates the disabling has failed.  Failed means the export was unable to continue, due to a fatal error.
  final String? state;
  /// Server-defined status code for auto export job.
  final String? statusCode;
  /// Server-defined status message for auto export job.
  final String? statusMessage;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Total files exported since the start of the export. This is accumulative, some files may be counted repeatedly.
  final double? totalFilesExported;
  /// Total files failed to be export since the last successfully completed iteration. This is accumulative, some files may be counted repeatedly.
  final double? totalFilesFailed;
  /// Total data (in MiB) exported since the start of the export. This is accumulative, some files may be counted repeatedly.
  final double? totalMiBExported;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
    String? adminStatus,
    this.autoExportPrefixes,
    this.azureApiVersion,
    this.currentIterationFilesDiscovered,
    this.currentIterationFilesExported,
    this.currentIterationFilesFailed,
    this.currentIterationMiBDiscovered,
    this.currentIterationMiBExported,
    this.exportIterationCount,
    this.id,
    this.lastCompletionTimeUTC,
    this.lastStartedTimeUTC,
    this.lastSuccessfulIterationCompletionTimeUTC,
    this.location,
    this.name,
    this.provisioningState,
    this.state,
    this.statusCode,
    this.statusMessage,
    this.systemData,
    this.tags,
    this.totalFilesExported,
    this.totalFilesFailed,
    this.totalMiBExported,
    this.type,
  }) : adminStatus = adminStatus ?? 'Enable';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStatus': ?adminStatus,
      'autoExportPrefixes': ?autoExportPrefixes,
      'azureApiVersion': ?azureApiVersion,
      'currentIterationFilesDiscovered': ?currentIterationFilesDiscovered,
      'currentIterationFilesExported': ?currentIterationFilesExported,
      'currentIterationFilesFailed': ?currentIterationFilesFailed,
      'currentIterationMiBDiscovered': ?currentIterationMiBDiscovered,
      'currentIterationMiBExported': ?currentIterationMiBExported,
      'exportIterationCount': ?exportIterationCount,
      'id': ?id,
      'lastCompletionTimeUTC': ?lastCompletionTimeUTC,
      'lastStartedTimeUTC': ?lastStartedTimeUTC,
      'lastSuccessfulIterationCompletionTimeUTC': ?lastSuccessfulIterationCompletionTimeUTC,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'state': ?state,
      'statusCode': ?statusCode,
      'statusMessage': ?statusMessage,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'totalFilesExported': ?totalFilesExported,
      'totalFilesFailed': ?totalFilesFailed,
      'totalMiBExported': ?totalMiBExported,
      'type': ?type,
    };
  }

  factory GetAutoExportJobResult.fromMap(Map<String, dynamic> map) {
    return GetAutoExportJobResult(
      adminStatus: (() { final guardedValue = map['adminStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoExportPrefixes: (() { final guardedValue = map['autoExportPrefixes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currentIterationFilesDiscovered: (() { final guardedValue = map['currentIterationFilesDiscovered']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      currentIterationFilesExported: (() { final guardedValue = map['currentIterationFilesExported']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      currentIterationFilesFailed: (() { final guardedValue = map['currentIterationFilesFailed']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      currentIterationMiBDiscovered: (() { final guardedValue = map['currentIterationMiBDiscovered']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      currentIterationMiBExported: (() { final guardedValue = map['currentIterationMiBExported']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      exportIterationCount: (() { final guardedValue = map['exportIterationCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastCompletionTimeUTC: (() { final guardedValue = map['lastCompletionTimeUTC']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastStartedTimeUTC: (() { final guardedValue = map['lastStartedTimeUTC']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastSuccessfulIterationCompletionTimeUTC: (() { final guardedValue = map['lastSuccessfulIterationCompletionTimeUTC']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      totalFilesExported: (() { final guardedValue = map['totalFilesExported']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      totalFilesFailed: (() { final guardedValue = map['totalFilesFailed']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      totalMiBExported: (() { final guardedValue = map['totalMiBExported']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
