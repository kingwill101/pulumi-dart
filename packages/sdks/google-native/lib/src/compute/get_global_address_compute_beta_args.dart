// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_global_address_compute_beta_args_doc}
/// Arguments for getGlobalAddress.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_global_address_compute_beta_args_doc}
class GetGlobalAddressComputeBetaArgs {
  final pulumi.Input<String> address;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGlobalAddressComputeBetaArgs].
  /// [address] Required.
  /// [project] Optional.
  GetGlobalAddressComputeBetaArgs({
    required this.address,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'project': ?project,
    };
  }

  factory GetGlobalAddressComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalAddressComputeBetaArgs(
      address: (map['address'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

