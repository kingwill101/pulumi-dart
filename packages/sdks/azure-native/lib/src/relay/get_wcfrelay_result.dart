// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWCFRelay.
class GetWCFRelayResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The time the WCF relay was created.
  final String createdAt;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Returns true if the relay is dynamic; otherwise, false.
  final bool isDynamic;
  /// The number of listeners for this relay. Note that min :1 and max:25 are supported.
  final int listenerCount;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// WCF relay type.
  final String? relayType;
  /// Returns true if client authorization is needed for this relay; otherwise, false.
  final bool? requiresClientAuthorization;
  /// Returns true if transport security is needed for this relay; otherwise, false.
  final bool? requiresTransportSecurity;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The time the namespace was updated.
  final String updatedAt;
  /// The usermetadata is a placeholder to store user-defined string data for the WCF Relay endpoint. For example, it can be used to store descriptive data, such as list of teams and their contact information. Also, user-defined configuration settings can be stored.
  final String? userMetadata;

  /// Creates a new [GetWCFRelayResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdAt] The time the WCF relay was created.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [isDynamic] Returns true if the relay is dynamic; otherwise, false.
  /// [listenerCount] The number of listeners for this relay. Note that min :1 and max:25 are supported.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [relayType] WCF relay type.
  /// [requiresClientAuthorization] Returns true if client authorization is needed for this relay; otherwise, false.
  /// [requiresTransportSecurity] Returns true if transport security is needed for this relay; otherwise, false.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedAt] The time the namespace was updated.
  /// [userMetadata] The usermetadata is a placeholder to store user-defined string data for the WCF Relay endpoint. For example, it can be used to store descriptive data, such as list of teams and their contact information. Also, user-defined configuration settings can be stored.
  const GetWCFRelayResult({
    required this.azureApiVersion,
    required this.createdAt,
    required this.id,
    required this.isDynamic,
    required this.listenerCount,
    required this.location,
    required this.name,
    this.relayType,
    this.requiresClientAuthorization,
    this.requiresTransportSecurity,
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
      'isDynamic': isDynamic,
      'listenerCount': listenerCount,
      'location': location,
      'name': name,
      'relayType': ?relayType,
      'requiresClientAuthorization': ?requiresClientAuthorization,
      'requiresTransportSecurity': ?requiresTransportSecurity,
      'systemData': systemData.toMap(),
      'type': type,
      'updatedAt': updatedAt,
      'userMetadata': ?userMetadata,
    };
  }

  factory GetWCFRelayResult.fromMap(Map<String, dynamic> map) {
    return GetWCFRelayResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      isDynamic: map['isDynamic'] as bool,
      listenerCount: map['listenerCount'] as int,
      location: map['location'] as String,
      name: map['name'] as String,
      relayType: (() { final guardedValue = map['relayType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requiresClientAuthorization: (() { final guardedValue = map['requiresClientAuthorization']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      requiresTransportSecurity: (() { final guardedValue = map['requiresTransportSecurity']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      updatedAt: map['updatedAt'] as String,
      userMetadata: (() { final guardedValue = map['userMetadata']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
