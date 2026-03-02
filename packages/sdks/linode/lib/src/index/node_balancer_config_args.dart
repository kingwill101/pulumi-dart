// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_node_balancer_config_node_balancer_config_args_doc}
/// The set of arguments for NodeBalancerConfig.
/// {@endtemplate}
/// {@macro pulumi_index_node_balancer_config_node_balancer_config_args_doc}
class NodeBalancerConfigArgs {
  /// What algorithm this NodeBalancer should use for routing traffic to backends. (`roundrobin`, `leastconn`, `source`)
  final pulumi.Input<String>? algorithm;
  /// The type of check to perform against backends to ensure they are serving requests. This is used to determine if backends are up or down. If none no check is performed. connection requires only a connection to the backend to succeed. http and http_body rely on the backend serving HTTP, and that the response returned matches what is expected. (`none`, `connection`, `http`, `http_body`)
  final pulumi.Input<String>? check;
  /// How many times to attempt a check before considering a backend to be down. (1-30)
  final pulumi.Input<int>? checkAttempts;
  /// This value must be present in the response body of the check in order for it to pass. If this value is not present in the response body of a check request, the backend is considered to be down
  final pulumi.Input<String>? checkBody;
  /// How often, in seconds, to check that backends are up and serving requests.
  final pulumi.Input<int>? checkInterval;
  /// If true, any response from this backend with a 5xx status code will be enough for it to be considered unhealthy and taken out of rotation.
  final pulumi.Input<bool>? checkPassive;
  /// The URL path to check on each backend. If the backend does not respond to this request it is considered to be down.
  final pulumi.Input<String>? checkPath;
  /// How long, in seconds, to wait for a check attempt before considering it failed. (1-30)
  final pulumi.Input<int>? checkTimeout;
  /// What ciphers to use for SSL connections served by this NodeBalancer. `legacy` is considered insecure and should only be used if necessary.
  final pulumi.Input<String>? cipherSuite;
  /// The ID of the NodeBalancer to access.
  ///
  /// - - -
  final pulumi.Input<int> nodebalancerId;
  /// The TCP port this Config is for. These values must be unique across configs on a single NodeBalancer (you can't have two configs for port 80, for example). While some ports imply some protocols, no enforcement is done and you may configure your NodeBalancer however is useful to you. For example, while port 443 is generally used for HTTPS, you do not need SSL configured to have a NodeBalancer listening on port 443. (Defaults to 80)
  final pulumi.Input<int>? port;
  /// The protocol this port is configured to serve. If this is set to https you must include an ssl_cert and an ssl_key. (`http`, `https`, `tcp`) (Defaults to `http`)
  final pulumi.Input<String>? protocol;
  /// The version of ProxyProtocol to use for the underlying NodeBalancer. This requires protocol to be `tcp`. (`none`, `v1`, `v2`) (Defaults to `none`)
  final pulumi.Input<String>? proxyProtocol;
  /// The certificate this port is serving. This is not returned. If set, this field will come back as `<REDACTED>`. Please use the ssl_commonname and ssl_fingerprint to identify the certificate.
  final pulumi.Input<String>? sslCert;
  /// The private key corresponding to this port's certificate. This is not returned. If set, this field will come back as `<REDACTED>`. Please use the ssl_commonname and ssl_fingerprint to identify the certificate.
  final pulumi.Input<String>? sslKey;
  /// Controls how session stickiness is handled on this port. (`none`, `table`, `http_cookie`)
  final pulumi.Input<String>? stickiness;
  /// Specifies the port on the backend node used for active health checks, which may differ from the port serving traffic. Defaults to 80.
  ///
  /// * **NOTE: This argument may not be generally available.**
  final pulumi.Input<int>? udpCheckPort;

  /// Creates a new [NodeBalancerConfigArgs].
  /// [algorithm] What algorithm this NodeBalancer should use for routing traffic to backends. (`roundrobin`, `leastconn`, `source`)
  /// [check] The type of check to perform against backends to ensure they are serving requests. This is used to determine if backends are up or down. If none no check is performed. connection requires only a connection to the backend to succeed. http and http_body rely on the backend serving HTTP, and that the response returned matches what is expected. (`none`, `connection`, `http`, `http_body`)
  /// [checkAttempts] How many times to attempt a check before considering a backend to be down. (1-30)
  /// [checkBody] This value must be present in the response body of the check in order for it to pass. If this value is not present in the response body of a check request, the backend is considered to be down
  /// [checkInterval] How often, in seconds, to check that backends are up and serving requests.
  /// [checkPassive] If true, any response from this backend with a 5xx status code will be enough for it to be considered unhealthy and taken out of rotation.
  /// [checkPath] The URL path to check on each backend. If the backend does not respond to this request it is considered to be down.
  /// [checkTimeout] How long, in seconds, to wait for a check attempt before considering it failed. (1-30)
  /// [cipherSuite] What ciphers to use for SSL connections served by this NodeBalancer. `legacy` is considered insecure and should only be used if necessary.
  /// [nodebalancerId] The ID of the NodeBalancer to access.
  /// [port] The TCP port this Config is for. These values must be unique across configs on a single NodeBalancer (you can't have two configs for port 80, for example). While some ports imply some protocols, no enforcement is done and you may configure your NodeBalancer however is useful to you. For example, while port 443 is generally used for HTTPS, you do not need SSL configured to have a NodeBalancer listening on port 443. (Defaults to 80)
  /// [protocol] The protocol this port is configured to serve. If this is set to https you must include an ssl_cert and an ssl_key. (`http`, `https`, `tcp`) (Defaults to `http`)
  /// [proxyProtocol] The version of ProxyProtocol to use for the underlying NodeBalancer. This requires protocol to be `tcp`. (`none`, `v1`, `v2`) (Defaults to `none`)
  /// [sslCert] The certificate this port is serving. This is not returned. If set, this field will come back as `<REDACTED>`. Please use the ssl_commonname and ssl_fingerprint to identify the certificate.
  /// [sslKey] The private key corresponding to this port's certificate. This is not returned. If set, this field will come back as `<REDACTED>`. Please use the ssl_commonname and ssl_fingerprint to identify the certificate.
  /// [stickiness] Controls how session stickiness is handled on this port. (`none`, `table`, `http_cookie`)
  /// [udpCheckPort] Specifies the port on the backend node used for active health checks, which may differ from the port serving traffic. Defaults to 80.
  NodeBalancerConfigArgs({
    this.algorithm,
    this.check,
    this.checkAttempts,
    this.checkBody,
    this.checkInterval,
    this.checkPassive,
    this.checkPath,
    this.checkTimeout,
    this.cipherSuite,
    required this.nodebalancerId,
    this.port,
    this.protocol,
    this.proxyProtocol,
    this.sslCert,
    this.sslKey,
    this.stickiness,
    this.udpCheckPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'check': ?check,
      'checkAttempts': ?checkAttempts,
      'checkBody': ?checkBody,
      'checkInterval': ?checkInterval,
      'checkPassive': ?checkPassive,
      'checkPath': ?checkPath,
      'checkTimeout': ?checkTimeout,
      'cipherSuite': ?cipherSuite,
      'nodebalancerId': nodebalancerId,
      'port': ?port,
      'protocol': ?protocol,
      'proxyProtocol': ?proxyProtocol,
      'sslCert': ?sslCert,
      'sslKey': ?sslKey,
      'stickiness': ?stickiness,
      'udpCheckPort': ?udpCheckPort,
    };
  }

  factory NodeBalancerConfigArgs.fromMap(Map<String, dynamic> map) {
    return NodeBalancerConfigArgs(
      algorithm: map['algorithm'] == null ? null : (map['algorithm'] as String).input(),
      check: map['check'] == null ? null : (map['check'] as String).input(),
      checkAttempts: map['checkAttempts'] == null ? null : (map['checkAttempts'] as int).input(),
      checkBody: map['checkBody'] == null ? null : (map['checkBody'] as String).input(),
      checkInterval: map['checkInterval'] == null ? null : (map['checkInterval'] as int).input(),
      checkPassive: map['checkPassive'] == null ? null : (map['checkPassive'] as bool).input(),
      checkPath: map['checkPath'] == null ? null : (map['checkPath'] as String).input(),
      checkTimeout: map['checkTimeout'] == null ? null : (map['checkTimeout'] as int).input(),
      cipherSuite: map['cipherSuite'] == null ? null : (map['cipherSuite'] as String).input(),
      nodebalancerId: (map['nodebalancerId'] as int).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      proxyProtocol: map['proxyProtocol'] == null ? null : (map['proxyProtocol'] as String).input(),
      sslCert: map['sslCert'] == null ? null : (map['sslCert'] as String).input(),
      sslKey: map['sslKey'] == null ? null : (map['sslKey'] as String).input(),
      stickiness: map['stickiness'] == null ? null : (map['stickiness'] as String).input(),
      udpCheckPort: map['udpCheckPort'] == null ? null : (map['udpCheckPort'] as int).input(),
    );
  }
}

