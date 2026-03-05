// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A NFS export entry.
class NfsExportResponse {
  /// Allow dev flag in NfsShare AllowedClientsRequest.
  final pulumi.Input<bool> allowDev;
  /// Allow the setuid flag.
  final pulumi.Input<bool> allowSuid;
  /// A CIDR range.
  final pulumi.Input<String> cidr;
  /// Either a single machine, identified by an ID, or a comma-separated list of machine IDs.
  final pulumi.Input<String> machineId;
  /// Network to use to publish the export.
  final pulumi.Input<String> networkId;
  /// Disable root squashing, which is a feature of NFS. Root squash is a special mapping of the remote superuser (root) identity when using identity authentication.
  final pulumi.Input<bool> noRootSquash;
  /// Export permissions.
  final pulumi.Input<String> permissions;

  /// Creates a new [NfsExportResponse].
  /// [allowDev] Allow dev flag in NfsShare AllowedClientsRequest.
  /// [allowSuid] Allow the setuid flag.
  /// [cidr] A CIDR range.
  /// [machineId] Either a single machine, identified by an ID, or a comma-separated list of machine IDs.
  /// [networkId] Network to use to publish the export.
  /// [noRootSquash] Disable root squashing, which is a feature of NFS. Root squash is a special mapping of the remote superuser (root) identity when using identity authentication.
  /// [permissions] Export permissions.
  NfsExportResponse({
    required this.allowDev,
    required this.allowSuid,
    required this.cidr,
    required this.machineId,
    required this.networkId,
    required this.noRootSquash,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowDev': allowDev,
      'allowSuid': allowSuid,
      'cidr': cidr,
      'machineId': machineId,
      'networkId': networkId,
      'noRootSquash': noRootSquash,
      'permissions': permissions,
    };
  }

  factory NfsExportResponse.fromMap(Map<String, dynamic> map) {
    return NfsExportResponse(
      allowDev: pulumi.Input.fromValue(map['allowDev'] as bool),
      allowSuid: pulumi.Input.fromValue(map['allowSuid'] as bool),
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      machineId: pulumi.Input.fromValue(map['machineId'] as String),
      networkId: pulumi.Input.fromValue(map['networkId'] as String),
      noRootSquash: pulumi.Input.fromValue(map['noRootSquash'] as bool),
      permissions: pulumi.Input.fromValue(map['permissions'] as String),
    );
  }
}

