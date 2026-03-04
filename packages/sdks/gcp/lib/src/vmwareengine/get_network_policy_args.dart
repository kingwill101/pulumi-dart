// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_get_network_policy_get_network_policy_args_doc}
/// Arguments for getNetworkPolicy.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_get_network_policy_get_network_policy_args_doc}
class GetNetworkPolicyArgs {
  /// Location of the resource.
  final pulumi.Input<String> location;

  /// Name of the resource.
  final pulumi.Input<String> name;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNetworkPolicyArgs].
  /// [location] Location of the resource.
  /// [name] Name of the resource.
  /// [project] Optional.
  GetNetworkPolicyArgs({
    required this.location,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetNetworkPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkPolicyArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
