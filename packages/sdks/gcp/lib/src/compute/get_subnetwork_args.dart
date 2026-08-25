// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_subnetwork_get_subnetwork_args_doc}
/// Arguments for getSubnetwork.
/// {@endtemplate}
/// {@macro pulumi_compute_get_subnetwork_get_subnetwork_args_doc}
class GetSubnetworkArgs {
  /// The name of the subnetwork. One of `name` or `selfLink`
  /// must be specified.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region this subnetwork has been created in. If
  /// unspecified, this defaults to the region configured in the provider.
  final pulumi.Input<String?>? region;
  /// The self link of the subnetwork. If `selfLink` is
  /// specified, `name`, `project`, and `region` are ignored.
  final pulumi.Input<String?>? selfLink;

  /// Creates a new [GetSubnetworkArgs].
  /// [name] The name of the subnetwork. One of `name` or `selfLink`
  /// [project] The ID of the project in which the resource belongs. If it
  /// [region] The region this subnetwork has been created in. If
  /// [selfLink] The self link of the subnetwork. If `selfLink` is
  const GetSubnetworkArgs({
    this.name,
    this.project,
    this.region,
    this.selfLink,
  });

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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
