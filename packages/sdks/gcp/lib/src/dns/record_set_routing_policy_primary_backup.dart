// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_set_routing_policy_primary_backup_backup_geo.dart';
import 'record_set_routing_policy_primary_backup_primary.dart';

class RecordSetRoutingPolicyPrimaryBackup {
  /// The backup geo targets, which provide a regional failover policy for the otherwise global primary targets.
  /// Structure is document above.
  final List<RecordSetRoutingPolicyPrimaryBackupBackupGeo> backupGeos;
  /// Specifies whether to enable fencing for backup geo queries.
  final bool? enableGeoFencingForBackups;
  /// The list of global primary targets to be health checked.
  /// Structure is documented below.
  final RecordSetRoutingPolicyPrimaryBackupPrimary primary;
  /// Specifies the percentage of traffic to send to the backup targets even when the primary targets are healthy.
  final double? trickleRatio;

  /// Creates a new [RecordSetRoutingPolicyPrimaryBackup].
  /// [backupGeos] The backup geo targets, which provide a regional failover policy for the otherwise global primary targets.
  /// [enableGeoFencingForBackups] Specifies whether to enable fencing for backup geo queries.
  /// [primary] The list of global primary targets to be health checked.
  /// [trickleRatio] Specifies the percentage of traffic to send to the backup targets even when the primary targets are healthy.
  RecordSetRoutingPolicyPrimaryBackup({
    required this.backupGeos,
    this.enableGeoFencingForBackups,
    required this.primary,
    this.trickleRatio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupGeos': pulumi.Input.encodeList<RecordSetRoutingPolicyPrimaryBackupBackupGeo, Map<String, dynamic>>(backupGeos, (value) => value.toMap()),
      'enableGeoFencingForBackups': ?enableGeoFencingForBackups,
      'primary': primary.toMap(),
      'trickleRatio': ?trickleRatio,
    };
  }

  factory RecordSetRoutingPolicyPrimaryBackup.fromMap(Map<String, dynamic> map) {
    return RecordSetRoutingPolicyPrimaryBackup(
      backupGeos: pulumi.Input.decodeList<RecordSetRoutingPolicyPrimaryBackupBackupGeo>(map['backupGeos'], (value) => RecordSetRoutingPolicyPrimaryBackupBackupGeo.fromMap((value as Map).cast<String, dynamic>())),
      enableGeoFencingForBackups: map['enableGeoFencingForBackups'] == null ? null : map['enableGeoFencingForBackups'] as bool,
      primary: RecordSetRoutingPolicyPrimaryBackupPrimary.fromMap((map['primary'] as Map).cast<String, dynamic>()),
      trickleRatio: map['trickleRatio'] == null ? null : map['trickleRatio'] as double,
    );
  }
}

