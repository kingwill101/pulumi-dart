// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1_get_managed_zone_args_doc}
/// Arguments for getManagedZone.
/// {@endtemplate}
/// {@macro pulumi_dns_v1_get_managed_zone_args_doc}
class GetManagedZoneArgs {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String>? project;

  /// Creates a new [GetManagedZoneArgs].
  /// [clientOperationId] Optional.
  /// [managedZone] Required.
  /// [project] Optional.
  GetManagedZoneArgs({
    pulumi.Output<String>? clientOperationId,
    required pulumi.Output<String> managedZone,
    pulumi.Output<String>? project,
  }) :
      clientOperationId = pulumi.Input.asOptionalInput<String>(clientOperationId),
      managedZone = pulumi.Input.asInput<String>(managedZone),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientOperationId': ?clientOperationId,
      'managedZone': managedZone,
      'project': ?project,
    };
  }

  factory GetManagedZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedZoneArgs(
      clientOperationId: map['clientOperationId'] == null ? null : pulumi.Output.create<String>(map['clientOperationId'] as String),
      managedZone: pulumi.Output.create<String>(map['managedZone'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

