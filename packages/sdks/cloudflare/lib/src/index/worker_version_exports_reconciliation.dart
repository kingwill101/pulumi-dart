// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_version_exports_reconciliation_info.dart';
import 'worker_version_exports_reconciliation_renamed.dart';
import 'worker_version_exports_reconciliation_transfer_pending.dart';
import 'worker_version_exports_reconciliation_transferred.dart';
import 'worker_version_exports_reconciliation_warning.dart';

class WorkerVersionExportsReconciliation {
  /// Class names for which a new namespace was provisioned.
  final pulumi.Input<List<String>?>? createds;
  /// Class names whose namespace was deleted by a `deleted` tombstone.
  final pulumi.Input<List<String>?>? deleteds;
  /// Non-blocking info entries (stale tombstones, tombstone applied with class still in code). See `exportsReconciliationInfo`.
  final pulumi.Input<List<WorkerVersionExportsReconciliationInfo>?>? infos;
  /// Source class names whose tombstone entry is now stale and safe to delete from `exports` (no remaining referencing scripts).
  final pulumi.Input<List<String>?>? removableEntries;
  /// Applied `renamed` tombstones.
  final pulumi.Input<List<WorkerVersionExportsReconciliationRenamed>?>? renameds;
  /// Phase-1 transfer hints recorded on the target side.
  final pulumi.Input<List<WorkerVersionExportsReconciliationTransferPending>?>? transferPendings;
  /// Committed `transferred` tombstones (phase-2).
  final pulumi.Input<List<WorkerVersionExportsReconciliationTransferred>?>? transferreds;
  /// Class names whose provisioned namespace was mutated in place.
  final pulumi.Input<List<String>?>? updateds;
  /// Non-blocking warnings. See `exportsReconciliationWarning`.
  final pulumi.Input<List<WorkerVersionExportsReconciliationWarning>?>? warnings;

  /// Creates a new [WorkerVersionExportsReconciliation].
  /// [createds] Class names for which a new namespace was provisioned.
  /// [deleteds] Class names whose namespace was deleted by a `deleted` tombstone.
  /// [infos] Non-blocking info entries (stale tombstones, tombstone applied with class still in code). See `exportsReconciliationInfo`.
  /// [removableEntries] Source class names whose tombstone entry is now stale and safe to delete from `exports` (no remaining referencing scripts).
  /// [renameds] Applied `renamed` tombstones.
  /// [transferPendings] Phase-1 transfer hints recorded on the target side.
  /// [transferreds] Committed `transferred` tombstones (phase-2).
  /// [updateds] Class names whose provisioned namespace was mutated in place.
  /// [warnings] Non-blocking warnings. See `exportsReconciliationWarning`.
  const WorkerVersionExportsReconciliation({
    this.createds,
    this.deleteds,
    this.infos,
    this.removableEntries,
    this.renameds,
    this.transferPendings,
    this.transferreds,
    this.updateds,
    this.warnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createds': ?createds,
      'deleteds': ?deleteds,
      'infos': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionExportsReconciliationInfo>, List<Map<String, dynamic>>>(infos, (value) => pulumi.Input.encodeList<WorkerVersionExportsReconciliationInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'removableEntries': ?removableEntries,
      'renameds': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionExportsReconciliationRenamed>, List<Map<String, dynamic>>>(renameds, (value) => pulumi.Input.encodeList<WorkerVersionExportsReconciliationRenamed, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transferPendings': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionExportsReconciliationTransferPending>, List<Map<String, dynamic>>>(transferPendings, (value) => pulumi.Input.encodeList<WorkerVersionExportsReconciliationTransferPending, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transferreds': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionExportsReconciliationTransferred>, List<Map<String, dynamic>>>(transferreds, (value) => pulumi.Input.encodeList<WorkerVersionExportsReconciliationTransferred, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateds': ?updateds,
      'warnings': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionExportsReconciliationWarning>, List<Map<String, dynamic>>>(warnings, (value) => pulumi.Input.encodeList<WorkerVersionExportsReconciliationWarning, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkerVersionExportsReconciliation.fromMap(Map<String, dynamic> map) {
    return WorkerVersionExportsReconciliation(
      createds: (() { final guardedValue = map['createds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deleteds: (() { final guardedValue = map['deleteds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      infos: (() { final guardedValue = map['infos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionExportsReconciliationInfo>(guardedValue, (value) => WorkerVersionExportsReconciliationInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      removableEntries: (() { final guardedValue = map['removableEntries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      renameds: (() { final guardedValue = map['renameds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionExportsReconciliationRenamed>(guardedValue, (value) => WorkerVersionExportsReconciliationRenamed.fromMap((value as Map).cast<String, dynamic>()))); })(),
      transferPendings: (() { final guardedValue = map['transferPendings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionExportsReconciliationTransferPending>(guardedValue, (value) => WorkerVersionExportsReconciliationTransferPending.fromMap((value as Map).cast<String, dynamic>()))); })(),
      transferreds: (() { final guardedValue = map['transferreds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionExportsReconciliationTransferred>(guardedValue, (value) => WorkerVersionExportsReconciliationTransferred.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updateds: (() { final guardedValue = map['updateds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      warnings: (() { final guardedValue = map['warnings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionExportsReconciliationWarning>(guardedValue, (value) => WorkerVersionExportsReconciliationWarning.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
