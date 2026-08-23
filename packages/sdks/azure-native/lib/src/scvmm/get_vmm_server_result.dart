// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'vmmserver_properties_response_credentials.dart';

/// Result data returned by getVmmServer.
class GetVmmServerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the connection status to the vmmServer.
  final String connectionStatus;
  /// Credentials to connect to VMMServer.
  final VMMServerPropertiesResponseCredentials? credentials;
  /// Gets or sets any error message if connection to vmmServer is having any issue.
  final String errorMessage;
  /// The extended location.
  final ExtendedLocationResponse extendedLocation;
  /// Fqdn is the hostname/ip of the vmmServer.
  final String fqdn;
  /// Resource Id
  final String id;
  /// Gets or sets the location.
  final String location;
  /// Resource Name
  final String name;
  /// Port is the port on which the vmmServer is listening.
  final int? port;
  /// Gets or sets the provisioning state.
  final String provisioningState;
  /// The system data.
  final SystemDataResponse systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource Type
  final String type;
  /// Unique ID of vmmServer.
  final String uuid;
  /// Version is the version of the vmmSever.
  final String version;

  /// Creates a new [GetVmmServerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectionStatus] Gets or sets the connection status to the vmmServer.
  /// [credentials] Credentials to connect to VMMServer.
  /// [errorMessage] Gets or sets any error message if connection to vmmServer is having any issue.
  /// [extendedLocation] The extended location.
  /// [fqdn] Fqdn is the hostname/ip of the vmmServer.
  /// [id] Resource Id
  /// [location] Gets or sets the location.
  /// [name] Resource Name
  /// [port] Port is the port on which the vmmServer is listening.
  /// [provisioningState] Gets or sets the provisioning state.
  /// [systemData] The system data.
  /// [tags] Resource tags
  /// [type] Resource Type
  /// [uuid] Unique ID of vmmServer.
  /// [version] Version is the version of the vmmSever.
  const GetVmmServerResult({
    required this.azureApiVersion,
    required this.connectionStatus,
    this.credentials,
    required this.errorMessage,
    required this.extendedLocation,
    required this.fqdn,
    required this.id,
    required this.location,
    required this.name,
    this.port,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    required this.uuid,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'connectionStatus': connectionStatus,
      'credentials': ?credentials?.toMap(),
      'errorMessage': errorMessage,
      'extendedLocation': extendedLocation.toMap(),
      'fqdn': fqdn,
      'id': id,
      'location': location,
      'name': name,
      'port': ?port,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'uuid': uuid,
      'version': version,
    };
  }

  factory GetVmmServerResult.fromMap(Map<String, dynamic> map) {
    return GetVmmServerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      connectionStatus: map['connectionStatus'] as String,
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return VMMServerPropertiesResponseCredentials.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      errorMessage: map['errorMessage'] as String,
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      fqdn: map['fqdn'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return guardedValue as int; })(),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      uuid: map['uuid'] as String,
      version: map['version'] as String,
    );
  }
}
