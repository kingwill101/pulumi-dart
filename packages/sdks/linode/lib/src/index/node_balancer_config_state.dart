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
  /// The certificate this port is serving. This is not returned. If set, this field will come back as `<REDACTED>`. Please use the ssl_commonname and ssl_fingerprint to identify the certificate.
  final pulumi.Input<String>? sslCert;
  /// The read-only common name automatically derived from the SSL certificate assigned to this NodeBalancerConfig. Please refer to this field to verify that the appropriate certificate is assigned to your NodeBalancerConfig.
  final pulumi.Input<String>? sslCommonname;
  /// The read-only fingerprint automatically derived from the SSL certificate assigned to this NodeBalancerConfig. Please refer to this field to verify that the appropriate certificate is assigned to your NodeBalancerConfig.
  final pulumi.Input<String>? sslFingerprint;
  /// The private key corresponding to this port's certificate. This is not returned. If set, this field will come back as `<REDACTED>`. Please use the ssl_commonname and ssl_fingerprint to identify the certificate.
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
  /// [sslCert] The certificate this port is serving. This is not returned. If set, this field will come back as `<REDACTED>`. Please use the ssl_commonname and ssl_fingerprint to identify the certificate.
  /// [sslCommonname] The read-only common name automatically derived from the SSL certificate assigned to this NodeBalancerConfig. Please refer to this field to verify that the appropriate certificate is assigned to your NodeBalancerConfig.
  /// [sslFingerprint] The read-only fingerprint automatically derived from the SSL certificate assigned to this NodeBalancerConfig. Please refer to this field to verify that the appropriate certificate is assigned to your NodeBalancerConfig.
  /// [sslKey] The private key corresponding to this port's certificate. This is not returned. If set, this field will come back as `<REDACTED>`. Please use the ssl_commonname and ssl_fingerprint to identify the certificate.
  /// [stickiness] Controls how session stickiness is handled on this port. (`none`, `table`, `http_cookie`)
  /// [udpCheckPort] Specifies the port on the backend node used for active health checks, which may differ from the port serving traffic. Defaults to 80.
  /// [udpSessionTimeout] The read-only idle time in seconds after which a session that hasn’t received packets is destroyed.
  NodeBalancerConfigState({
    pulumi.Output<String>? algorithm,
    pulumi.Output<String>? check,
    pulumi.Output<int>? checkAttempts,
    pulumi.Output<String>? checkBody,
    pulumi.Output<int>? checkInterval,
    pulumi.Output<bool>? checkPassive,
    pulumi.Output<String>? checkPath,
    pulumi.Output<int>? checkTimeout,
    pulumi.Output<String>? cipherSuite,
    pulumi.Output<List<NodeBalancerConfigNodeStatus>>? nodeStatuses,
    pulumi.Output<int>? nodebalancerId,
    pulumi.Output<int>? port,
    pulumi.Output<String>? protocol,
    pulumi.Output<String>? proxyProtocol,
    pulumi.Output<String>? sslCert,
    pulumi.Output<String>? sslCommonname,
    pulumi.Output<String>? sslFingerprint,
    pulumi.Output<String>? sslKey,
    pulumi.Output<String>? stickiness,
    pulumi.Output<int>? udpCheckPort,
    pulumi.Output<int>? udpSessionTimeout,
  }) :
      algorithm = pulumi.Input.asOptionalInput<String>(algorithm),
      check = pulumi.Input.asOptionalInput<String>(check),
      checkAttempts = pulumi.Input.asOptionalInput<int>(checkAttempts),
      checkBody = pulumi.Input.asOptionalInput<String>(checkBody),
      checkInterval = pulumi.Input.asOptionalInput<int>(checkInterval),
      checkPassive = pulumi.Input.asOptionalInput<bool>(checkPassive),
      checkPath = pulumi.Input.asOptionalInput<String>(checkPath),
      checkTimeout = pulumi.Input.asOptionalInput<int>(checkTimeout),
      cipherSuite = pulumi.Input.asOptionalInput<String>(cipherSuite),
      nodeStatuses = pulumi.Input.asOptionalInput<List<NodeBalancerConfigNodeStatus>>(nodeStatuses),
      nodebalancerId = pulumi.Input.asOptionalInput<int>(nodebalancerId),
      port = pulumi.Input.asOptionalInput<int>(port),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      proxyProtocol = pulumi.Input.asOptionalInput<String>(proxyProtocol),
      sslCert = pulumi.Input.asOptionalInput<String>(sslCert),
      sslCommonname = pulumi.Input.asOptionalInput<String>(sslCommonname),
      sslFingerprint = pulumi.Input.asOptionalInput<String>(sslFingerprint),
      sslKey = pulumi.Input.asOptionalInput<String>(sslKey),
      stickiness = pulumi.Input.asOptionalInput<String>(stickiness),
      udpCheckPort = pulumi.Input.asOptionalInput<int>(udpCheckPort),
      udpSessionTimeout = pulumi.Input.asOptionalInput<int>(udpSessionTimeout);

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
      'nodeStatuses': ?pulumi.Input.mapOptionalInputValue<List<NodeBalancerConfigNodeStatus>, List<Map<String, dynamic>>>(nodeStatuses, (value) => pulumi.Input.encodeList<NodeBalancerConfigNodeStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      algorithm: map['algorithm'] == null ? null : pulumi.Output.create<String>(map['algorithm'] as String),
      check: map['check'] == null ? null : pulumi.Output.create<String>(map['check'] as String),
      checkAttempts: map['checkAttempts'] == null ? null : pulumi.Output.create<int>(map['checkAttempts'] as int),
      checkBody: map['checkBody'] == null ? null : pulumi.Output.create<String>(map['checkBody'] as String),
      checkInterval: map['checkInterval'] == null ? null : pulumi.Output.create<int>(map['checkInterval'] as int),
      checkPassive: map['checkPassive'] == null ? null : pulumi.Output.create<bool>(map['checkPassive'] as bool),
      checkPath: map['checkPath'] == null ? null : pulumi.Output.create<String>(map['checkPath'] as String),
      checkTimeout: map['checkTimeout'] == null ? null : pulumi.Output.create<int>(map['checkTimeout'] as int),
      cipherSuite: map['cipherSuite'] == null ? null : pulumi.Output.create<String>(map['cipherSuite'] as String),
      nodeStatuses: map['nodeStatuses'] == null ? null : pulumi.Output.create<List<NodeBalancerConfigNodeStatus>>(pulumi.Input.decodeList<NodeBalancerConfigNodeStatus>(map['nodeStatuses'], (value) => NodeBalancerConfigNodeStatus.fromMap((value as Map).cast<String, dynamic>()))),
      nodebalancerId: map['nodebalancerId'] == null ? null : pulumi.Output.create<int>(map['nodebalancerId'] as int),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      proxyProtocol: map['proxyProtocol'] == null ? null : pulumi.Output.create<String>(map['proxyProtocol'] as String),
      sslCert: map['sslCert'] == null ? null : pulumi.Output.create<String>(map['sslCert'] as String),
      sslCommonname: map['sslCommonname'] == null ? null : pulumi.Output.create<String>(map['sslCommonname'] as String),
      sslFingerprint: map['sslFingerprint'] == null ? null : pulumi.Output.create<String>(map['sslFingerprint'] as String),
      sslKey: map['sslKey'] == null ? null : pulumi.Output.create<String>(map['sslKey'] as String),
      stickiness: map['stickiness'] == null ? null : pulumi.Output.create<String>(map['stickiness'] as String),
      udpCheckPort: map['udpCheckPort'] == null ? null : pulumi.Output.create<int>(map['udpCheckPort'] as int),
      udpSessionTimeout: map['udpSessionTimeout'] == null ? null : pulumi.Output.create<int>(map['udpSessionTimeout'] as int),
    );
  }
}

