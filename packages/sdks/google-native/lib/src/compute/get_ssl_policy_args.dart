// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_ssl_policy_args_doc}
/// Arguments for getSslPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_ssl_policy_args_doc}
class GetSslPolicyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sslPolicy;

  /// Creates a new [GetSslPolicyArgs].
  /// [project] Optional.
  /// [sslPolicy] Required.
  GetSslPolicyArgs({this.project, required this.sslPolicy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project, 'sslPolicy': sslPolicy};
  }

  factory GetSslPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSslPolicyArgs(
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslPolicy: pulumi.Input.fromValue(map['sslPolicy'] as String),
    );
  }
}
