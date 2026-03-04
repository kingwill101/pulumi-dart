// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IngressTLS describes the transport layer security associated with an Ingress.
class IngressTLSPatchNetworkingK8sIoV1beta1 {
  /// Hosts are a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified.
  final pulumi.Input<List<String>>? hosts;

  /// SecretName is the name of the secret used to terminate SSL traffic on 443. Field is left optional to allow SSL routing based on SNI hostname alone. If the SNI host in a listener conflicts with the "Host" header field used by an IngressRule, the SNI host is used for termination and value of the Host header is used for routing.
  final pulumi.Input<String>? secretName;

  /// Creates a new [IngressTLSPatchNetworkingK8sIoV1beta1].
  /// [hosts] Hosts are a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified.
  /// [secretName] SecretName is the name of the secret used to terminate SSL traffic on 443. Field is left optional to allow SSL routing based on SNI hostname alone. If the SNI host in a listener conflicts with the "Host" header field used by an IngressRule, the SNI host is used for termination and value of the Host header is used for routing.
  IngressTLSPatchNetworkingK8sIoV1beta1({this.hosts, this.secretName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'hosts': ?hosts, 'secretName': ?secretName};
  }

  factory IngressTLSPatchNetworkingK8sIoV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return IngressTLSPatchNetworkingK8sIoV1beta1(
      hosts: (() {
        final guardedValue = map['hosts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      secretName: (() {
        final guardedValue = map['secretName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
