// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_set.dart';

/// {@template pulumi_dns_v1_change_args_doc}
/// The set of arguments for Change.
/// {@endtemplate}
/// {@macro pulumi_dns_v1_change_args_doc}
class ChangeArgs {
  /// Which ResourceRecordSets to add?
  final pulumi.Input<List<ResourceRecordSet>?>? additions;
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final pulumi.Input<String?>? clientOperationId;
  /// Which ResourceRecordSets to remove? Must match existing data exactly.
  final pulumi.Input<List<ResourceRecordSet>?>? deletions;
  /// If the DNS queries for the zone will be served.
  final pulumi.Input<bool?>? isServing;
  final pulumi.Input<String?>? kind;
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String?>? project;

  /// Creates a new [ChangeArgs].
  /// [additions] Which ResourceRecordSets to add?
  /// [clientOperationId] For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  /// [deletions] Which ResourceRecordSets to remove? Must match existing data exactly.
  /// [isServing] If the DNS queries for the zone will be served.
  /// [kind] Optional.
  /// [managedZone] Required.
  /// [project] Optional.
  const ChangeArgs({
    this.additions,
    this.clientOperationId,
    this.deletions,
    this.isServing,
    this.kind,
    required this.managedZone,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additions': ?pulumi.Input.mapOptionalInputValue<List<ResourceRecordSet>, List<Map<String, dynamic>>>(additions, (value) => pulumi.Input.encodeList<ResourceRecordSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientOperationId': ?clientOperationId,
      'deletions': ?pulumi.Input.mapOptionalInputValue<List<ResourceRecordSet>, List<Map<String, dynamic>>>(deletions, (value) => pulumi.Input.encodeList<ResourceRecordSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isServing': ?isServing,
      'kind': ?kind,
      'managedZone': managedZone,
      'project': ?project,
    };
  }

  factory ChangeArgs.fromMap(Map<String, dynamic> map) {
    return ChangeArgs(
      additions: (() { final guardedValue = map['additions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceRecordSet>(guardedValue, (value) => ResourceRecordSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clientOperationId: (() { final guardedValue = map['clientOperationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletions: (() { final guardedValue = map['deletions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceRecordSet>(guardedValue, (value) => ResourceRecordSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      isServing: (() { final guardedValue = map['isServing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedZone: pulumi.Input.fromValue(map['managedZone'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
