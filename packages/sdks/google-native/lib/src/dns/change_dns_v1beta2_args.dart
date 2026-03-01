// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_set_resource.dart';

/// {@template pulumi_dns_v1beta2_change_dns_v1beta2_args_doc}
/// The set of arguments for Change.
/// {@endtemplate}
/// {@macro pulumi_dns_v1beta2_change_dns_v1beta2_args_doc}
class ChangeDnsV1beta2Args {
  /// Which ResourceRecordSets to add?
  final pulumi.Input<List<ResourceRecordSetResource>>? additions;
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final pulumi.Input<String>? clientOperationId;
  /// Which ResourceRecordSets to remove? Must match existing data exactly.
  final pulumi.Input<List<ResourceRecordSetResource>>? deletions;
  /// If the DNS queries for the zone will be served.
  final pulumi.Input<bool>? isServing;
  final pulumi.Input<String>? kind;
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String>? project;

  /// Creates a new [ChangeDnsV1beta2Args].
  /// [additions] Which ResourceRecordSets to add?
  /// [clientOperationId] For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  /// [deletions] Which ResourceRecordSets to remove? Must match existing data exactly.
  /// [isServing] If the DNS queries for the zone will be served.
  /// [kind] Optional.
  /// [managedZone] Required.
  /// [project] Optional.
  ChangeDnsV1beta2Args({
    pulumi.Output<List<ResourceRecordSetResource>>? additions,
    pulumi.Output<String>? clientOperationId,
    pulumi.Output<List<ResourceRecordSetResource>>? deletions,
    pulumi.Output<bool>? isServing,
    pulumi.Output<String>? kind,
    required pulumi.Output<String> managedZone,
    pulumi.Output<String>? project,
  }) :
      additions = pulumi.Input.asOptionalInput<List<ResourceRecordSetResource>>(additions),
      clientOperationId = pulumi.Input.asOptionalInput<String>(clientOperationId),
      deletions = pulumi.Input.asOptionalInput<List<ResourceRecordSetResource>>(deletions),
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

  factory ChangeDnsV1beta2Args.fromMap(Map<String, dynamic> map) {
    return ChangeDnsV1beta2Args(
      additions: map['additions'] == null ? null : pulumi.Output.create<List<ResourceRecordSetResource>>((map['additions'] as List).cast<ResourceRecordSetResource>()),
      clientOperationId: map['clientOperationId'] == null ? null : pulumi.Output.create<String>(map['clientOperationId'] as String),
      deletions: map['deletions'] == null ? null : pulumi.Output.create<List<ResourceRecordSetResource>>((map['deletions'] as List).cast<ResourceRecordSetResource>()),
      isServing: map['isServing'] == null ? null : pulumi.Output.create<bool>(map['isServing'] as bool),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      managedZone: pulumi.Output.create<String>(map['managedZone'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

