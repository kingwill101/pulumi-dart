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
  ManagementServerState({
    pulumi.Output<String>? location,
    pulumi.Output<List<ManagementServerManagementUri>>? managementUris,
    pulumi.Output<String>? name,
    pulumi.Output<List<ManagementServerNetwork>>? networks,
    pulumi.Output<String>? oauth2ClientId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? type,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      managementUris = pulumi.Input.asOptionalInput<List<ManagementServerManagementUri>>(managementUris),
      name = pulumi.Input.asOptionalInput<String>(name),
      networks = pulumi.Input.asOptionalInput<List<ManagementServerNetwork>>(networks),
      oauth2ClientId = pulumi.Input.asOptionalInput<String>(oauth2ClientId),
      project = pulumi.Input.asOptionalInput<String>(project),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managementUris: map['managementUris'] == null ? null : pulumi.Output.create<List<ManagementServerManagementUri>>(pulumi.Input.decodeList<ManagementServerManagementUri>(map['managementUris'], (value) => ManagementServerManagementUri.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networks: map['networks'] == null ? null : pulumi.Output.create<List<ManagementServerNetwork>>(pulumi.Input.decodeList<ManagementServerNetwork>(map['networks'], (value) => ManagementServerNetwork.fromMap((value as Map).cast<String, dynamic>()))),
      oauth2ClientId: map['oauth2ClientId'] == null ? null : pulumi.Output.create<String>(map['oauth2ClientId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

