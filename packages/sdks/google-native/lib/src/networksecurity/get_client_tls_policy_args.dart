// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1_get_client_tls_policy_args_doc}
/// Arguments for getClientTlsPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_get_client_tls_policy_args_doc}
class GetClientTlsPolicyArgs {
  final pulumi.Input<String> clientTlsPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetClientTlsPolicyArgs].
  /// [clientTlsPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetClientTlsPolicyArgs({
    required this.clientTlsPolicyId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientTlsPolicyId': clientTlsPolicyId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetClientTlsPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetClientTlsPolicyArgs(
      clientTlsPolicyId: (map['clientTlsPolicyId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

