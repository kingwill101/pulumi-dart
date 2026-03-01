// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcscConfig resources.
class VpcscConfigState {
  /// The name of the location this config is located in.
  final pulumi.Input<String>? location;
  /// The name of the project's VPC SC Config.
  /// Always of the form: projects/{project}/location/{location}/vpcscConfig
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The VPC SC policy for project and location.
  /// Possible values are: `DENY`, `ALLOW`.
  final pulumi.Input<String>? vpcscPolicy;

  /// Creates a new [VpcscConfigState].
  /// [location] The name of the location this config is located in.
  /// [name] The name of the project's VPC SC Config.
  /// [project] The ID of the project in which the resource belongs.
  /// [vpcscPolicy] The VPC SC policy for project and location.
  VpcscConfigState({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? vpcscPolicy,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      vpcscPolicy = pulumi.Input.asOptionalInput<String>(vpcscPolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'vpcscPolicy': ?vpcscPolicy,
    };
  }

  factory VpcscConfigState.fromMap(Map<String, dynamic> map) {
    return VpcscConfigState(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      vpcscPolicy: map['vpcscPolicy'] == null ? null : pulumi.Output.create<String>(map['vpcscPolicy'] as String),
    );
  }
}

