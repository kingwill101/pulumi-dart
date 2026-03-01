// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Listener resources.
class ListenerState {
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
  final pulumi.Input<String>? loadbalancerId;
  /// Human-readable name for the Listener. Does not have to be
  /// unique.
  final pulumi.Input<String>? name;
  /// The protocol can be either `TCP`, `HTTP`, `HTTPS`,
  /// `TERMINATED_HTTPS`, `UDP`, `SCTP` (supported only in **Octavia minor version
  /// \>= 2.23**), or `PROMETHEUS` (supported only in **Octavia minor version >=
  /// 2.25**). Changing this creates a new Listener.
  final pulumi.Input<String>? protocol;
  /// The port on which to listen for client traffic.
  /// * Changing this creates a new Listener.
  final pulumi.Input<int>? protocolPort;
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

  /// Creates a new [ListenerState].
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
  ListenerState({
    pulumi.Output<bool>? adminStateUp,
    pulumi.Output<List<String>>? allowedCidrs,
    pulumi.Output<List<String>>? alpnProtocols,
    pulumi.Output<String>? clientAuthentication,
    pulumi.Output<String>? clientCaTlsContainerRef,
    pulumi.Output<String>? clientCrlContainerRef,
    pulumi.Output<int>? connectionLimit,
    pulumi.Output<String>? defaultPoolId,
    pulumi.Output<String>? defaultTlsContainerRef,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? hstsIncludeSubdomains,
    pulumi.Output<int>? hstsMaxAge,
    pulumi.Output<bool>? hstsPreload,
    pulumi.Output<Map<String, String>>? insertHeaders,
    pulumi.Output<String>? loadbalancerId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? protocol,
    pulumi.Output<int>? protocolPort,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? sniContainerRefs,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? tenantId,
    pulumi.Output<int>? timeoutClientData,
    pulumi.Output<int>? timeoutMemberConnect,
    pulumi.Output<int>? timeoutMemberData,
    pulumi.Output<int>? timeoutTcpInspect,
    pulumi.Output<String>? tlsCiphers,
    pulumi.Output<List<String>>? tlsVersions,
  }) :
      adminStateUp = pulumi.Input.asOptionalInput<bool>(adminStateUp),
      allowedCidrs = pulumi.Input.asOptionalInput<List<String>>(allowedCidrs),
      alpnProtocols = pulumi.Input.asOptionalInput<List<String>>(alpnProtocols),
      clientAuthentication = pulumi.Input.asOptionalInput<String>(clientAuthentication),
      clientCaTlsContainerRef = pulumi.Input.asOptionalInput<String>(clientCaTlsContainerRef),
      clientCrlContainerRef = pulumi.Input.asOptionalInput<String>(clientCrlContainerRef),
      connectionLimit = pulumi.Input.asOptionalInput<int>(connectionLimit),
      defaultPoolId = pulumi.Input.asOptionalInput<String>(defaultPoolId),
      defaultTlsContainerRef = pulumi.Input.asOptionalInput<String>(defaultTlsContainerRef),
      description = pulumi.Input.asOptionalInput<String>(description),
      hstsIncludeSubdomains = pulumi.Input.asOptionalInput<bool>(hstsIncludeSubdomains),
      hstsMaxAge = pulumi.Input.asOptionalInput<int>(hstsMaxAge),
      hstsPreload = pulumi.Input.asOptionalInput<bool>(hstsPreload),
      insertHeaders = pulumi.Input.asOptionalInput<Map<String, String>>(insertHeaders),
      loadbalancerId = pulumi.Input.asOptionalInput<String>(loadbalancerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      protocolPort = pulumi.Input.asOptionalInput<int>(protocolPort),
      region = pulumi.Input.asOptionalInput<String>(region),
      sniContainerRefs = pulumi.Input.asOptionalInput<List<String>>(sniContainerRefs),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      timeoutClientData = pulumi.Input.asOptionalInput<int>(timeoutClientData),
      timeoutMemberConnect = pulumi.Input.asOptionalInput<int>(timeoutMemberConnect),
      timeoutMemberData = pulumi.Input.asOptionalInput<int>(timeoutMemberData),
      timeoutTcpInspect = pulumi.Input.asOptionalInput<int>(timeoutTcpInspect),
      tlsCiphers = pulumi.Input.asOptionalInput<String>(tlsCiphers),
      tlsVersions = pulumi.Input.asOptionalInput<List<String>>(tlsVersions);

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
      'loadbalancerId': ?loadbalancerId,
      'name': ?name,
      'protocol': ?protocol,
      'protocolPort': ?protocolPort,
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

  factory ListenerState.fromMap(Map<String, dynamic> map) {
    return ListenerState(
      adminStateUp: map['adminStateUp'] == null ? null : pulumi.Output.create<bool>(map['adminStateUp'] as bool),
      allowedCidrs: map['allowedCidrs'] == null ? null : pulumi.Output.create<List<String>>((map['allowedCidrs'] as List).cast<String>()),
      alpnProtocols: map['alpnProtocols'] == null ? null : pulumi.Output.create<List<String>>((map['alpnProtocols'] as List).cast<String>()),
      clientAuthentication: map['clientAuthentication'] == null ? null : pulumi.Output.create<String>(map['clientAuthentication'] as String),
      clientCaTlsContainerRef: map['clientCaTlsContainerRef'] == null ? null : pulumi.Output.create<String>(map['clientCaTlsContainerRef'] as String),
      clientCrlContainerRef: map['clientCrlContainerRef'] == null ? null : pulumi.Output.create<String>(map['clientCrlContainerRef'] as String),
      connectionLimit: map['connectionLimit'] == null ? null : pulumi.Output.create<int>(map['connectionLimit'] as int),
      defaultPoolId: map['defaultPoolId'] == null ? null : pulumi.Output.create<String>(map['defaultPoolId'] as String),
      defaultTlsContainerRef: map['defaultTlsContainerRef'] == null ? null : pulumi.Output.create<String>(map['defaultTlsContainerRef'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      hstsIncludeSubdomains: map['hstsIncludeSubdomains'] == null ? null : pulumi.Output.create<bool>(map['hstsIncludeSubdomains'] as bool),
      hstsMaxAge: map['hstsMaxAge'] == null ? null : pulumi.Output.create<int>(map['hstsMaxAge'] as int),
      hstsPreload: map['hstsPreload'] == null ? null : pulumi.Output.create<bool>(map['hstsPreload'] as bool),
      insertHeaders: map['insertHeaders'] == null ? null : pulumi.Output.create<Map<String, String>>((map['insertHeaders'] as Map).cast<String, String>()),
      loadbalancerId: map['loadbalancerId'] == null ? null : pulumi.Output.create<String>(map['loadbalancerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      protocolPort: map['protocolPort'] == null ? null : pulumi.Output.create<int>(map['protocolPort'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sniContainerRefs: map['sniContainerRefs'] == null ? null : pulumi.Output.create<List<String>>((map['sniContainerRefs'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      timeoutClientData: map['timeoutClientData'] == null ? null : pulumi.Output.create<int>(map['timeoutClientData'] as int),
      timeoutMemberConnect: map['timeoutMemberConnect'] == null ? null : pulumi.Output.create<int>(map['timeoutMemberConnect'] as int),
      timeoutMemberData: map['timeoutMemberData'] == null ? null : pulumi.Output.create<int>(map['timeoutMemberData'] as int),
      timeoutTcpInspect: map['timeoutTcpInspect'] == null ? null : pulumi.Output.create<int>(map['timeoutTcpInspect'] as int),
      tlsCiphers: map['tlsCiphers'] == null ? null : pulumi.Output.create<String>(map['tlsCiphers'] as String),
      tlsVersions: map['tlsVersions'] == null ? null : pulumi.Output.create<List<String>>((map['tlsVersions'] as List).cast<String>()),
    );
  }
}

