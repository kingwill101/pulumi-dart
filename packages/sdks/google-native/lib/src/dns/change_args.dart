// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_set_dns_v1.dart';

/// {@template pulumi_dns_v1_change_args_doc}
/// The set of arguments for Change.
/// {@endtemplate}
/// {@macro pulumi_dns_v1_change_args_doc}
class ChangeArgs {
  /// Which ResourceRecordSets to add?
  final pulumi.Input<List<ResourceRecordSetDnsV1>>? additions;
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final pulumi.Input<String>? clientOperationId;
  /// Which ResourceRecordSets to remove? Must match existing data exactly.
  final pulumi.Input<List<ResourceRecordSetDnsV1>>? deletions;
  /// If the DNS queries for the zone will be served.
  final pulumi.Input<bool>? isServing;
  final pulumi.Input<String>? kind;
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String>? project;

  /// Creates a new [ChangeArgs].
  /// [additions] Which ResourceRecordSets to add?
  /// [clientOperationId] For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  /// [deletions] Which ResourceRecordSets to remove? Must match existing data exactly.
  /// [isServing] If the DNS queries for the zone will be served.
  /// [kind] Optional.
  /// [managedZone] Required.
  /// [project] Optional.
  ChangeArgs({
    pulumi.Output<List<ResourceRecordSetDnsV1>>? additions,
    pulumi.Output<String>? clientOperationId,
    pulumi.Output<List<ResourceRecordSetDnsV1>>? deletions,
    pulumi.Output<bool>? isServing,
    pulumi.Output<String>? kind,
    required pulumi.Output<String> managedZone,
    pulumi.Output<String>? project,
  }) :
      additions = pulumi.Input.asOptionalInput<List<ResourceRecordSetDnsV1>>(additions),
      clientOperationId = pulumi.Input.asOptionalInput<String>(clientOperationId),
      deletions = pulumi.Input.asOptionalInput<List<ResourceRecordSetDnsV1>>(deletions),
      isServing = pulumi.Input.asOptionalInput<bool>(isServing),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      managedZone = pulumi.Input.asInput<String>(managedZone),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additions': ?additions,
      'clientOperationId': ?clientOperationId,
      'deletions': ?deletions,
      'isServing': ?isServing,
      'kind': ?kind,
      'managedZone': managedZone,
      'project': ?project,
    };
  }

  factory ChangeArgs.fromMap(Map<String, dynamic> map) {
    return ChangeArgs(
      additions: map['additions'] == null ? null : pulumi.Output.create<List<ResourceRecordSetDnsV1>>((map['additions'] as List).cast<ResourceRecordSetDnsV1>()),
      clientOperationId: map['clientOperationId'] == null ? null : pulumi.Output.create<String>(map['clientOperationId'] as String),
      deletions: map['deletions'] == null ? null : pulumi.Output.create<List<ResourceRecordSetDnsV1>>((map['deletions'] as List).cast<ResourceRecordSetDnsV1>()),
      isServing: map['isServing'] == null ? null : pulumi.Output.create<bool>(map['isServing'] as bool),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      managedZone: pulumi.Output.create<String>(map['managedZone'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

