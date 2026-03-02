// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1beta2_get_change_dns_v1beta2_args_doc}
/// Arguments for getChange.
/// {@endtemplate}
/// {@macro pulumi_dns_v1beta2_get_change_dns_v1beta2_args_doc}
class GetChangeDnsV1beta2Args {
  final pulumi.Input<String> changeId;
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String>? project;

  /// Creates a new [GetChangeDnsV1beta2Args].
  /// [changeId] Required.
  /// [clientOperationId] Optional.
  /// [managedZone] Required.
  /// [project] Optional.
  GetChangeDnsV1beta2Args({
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

  factory GetChangeDnsV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetChangeDnsV1beta2Args(
      changeId: (map['changeId'] as String).input(),
      clientOperationId: map['clientOperationId'] == null ? null : (map['clientOperationId']! as String).input(),
      managedZone: (map['managedZone'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

