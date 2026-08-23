// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterControlPlaneEndpointsConfigDnsEndpointConfig {
  /// Controls whether user traffic is allowed over this endpoint. Note that GCP-managed services may still use the endpoint even if this is false.
  final pulumi.Input<bool> allowExternalTraffic;
  /// Controls whether the k8s certs auth is allowed via dns.
  final pulumi.Input<bool> enableK8sCertsViaDns;
  /// Controls whether the k8s token auth is allowed via dns.
  final pulumi.Input<bool> enableK8sTokensViaDns;
  /// The cluster's DNS endpoint.
  final pulumi.Input<String> endpoint;

  /// Creates a new [GetClusterControlPlaneEndpointsConfigDnsEndpointConfig].
  /// [allowExternalTraffic] Controls whether user traffic is allowed over this endpoint. Note that GCP-managed services may still use the endpoint even if this is false.
  /// [enableK8sCertsViaDns] Controls whether the k8s certs auth is allowed via dns.
  /// [enableK8sTokensViaDns] Controls whether the k8s token auth is allowed via dns.
  /// [endpoint] The cluster's DNS endpoint.
  const GetClusterControlPlaneEndpointsConfigDnsEndpointConfig({
    required this.allowExternalTraffic,
    required this.enableK8sCertsViaDns,
    required this.enableK8sTokensViaDns,
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowExternalTraffic': allowExternalTraffic,
      'enableK8sCertsViaDns': enableK8sCertsViaDns,
      'enableK8sTokensViaDns': enableK8sTokensViaDns,
      'endpoint': endpoint,
    };
  }

  factory GetClusterControlPlaneEndpointsConfigDnsEndpointConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterControlPlaneEndpointsConfigDnsEndpointConfig(
      allowExternalTraffic: pulumi.Input.fromValue(map['allowExternalTraffic'] as bool),
      enableK8sCertsViaDns: pulumi.Input.fromValue(map['enableK8sCertsViaDns'] as bool),
      enableK8sTokensViaDns: pulumi.Input.fromValue(map['enableK8sTokensViaDns'] as bool),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
    );
  }
}
