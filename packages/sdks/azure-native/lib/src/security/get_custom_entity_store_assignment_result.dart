// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getCustomEntityStoreAssignment.
class GetCustomEntityStoreAssignmentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The link to entity store database.
  final String? entityStoreDatabaseLink;
  /// Resource Id
  final String id;
  /// Resource name
  final String name;
  /// The principal assigned with entity store. Format of principal is: [AAD type]=[PrincipalObjectId];[TenantId]
  final String? principal;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource type
  final String type;

  /// Creates a new [GetCustomEntityStoreAssignmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [entityStoreDatabaseLink] The link to entity store database.
  /// [id] Resource Id
  /// [name] Resource name
  /// [principal] The principal assigned with entity store. Format of principal is: [AAD type]=[PrincipalObjectId];[TenantId]
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] Resource type
  const GetCustomEntityStoreAssignmentResult({
    required this.azureApiVersion,
    this.entityStoreDatabaseLink,
    required this.id,
    required this.name,
    this.principal,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'entityStoreDatabaseLink': ?entityStoreDatabaseLink,
      'id': id,
      'name': name,
      'principal': ?principal,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetCustomEntityStoreAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetCustomEntityStoreAssignmentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      entityStoreDatabaseLink: (() { final guardedValue = map['entityStoreDatabaseLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

