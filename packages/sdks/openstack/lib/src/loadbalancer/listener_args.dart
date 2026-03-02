// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadbalancer_listener_listener_args_doc}
/// The set of arguments for Listener.
/// {@endtemplate}
/// {@macro pulumi_loadbalancer_listener_listener_args_doc}
class ListenerArgs {
  /// The administrative state of the Listener. A
  /// valid value is true (UP) or false (DOWN).
  final pulumi.Input<bool>? adminStateUp;
  /// A list of CIDR blocks that are permitted to
  /// connect to this listener, denying all other source addresses. If not present,
  /// defaults to allow all.
  final pulumi.Input<List<String>>? allowedCidrs;
  /// A list of ALPN protocols. Available protocols:
  /// `http/1.0`, `http/1.1`, `h2`. Supported only in **Octavia minor version >=
  /// 2.20**.
  final pulumi.Input<List<String>>? alpnProtocols;
  /// The TLS client authentication mode.
  /// Available options: `NONE`, `OPTIONAL` or `MANDATORY`. Requires
  /// `TERMINATED_HTTPS` listener protocol and the `client_ca_tls_container_ref`.
  /// Supported only in **Octavia minor version >= 2.8**.
  final pulumi.Input<String>? clientAuthentication;
  /// The ref of the key manager service
  /// secret containing a PEM format client CA certificate bundle for
  /// `TERMINATED_HTTPS` listeners. Required if `client_authentication` is
  /// `OPTIONAL` or `MANDATORY`. Supported only in **Octavia minor version >=
  /// 2.8**.
  final pulumi.Input<String>? clientCaTlsContainerRef;
  /// The URI of the key manager service
  /// secret containing a PEM format CA revocation list file for `TERMINATED_HTTPS`
  /// listeners. Supported only in **Octavia minor version >= 2.8**.
  final pulumi.Input<String>? clientCrlContainerRef;
  /// The maximum number of connections allowed for
  /// the Listener.
  final pulumi.Input<int>? connectionLimit;
  /// The ID of the default pool with which the
  /// Listener is associated.
  final pulumi.Input<String>? defaultPoolId;
  /// A reference to a Barbican Secrets
  /// container which stores TLS information. This is required if the protocol is
  /// `TERMINATED_HTTPS`. See
  /// [here](https://docs.openstack.org/octavia/latest/user/guides/basic-cookbook.html#deploy-a-tls-terminated-https-load-balancer)
  /// for more information.
  final pulumi.Input<String>? defaultTlsContainerRef;
  /// Human-readable description for the Listener.
  final pulumi.Input<String>? description;
  /// Defines whether the
  /// **includeSubDomains** directive should be added to the
  /// Strict-Transport-Security HTTP response header. This requires setting the
  /// `hsts_max_age` option as well in order to become effective. Requires
  /// `TERMINATED_HTTPS` listener protocol. Supported only in **Octavia minor
  /// version >= 2.27**.
  final pulumi.Input<bool>? hstsIncludeSubdomains;
  /// The value of the **max_age** directive for the
  /// Strict-Transport-Security HTTP response header. Setting this enables HTTP
  /// Strict Transport Security (HSTS) for the TLS-terminated listener. Requires
  /// `TERMINATED_HTTPS` listener protocol. Supported only in **Octavia minor
  /// version >= 2.27**.
  final pulumi.Input<int>? hstsMaxAge;
  /// Defines whether the **preload** directive should
  /// be added to the Strict-Transport-Security HTTP response header. This requires
  /// setting the `hsts_max_age` option as well in order to become effective.
  /// Requires `TERMINATED_HTTPS` listener protocol. Supported only in **Octavia
  /// minor version >= 2.27**.
  final pulumi.Input<bool>? hstsPreload;
  /// The list of key value pairs representing
  /// headers to insert into the request before it is sent to the backend members.
  /// Changing this updates the headers of the existing listener.
  final pulumi.Input<Map<String, String>>? insertHeaders;
  /// The load balancer on which to provision this
  /// Listener. Changing this creates a new Listener.
  final pulumi.Input<String> loadbalancerId;
  /// Human-readable name for the Listener. Does not have to be
  /// unique.
  final pulumi.Input<String>? name;
  /// The protocol can be either `TCP`, `HTTP`, `HTTPS`,
  /// `TERMINATED_HTTPS`, `UDP`, `SCTP` (supported only in **Octavia minor version
  /// \>= 2.23**), or `PROMETHEUS` (supported only in **Octavia minor version >=
  /// 2.25**). Changing this creates a new Listener.
  final pulumi.Input<String> protocol;
  /// The port on which to listen for client traffic.
  /// * Changing this creates a new Listener.
  final pulumi.Input<int> protocolPort;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a listener. If omitted, the `region`
  /// argument of the provider is used. Changing this creates a new Listener.
  final pulumi.Input<String>? region;
  /// A list of references to Barbican Secrets
  /// containers which store SNI information. See
  /// [here](https://docs.openstack.org/octavia/latest/user/guides/basic-cookbook.html#deploy-a-tls-terminated-https-load-balancer)
  /// for more information.
  final pulumi.Input<List<String>>? sniContainerRefs;
  /// A list of simple strings assigned to the pool. Available
  /// for Octavia **minor version 2.5 or later**.
  final pulumi.Input<List<String>>? tags;
  /// Required for admins. The UUID of the tenant who owns
  /// the Listener.  Only administrative users can specify a tenant UUID other than
  /// their own. Changing this creates a new Listener.
  final pulumi.Input<String>? tenantId;
  /// The client inactivity timeout in
  /// milliseconds.
  final pulumi.Input<int>? timeoutClientData;
  /// The member connection timeout in
  /// milliseconds.
  final pulumi.Input<int>? timeoutMemberConnect;
  /// The member inactivity timeout in
  /// milliseconds.
  final pulumi.Input<int>? timeoutMemberData;
  /// The time in milliseconds, to wait for
  /// additional TCP packets for content inspection.
  final pulumi.Input<int>? timeoutTcpInspect;
  /// List of ciphers in OpenSSL format
  /// (colon-separated). See
  /// https://www.openssl.org/docs/man1.1.1/man1/ciphers.html for more information.
  /// Supported only in **Octavia minor version >= 2.15**.
  final pulumi.Input<String>? tlsCiphers;
  /// A list of TLS protocol versions. Available
  /// versions: `TLSv1`, `TLSv1.1`, `TLSv1.2`, `TLSv1.3`. Supported only in
  /// **Octavia minor version >= 2.17**.
  final pulumi.Input<List<String>>? tlsVersions;

  /// Creates a new [ListenerArgs].
  /// [adminStateUp] The administrative state of the Listener. A
  /// [allowedCidrs] A list of CIDR blocks that are permitted to
  /// [alpnProtocols] A list of ALPN protocols. Available protocols:
  /// [clientAuthentication] The TLS client authentication mode.
  /// [clientCaTlsContainerRef] The ref of the key manager service
  /// [clientCrlContainerRef] The URI of the key manager service
  /// [connectionLimit] The maximum number of connections allowed for
  /// [defaultPoolId] The ID of the default pool with which the
  /// [defaultTlsContainerRef] A reference to a Barbican Secrets
  /// [description] Human-readable description for the Listener.
  /// [hstsIncludeSubdomains] Defines whether the
  /// [hstsMaxAge] The value of the **max_age** directive for the
  /// [hstsPreload] Defines whether the **preload** directive should
  /// [insertHeaders] The list of key value pairs representing
  /// [loadbalancerId] The load balancer on which to provision this
  /// [name] Human-readable name for the Listener. Does not have to be
  /// [protocol] The protocol can be either `TCP`, `HTTP`, `HTTPS`,
  /// [protocolPort] The port on which to listen for client traffic.
  /// [region] The region in which to obtain the V2 Networking client.
  /// [sniContainerRefs] A list of references to Barbican Secrets
  /// [tags] A list of simple strings assigned to the pool. Available
  /// [tenantId] Required for admins. The UUID of the tenant who owns
  /// [timeoutClientData] The client inactivity timeout in
  /// [timeoutMemberConnect] The member connection timeout in
  /// [timeoutMemberData] The member inactivity timeout in
  /// [timeoutTcpInspect] The time in milliseconds, to wait for
  /// [tlsCiphers] List of ciphers in OpenSSL format
  /// [tlsVersions] A list of TLS protocol versions. Available
  ListenerArgs({
    this.adminStateUp,
    this.allowedCidrs,
    this.alpnProtocols,
    this.clientAuthentication,
    this.clientCaTlsContainerRef,
    this.clientCrlContainerRef,
    this.connectionLimit,
    this.defaultPoolId,
    this.defaultTlsContainerRef,
    this.description,
    this.hstsIncludeSubdomains,
    this.hstsMaxAge,
    this.hstsPreload,
    this.insertHeaders,
    required this.loadbalancerId,
    this.name,
    required this.protocol,
    required this.protocolPort,
    this.region,
    this.sniContainerRefs,
    this.tags,
    this.tenantId,
    this.timeoutClientData,
    this.timeoutMemberConnect,
    this.timeoutMemberData,
    this.timeoutTcpInspect,
    this.tlsCiphers,
    this.tlsVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'allowedCidrs': ?allowedCidrs,
      'alpnProtocols': ?alpnProtocols,
      'clientAuthentication': ?clientAuthentication,
      'clientCaTlsContainerRef': ?clientCaTlsContainerRef,
      'clientCrlContainerRef': ?clientCrlContainerRef,
      'connectionLimit': ?connectionLimit,
      'defaultPoolId': ?defaultPoolId,
      'defaultTlsContainerRef': ?defaultTlsContainerRef,
      'description': ?description,
      'hstsIncludeSubdomains': ?hstsIncludeSubdomains,
      'hstsMaxAge': ?hstsMaxAge,
      'hstsPreload': ?hstsPreload,
      'insertHeaders': ?insertHeaders,
      'loadbalancerId': loadbalancerId,
      'name': ?name,
      'protocol': protocol,
      'protocolPort': protocolPort,
      'region': ?region,
      'sniContainerRefs': ?sniContainerRefs,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'timeoutClientData': ?timeoutClientData,
      'timeoutMemberConnect': ?timeoutMemberConnect,
      'timeoutMemberData': ?timeoutMemberData,
      'timeoutTcpInspect': ?timeoutTcpInspect,
      'tlsCiphers': ?tlsCiphers,
      'tlsVersions': ?tlsVersions,
    };
  }

  factory ListenerArgs.fromMap(Map<String, dynamic> map) {
    return ListenerArgs(
      adminStateUp: map['adminStateUp'] == null ? null : (map['adminStateUp'] as bool).input(),
      allowedCidrs: map['allowedCidrs'] == null ? null : ((map['allowedCidrs'] as List).cast<String>()).input(),
      alpnProtocols: map['alpnProtocols'] == null ? null : ((map['alpnProtocols'] as List).cast<String>()).input(),
      clientAuthentication: map['clientAuthentication'] == null ? null : (map['clientAuthentication'] as String).input(),
      clientCaTlsContainerRef: map['clientCaTlsContainerRef'] == null ? null : (map['clientCaTlsContainerRef'] as String).input(),
      clientCrlContainerRef: map['clientCrlContainerRef'] == null ? null : (map['clientCrlContainerRef'] as String).input(),
      connectionLimit: map['connectionLimit'] == null ? null : (map['connectionLimit'] as int).input(),
      defaultPoolId: map['defaultPoolId'] == null ? null : (map['defaultPoolId'] as String).input(),
      defaultTlsContainerRef: map['defaultTlsContainerRef'] == null ? null : (map['defaultTlsContainerRef'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      hstsIncludeSubdomains: map['hstsIncludeSubdomains'] == null ? null : (map['hstsIncludeSubdomains'] as bool).input(),
      hstsMaxAge: map['hstsMaxAge'] == null ? null : (map['hstsMaxAge'] as int).input(),
      hstsPreload: map['hstsPreload'] == null ? null : (map['hstsPreload'] as bool).input(),
      insertHeaders: map['insertHeaders'] == null ? null : ((map['insertHeaders'] as Map).cast<String, String>()).input(),
      loadbalancerId: (map['loadbalancerId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      protocol: (map['protocol'] as String).input(),
      protocolPort: (map['protocolPort'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sniContainerRefs: map['sniContainerRefs'] == null ? null : ((map['sniContainerRefs'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
      timeoutClientData: map['timeoutClientData'] == null ? null : (map['timeoutClientData'] as int).input(),
      timeoutMemberConnect: map['timeoutMemberConnect'] == null ? null : (map['timeoutMemberConnect'] as int).input(),
      timeoutMemberData: map['timeoutMemberData'] == null ? null : (map['timeoutMemberData'] as int).input(),
      timeoutTcpInspect: map['timeoutTcpInspect'] == null ? null : (map['timeoutTcpInspect'] as int).input(),
      tlsCiphers: map['tlsCiphers'] == null ? null : (map['tlsCiphers'] as String).input(),
      tlsVersions: map['tlsVersions'] == null ? null : ((map['tlsVersions'] as List).cast<String>()).input(),
    );
  }
}

