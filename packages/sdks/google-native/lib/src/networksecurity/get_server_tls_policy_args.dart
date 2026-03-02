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
  GetServerTlsPolicyArgs({
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
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      serverTlsPolicyId: (map['serverTlsPolicyId'] as String).input(),
    );
  }
}

