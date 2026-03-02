// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_client_tls_policy_networksecurity_v1beta1_args_doc}
/// Arguments for getClientTlsPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_client_tls_policy_networksecurity_v1beta1_args_doc}
class GetClientTlsPolicyNetworksecurityV1beta1Args {
  final pulumi.Input<String> clientTlsPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetClientTlsPolicyNetworksecurityV1beta1Args].
  /// [clientTlsPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetClientTlsPolicyNetworksecurityV1beta1Args({
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

  factory GetClientTlsPolicyNetworksecurityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetClientTlsPolicyNetworksecurityV1beta1Args(
      clientTlsPolicyId: (map['clientTlsPolicyId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

