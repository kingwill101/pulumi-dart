// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_server_management_uri.dart';
import 'management_server_network.dart';

/// Input properties used for looking up and filtering ManagementServer resources.
class ManagementServerState {
  /// The location for the management server (management console)
  final pulumi.Input<String>? location;
  /// The management console URI
  /// Structure is documented below.
  final pulumi.Input<List<ManagementServerManagementUri>>? managementUris;
  /// The name of management server (management console)
  final pulumi.Input<String>? name;
  /// Network details to create management server (management console).
  /// Structure is documented below.
  final pulumi.Input<List<ManagementServerNetwork>>? networks;
  /// The oauth2ClientId of management console.
  final pulumi.Input<String>? oauth2ClientId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The type of management server (management console).
  /// Default value is `BACKUP_RESTORE`.
  /// Possible values are: `BACKUP_RESTORE`.
  final pulumi.Input<String>? type;

  /// Creates a new [ManagementServerState].
  /// [location] The location for the management server (management console)
  /// [managementUris] The management console URI
  /// [name] The name of management server (management console)
  /// [networks] Network details to create management server (management console).
  /// [oauth2ClientId] The oauth2ClientId of management console.
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The type of management server (management console).
  const ManagementServerState({
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
      'location': ?location,
      'managementUris': ?pulumi.Input.mapOptionalInputValue<List<ManagementServerManagementUri>, List<Map<String, dynamic>>>(managementUris, (value) => pulumi.Input.encodeList<ManagementServerManagementUri, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<ManagementServerNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<ManagementServerNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'oauth2ClientId': ?oauth2ClientId,
      'project': ?project,
      'type': ?type,
    };
  }

  factory ManagementServerState.fromMap(Map<String, dynamic> map) {
    return ManagementServerState(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementUris: (() { final guardedValue = map['managementUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagementServerManagementUri>(guardedValue, (value) => ManagementServerManagementUri.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagementServerNetwork>(guardedValue, (value) => ManagementServerNetwork.fromMap((value as Map).cast<String, dynamic>()))); })(),
      oauth2ClientId: (() { final guardedValue = map['oauth2ClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

