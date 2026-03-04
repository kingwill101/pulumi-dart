// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterControlPlaneEndpointsConfigDnsEndpointConfig {
  /// Controls whether user traffic is allowed over this endpoint. Note that GCP-managed services may still use the endpoint even if this is false.
  final pulumi.Input<bool>? allowExternalTraffic;

  /// Controls whether the k8s certs auth is allowed via Dns.
  final pulumi.Input<bool>? enableK8sCertsViaDns;

  /// Controls whether the k8s token auth is allowed via Dns.
  final pulumi.Input<bool>? enableK8sTokensViaDns;

  /// The cluster's DNS endpoint.
  final pulumi.Input<String>? endpoint;

  /// Creates a new [ClusterControlPlaneEndpointsConfigDnsEndpointConfig].
  /// [allowExternalTraffic] Controls whether user traffic is allowed over this endpoint. Note that GCP-managed services may still use the endpoint even if this is false.
  /// [enableK8sCertsViaDns] Controls whether the k8s certs auth is allowed via Dns.
  /// [enableK8sTokensViaDns] Controls whether the k8s token auth is allowed via Dns.
  /// [endpoint] The cluster's DNS endpoint.
  ClusterControlPlaneEndpointsConfigDnsEndpointConfig({
    this.allowExternalTraffic,
    this.enableK8sCertsViaDns,
    this.enableK8sTokensViaDns,
    this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowExternalTraffic': ?allowExternalTraffic,
      'enableK8sCertsViaDns': ?enableK8sCertsViaDns,
      'enableK8sTokensViaDns': ?enableK8sTokensViaDns,
      'endpoint': ?endpoint,
    };
  }

  factory ClusterControlPlaneEndpointsConfigDnsEndpointConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterControlPlaneEndpointsConfigDnsEndpointConfig(
      allowExternalTraffic: (() {
        final guardedValue = map['allowExternalTraffic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableK8sCertsViaDns: (() {
        final guardedValue = map['enableK8sCertsViaDns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableK8sTokensViaDns: (() {
        final guardedValue = map['enableK8sTokensViaDns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
