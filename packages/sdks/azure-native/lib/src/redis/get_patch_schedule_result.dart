// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_entry_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPatchSchedule.
class GetPatchScheduleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// List of patch schedules for a Redis cache.
  final List<ScheduleEntryResponse> scheduleEntries;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetPatchScheduleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [scheduleEntries] List of patch schedules for a Redis cache.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetPatchScheduleResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.scheduleEntries,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'scheduleEntries':
          pulumi.Input.encodeList<ScheduleEntryResponse, Map<String, dynamic>>(
            scheduleEntries,
            (value) => value.toMap(),
          ),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetPatchScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetPatchScheduleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      scheduleEntries: pulumi.Input.decodeList<ScheduleEntryResponse>(
        map['scheduleEntries']!,
        (value) => ScheduleEntryResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
