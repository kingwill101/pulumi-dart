// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'vmmserver_properties_response_credentials.dart';

/// Result data returned by getVmmServer.
class GetVmmServerResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets or sets the connection status to the vmmServer.
  final String? connectionStatus;
  /// Credentials to connect to VMMServer.
  final VMMServerPropertiesResponseCredentials? credentials;
  /// Gets or sets any error message if connection to vmmServer is having any issue.
  final String? errorMessage;
  /// The extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Fqdn is the hostname/ip of the vmmServer.
  final String? fqdn;
  /// Resource Id
  final String? id;
  /// Gets or sets the location.
  final String? location;
  /// Resource Name
  final String? name;
  /// Port is the port on which the vmmServer is listening.
  final int? port;
  /// Gets or sets the provisioning state.
  final String? provisioningState;
  /// The system data.
  final SystemDataResponse? systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource Type
  final String? type;
  /// Unique ID of vmmServer.
  final String? uuid;
  /// Version is the version of the vmmSever.
  final String? version;

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
    this.azureApiVersion,
    this.connectionStatus,
    this.credentials,
    this.errorMessage,
    this.extendedLocation,
    this.fqdn,
    this.id,
    this.location,
    this.name,
    this.port,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
    this.uuid,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'connectionStatus': ?connectionStatus,
      'credentials': ?credentials?.toMap(),
      'errorMessage': ?errorMessage,
      'extendedLocation': ?extendedLocation?.toMap(),
      'fqdn': ?fqdn,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'port': ?port,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'uuid': ?uuid,
      'version': ?version,
    };
  }

  factory GetVmmServerResult.fromMap(Map<String, dynamic> map) {
    return GetVmmServerResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionStatus: (() { final guardedValue = map['connectionStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return VMMServerPropertiesResponseCredentials.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
