// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getManagementGroupNetworkManagerConnection.
class GetManagementGroupNetworkManagerConnectionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A description of the network manager connection.
  final String? description;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// Network Manager Id.
  final String? networkManagerId;
  /// The system metadata related to this resource.
  final SystemDataResponse? systemData;
  /// Resource type.
  final String? type;

  /// Creates a new [GetManagementGroupNetworkManagerConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] A description of the network manager connection.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [networkManagerId] Network Manager Id.
  /// [systemData] The system metadata related to this resource.
  /// [type] Resource type.
  const GetManagementGroupNetworkManagerConnectionResult({
    this.azureApiVersion,
    this.description,
    this.etag,
    this.id,
    this.name,
    this.networkManagerId,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'networkManagerId': ?networkManagerId,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetManagementGroupNetworkManagerConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetManagementGroupNetworkManagerConnectionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkManagerId: (() { final guardedValue = map['networkManagerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
