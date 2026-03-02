// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_export_permissions.dart';

/// A NFS export entry.
class NfsExport {
  /// Allow dev flag in NfsShare AllowedClientsRequest.
  final pulumi.Input<bool>? allowDev;
  /// Allow the setuid flag.
  final pulumi.Input<bool>? allowSuid;
  /// A CIDR range.
  final pulumi.Input<String>? cidr;
  /// Either a single machine, identified by an ID, or a comma-separated list of machine IDs.
  final pulumi.Input<String>? machineId;
  /// Network to use to publish the export.
  final pulumi.Input<String>? networkId;
  /// Disable root squashing, which is a feature of NFS. Root squash is a special mapping of the remote superuser (root) identity when using identity authentication.
  final pulumi.Input<bool>? noRootSquash;
  /// Export permissions.
  final pulumi.Input<NfsExportPermissions>? permissions;

  /// Creates a new [NfsExport].
  /// [allowDev] Allow dev flag in NfsShare AllowedClientsRequest.
  /// [allowSuid] Allow the setuid flag.
  /// [cidr] A CIDR range.
  /// [machineId] Either a single machine, identified by an ID, or a comma-separated list of machine IDs.
  /// [networkId] Network to use to publish the export.
  /// [noRootSquash] Disable root squashing, which is a feature of NFS. Root squash is a special mapping of the remote superuser (root) identity when using identity authentication.
  /// [permissions] Export permissions.
  NfsExport({
    this.allowDev,
    this.allowSuid,
    this.cidr,
    this.machineId,
    this.networkId,
    this.noRootSquash,
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowDev': ?allowDev,
      'allowSuid': ?allowSuid,
      'cidr': ?cidr,
      'machineId': ?machineId,
      'networkId': ?networkId,
      'noRootSquash': ?noRootSquash,
      'permissions': ?pulumi.Input.mapOptionalInputValue<NfsExportPermissions, String>(permissions, (value) => value.value),
    };
  }

  factory NfsExport.fromMap(Map<String, dynamic> map) {
    return NfsExport(
      allowDev: map['allowDev'] == null ? null : (map['allowDev']! as bool).input(),
      allowSuid: map['allowSuid'] == null ? null : (map['allowSuid']! as bool).input(),
      cidr: map['cidr'] == null ? null : (map['cidr']! as String).input(),
      machineId: map['machineId'] == null ? null : (map['machineId']! as String).input(),
      networkId: map['networkId'] == null ? null : (map['networkId']! as String).input(),
      noRootSquash: map['noRootSquash'] == null ? null : (map['noRootSquash']! as bool).input(),
      permissions: map['permissions'] == null ? null : (NfsExportPermissions.fromValue(map['permissions']! as String)).input(),
    );
  }
}

