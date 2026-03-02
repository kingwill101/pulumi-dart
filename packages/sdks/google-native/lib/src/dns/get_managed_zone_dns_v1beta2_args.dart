// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1beta2_get_managed_zone_dns_v1beta2_args_doc}
/// Arguments for getManagedZone.
/// {@endtemplate}
/// {@macro pulumi_dns_v1beta2_get_managed_zone_dns_v1beta2_args_doc}
class GetManagedZoneDnsV1beta2Args {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String>? project;

  /// Creates a new [GetManagedZoneDnsV1beta2Args].
  /// [clientOperationId] Optional.
  /// [managedZone] Required.
  /// [project] Optional.
  GetManagedZoneDnsV1beta2Args({
    this.clientOperationId,
    required this.managedZone,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientOperationId': ?clientOperationId,
      'managedZone': managedZone,
      'project': ?project,
    };
  }

  factory GetManagedZoneDnsV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetManagedZoneDnsV1beta2Args(
      clientOperationId: map['clientOperationId'] == null ? null : (map['clientOperationId']! as String).input(),
      managedZone: (map['managedZone'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

