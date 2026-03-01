// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_subnetwork_get_subnetwork_args_doc}
/// Arguments for getSubnetwork.
/// {@endtemplate}
/// {@macro pulumi_compute_get_subnetwork_get_subnetwork_args_doc}
class GetSubnetworkArgs {
  /// The name of the subnetwork. One of `name` or `self_link`
  /// must be specified.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region this subnetwork has been created in. If
  /// unspecified, this defaults to the region configured in the provider.
  final pulumi.Input<String>? region;
  /// The self link of the subnetwork. If `self_link` is
  /// specified, `name`, `project`, and `region` are ignored.
  final pulumi.Input<String>? selfLink;

  /// Creates a new [GetSubnetworkArgs].
  /// [name] The name of the subnetwork. One of `name` or `self_link`
  /// [project] The ID of the project in which the resource belongs. If it
  /// [region] The region this subnetwork has been created in. If
  /// [selfLink] The self link of the subnetwork. If `self_link` is
  GetSubnetworkArgs({
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? selfLink,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'selfLink': ?selfLink,
    };
  }

  factory GetSubnetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetworkArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
    );
  }
}

