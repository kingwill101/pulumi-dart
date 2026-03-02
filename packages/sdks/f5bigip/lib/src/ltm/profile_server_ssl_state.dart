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
      alertTimeout: map['alertTimeout'] == null ? null : (map['alertTimeout']! as String).input(),
      authenticate: map['authenticate'] == null ? null : (map['authenticate']! as String).input(),
      authenticateDepth: map['authenticateDepth'] == null ? null : (map['authenticateDepth']! as int).input(),
      c3dCaCert: map['c3dCaCert'] == null ? null : (map['c3dCaCert']! as String).input(),
      c3dCaKey: map['c3dCaKey'] == null ? null : (map['c3dCaKey']! as String).input(),
      c3dCaPassphrase: map['c3dCaPassphrase'] == null ? null : (map['c3dCaPassphrase']! as String).input(),
      c3dCertExtensionCustomOids: map['c3dCertExtensionCustomOids'] == null ? null : ((map['c3dCertExtensionCustomOids']! as List).cast<String>()).input(),
      c3dCertExtensionIncludes: map['c3dCertExtensionIncludes'] == null ? null : ((map['c3dCertExtensionIncludes']! as List).cast<String>()).input(),
      c3dCertLifespan: map['c3dCertLifespan'] == null ? null : (map['c3dCertLifespan']! as int).input(),
      c3dCertificateExtensions: map['c3dCertificateExtensions'] == null ? null : (map['c3dCertificateExtensions']! as String).input(),
      caFile: map['caFile'] == null ? null : (map['caFile']! as String).input(),
      cacheSize: map['cacheSize'] == null ? null : (map['cacheSize']! as int).input(),
      cacheTimeout: map['cacheTimeout'] == null ? null : (map['cacheTimeout']! as int).input(),
      cert: map['cert'] == null ? null : (map['cert']! as String).input(),
      chain: map['chain'] == null ? null : (map['chain']! as String).input(),
      cipherGroup: map['cipherGroup'] == null ? null : (map['cipherGroup']! as String).input(),
      ciphers: map['ciphers'] == null ? null : (map['ciphers']! as String).input(),
      defaultsFrom: map['defaultsFrom'] == null ? null : (map['defaultsFrom']! as String).input(),
      expireCertResponseControl: map['expireCertResponseControl'] == null ? null : (map['expireCertResponseControl']! as String).input(),
      fullPath: map['fullPath'] == null ? null : (map['fullPath']! as String).input(),
      generation: map['generation'] == null ? null : (map['generation']! as int).input(),
      genericAlert: map['genericAlert'] == null ? null : (map['genericAlert']! as String).input(),
      handshakeTimeout: map['handshakeTimeout'] == null ? null : (map['handshakeTimeout']! as String).input(),
      key: map['key'] == null ? null : (map['key']! as String).input(),
      modSslMethods: map['modSslMethods'] == null ? null : (map['modSslMethods']! as String).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      partition: map['partition'] == null ? null : (map['partition']! as String).input(),
      passphrase: map['passphrase'] == null ? null : (map['passphrase']! as String).input(),
      peerCertMode: map['peerCertMode'] == null ? null : (map['peerCertMode']! as String).input(),
      proxyCaCert: map['proxyCaCert'] == null ? null : (map['proxyCaCert']! as String).input(),
      proxyCaKey: map['proxyCaKey'] == null ? null : (map['proxyCaKey']! as String).input(),
      proxySsl: map['proxySsl'] == null ? null : (map['proxySsl']! as String).input(),
      renegotiatePeriod: map['renegotiatePeriod'] == null ? null : (map['renegotiatePeriod']! as String).input(),
      renegotiateSize: map['renegotiateSize'] == null ? null : (map['renegotiateSize']! as String).input(),
      renegotiation: map['renegotiation'] == null ? null : (map['renegotiation']! as String).input(),
      retainCertificate: map['retainCertificate'] == null ? null : (map['retainCertificate']! as String).input(),
      secureRenegotiation: map['secureRenegotiation'] == null ? null : (map['secureRenegotiation']! as String).input(),
      serverName: map['serverName'] == null ? null : (map['serverName']! as String).input(),
      sessionMirroring: map['sessionMirroring'] == null ? null : (map['sessionMirroring']! as String).input(),
      sessionTicket: map['sessionTicket'] == null ? null : (map['sessionTicket']! as String).input(),
      sniDefault: map['sniDefault'] == null ? null : (map['sniDefault']! as String).input(),
      sniRequire: map['sniRequire'] == null ? null : (map['sniRequire']! as String).input(),
      sslC3d: map['sslC3d'] == null ? null : (map['sslC3d']! as String).input(),
      sslForwardProxy: map['sslForwardProxy'] == null ? null : (map['sslForwardProxy']! as String).input(),
      sslForwardProxyBypass: map['sslForwardProxyBypass'] == null ? null : (map['sslForwardProxyBypass']! as String).input(),
      sslSignHash: map['sslSignHash'] == null ? null : (map['sslSignHash']! as String).input(),
      strictResume: map['strictResume'] == null ? null : (map['strictResume']! as String).input(),
      tmOptions: map['tmOptions'] == null ? null : ((map['tmOptions']! as List).cast<String>()).input(),
      uncleanShutdown: map['uncleanShutdown'] == null ? null : (map['uncleanShutdown']! as String).input(),
      untrustedCertResponseControl: map['untrustedCertResponseControl'] == null ? null : (map['untrustedCertResponseControl']! as String).input(),
    );
  }
}

