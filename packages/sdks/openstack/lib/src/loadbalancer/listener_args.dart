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
  /// `http/1.0`, `http/1.1`, `h2`. Supported only in **Octavia minor version &gt;=
  /// 2.20**.
  final pulumi.Input<List<String>>? alpnProtocols;

  /// The TLS client authentication mode.
  /// Available options: `NONE`, `OPTIONAL` or `MANDATORY`. Requires
  /// `TERMINATED_HTTPS` listener protocol and the `client_ca_tls_container_ref`.
  /// Supported only in **Octavia minor version &gt;= 2.8**.
  final pulumi.Input<String>? clientAuthentication;

  /// The ref of the key manager service
  /// secret containing a PEM format client CA certificate bundle for
  /// `TERMINATED_HTTPS` listeners. Required if `client_authentication` is
  /// `OPTIONAL` or `MANDATORY`. Supported only in **Octavia minor version &gt;=
  /// 2.8**.
  final pulumi.Input<String>? clientCaTlsContainerRef;

  /// The URI of the key manager service
  /// secret containing a PEM format CA revocation list file for `TERMINATED_HTTPS`
  /// listeners. Supported only in **Octavia minor version &gt;= 2.8**.
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
  /// version &gt;= 2.27**.
  final pulumi.Input<bool>? hstsIncludeSubdomains;

  /// The value of the **max_age** directive for the
  /// Strict-Transport-Security HTTP response header. Setting this enables HTTP
  /// Strict Transport Security (HSTS) for the TLS-terminated listener. Requires
  /// `TERMINATED_HTTPS` listener protocol. Supported only in **Octavia minor
  /// version &gt;= 2.27**.
  final pulumi.Input<int>? hstsMaxAge;

  /// Defines whether the **preload** directive should
  /// be added to the Strict-Transport-Security HTTP response header. This requires
  /// setting the `hsts_max_age` option as well in order to become effective.
  /// Requires `TERMINATED_HTTPS` listener protocol. Supported only in **Octavia
  /// minor version &gt;= 2.27**.
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
  /// \&gt;= 2.23**), or `PROMETHEUS` (supported only in **Octavia minor version &gt;=
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
  /// Supported only in **Octavia minor version &gt;= 2.15**.
  final pulumi.Input<String>? tlsCiphers;

  /// A list of TLS protocol versions. Available
  /// versions: `TLSv1`, `TLSv1.1`, `TLSv1.2`, `TLSv1.3`. Supported only in
  /// **Octavia minor version &gt;= 2.17**.
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
      adminStateUp: (() {
        final guardedValue = map['adminStateUp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      allowedCidrs: (() {
        final guardedValue = map['allowedCidrs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      alpnProtocols: (() {
        final guardedValue = map['alpnProtocols'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      clientAuthentication: (() {
        final guardedValue = map['clientAuthentication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientCaTlsContainerRef: (() {
        final guardedValue = map['clientCaTlsContainerRef'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientCrlContainerRef: (() {
        final guardedValue = map['clientCrlContainerRef'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectionLimit: (() {
        final guardedValue = map['connectionLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      defaultPoolId: (() {
        final guardedValue = map['defaultPoolId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultTlsContainerRef: (() {
        final guardedValue = map['defaultTlsContainerRef'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hstsIncludeSubdomains: (() {
        final guardedValue = map['hstsIncludeSubdomains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      hstsMaxAge: (() {
        final guardedValue = map['hstsMaxAge'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      hstsPreload: (() {
        final guardedValue = map['hstsPreload'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      insertHeaders: (() {
        final guardedValue = map['insertHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      loadbalancerId: pulumi.Input.fromValue(map['loadbalancerId'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      protocolPort: pulumi.Input.fromValue(map['protocolPort'] as int),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sniContainerRefs: (() {
        final guardedValue = map['sniContainerRefs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeoutClientData: (() {
        final guardedValue = map['timeoutClientData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      timeoutMemberConnect: (() {
        final guardedValue = map['timeoutMemberConnect'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      timeoutMemberData: (() {
        final guardedValue = map['timeoutMemberData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      timeoutTcpInspect: (() {
        final guardedValue = map['timeoutTcpInspect'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tlsCiphers: (() {
        final guardedValue = map['tlsCiphers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tlsVersions: (() {
        final guardedValue = map['tlsVersions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
