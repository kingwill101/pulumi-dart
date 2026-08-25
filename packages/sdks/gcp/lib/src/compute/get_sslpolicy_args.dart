// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_sslpolicy_get_sslpolicy_args_doc}
/// Arguments for getSSLPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_get_sslpolicy_get_sslpolicy_args_doc}
class GetSSLPolicyArgs {
  /// The name of the SSL Policy.
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetSSLPolicyArgs].
  /// [name] The name of the SSL Policy.
  /// [project] The ID of the project in which the resource belongs. If it
  const GetSSLPolicyArgs({
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
    };
  }

  factory GetSSLPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSSLPolicyArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
