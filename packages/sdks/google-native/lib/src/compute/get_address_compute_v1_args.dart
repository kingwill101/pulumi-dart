// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_address_compute_v1_args_doc}
/// Arguments for getAddress.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_address_compute_v1_args_doc}
class GetAddressComputeV1Args {
  final pulumi.Input<String> address;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetAddressComputeV1Args].
  /// [address] Required.
  /// [project] Optional.
  /// [region] Required.
  GetAddressComputeV1Args({
    required this.address,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'project': ?project,
      'region': region,
    };
  }

  factory GetAddressComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetAddressComputeV1Args(
      address: (map['address'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

