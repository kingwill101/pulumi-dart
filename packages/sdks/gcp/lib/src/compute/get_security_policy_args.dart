// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_security_policy_get_security_policy_args_doc}
/// Arguments for getSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_get_security_policy_get_security_policy_args_doc}
class GetSecurityPolicyArgs {
  /// The name of the security policy. Provide either this or a `selfLink`.
  final pulumi.Input<String>? name;
  /// The project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The selfLink of the security policy. Provide either this or a `name`
  final pulumi.Input<String>? selfLink;

  /// Creates a new [GetSecurityPolicyArgs].
  /// [name] The name of the security policy. Provide either this or a `selfLink`.
  /// [project] The project in which the resource belongs. If it is not provided, the provider project is used.
  /// [selfLink] The selfLink of the security policy. Provide either this or a `name`
  const GetSecurityPolicyArgs({
    this.name,
    this.project,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'project': ?project,
      'selfLink': ?selfLink,
    };
  }

  factory GetSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
