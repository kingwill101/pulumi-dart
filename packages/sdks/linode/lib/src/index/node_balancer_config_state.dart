// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_balancer_config_node_status.dart';

/// Input properties used for looking up and filtering NodeBalancerConfig resources.
class NodeBalancerConfigState {
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

  /// A structure containing information about the health of the backends for this port. This information is updated periodically as checks are performed against backends.
  final pulumi.Input<List<NodeBalancerConfigNodeStatus>>? nodeStatuses;

  /// The ID of the NodeBalancer to access.
  ///
  /// - - -
  final pulumi.Input<int>? nodebalancerId;

  /// The TCP port this Config is for. These values must be unique across configs on a single NodeBalancer (you can't have two configs for port 80, for example). While some ports imply some protocols, no enforcement is done and you may configure your NodeBalancer however is useful to you. For example, while port 443 is generally used for HTTPS, you do not need SSL configured to have a NodeBalancer listening on port 443. (Defaults to 80)
  final pulumi.Input<int>? port;

  /// The protocol this port is configured to serve. If this is set to https you must include an ssl_cert and an ssl_key. (`http`, `https`, `tcp`) (Defaults to `http`)
  final pulumi.Input<String>? protocol;

  /// The version of ProxyProtocol to use for the underlying NodeBalancer. This requires protocol to be `tcp`. (`none`, `v1`, `v2`) (Defaults to `none`)
  final pulumi.Input<String>? proxyProtocol;

  /// The certificate this port is serving. This is not returned. If set, this field will come back as `&lt;REDACTED&gt;`. Please use the ssl_commonname and ssl_fingerprint to identify the certificate.
  final pulumi.Input<String>? sslCert;

  /// The read-only common name automatically derived from the SSL certificate assigned to this NodeBalancerConfig. Please refer to this field to verify that the appropriate certificate is assigned to your NodeBalancerConfig.
  final pulumi.Input<String>? sslCommonname;

  /// The read-only fingerprint automatically derived from the SSL certificate assigned to this NodeBalancerConfig. Please refer to this field to verify that the appropriate certificate is assigned to your NodeBalancerConfig.
  final pulumi.Input<String>? sslFingerprint;

  /// The private key corresponding to this port's certificate. This is not returned. If set, this field will come back as `&lt;REDACTED&gt;`. Please use the ssl_commonname and ssl_fingerprint to identify the certificate.
  final pulumi.Input<String>? sslKey;

  /// Controls how session stickiness is handled on this port. (`none`, `table`, `http_cookie`)
  final pulumi.Input<String>? stickiness;

  /// Specifies the port on the backend node used for active health checks, which may differ from the port serving traffic. Defaults to 80.
  ///
  /// * **NOTE: This argument may not be generally available.**
  final pulumi.Input<int>? udpCheckPort;

  /// The read-only idle time in seconds after which a session that hasn’t received packets is destroyed.
  final pulumi.Input<int>? udpSessionTimeout;

  /// Creates a new [NodeBalancerConfigState].
  /// [algorithm] What algorithm this NodeBalancer should use for routing traffic to backends. (`roundrobin`, `leastconn`, `source`)
  /// [check] The type of check to perform against backends to ensure they are serving requests. This is used to determine if backends are up or down. If none no check is performed. connection requires only a connection to the backend to succeed. http and http_body rely on the backend serving HTTP, and that the response returned matches what is expected. (`none`, `connection`, `http`, `http_body`)
  /// [checkAttempts] How many times to attempt a check before considering a backend to be down. (1-30)
  /// [checkBody] This value must be present in the response body of the check in order for it to pass. If this value is not present in the response body of a check request, the backend is considered to be down
  /// [checkInterval] How often, in seconds, to check that backends are up and serving requests.
  /// [checkPassive] If true, any response from this backend with a 5xx status code will be enough for it to be considered unhealthy and taken out of rotation.
  /// [checkPath] The URL path to check on each backend. If the backend does not respond to this request it is considered to be down.
  /// [checkTimeout] How long, in seconds, to wait for a check attempt before considering it failed. (1-30)
  /// [cipherSuite] What ciphers to use for SSL connections served by this NodeBalancer. `legacy` is considered insecure and should only be used if necessary.
  /// [nodeStatuses] A structure containing information about the health of the backends for this port. This information is updated periodically as checks are performed against backends.
  /// [nodebalancerId] The ID of the NodeBalancer to access.
  /// [port] The TCP port this Config is for. These values must be unique across configs on a single NodeBalancer (you can't have two configs for port 80, for example). While some ports imply some protocols, no enforcement is done and you may configure your NodeBalancer however is useful to you. For example, while port 443 is generally used for HTTPS, you do not need SSL configured to have a NodeBalancer listening on port 443. (Defaults to 80)
  /// [protocol] The protocol this port is configured to serve. If this is set to https you must include an ssl_cert and an ssl_key. (`http`, `https`, `tcp`) (Defaults to `http`)
  /// [proxyProtocol] The version of ProxyProtocol to use for the underlying NodeBalancer. This requires protocol to be `tcp`. (`none`, `v1`, `v2`) (Defaults to `none`)
  /// [sslCert] The certificate this port is serving. This is not returned. If set, this field will come back as `&lt;REDACTED&gt;`. Please use the ssl_commonname and ssl_fingerprint to identify the certificate.
  /// [sslCommonname] The read-only common name automatically derived from the SSL certificate assigned to this NodeBalancerConfig. Please refer to this field to verify that the appropriate certificate is assigned to your NodeBalancerConfig.
  /// [sslFingerprint] The read-only fingerprint automatically derived from the SSL certificate assigned to this NodeBalancerConfig. Please refer to this field to verify that the appropriate certificate is assigned to your NodeBalancerConfig.
  /// [sslKey] The private key corresponding to this port's certificate. This is not returned. If set, this field will come back as `&lt;REDACTED&gt;`. Please use the ssl_commonname and ssl_fingerprint to identify the certificate.
  /// [stickiness] Controls how session stickiness is handled on this port. (`none`, `table`, `http_cookie`)
  /// [udpCheckPort] Specifies the port on the backend node used for active health checks, which may differ from the port serving traffic. Defaults to 80.
  /// [udpSessionTimeout] The read-only idle time in seconds after which a session that hasn’t received packets is destroyed.
  NodeBalancerConfigState({
    this.algorithm,
    this.check,
    this.checkAttempts,
    this.checkBody,
    this.checkInterval,
    this.checkPassive,
    this.checkPath,
    this.checkTimeout,
    this.cipherSuite,
    this.nodeStatuses,
    this.nodebalancerId,
    this.port,
    this.protocol,
    this.proxyProtocol,
    this.sslCert,
    this.sslCommonname,
    this.sslFingerprint,
    this.sslKey,
    this.stickiness,
    this.udpCheckPort,
    this.udpSessionTimeout,
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
      'nodeStatuses':
          ?pulumi.Input.mapOptionalInputValue<
            List<NodeBalancerConfigNodeStatus>,
            List<Map<String, dynamic>>
          >(
            nodeStatuses,
            (value) =>
                pulumi.Input.encodeList<
                  NodeBalancerConfigNodeStatus,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'nodebalancerId': ?nodebalancerId,
      'port': ?port,
      'protocol': ?protocol,
      'proxyProtocol': ?proxyProtocol,
      'sslCert': ?sslCert,
      'sslCommonname': ?sslCommonname,
      'sslFingerprint': ?sslFingerprint,
      'sslKey': ?sslKey,
      'stickiness': ?stickiness,
      'udpCheckPort': ?udpCheckPort,
      'udpSessionTimeout': ?udpSessionTimeout,
    };
  }

  factory NodeBalancerConfigState.fromMap(Map<String, dynamic> map) {
    return NodeBalancerConfigState(
      algorithm: (() {
        final guardedValue = map['algorithm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      check: (() {
        final guardedValue = map['check'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      checkAttempts: (() {
        final guardedValue = map['checkAttempts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      checkBody: (() {
        final guardedValue = map['checkBody'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      checkInterval: (() {
        final guardedValue = map['checkInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      checkPassive: (() {
        final guardedValue = map['checkPassive'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      checkPath: (() {
        final guardedValue = map['checkPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      checkTimeout: (() {
        final guardedValue = map['checkTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      cipherSuite: (() {
        final guardedValue = map['cipherSuite'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeStatuses: (() {
        final guardedValue = map['nodeStatuses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NodeBalancerConfigNodeStatus>(
            guardedValue,
            (value) => NodeBalancerConfigNodeStatus.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      nodebalancerId: (() {
        final guardedValue = map['nodebalancerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      proxyProtocol: (() {
        final guardedValue = map['proxyProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslCert: (() {
        final guardedValue = map['sslCert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslCommonname: (() {
        final guardedValue = map['sslCommonname'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslFingerprint: (() {
        final guardedValue = map['sslFingerprint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslKey: (() {
        final guardedValue = map['sslKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stickiness: (() {
        final guardedValue = map['stickiness'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      udpCheckPort: (() {
        final guardedValue = map['udpCheckPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      udpSessionTimeout: (() {
        final guardedValue = map['udpSessionTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
