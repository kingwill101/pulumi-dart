// ignore_for_file: unused_element, unnecessary_cast


/// IngressTLS describes the transport layer security associated with an Ingress.
class IngressTLSPatch {
  /// Hosts are a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified.
  final List<String>? hosts;
  /// SecretName is the name of the secret used to terminate SSL traffic on 443. Field is left optional to allow SSL routing based on SNI hostname alone. If the SNI host in a listener conflicts with the "Host" header field used by an IngressRule, the SNI host is used for termination and value of the Host header is used for routing.
  final String? secretName;

  /// Creates a new [IngressTLSPatch].
  /// [hosts] Hosts are a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified.
  /// [secretName] SecretName is the name of the secret used to terminate SSL traffic on 443. Field is left optional to allow SSL routing based on SNI hostname alone. If the SNI host in a listener conflicts with the "Host" header field used by an IngressRule, the SNI host is used for termination and value of the Host header is used for routing.
  IngressTLSPatch({
    this.hosts,
    this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': ?hosts,
      'secretName': ?secretName,
    };
  }

  factory IngressTLSPatch.fromMap(Map<String, dynamic> map) {
    return IngressTLSPatch(
      hosts: map['hosts'] == null ? null : (map['hosts'] as List).cast<String>(),
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
    );
  }
}

