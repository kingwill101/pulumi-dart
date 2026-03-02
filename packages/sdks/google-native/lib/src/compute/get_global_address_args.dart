// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_global_address_args_doc}
/// Arguments for getGlobalAddress.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_global_address_args_doc}
class GetGlobalAddressArgs {
  final pulumi.Input<String> address;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGlobalAddressArgs].
  /// [address] Required.
  /// [project] Optional.
  GetGlobalAddressArgs({
    required this.address,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'project': ?project,
    };
  }

  factory GetGlobalAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalAddressArgs(
      address: (map['address'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

