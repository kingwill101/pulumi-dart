// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_address_compute_beta_args_doc}
/// Arguments for getAddress.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_address_compute_beta_args_doc}
class GetAddressComputeBetaArgs {
  final pulumi.Input<String> address;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetAddressComputeBetaArgs].
  /// [address] Required.
  /// [project] Optional.
  /// [region] Required.
  GetAddressComputeBetaArgs({
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

  factory GetAddressComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetAddressComputeBetaArgs(
      address: pulumi.Input.fromValue(map['address'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
