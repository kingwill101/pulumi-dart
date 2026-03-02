// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getManagementGroupNetworkManagerConnection.
class GetManagementGroupNetworkManagerConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A description of the network manager connection.
  final String? description;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// Network Manager Id.
  final String? networkManagerId;
  /// The system metadata related to this resource.
  final SystemDataResponse systemData;
  /// Resource type.
  final String type;

  /// Creates a new [GetManagementGroupNetworkManagerConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] A description of the network manager connection.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [networkManagerId] Network Manager Id.
  /// [systemData] The system metadata related to this resource.
  /// [type] Resource type.
  GetManagementGroupNetworkManagerConnectionResult({
    required this.azureApiVersion,
    this.description,
    required this.etag,
    required this.id,
    required this.name,
    this.networkManagerId,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'etag': etag,
      'id': id,
      'name': name,
      'networkManagerId': ?networkManagerId,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetManagementGroupNetworkManagerConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetManagementGroupNetworkManagerConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description']! as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      networkManagerId: map['networkManagerId'] == null ? null : map['networkManagerId']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

