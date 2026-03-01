// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_address_get_address_args_doc}
/// Arguments for getAddress.
/// {@endtemplate}
/// {@macro pulumi_compute_get_address_get_address_args_doc}
class GetAddressArgs {
  /// A unique name for the resource, required by GCE.
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Region in which the created address reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAddressArgs].
  /// [name] A unique name for the resource, required by GCE.
  /// [project] The project in which the resource belongs. If it
  /// [region] The Region in which the created address reside.
  GetAddressArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetAddressArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

