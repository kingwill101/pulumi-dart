// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_server_network.dart';

/// {@template pulumi_backupdisasterrecovery_management_server_management_server_args_doc}
/// The set of arguments for ManagementServer.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_management_server_management_server_args_doc}
class ManagementServerArgs {
  /// The location for the management server (management console)
  final pulumi.Input<String> location;
  /// The name of management server (management console)
  final pulumi.Input<String>? name;
  /// Network details to create management server (management console).
  /// Structure is documented below.
  final pulumi.Input<List<ManagementServerNetwork>>? networks;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The type of management server (management console).
  /// Default value is `BACKUP_RESTORE`.
  /// Possible values are: `BACKUP_RESTORE`.
  final pulumi.Input<String>? type;

  /// Creates a new [ManagementServerArgs].
  /// [location] The location for the management server (management console)
  /// [name] The name of management server (management console)
  /// [networks] Network details to create management server (management console).
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The type of management server (management console).
  ManagementServerArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    pulumi.Output<List<ManagementServerNetwork>>? networks,
    pulumi.Output<String>? project,
    pulumi.Output<String>? type,
  }) :
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networks = pulumi.Input.asOptionalInput<List<ManagementServerNetwork>>(networks),
      project = pulumi.Input.asOptionalInput<String>(project),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': ?name,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<ManagementServerNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<ManagementServerNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'type': ?type,
    };
  }

  factory ManagementServerArgs.fromMap(Map<String, dynamic> map) {
    return ManagementServerArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networks: map['networks'] == null ? null : pulumi.Output.create<List<ManagementServerNetwork>>(pulumi.Input.decodeList<ManagementServerNetwork>(map['networks'], (value) => ManagementServerNetwork.fromMap((value as Map).cast<String, dynamic>()))),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

