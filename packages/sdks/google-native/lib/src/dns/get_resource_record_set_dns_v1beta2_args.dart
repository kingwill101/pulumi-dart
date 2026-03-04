// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1beta2_get_resource_record_set_dns_v1beta2_args_doc}
/// Arguments for getResourceRecordSet.
/// {@endtemplate}
/// {@macro pulumi_dns_v1beta2_get_resource_record_set_dns_v1beta2_args_doc}
class GetResourceRecordSetDnsV1beta2Args {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String> name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> type;

  /// Creates a new [GetResourceRecordSetDnsV1beta2Args].
  /// [clientOperationId] Optional.
  /// [managedZone] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [type] Required.
  GetResourceRecordSetDnsV1beta2Args({
    this.clientOperationId,
    required this.managedZone,
    required this.name,
    this.project,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientOperationId': ?clientOperationId,
      'managedZone': managedZone,
      'name': name,
      'project': ?project,
      'type': type,
    };
  }

  factory GetResourceRecordSetDnsV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetResourceRecordSetDnsV1beta2Args(
      clientOperationId: (() {
        final guardedValue = map['clientOperationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedZone: pulumi.Input.fromValue(map['managedZone'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
