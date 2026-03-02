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
      additions: map['additions'] == null ? null : ((map['additions'] as List).cast<ResourceRecordSetResource>()).input(),
      clientOperationId: map['clientOperationId'] == null ? null : (map['clientOperationId'] as String).input(),
      deletions: map['deletions'] == null ? null : ((map['deletions'] as List).cast<ResourceRecordSetResource>()).input(),
      isServing: map['isServing'] == null ? null : (map['isServing'] as bool).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      managedZone: (map['managedZone'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

