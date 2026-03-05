// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterHttpProxyConfig {
  /// The proxy address to be used when communicating over HTTP.
  final pulumi.Input<String>? httpProxy;
  /// The proxy address to be used when communicating over HTTPS.
  final pulumi.Input<String>? httpsProxy;
  /// The list of domains that will not use the proxy for communication.
  ///
  /// &gt; **Note:** If you specify the `default_node_pool[0].vnet_subnet_id`, be sure to include the Subnet CIDR in the `no_proxy` list.
  ///
  /// &gt; **Note:** You may wish to use Terraform's `ignore_changes` functionality to ignore the changes to this field.
  final pulumi.Input<List<String>>? noProxies;
  /// The base64 encoded alternative CA certificate content in PEM format.
  final pulumi.Input<String>? trustedCa;

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
      httpProxy: (() { final guardedValue = map['httpProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpsProxy: (() { final guardedValue = map['httpsProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noProxies: (() { final guardedValue = map['noProxies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      trustedCa: (() { final guardedValue = map['trustedCa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

