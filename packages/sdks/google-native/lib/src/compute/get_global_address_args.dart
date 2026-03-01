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
    required pulumi.Output<String> address,
    pulumi.Output<String>? project,
  }) :
      address = pulumi.Input.asInput<String>(address),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'project': ?project,
    };
  }

  factory GetGlobalAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalAddressArgs(
      address: pulumi.Output.create<String>(map['address'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

