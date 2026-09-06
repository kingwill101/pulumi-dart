// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getHybridConnection.
class GetHybridConnectionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The time the hybrid connection was created.
  final String? createdAt;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The number of listeners for this hybrid connection. Note that min : 1 and max:25 are supported.
  final int? listenerCount;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Returns true if client authorization is needed for this hybrid connection; otherwise, false.
  final bool? requiresClientAuthorization;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The time the namespace was updated.
  final String? updatedAt;
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
  const GetHybridConnectionResult({
    this.azureApiVersion,
    this.createdAt,
    this.id,
    this.listenerCount,
    this.location,
    this.name,
    this.requiresClientAuthorization,
    this.systemData,
    this.type,
    this.updatedAt,
    this.userMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'createdAt': ?createdAt,
      'id': ?id,
      'listenerCount': ?listenerCount,
      'location': ?location,
      'name': ?name,
      'requiresClientAuthorization': ?requiresClientAuthorization,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'updatedAt': ?updatedAt,
      'userMetadata': ?userMetadata,
    };
  }

  factory GetHybridConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetHybridConnectionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      listenerCount: (() { final guardedValue = map['listenerCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requiresClientAuthorization: (() { final guardedValue = map['requiresClientAuthorization']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userMetadata: (() { final guardedValue = map['userMetadata']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
