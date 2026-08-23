// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1_get_server_tls_policy_args_doc}
/// Arguments for getServerTlsPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_get_server_tls_policy_args_doc}
class GetServerTlsPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serverTlsPolicyId;

  /// Creates a new [GetServerTlsPolicyArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [serverTlsPolicyId] Required.
  const GetServerTlsPolicyArgs({
    required this.location,
    this.project,
    required this.serverTlsPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'serverTlsPolicyId': serverTlsPolicyId,
    };
  }

  factory GetServerTlsPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServerTlsPolicyArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverTlsPolicyId: pulumi.Input.fromValue(map['serverTlsPolicyId'] as String),
    );
  }
}
