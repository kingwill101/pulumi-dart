// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_address_args_doc}
/// Arguments for getAddress.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_address_args_doc}
class GetAddressArgs {
  final pulumi.Input<String> address;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetAddressArgs].
  /// [address] Required.
  /// [project] Optional.
  /// [region] Required.
  GetAddressArgs({
    required pulumi.Output<String> address,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
  }) :
      address = pulumi.Input.asInput<String>(address),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'project': ?project,
      'region': region,
    };
  }

  factory GetAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetAddressArgs(
      address: pulumi.Output.create<String>(map['address'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

