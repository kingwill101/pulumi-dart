// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcscConfig resources.
class VpcscConfigState {
  /// The name of the location this config is located in.
  final pulumi.Input<String?>? location;
  /// The name of the project's VPC SC Config.
  /// Always of the form: projects/{project}/location/{location}/vpcscConfig
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The VPC SC policy for project and location.
  /// Possible values are: `DENY`, `ALLOW`.
  final pulumi.Input<String?>? vpcscPolicy;

  /// Creates a new [VpcscConfigState].
  /// [location] The name of the location this config is located in.
  /// [name] The name of the project's VPC SC Config.
  /// [project] The ID of the project in which the resource belongs.
  /// [vpcscPolicy] The VPC SC policy for project and location.
  const VpcscConfigState({
    this.location,
    this.name,
    this.project,
    this.vpcscPolicy,
  });

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
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcscPolicy: (() { final guardedValue = map['vpcscPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
