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
    pulumi.Output<String>? clientOperationId,
    required pulumi.Output<String> managedZone,
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> type,
  }) :
      clientOperationId = pulumi.Input.asOptionalInput<String>(clientOperationId),
      managedZone = pulumi.Input.asInput<String>(managedZone),
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      type = pulumi.Input.asInput<String>(type);

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
      clientOperationId: map['clientOperationId'] == null ? null : pulumi.Output.create<String>(map['clientOperationId'] as String),
      managedZone: pulumi.Output.create<String>(map['managedZone'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

