// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_management_server_management_uri.dart';
import 'get_management_server_network.dart';

/// Result data returned by getManagementServer.
class GetManagementServerResult {
  final String? deletionPolicy;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final List<GetManagementServerManagementUri>? managementUris;
  final String? name;
  final List<GetManagementServerNetwork>? networks;
  final String? oauth2ClientId;
  final String? project;
  final String? type;

  /// Creates a new [GetManagementServerResult].
  /// [deletionPolicy] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [managementUris] Optional.
  /// [name] Optional.
  /// [networks] Optional.
  /// [oauth2ClientId] Optional.
  /// [project] Optional.
  /// [type] Optional.
  const GetManagementServerResult({
    this.deletionPolicy,
    this.id,
    this.location,
    this.managementUris,
    this.name,
    this.networks,
    this.oauth2ClientId,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'id': ?id,
      'location': ?location,
      'managementUris': ?(() { final guardedValue = managementUris; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagementServerManagementUri, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'networks': ?(() { final guardedValue = networks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagementServerNetwork, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'oauth2ClientId': ?oauth2ClientId,
      'project': ?project,
      'type': ?type,
    };
  }

  factory GetManagementServerResult.fromMap(Map<String, dynamic> map) {
    return GetManagementServerResult(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementUris: (() { final guardedValue = map['managementUris']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagementServerManagementUri>(guardedValue, (value) => GetManagementServerManagementUri.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagementServerNetwork>(guardedValue, (value) => GetManagementServerNetwork.fromMap((value as Map).cast<String, dynamic>())); })(),
      oauth2ClientId: (() { final guardedValue = map['oauth2ClientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
