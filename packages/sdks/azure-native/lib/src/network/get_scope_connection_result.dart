// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getScopeConnection.
class GetScopeConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A description of the scope connection.
  final String? description;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// Resource ID.
  final String? resourceId;
  /// The system metadata related to this resource.
  final SystemDataResponse systemData;
  /// Tenant ID.
  final String? tenantId;
  /// Resource type.
  final String type;

  /// Creates a new [GetScopeConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] A description of the scope connection.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [resourceId] Resource ID.
  /// [systemData] The system metadata related to this resource.
  /// [tenantId] Tenant ID.
  /// [type] Resource type.
  const GetScopeConnectionResult({
    required this.azureApiVersion,
    this.description,
    required this.etag,
    required this.id,
    required this.name,
    this.resourceId,
    required this.systemData,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'etag': etag,
      'id': id,
      'name': name,
      'resourceId': ?resourceId,
      'systemData': systemData.toMap(),
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory GetScopeConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetScopeConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}
