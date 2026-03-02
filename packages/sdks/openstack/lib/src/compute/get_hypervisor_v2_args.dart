// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_hypervisor_v2_get_hypervisor_v2_args_doc}
/// Arguments for getHypervisorV2.
/// {@endtemplate}
/// {@macro pulumi_compute_get_hypervisor_v2_get_hypervisor_v2_args_doc}
class GetHypervisorV2Args {
  /// The hostname of the hypervisor.
  final pulumi.Input<String>? hostname;
  /// The region in which to obtain the V2 Compute client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetHypervisorV2Args].
  /// [hostname] The hostname of the hypervisor.
  /// [region] The region in which to obtain the V2 Compute client.
  GetHypervisorV2Args({
    this.hostname,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?hostname,
      'region': ?region,
    };
  }

  factory GetHypervisorV2Args.fromMap(Map<String, dynamic> map) {
    return GetHypervisorV2Args(
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

