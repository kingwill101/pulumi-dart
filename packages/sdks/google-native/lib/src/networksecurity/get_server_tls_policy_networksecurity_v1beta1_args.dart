// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_server_tls_policy_networksecurity_v1beta1_args_doc}
/// Arguments for getServerTlsPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_server_tls_policy_networksecurity_v1beta1_args_doc}
class GetServerTlsPolicyNetworksecurityV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serverTlsPolicyId;

  /// Creates a new [GetServerTlsPolicyNetworksecurityV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [serverTlsPolicyId] Required.
  GetServerTlsPolicyNetworksecurityV1beta1Args({
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

  factory GetServerTlsPolicyNetworksecurityV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServerTlsPolicyNetworksecurityV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverTlsPolicyId: pulumi.Input.fromValue(
        map['serverTlsPolicyId'] as String,
      ),
    );
  }
}
