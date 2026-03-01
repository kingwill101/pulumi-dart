// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1_get_change_args_doc}
/// Arguments for getChange.
/// {@endtemplate}
/// {@macro pulumi_dns_v1_get_change_args_doc}
class GetChangeArgs {
  final pulumi.Input<String> changeId;
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String>? project;

  /// Creates a new [GetChangeArgs].
  /// [changeId] Required.
  /// [clientOperationId] Optional.
  /// [managedZone] Required.
  /// [project] Optional.
  GetChangeArgs({
    required pulumi.Output<String> changeId,
    pulumi.Output<String>? clientOperationId,
    required pulumi.Output<String> managedZone,
    pulumi.Output<String>? project,
  }) :
      changeId = pulumi.Input.asInput<String>(changeId),
      clientOperationId = pulumi.Input.asOptionalInput<String>(clientOperationId),
      managedZone = pulumi.Input.asInput<String>(managedZone),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeId': changeId,
      'clientOperationId': ?clientOperationId,
      'managedZone': managedZone,
      'project': ?project,
    };
  }

  factory GetChangeArgs.fromMap(Map<String, dynamic> map) {
    return GetChangeArgs(
      changeId: pulumi.Output.create<String>(map['changeId'] as String),
      clientOperationId: map['clientOperationId'] == null ? null : pulumi.Output.create<String>(map['clientOperationId'] as String),
      managedZone: pulumi.Output.create<String>(map['managedZone'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

