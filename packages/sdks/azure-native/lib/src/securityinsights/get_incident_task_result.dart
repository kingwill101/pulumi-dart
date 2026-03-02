// ignore_for_file: unused_element, unnecessary_cast

import 'client_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getIncidentTask.
class GetIncidentTaskResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Information on the client (user or application) that made some action
  final ClientInfoResponse? createdBy;
  /// The time the task was created
  final String createdTimeUtc;
  /// The description of the task
  final String? description;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Information on the client (user or application) that made some action
  final ClientInfoResponse? lastModifiedBy;
  /// The last time the task was updated
  final String lastModifiedTimeUtc;
  /// The name of the resource
  final String name;
  /// The status of the task
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The title of the task
  final String title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetIncidentTaskResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdBy] Information on the client (user or application) that made some action
  /// [createdTimeUtc] The time the task was created
  /// [description] The description of the task
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastModifiedBy] Information on the client (user or application) that made some action
  /// [lastModifiedTimeUtc] The last time the task was updated
  /// [name] The name of the resource
  /// [status] The status of the task
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [title] The title of the task
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetIncidentTaskResult({
    required this.azureApiVersion,
    this.createdBy,
    required this.createdTimeUtc,
    this.description,
    this.etag,
    required this.id,
    this.lastModifiedBy,
    required this.lastModifiedTimeUtc,
    required this.name,
    required this.status,
    required this.systemData,
    required this.title,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdBy': ?createdBy == null ? null : createdBy!.toMap(),
      'createdTimeUtc': createdTimeUtc,
      'description': ?description,
      'etag': ?etag,
      'id': id,
      'lastModifiedBy': ?lastModifiedBy == null ? null : lastModifiedBy!.toMap(),
      'lastModifiedTimeUtc': lastModifiedTimeUtc,
      'name': name,
      'status': status,
      'systemData': systemData.toMap(),
      'title': title,
      'type': type,
    };
  }

  factory GetIncidentTaskResult.fromMap(Map<String, dynamic> map) {
    return GetIncidentTaskResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdBy: map['createdBy'] == null ? null : ClientInfoResponse.fromMap((map['createdBy']! as Map).cast<String, dynamic>()),
      createdTimeUtc: map['createdTimeUtc'] as String,
      description: map['description'] == null ? null : map['description']! as String,
      etag: map['etag'] == null ? null : map['etag']! as String,
      id: map['id'] as String,
      lastModifiedBy: map['lastModifiedBy'] == null ? null : ClientInfoResponse.fromMap((map['lastModifiedBy']! as Map).cast<String, dynamic>()),
      lastModifiedTimeUtc: map['lastModifiedTimeUtc'] as String,
      name: map['name'] as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      title: map['title'] as String,
      type: map['type'] as String,
    );
  }
}

