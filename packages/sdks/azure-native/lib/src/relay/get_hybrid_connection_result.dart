// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getHybridConnection.
class GetHybridConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The time the hybrid connection was created.
  final String createdAt;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The number of listeners for this hybrid connection. Note that min : 1 and max:25 are supported.
  final int listenerCount;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Returns true if client authorization is needed for this hybrid connection; otherwise, false.
  final bool? requiresClientAuthorization;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The time the namespace was updated.
  final String updatedAt;
  /// The usermetadata is a placeholder to store user-defined string data for the hybrid connection endpoint. For example, it can be used to store descriptive data, such as a list of teams and their contact information. Also, user-defined configuration settings can be stored.
  final String? userMetadata;

  /// Creates a new [GetHybridConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdAt] The time the hybrid connection was created.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [listenerCount] The number of listeners for this hybrid connection. Note that min : 1 and max:25 are supported.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [requiresClientAuthorization] Returns true if client authorization is needed for this hybrid connection; otherwise, false.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedAt] The time the namespace was updated.
  /// [userMetadata] The usermetadata is a placeholder to store user-defined string data for the hybrid connection endpoint. For example, it can be used to store descriptive data, such as a list of teams and their contact information. Also, user-defined configuration settings can be stored.
  GetHybridConnectionResult({
    required this.azureApiVersion,
    required this.createdAt,
    required this.id,
    required this.listenerCount,
    required this.location,
    required this.name,
    this.requiresClientAuthorization,
    required this.systemData,
    required this.type,
    required this.updatedAt,
    this.userMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdAt': createdAt,
      'id': id,
      'listenerCount': listenerCount,
      'location': location,
      'name': name,
      'requiresClientAuthorization': ?requiresClientAuthorization,
      'systemData': systemData.toMap(),
      'type': type,
      'updatedAt': updatedAt,
      'userMetadata': ?userMetadata,
    };
  }

  factory GetHybridConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetHybridConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      listenerCount: map['listenerCount'] as int,
      location: map['location'] as String,
      name: map['name'] as String,
      requiresClientAuthorization: (() { final guardedValue = map['requiresClientAuthorization']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      updatedAt: map['updatedAt'] as String,
      userMetadata: (() { final guardedValue = map['userMetadata']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

