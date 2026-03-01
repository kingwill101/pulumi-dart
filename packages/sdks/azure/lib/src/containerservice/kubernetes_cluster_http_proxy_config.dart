// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterHttpProxyConfig {
  /// The proxy address to be used when communicating over HTTP.
  final String? httpProxy;
  /// The proxy address to be used when communicating over HTTPS.
  final String? httpsProxy;
  /// The list of domains that will not use the proxy for communication.
  ///
  /// > **Note:** If you specify the `default_node_pool[0].vnet_subnet_id`, be sure to include the Subnet CIDR in the `no_proxy` list.
  ///
  /// > **Note:** You may wish to use Terraform's `ignore_changes` functionality to ignore the changes to this field.
  final List<String>? noProxies;
  /// The base64 encoded alternative CA certificate content in PEM format.
  final String? trustedCa;

  /// Creates a new [KubernetesClusterHttpProxyConfig].
  /// [httpProxy] The proxy address to be used when communicating over HTTP.
  /// [httpsProxy] The proxy address to be used when communicating over HTTPS.
  /// [noProxies] The list of domains that will not use the proxy for communication.
  /// [trustedCa] The base64 encoded alternative CA certificate content in PEM format.
  KubernetesClusterHttpProxyConfig({
    this.httpProxy,
    this.httpsProxy,
    this.noProxies,
    this.trustedCa,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpProxy': ?httpProxy,
      'httpsProxy': ?httpsProxy,
      'noProxies': ?noProxies,
      'trustedCa': ?trustedCa,
    };
  }

  factory KubernetesClusterHttpProxyConfig.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterHttpProxyConfig(
      httpProxy: map['httpProxy'] == null ? null : map['httpProxy'] as String,
      httpsProxy: map['httpsProxy'] == null ? null : map['httpsProxy'] as String,
      noProxies: map['noProxies'] == null ? null : (map['noProxies'] as List).cast<String>(),
      trustedCa: map['trustedCa'] == null ? null : map['trustedCa'] as String,
    );
  }
}

