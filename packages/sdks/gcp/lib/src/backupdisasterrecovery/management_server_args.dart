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
    required this.location,
    this.name,
    this.networks,
    this.project,
    this.type,
  });

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
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networks: map['networks'] == null ? null : (pulumi.Input.decodeList<ManagementServerNetwork>(map['networks'], (value) => ManagementServerNetwork.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

