// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_vpcsc_config_vpcsc_config_args_doc}
/// The set of arguments for VpcscConfig.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_vpcsc_config_vpcsc_config_args_doc}
class VpcscConfigArgs {
  /// The name of the location this config is located in.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The VPC SC policy for project and location.
  /// Possible values are: `DENY`, `ALLOW`.
  final pulumi.Input<String>? vpcscPolicy;

  /// Creates a new [VpcscConfigArgs].
  /// [location] The name of the location this config is located in.
  /// [project] The ID of the project in which the resource belongs.
  /// [vpcscPolicy] The VPC SC policy for project and location.
  VpcscConfigArgs({
    this.location,
    this.project,
    this.vpcscPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
      'vpcscPolicy': ?vpcscPolicy,
    };
  }

  factory VpcscConfigArgs.fromMap(Map<String, dynamic> map) {
    return VpcscConfigArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      vpcscPolicy: map['vpcscPolicy'] == null ? null : (map['vpcscPolicy'] as String).input(),
    );
  }
}

