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
  const GetChangeArgs({
    required this.changeId,
    this.clientOperationId,
    required this.managedZone,
    this.project,
  });

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
      changeId: pulumi.Input.fromValue(map['changeId'] as String),
      clientOperationId: (() { final guardedValue = map['clientOperationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedZone: pulumi.Input.fromValue(map['managedZone'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
