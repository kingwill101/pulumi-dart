// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProfileServerSsl resources.
class ProfileServerSslState {
  /// Alert time out
  final pulumi.Input<String>? alertTimeout;
  /// Specifies the frequency of server authentication for an SSL session.When `once`,specifies that the system authenticates the server once for an SSL session.
  /// When `always`, specifies that the system authenticates the server once for an SSL session and also upon reuse of that session.
  final pulumi.Input<String>? authenticate;
  /// Client certificate chain traversal depth.  Default 9.
  final pulumi.Input<int>? authenticateDepth;
  /// Specifies the name of the certificate file that is used as the certification authority certificate when SSL client certificate constrained delegation is enabled. The certificate should be generated and installed by you on the system. When selecting this option, type a certificate file name.
  final pulumi.Input<String>? c3dCaCert;
  /// Specifies the name of the key file that is used as the certification authority key when SSL client certificate constrained delegation is enabled. The key should be generated and installed by you on the system. When selecting this option, type a key file name.
  ///
  /// * `c3d-ca-passphrase` (Optional) Specifies the passphrase of the key file that is used as the certification authority key when SSL client certificate constrained delegation is enabled. When selecting this option, type the passphrase corresponding to the selected c3d-ca-key.
  ///
  /// * `c3d-cert-extension-custom-oids` (Optional) Specifies the custom extension OID of the client certificates to be included in the generated certificates using SSL client certificate constrained delegation.
  final pulumi.Input<String>? c3dCaKey;
  /// CA Passphrase. Default
  final pulumi.Input<String>? c3dCaPassphrase;
  /// Certificate Extensions List.  Default
  final pulumi.Input<List<String>>? c3dCertExtensionCustomOids;
  /// Specifies the extensions of the client certificates to be included in the generated certificates using SSL client certificate constrained delegation. For example, { basic-constraints }. The default value is { basic-constraints extended-key-usage key-usage subject-alternative-name }. The extensions are:
  ///
  /// basic-constraints
  /// Basic constraints are used to indicate whether the certificate belongs
  /// to a CA.
  ///
  /// extended-key-usage
  /// Extended Key Usage is used, typically on a leaf certificate, to
  /// indicate the purpose of the public key contained in the certificate.
  ///
  /// key-usage
  /// Key Usage provides a bitmap specifying the cryptographic operations
  /// which may be performed using the public key contained in the
  /// certificate; for example, it could indicate that the key should be
  /// used for signature but not for encipherment.
  ///
  /// subject-alternative-name
  /// Subject Alternative Name allows identities to be bound to the subject
  /// of the certificate. These identities may be included in addition to
  /// or in place of the identity in the subject field of the certificate.
  ///
  /// * `c3d-cert-lifespan` Specifies the lifespan of the certificate generated using the SSL client certificate constrained delegation. The default value is 24.
  final pulumi.Input<List<String>>? c3dCertExtensionIncludes;
  /// Certificate Lifespan.  Default
  final pulumi.Input<int>? c3dCertLifespan;
  /// CA Passphrase. Default enabled
  final pulumi.Input<String>? c3dCertificateExtensions;
  /// Client certificate file path.  Default None.
  final pulumi.Input<String>? caFile;
  /// Cache size (sessions).
  final pulumi.Input<int>? cacheSize;
  /// Cache time out
  final pulumi.Input<int>? cacheTimeout;
  /// Specifies the name of the certificate that the system uses for server-side SSL processing.
  final pulumi.Input<String>? cert;
  /// Specifies the certificates-key chain to associate with the SSL profile
  final pulumi.Input<String>? chain;
  /// Specifies the cipher group for the SSL server profile. It is mutually exclusive with the argument, `ciphers`. The default value is `none`.
  final pulumi.Input<String>? cipherGroup;
  /// Specifies the list of ciphers that the system supports. When creating a new profile, the default cipher list is provided by the parent profile.
  final pulumi.Input<String>? ciphers;
  /// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is `/Common/serverssl`.
  final pulumi.Input<String>? defaultsFrom;
  /// Response if the cert is expired (drop / ignore).
  final pulumi.Input<String>? expireCertResponseControl;
  /// full path of the profile
  final pulumi.Input<String>? fullPath;
  /// generation
  final pulumi.Input<int>? generation;
  /// Generic alerts enabled / disabled.
  final pulumi.Input<String>? genericAlert;
  /// Handshake time out (seconds)
  final pulumi.Input<String>? handshakeTimeout;
  /// Specifies the file name of the SSL key.
  final pulumi.Input<String>? key;
  /// ModSSL Methods enabled / disabled.  Default is disabled.
  final pulumi.Input<String>? modSslMethods;
  /// ModSSL Methods enabled / disabled.  Default is disabled.
  final pulumi.Input<String>? mode;
  /// Specifies the name of the profile.Name of Profile should be full path,full path is the combination of the `partition + profile name`. For example `/Common/test-serverssl-profile`.
  final pulumi.Input<String>? name;
  /// name of partition
  final pulumi.Input<String>? partition;
  /// Client Certificate Constrained Delegation CA passphrase
  final pulumi.Input<String>? passphrase;
  /// Specifies the way the system handles client certificates.When ignore, specifies that the system ignores certificates from client systems.When require, specifies that the system requires a client to present a valid certificate.When request, specifies that the system requests a valid certificate from a client but always authenticate the client.
  final pulumi.Input<String>? peerCertMode;
  /// Proxy CA Cert
  final pulumi.Input<String>? proxyCaCert;
  /// Proxy CA Key
  final pulumi.Input<String>? proxyCaKey;
  /// Proxy SSL enabled / disabled.  Default is disabled.
  final pulumi.Input<String>? proxySsl;
  /// Renogotiate Period (seconds)
  final pulumi.Input<String>? renegotiatePeriod;
  /// Renogotiate Size
  final pulumi.Input<String>? renegotiateSize;
  /// Enables or disables SSL renegotiation.When creating a new profile, the setting is provided by the parent profile
  final pulumi.Input<String>? renegotiation;
  /// When `true`, client certificate is retained in SSL session.
  final pulumi.Input<String>? retainCertificate;
  /// Specifies the method of secure renegotiations for SSL connections. When creating a new profile, the setting is provided by the parent profile.
  /// When `request` is set the system request secure renegotation of SSL connections.
  /// `require` is a default setting and when set the system permits initial SSL handshakes from clients but terminates renegotiations from unpatched clients.
  /// The `require-strict` setting the system requires strict renegotiation of SSL connections. In this mode the system refuses connections to insecure servers, and terminates existing SSL connections to insecure servers
  final pulumi.Input<String>? secureRenegotiation;
  /// Specifies the fully qualified DNS hostname of the server used in Server Name Indication communications. When creating a new profile, the setting is provided by the parent profile.The server name can also be a wildcard string containing the asterisk `*` character.
  final pulumi.Input<String>? serverName;
  /// Session Mirroring (enabled / disabled)
  final pulumi.Input<String>? sessionMirroring;
  /// Session Ticket (enabled / disabled)
  final pulumi.Input<String>? sessionTicket;
  /// Indicates that the system uses this profile as the default SSL profile when there is no match to the server name, or when the client provides no SNI extension support.When creating a new profile, the setting is provided by the parent profile.
  /// There can be only one SSL profile with this setting enabled.
  final pulumi.Input<String>? sniDefault;
  /// Requires that the network peers also provide SNI support, this setting only takes effect when `sni_default` is set to `true`.When creating a new profile, the setting is provided by the parent profile
  final pulumi.Input<String>? sniRequire;
  /// Enables or disables SSL forward proxy bypass on receiving
  /// handshake_failure, protocol_version or unsupported_extension alert message during the serverside SSL handshake. When enabled and there is an SSL handshake_failure, protocol_version or unsupported_extension alert during the serverside SSL handshake, SSL traffic bypasses the BIG-IP system untouched, without decryption/encryption. The default value is disabled. Conversely, you can specify enabled to use this feature.
  final pulumi.Input<String>? sslC3d;
  /// Specifies whether SSL forward proxy feature is enabled or not. The default value is disabled.
  final pulumi.Input<String>? sslForwardProxy;
  /// Specifies whether SSL forward proxy bypass feature is enabled or not. The default value is disabled.
  final pulumi.Input<String>? sslForwardProxyBypass;
  /// SSL sign hash (any, sha1, sha256, sha384)
  final pulumi.Input<String>? sslSignHash;
  /// Enables or disables the resumption of SSL sessions after an unclean shutdown.When creating a new profile, the setting is provided by the parent profile.
  final pulumi.Input<String>? strictResume;
  /// List of Enabled selection from a set of industry standard options for handling SSL processing.By default,
  /// Don't insert empty fragments and No TLSv1.3 are listed as Enabled Options. `Usage` : tm_options    = ["dont-insert-empty-fragments","no-tlsv1.3"]
  final pulumi.Input<List<String>>? tmOptions;
  /// Unclean Shutdown (enabled / disabled)
  final pulumi.Input<String>? uncleanShutdown;
  /// Unclean Shutdown (drop / ignore)
  final pulumi.Input<String>? untrustedCertResponseControl;

  /// Creates a new [ProfileServerSslState].
  /// [alertTimeout] Alert time out
  /// [authenticate] Specifies the frequency of server authentication for an SSL session.When `once`,specifies that the system authenticates the server once for an SSL session.
  /// [authenticateDepth] Client certificate chain traversal depth.  Default 9.
  /// [c3dCaCert] Specifies the name of the certificate file that is used as the certification authority certificate when SSL client certificate constrained delegation is enabled. The certificate should be generated and installed by you on the system. When selecting this option, type a certificate file name.
  /// [c3dCaKey] Specifies the name of the key file that is used as the certification authority key when SSL client certificate constrained delegation is enabled. The key should be generated and installed by you on the system. When selecting this option, type a key file name.
  /// [c3dCaPassphrase] CA Passphrase. Default
  /// [c3dCertExtensionCustomOids] Certificate Extensions List.  Default
  /// [c3dCertExtensionIncludes] Specifies the extensions of the client certificates to be included in the generated certificates using SSL client certificate constrained delegation. For example, { basic-constraints }. The default value is { basic-constraints extended-key-usage key-usage subject-alternative-name }. The extensions are:
  /// [c3dCertLifespan] Certificate Lifespan.  Default
  /// [c3dCertificateExtensions] CA Passphrase. Default enabled
  /// [caFile] Client certificate file path.  Default None.
  /// [cacheSize] Cache size (sessions).
  /// [cacheTimeout] Cache time out
  /// [cert] Specifies the name of the certificate that the system uses for server-side SSL processing.
  /// [chain] Specifies the certificates-key chain to associate with the SSL profile
  /// [cipherGroup] Specifies the cipher group for the SSL server profile. It is mutually exclusive with the argument, `ciphers`. The default value is `none`.
  /// [ciphers] Specifies the list of ciphers that the system supports. When creating a new profile, the default cipher list is provided by the parent profile.
  /// [defaultsFrom] The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is `/Common/serverssl`.
  /// [expireCertResponseControl] Response if the cert is expired (drop / ignore).
  /// [fullPath] full path of the profile
  /// [generation] generation
  /// [genericAlert] Generic alerts enabled / disabled.
  /// [handshakeTimeout] Handshake time out (seconds)
  /// [key] Specifies the file name of the SSL key.
  /// [modSslMethods] ModSSL Methods enabled / disabled.  Default is disabled.
  /// [mode] ModSSL Methods enabled / disabled.  Default is disabled.
  /// [name] Specifies the name of the profile.Name of Profile should be full path,full path is the combination of the `partition + profile name`. For example `/Common/test-serverssl-profile`.
  /// [partition] name of partition
  /// [passphrase] Client Certificate Constrained Delegation CA passphrase
  /// [peerCertMode] Specifies the way the system handles client certificates.When ignore, specifies that the system ignores certificates from client systems.When require, specifies that the system requires a client to present a valid certificate.When request, specifies that the system requests a valid certificate from a client but always authenticate the client.
  /// [proxyCaCert] Proxy CA Cert
  /// [proxyCaKey] Proxy CA Key
  /// [proxySsl] Proxy SSL enabled / disabled.  Default is disabled.
  /// [renegotiatePeriod] Renogotiate Period (seconds)
  /// [renegotiateSize] Renogotiate Size
  /// [renegotiation] Enables or disables SSL renegotiation.When creating a new profile, the setting is provided by the parent profile
  /// [retainCertificate] When `true`, client certificate is retained in SSL session.
  /// [secureRenegotiation] Specifies the method of secure renegotiations for SSL connections. When creating a new profile, the setting is provided by the parent profile.
  /// [serverName] Specifies the fully qualified DNS hostname of the server used in Server Name Indication communications. When creating a new profile, the setting is provided by the parent profile.The server name can also be a wildcard string containing the asterisk `*` character.
  /// [sessionMirroring] Session Mirroring (enabled / disabled)
  /// [sessionTicket] Session Ticket (enabled / disabled)
  /// [sniDefault] Indicates that the system uses this profile as the default SSL profile when there is no match to the server name, or when the client provides no SNI extension support.When creating a new profile, the setting is provided by the parent profile.
  /// [sniRequire] Requires that the network peers also provide SNI support, this setting only takes effect when `sni_default` is set to `true`.When creating a new profile, the setting is provided by the parent profile
  /// [sslC3d] Enables or disables SSL forward proxy bypass on receiving
  /// [sslForwardProxy] Specifies whether SSL forward proxy feature is enabled or not. The default value is disabled.
  /// [sslForwardProxyBypass] Specifies whether SSL forward proxy bypass feature is enabled or not. The default value is disabled.
  /// [sslSignHash] SSL sign hash (any, sha1, sha256, sha384)
  /// [strictResume] Enables or disables the resumption of SSL sessions after an unclean shutdown.When creating a new profile, the setting is provided by the parent profile.
  /// [tmOptions] List of Enabled selection from a set of industry standard options for handling SSL processing.By default,
  /// [uncleanShutdown] Unclean Shutdown (enabled / disabled)
  /// [untrustedCertResponseControl] Unclean Shutdown (drop / ignore)
  ProfileServerSslState({
    this.alertTimeout,
    this.authenticate,
    this.authenticateDepth,
    this.c3dCaCert,
    this.c3dCaKey,
    this.c3dCaPassphrase,
    this.c3dCertExtensionCustomOids,
    this.c3dCertExtensionIncludes,
    this.c3dCertLifespan,
    this.c3dCertificateExtensions,
    this.caFile,
    this.cacheSize,
    this.cacheTimeout,
    this.cert,
    this.chain,
    this.cipherGroup,
    this.ciphers,
    this.defaultsFrom,
    this.expireCertResponseControl,
    this.fullPath,
    this.generation,
    this.genericAlert,
    this.handshakeTimeout,
    this.key,
    this.modSslMethods,
    this.mode,
    this.name,
    this.partition,
    this.passphrase,
    this.peerCertMode,
    this.proxyCaCert,
    this.proxyCaKey,
    this.proxySsl,
    this.renegotiatePeriod,
    this.renegotiateSize,
    this.renegotiation,
    this.retainCertificate,
    this.secureRenegotiation,
    this.serverName,
    this.sessionMirroring,
    this.sessionTicket,
    this.sniDefault,
    this.sniRequire,
    this.sslC3d,
    this.sslForwardProxy,
    this.sslForwardProxyBypass,
    this.sslSignHash,
    this.strictResume,
    this.tmOptions,
    this.uncleanShutdown,
    this.untrustedCertResponseControl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertTimeout': ?alertTimeout,
      'authenticate': ?authenticate,
      'authenticateDepth': ?authenticateDepth,
      'c3dCaCert': ?c3dCaCert,
      'c3dCaKey': ?c3dCaKey,
      'c3dCaPassphrase': ?c3dCaPassphrase,
      'c3dCertExtensionCustomOids': ?c3dCertExtensionCustomOids,
      'c3dCertExtensionIncludes': ?c3dCertExtensionIncludes,
      'c3dCertLifespan': ?c3dCertLifespan,
      'c3dCertificateExtensions': ?c3dCertificateExtensions,
      'caFile': ?caFile,
      'cacheSize': ?cacheSize,
      'cacheTimeout': ?cacheTimeout,
      'cert': ?cert,
      'chain': ?chain,
      'cipherGroup': ?cipherGroup,
      'ciphers': ?ciphers,
      'defaultsFrom': ?defaultsFrom,
      'expireCertResponseControl': ?expireCertResponseControl,
      'fullPath': ?fullPath,
      'generation': ?generation,
      'genericAlert': ?genericAlert,
      'handshakeTimeout': ?handshakeTimeout,
      'key': ?key,
      'modSslMethods': ?modSslMethods,
      'mode': ?mode,
      'name': ?name,
      'partition': ?partition,
      'passphrase': ?passphrase,
      'peerCertMode': ?peerCertMode,
      'proxyCaCert': ?proxyCaCert,
      'proxyCaKey': ?proxyCaKey,
      'proxySsl': ?proxySsl,
      'renegotiatePeriod': ?renegotiatePeriod,
      'renegotiateSize': ?renegotiateSize,
      'renegotiation': ?renegotiation,
      'retainCertificate': ?retainCertificate,
      'secureRenegotiation': ?secureRenegotiation,
      'serverName': ?serverName,
      'sessionMirroring': ?sessionMirroring,
      'sessionTicket': ?sessionTicket,
      'sniDefault': ?sniDefault,
      'sniRequire': ?sniRequire,
      'sslC3d': ?sslC3d,
      'sslForwardProxy': ?sslForwardProxy,
      'sslForwardProxyBypass': ?sslForwardProxyBypass,
      'sslSignHash': ?sslSignHash,
      'strictResume': ?strictResume,
      'tmOptions': ?tmOptions,
      'uncleanShutdown': ?uncleanShutdown,
      'untrustedCertResponseControl': ?untrustedCertResponseControl,
    };
  }

  factory ProfileServerSslState.fromMap(Map<String, dynamic> map) {
    return ProfileServerSslState(
      alertTimeout: (() { final guardedValue = map['alertTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticate: (() { final guardedValue = map['authenticate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticateDepth: (() { final guardedValue = map['authenticateDepth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      c3dCaCert: (() { final guardedValue = map['c3dCaCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      c3dCaKey: (() { final guardedValue = map['c3dCaKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      c3dCaPassphrase: (() { final guardedValue = map['c3dCaPassphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      c3dCertExtensionCustomOids: (() { final guardedValue = map['c3dCertExtensionCustomOids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      c3dCertExtensionIncludes: (() { final guardedValue = map['c3dCertExtensionIncludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      c3dCertLifespan: (() { final guardedValue = map['c3dCertLifespan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      c3dCertificateExtensions: (() { final guardedValue = map['c3dCertificateExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      caFile: (() { final guardedValue = map['caFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheSize: (() { final guardedValue = map['cacheSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cacheTimeout: (() { final guardedValue = map['cacheTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cert: (() { final guardedValue = map['cert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      chain: (() { final guardedValue = map['chain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cipherGroup: (() { final guardedValue = map['cipherGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ciphers: (() { final guardedValue = map['ciphers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultsFrom: (() { final guardedValue = map['defaultsFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireCertResponseControl: (() { final guardedValue = map['expireCertResponseControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fullPath: (() { final guardedValue = map['fullPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      genericAlert: (() { final guardedValue = map['genericAlert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      handshakeTimeout: (() { final guardedValue = map['handshakeTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modSslMethods: (() { final guardedValue = map['modSslMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partition: (() { final guardedValue = map['partition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passphrase: (() { final guardedValue = map['passphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerCertMode: (() { final guardedValue = map['peerCertMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyCaCert: (() { final guardedValue = map['proxyCaCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyCaKey: (() { final guardedValue = map['proxyCaKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxySsl: (() { final guardedValue = map['proxySsl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renegotiatePeriod: (() { final guardedValue = map['renegotiatePeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renegotiateSize: (() { final guardedValue = map['renegotiateSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renegotiation: (() { final guardedValue = map['renegotiation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retainCertificate: (() { final guardedValue = map['retainCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secureRenegotiation: (() { final guardedValue = map['secureRenegotiation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionMirroring: (() { final guardedValue = map['sessionMirroring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionTicket: (() { final guardedValue = map['sessionTicket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sniDefault: (() { final guardedValue = map['sniDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sniRequire: (() { final guardedValue = map['sniRequire']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslC3d: (() { final guardedValue = map['sslC3d']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslForwardProxy: (() { final guardedValue = map['sslForwardProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslForwardProxyBypass: (() { final guardedValue = map['sslForwardProxyBypass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslSignHash: (() { final guardedValue = map['sslSignHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strictResume: (() { final guardedValue = map['strictResume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tmOptions: (() { final guardedValue = map['tmOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      uncleanShutdown: (() { final guardedValue = map['uncleanShutdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      untrustedCertResponseControl: (() { final guardedValue = map['untrustedCertResponseControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

