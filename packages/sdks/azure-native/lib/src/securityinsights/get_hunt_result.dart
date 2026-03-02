// ignore_for_file: unused_element, unnecessary_cast

import 'hunt_owner_response.dart';
import 'system_data_response.dart';

/// Result data returned by getHunt.
class GetHuntResult {
  /// A list of mitre attack tactics the hunt is associated with
  final List<String>? attackTactics;
  /// A list of a mitre attack techniques the hunt is associated with
  final List<String>? attackTechniques;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The description of the hunt
  final String description;
  /// The display name of the hunt
  final String displayName;
  /// Etag of the azure resource
  final String? etag;
  /// The hypothesis status of the hunt.
  final String? hypothesisStatus;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// List of labels relevant to this hunt
  final List<String>? labels;
  /// The name of the resource
  final String name;
  /// Describes a user that the hunt is assigned to
  final HuntOwnerResponse? owner;
  /// The status of the hunt.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetHuntResult].
  /// [attackTactics] A list of mitre attack tactics the hunt is associated with
  /// [attackTechniques] A list of a mitre attack techniques the hunt is associated with
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The description of the hunt
  /// [displayName] The display name of the hunt
  /// [etag] Etag of the azure resource
  /// [hypothesisStatus] The hypothesis status of the hunt.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [labels] List of labels relevant to this hunt
  /// [name] The name of the resource
  /// [owner] Describes a user that the hunt is assigned to
  /// [status] The status of the hunt.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetHuntResult({
    this.attackTactics,
    this.attackTechniques,
    required this.azureApiVersion,
    required this.description,
    required this.displayName,
    this.etag,
    this.hypothesisStatus,
    required this.id,
    this.labels,
    required this.name,
    this.owner,
    this.status,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attackTactics': ?attackTactics,
      'attackTechniques': ?attackTechniques,
      'azureApiVersion': azureApiVersion,
      'description': description,
      'displayName': displayName,
      'etag': ?etag,
      'hypothesisStatus': ?hypothesisStatus,
      'id': id,
      'labels': ?labels,
      'name': name,
      'owner': ?owner == null ? null : owner!.toMap(),
      'status': ?status,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetHuntResult.fromMap(Map<String, dynamic> map) {
    return GetHuntResult(
      attackTactics: map['attackTactics'] == null ? null : (map['attackTactics']! as List).cast<String>(),
      attackTechniques: map['attackTechniques'] == null ? null : (map['attackTechniques']! as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] == null ? null : map['etag']! as String,
      hypothesisStatus: map['hypothesisStatus'] == null ? null : map['hypothesisStatus']! as String,
      id: map['id'] as String,
      labels: map['labels'] == null ? null : (map['labels']! as List).cast<String>(),
      name: map['name'] as String,
      owner: map['owner'] == null ? null : HuntOwnerResponse.fromMap((map['owner']! as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

