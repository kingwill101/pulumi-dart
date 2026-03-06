// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_persistence.dart';

/// {@template pulumi_loadbalancer_pool_pool_args_doc}
/// The set of arguments for Pool.
/// {@endtemplate}
/// {@macro pulumi_loadbalancer_pool_pool_args_doc}
class PoolArgs {
  /// The administrative state of the pool. A valid
  /// value is true (UP) or false (DOWN).
  final pulumi.Input<bool>? adminStateUp;
  /// A list of ALPN protocols. Available protocols:
  /// `http/1.0`, `http/1.1`, `h2`. Supported only in **Octavia minor version &gt;=
  /// 2.24**.
  final pulumi.Input<List<String>>? alpnProtocols;
  /// The reference of the key manager service
  /// secret containing a PEM format CA certificate bundle for `tls_enabled` pools.
  /// Supported only in **Octavia minor version &gt;= 2.8**.
  final pulumi.Input<String>? caTlsContainerRef;
  /// The reference of the key manager service
  /// secret containing a PEM format CA revocation list file for `tls_enabled`
  /// pools. Supported only in **Octavia minor version &gt;= 2.8**.
  final pulumi.Input<String>? crlContainerRef;
  /// Human-readable description for the pool.
  final pulumi.Input<String>? description;
  /// The load balancing algorithm to distribute traffic
  /// to the pool's members. Must be one of ROUND_ROBIN, LEAST_CONNECTIONS,
  /// SOURCE_IP, or SOURCE_IP_PORT.
  final pulumi.Input<String> lbMethod;
  /// The Listener on which the members of the pool will
  /// be associated with. Changing this creates a new pool. Note: One of
  /// LoadbalancerID or ListenerID must be provided.
  final pulumi.Input<String>? listenerId;
  /// The load balancer on which to provision this
  /// pool. Changing this creates a new pool. Note: One of LoadbalancerID or
  /// ListenerID must be provided.
  final pulumi.Input<String>? loadbalancerId;
  /// Human-readable name for the pool.
  final pulumi.Input<String>? name;
  /// Omit this field to prevent session persistence.
  /// Indicates whether connections in the same session will be processed by the
  /// same Pool member or not. Changing this creates a new pool.
  final pulumi.Input<PoolPersistence>? persistence;
  /// The protocol - can either be TCP, HTTP, HTTPS, PROXY,
  /// UDP, PROXYV2 (**Octavia minor version &gt;= 2.22**) or SCTP (**Octavia minor
  /// version &gt;= 2.23**). Changing this creates a new pool.
  final pulumi.Input<String> protocol;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a pool. If omitted, the `region`
  /// argument of the provider is used. Changing this creates a new pool.
  final pulumi.Input<String>? region;
  final pulumi.Input<List<String>>? tags;
  /// Required for admins. The UUID of the tenant who owns
  /// the pool.  Only administrative users can specify a tenant UUID other than
  /// their own. Changing this creates a new pool.
  final pulumi.Input<String>? tenantId;
  /// List of ciphers in OpenSSL format
  /// (colon-separated). See
  /// https://www.openssl.org/docs/man1.1.1/man1/ciphers.html for more information.
  /// Supported only in **Octavia minor version &gt;= 2.15**.
  final pulumi.Input<String>? tlsCiphers;
  /// The reference to the key manager service
  /// secret containing a PKCS12 format certificate/key bundle for `tls_enabled`
  /// pools for TLS client authentication to the member servers. Supported only in
  /// **Octavia minor version &gt;= 2.8**.
  final pulumi.Input<String>? tlsContainerRef;
  /// When true connections to backend member servers
  /// will use TLS encryption. Default is false. Supported only in **Octavia minor
  /// version &gt;= 2.8**.
  final pulumi.Input<bool>? tlsEnabled;
  /// A list of TLS protocol versions. Available
  /// versions: `TLSv1`, `TLSv1.1`, `TLSv1.2`, `TLSv1.3`. Supported only in
  /// **Octavia minor version &gt;= 2.17**.
  final pulumi.Input<List<String>>? tlsVersions;

  /// Creates a new [PoolArgs].
  /// [adminStateUp] The administrative state of the pool. A valid
  /// [alpnProtocols] A list of ALPN protocols. Available protocols:
  /// [caTlsContainerRef] The reference of the key manager service
  /// [crlContainerRef] The reference of the key manager service
  /// [description] Human-readable description for the pool.
  /// [lbMethod] The load balancing algorithm to distribute traffic
  /// [listenerId] The Listener on which the members of the pool will
  /// [loadbalancerId] The load balancer on which to provision this
  /// [name] Human-readable name for the pool.
  /// [persistence] Omit this field to prevent session persistence.
  /// [protocol] The protocol - can either be TCP, HTTP, HTTPS, PROXY,
  /// [region] The region in which to obtain the V2 Networking client.
  /// [tags] Optional.
  /// [tenantId] Required for admins. The UUID of the tenant who owns
  /// [tlsCiphers] List of ciphers in OpenSSL format
  /// [tlsContainerRef] The reference to the key manager service
  /// [tlsEnabled] When true connections to backend member servers
  /// [tlsVersions] A list of TLS protocol versions. Available
  const PoolArgs({
    this.adminStateUp,
    this.alpnProtocols,
    this.caTlsContainerRef,
    this.crlContainerRef,
    this.description,
    required this.lbMethod,
    this.listenerId,
    this.loadbalancerId,
    this.name,
    this.persistence,
    required this.protocol,
    this.region,
    this.tags,
    this.tenantId,
    this.tlsCiphers,
    this.tlsContainerRef,
    this.tlsEnabled,
    this.tlsVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'alpnProtocols': ?alpnProtocols,
      'caTlsContainerRef': ?caTlsContainerRef,
      'crlContainerRef': ?crlContainerRef,
      'description': ?description,
      'lbMethod': lbMethod,
      'listenerId': ?listenerId,
      'loadbalancerId': ?loadbalancerId,
      'name': ?name,
      'persistence': ?pulumi.Input.mapOptionalInputValue<PoolPersistence, Map<String, dynamic>>(persistence, (value) => value.toMap()),
      'protocol': protocol,
      'region': ?region,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'tlsCiphers': ?tlsCiphers,
      'tlsContainerRef': ?tlsContainerRef,
      'tlsEnabled': ?tlsEnabled,
      'tlsVersions': ?tlsVersions,
    };
  }

  factory PoolArgs.fromMap(Map<String, dynamic> map) {
    return PoolArgs(
      adminStateUp: (() { final guardedValue = map['adminStateUp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      alpnProtocols: (() { final guardedValue = map['alpnProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      caTlsContainerRef: (() { final guardedValue = map['caTlsContainerRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crlContainerRef: (() { final guardedValue = map['crlContainerRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lbMethod: pulumi.Input.fromValue(map['lbMethod'] as String),
      listenerId: (() { final guardedValue = map['listenerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadbalancerId: (() { final guardedValue = map['loadbalancerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      persistence: (() { final guardedValue = map['persistence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolPersistence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsCiphers: (() { final guardedValue = map['tlsCiphers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsContainerRef: (() { final guardedValue = map['tlsContainerRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsEnabled: (() { final guardedValue = map['tlsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tlsVersions: (() { final guardedValue = map['tlsVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

