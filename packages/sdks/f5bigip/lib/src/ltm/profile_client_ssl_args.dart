// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_client_ssl_cert_key_chain.dart';

/// {@template pulumi_ltm_profile_client_ssl_profile_client_ssl_args_doc}
/// The set of arguments for ProfileClientSsl.
/// {@endtemplate}
/// {@macro pulumi_ltm_profile_client_ssl_profile_client_ssl_args_doc}
class ProfileClientSslArgs {
  /// Alert time out
  final pulumi.Input<String>? alertTimeout;
  /// Instructs the system to use the specified CRL file even if it has expired. The default is `disabled`.
  final pulumi.Input<String>? allowExpiredCrl;
  /// Enables or disables acceptance of non-SSL connections, When creating a new profile, the setting is provided by the parent profile
  final pulumi.Input<String>? allowNonSsl;
  /// Specifies the frequency of client authentication for an SSL session.When `once`,specifies that the system authenticates the client once for an SSL session.
  /// When `always`, specifies that the system authenticates the client once for an SSL session and also upon reuse of that session.
  final pulumi.Input<String>? authenticate;
  /// Specifies the maximum number of certificates to be traversed in a client certificate chain
  final pulumi.Input<int>? authenticateDepth;
  /// Specifies the client certificate to use in SSL client certificate constrained delegation. This certificate will be used if client does not provide a cert during the SSL handshake. The default value is none.
  final pulumi.Input<String>? c3dClientFallbackCert;
  /// Specifies the BIG-IP action when the OCSP responder returns unknown status. The default value is drop, which causes the onnection to be dropped. Conversely, you can specify ignore, which causes the connection to ignore the unknown status and continue.
  final pulumi.Input<String>? c3dDropUnknownOcspStatus;
  /// Specifies the SSL client certificate constrained delegation OCSP object that the BIG-IP SSL should use to connect to the OCSP responder and check the client certificate status.
  final pulumi.Input<String>? c3dOcsp;
  /// (Trusted Certificate Authorities)Specifies a client CA that the system trusts. The default is `None`.
  final pulumi.Input<String>? caFile;
  /// Cache size (sessions).
  final pulumi.Input<int>? cacheSize;
  /// Cache time out
  final pulumi.Input<int>? cacheTimeout;
  /// Specifies the name of the certificate that the system uses for client-side SSL processing. The default is `default`
  final pulumi.Input<String>? cert;
  /// Cert extension includes for ssl forward proxy
  final pulumi.Input<List<String>>? certExtensionIncludes;
  /// `cert_key_chain` Specifies one or more certificates and keys to associate with the SSL profile.
  /// See Cert Key Chain below for more details.
  ///
  /// > **NOTE**  `cert_key_chain` is recommend way for adding cert-key-chain to profile. If `cert_key_chain` block provided, we should not provide `cert`, `key` and `chain`.
  final pulumi.Input<ProfileClientSslCertKeyChain>? certKeyChain;
  /// Life span of the certificate in days for ssl forward proxy
  final pulumi.Input<int>? certLifeSpan;
  /// Cert lookup by ip address and port enabled / disabled
  final pulumi.Input<String>? certLookupByIpaddrPort;
  /// Specifies a certificate chain file that a server can use for authentication. The default is `None`.
  final pulumi.Input<String>? chain;
  /// Specifies the cipher group for the SSL server profile. It is mutually exclusive with the argument, `ciphers`. The default value is `none`.
  final pulumi.Input<String>? cipherGroup;
  /// BigIP Cipher string.
  final pulumi.Input<String>? ciphers;
  /// (Advertised Certificate Authorities)Specifies that the CAs that the system advertises to clients is being trusted by the profile. The default is `None`.
  final pulumi.Input<String>? clientCertCa;
  /// Specifies the name of a file containing a list of revoked client certificates. The default is `None`.
  final pulumi.Input<String>? crlFile;
  /// Parent profile for this clientssl profile.Once this value has been set, it cannot be changed. Default value is `/Common/clientssl`. It Should Full path `/partition/profile_name`
  final pulumi.Input<String>? defaultsFrom;
  /// Forward proxy bypass default action. (enabled / disabled)
  final pulumi.Input<String>? forwardProxyBypassDefaultAction;
  /// full path of the profile
  final pulumi.Input<String>? fullPath;
  /// generation
  final pulumi.Input<int>? generation;
  /// Generic alerts enabled / disabled.
  final pulumi.Input<String>? genericAlert;
  /// Handshake time out (seconds)
  final pulumi.Input<String>? handshakeTimeout;
  /// Inherit cert key chain
  final pulumi.Input<String>? inheritCertKeychain;
  /// Specifies the file name of the SSL key. The default is `default`
  final pulumi.Input<String>? key;
  /// ModSSL Methods enabled / disabled.  Default is disabled.
  final pulumi.Input<String>? modSslMethods;
  /// ModSSL Methods enabled / disabled.  Default is disabled.
  final pulumi.Input<String>? mode;
  /// Specifies the name of the profile.Name of Profile should be full path.The full path is the combination of the `partition + profile name`,For example `/Common/test-clientssl-profile`.
  final pulumi.Input<String> name;
  /// Specifies whether the system uses OCSP stapling. The default value is `disabled`.
  final pulumi.Input<String>? ocspStapling;
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
  /// Proxy CA Passphrase
  final pulumi.Input<String>? proxyCaPassphrase;
  /// Proxy SSL enabled / disabled.  Default is disabled.
  final pulumi.Input<String>? proxySsl;
  /// Proxy SSL passthrough enabled / disabled.  Default is disabled.
  final pulumi.Input<String>? proxySslPassthrough;
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
  /// Enables or disables SSL client certificate constrained delegation. The default option is disabled. Conversely, you can specify enabled to use the SSL client certificate constrained delegation.
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

  /// Creates a new [ProfileClientSslArgs].
  /// [alertTimeout] Alert time out
  /// [allowExpiredCrl] Instructs the system to use the specified CRL file even if it has expired. The default is `disabled`.
  /// [allowNonSsl] Enables or disables acceptance of non-SSL connections, When creating a new profile, the setting is provided by the parent profile
  /// [authenticate] Specifies the frequency of client authentication for an SSL session.When `once`,specifies that the system authenticates the client once for an SSL session.
  /// [authenticateDepth] Specifies the maximum number of certificates to be traversed in a client certificate chain
  /// [c3dClientFallbackCert] Specifies the client certificate to use in SSL client certificate constrained delegation. This certificate will be used if client does not provide a cert during the SSL handshake. The default value is none.
  /// [c3dDropUnknownOcspStatus] Specifies the BIG-IP action when the OCSP responder returns unknown status. The default value is drop, which causes the onnection to be dropped. Conversely, you can specify ignore, which causes the connection to ignore the unknown status and continue.
  /// [c3dOcsp] Specifies the SSL client certificate constrained delegation OCSP object that the BIG-IP SSL should use to connect to the OCSP responder and check the client certificate status.
  /// [caFile] (Trusted Certificate Authorities)Specifies a client CA that the system trusts. The default is `None`.
  /// [cacheSize] Cache size (sessions).
  /// [cacheTimeout] Cache time out
  /// [cert] Specifies the name of the certificate that the system uses for client-side SSL processing. The default is `default`
  /// [certExtensionIncludes] Cert extension includes for ssl forward proxy
  /// [certKeyChain] `cert_key_chain` Specifies one or more certificates and keys to associate with the SSL profile.
  /// [certLifeSpan] Life span of the certificate in days for ssl forward proxy
  /// [certLookupByIpaddrPort] Cert lookup by ip address and port enabled / disabled
  /// [chain] Specifies a certificate chain file that a server can use for authentication. The default is `None`.
  /// [cipherGroup] Specifies the cipher group for the SSL server profile. It is mutually exclusive with the argument, `ciphers`. The default value is `none`.
  /// [ciphers] BigIP Cipher string.
  /// [clientCertCa] (Advertised Certificate Authorities)Specifies that the CAs that the system advertises to clients is being trusted by the profile. The default is `None`.
  /// [crlFile] Specifies the name of a file containing a list of revoked client certificates. The default is `None`.
  /// [defaultsFrom] Parent profile for this clientssl profile.Once this value has been set, it cannot be changed. Default value is `/Common/clientssl`. It Should Full path `/partition/profile_name`
  /// [forwardProxyBypassDefaultAction] Forward proxy bypass default action. (enabled / disabled)
  /// [fullPath] full path of the profile
  /// [generation] generation
  /// [genericAlert] Generic alerts enabled / disabled.
  /// [handshakeTimeout] Handshake time out (seconds)
  /// [inheritCertKeychain] Inherit cert key chain
  /// [key] Specifies the file name of the SSL key. The default is `default`
  /// [modSslMethods] ModSSL Methods enabled / disabled.  Default is disabled.
  /// [mode] ModSSL Methods enabled / disabled.  Default is disabled.
  /// [name] Specifies the name of the profile.Name of Profile should be full path.The full path is the combination of the `partition + profile name`,For example `/Common/test-clientssl-profile`.
  /// [ocspStapling] Specifies whether the system uses OCSP stapling. The default value is `disabled`.
  /// [partition] name of partition
  /// [passphrase] Client Certificate Constrained Delegation CA passphrase
  /// [peerCertMode] Specifies the way the system handles client certificates.When ignore, specifies that the system ignores certificates from client systems.When require, specifies that the system requires a client to present a valid certificate.When request, specifies that the system requests a valid certificate from a client but always authenticate the client.
  /// [proxyCaCert] Proxy CA Cert
  /// [proxyCaKey] Proxy CA Key
  /// [proxyCaPassphrase] Proxy CA Passphrase
  /// [proxySsl] Proxy SSL enabled / disabled.  Default is disabled.
  /// [proxySslPassthrough] Proxy SSL passthrough enabled / disabled.  Default is disabled.
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
  /// [sslC3d] Enables or disables SSL client certificate constrained delegation. The default option is disabled. Conversely, you can specify enabled to use the SSL client certificate constrained delegation.
  /// [sslForwardProxy] Specifies whether SSL forward proxy feature is enabled or not. The default value is disabled.
  /// [sslForwardProxyBypass] Specifies whether SSL forward proxy bypass feature is enabled or not. The default value is disabled.
  /// [sslSignHash] SSL sign hash (any, sha1, sha256, sha384)
  /// [strictResume] Enables or disables the resumption of SSL sessions after an unclean shutdown.When creating a new profile, the setting is provided by the parent profile.
  /// [tmOptions] List of Enabled selection from a set of industry standard options for handling SSL processing.By default,
  /// [uncleanShutdown] Unclean Shutdown (enabled / disabled)
  ProfileClientSslArgs({
    this.alertTimeout,
    this.allowExpiredCrl,
    this.allowNonSsl,
    this.authenticate,
    this.authenticateDepth,
    this.c3dClientFallbackCert,
    this.c3dDropUnknownOcspStatus,
    this.c3dOcsp,
    this.caFile,
    this.cacheSize,
    this.cacheTimeout,
    this.cert,
    this.certExtensionIncludes,
    this.certKeyChain,
    this.certLifeSpan,
    this.certLookupByIpaddrPort,
    this.chain,
    this.cipherGroup,
    this.ciphers,
    this.clientCertCa,
    this.crlFile,
    this.defaultsFrom,
    this.forwardProxyBypassDefaultAction,
    this.fullPath,
    this.generation,
    this.genericAlert,
    this.handshakeTimeout,
    this.inheritCertKeychain,
    this.key,
    this.modSslMethods,
    this.mode,
    required this.name,
    this.ocspStapling,
    this.partition,
    this.passphrase,
    this.peerCertMode,
    this.proxyCaCert,
    this.proxyCaKey,
    this.proxyCaPassphrase,
    this.proxySsl,
    this.proxySslPassthrough,
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertTimeout': ?alertTimeout,
      'allowExpiredCrl': ?allowExpiredCrl,
      'allowNonSsl': ?allowNonSsl,
      'authenticate': ?authenticate,
      'authenticateDepth': ?authenticateDepth,
      'c3dClientFallbackCert': ?c3dClientFallbackCert,
      'c3dDropUnknownOcspStatus': ?c3dDropUnknownOcspStatus,
      'c3dOcsp': ?c3dOcsp,
      'caFile': ?caFile,
      'cacheSize': ?cacheSize,
      'cacheTimeout': ?cacheTimeout,
      'cert': ?cert,
      'certExtensionIncludes': ?certExtensionIncludes,
      'certKeyChain': ?pulumi.Input.mapOptionalInputValue<ProfileClientSslCertKeyChain, Map<String, dynamic>>(certKeyChain, (value) => value.toMap()),
      'certLifeSpan': ?certLifeSpan,
      'certLookupByIpaddrPort': ?certLookupByIpaddrPort,
      'chain': ?chain,
      'cipherGroup': ?cipherGroup,
      'ciphers': ?ciphers,
      'clientCertCa': ?clientCertCa,
      'crlFile': ?crlFile,
      'defaultsFrom': ?defaultsFrom,
      'forwardProxyBypassDefaultAction': ?forwardProxyBypassDefaultAction,
      'fullPath': ?fullPath,
      'generation': ?generation,
      'genericAlert': ?genericAlert,
      'handshakeTimeout': ?handshakeTimeout,
      'inheritCertKeychain': ?inheritCertKeychain,
      'key': ?key,
      'modSslMethods': ?modSslMethods,
      'mode': ?mode,
      'name': name,
      'ocspStapling': ?ocspStapling,
      'partition': ?partition,
      'passphrase': ?passphrase,
      'peerCertMode': ?peerCertMode,
      'proxyCaCert': ?proxyCaCert,
      'proxyCaKey': ?proxyCaKey,
      'proxyCaPassphrase': ?proxyCaPassphrase,
      'proxySsl': ?proxySsl,
      'proxySslPassthrough': ?proxySslPassthrough,
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
    };
  }

  factory ProfileClientSslArgs.fromMap(Map<String, dynamic> map) {
    return ProfileClientSslArgs(
      alertTimeout: map['alertTimeout'] == null ? null : (map['alertTimeout'] as String).input(),
      allowExpiredCrl: map['allowExpiredCrl'] == null ? null : (map['allowExpiredCrl'] as String).input(),
      allowNonSsl: map['allowNonSsl'] == null ? null : (map['allowNonSsl'] as String).input(),
      authenticate: map['authenticate'] == null ? null : (map['authenticate'] as String).input(),
      authenticateDepth: map['authenticateDepth'] == null ? null : (map['authenticateDepth'] as int).input(),
      c3dClientFallbackCert: map['c3dClientFallbackCert'] == null ? null : (map['c3dClientFallbackCert'] as String).input(),
      c3dDropUnknownOcspStatus: map['c3dDropUnknownOcspStatus'] == null ? null : (map['c3dDropUnknownOcspStatus'] as String).input(),
      c3dOcsp: map['c3dOcsp'] == null ? null : (map['c3dOcsp'] as String).input(),
      caFile: map['caFile'] == null ? null : (map['caFile'] as String).input(),
      cacheSize: map['cacheSize'] == null ? null : (map['cacheSize'] as int).input(),
      cacheTimeout: map['cacheTimeout'] == null ? null : (map['cacheTimeout'] as int).input(),
      cert: map['cert'] == null ? null : (map['cert'] as String).input(),
      certExtensionIncludes: map['certExtensionIncludes'] == null ? null : ((map['certExtensionIncludes'] as List).cast<String>()).input(),
      certKeyChain: map['certKeyChain'] == null ? null : (ProfileClientSslCertKeyChain.fromMap((map['certKeyChain'] as Map).cast<String, dynamic>())).input(),
      certLifeSpan: map['certLifeSpan'] == null ? null : (map['certLifeSpan'] as int).input(),
      certLookupByIpaddrPort: map['certLookupByIpaddrPort'] == null ? null : (map['certLookupByIpaddrPort'] as String).input(),
      chain: map['chain'] == null ? null : (map['chain'] as String).input(),
      cipherGroup: map['cipherGroup'] == null ? null : (map['cipherGroup'] as String).input(),
      ciphers: map['ciphers'] == null ? null : (map['ciphers'] as String).input(),
      clientCertCa: map['clientCertCa'] == null ? null : (map['clientCertCa'] as String).input(),
      crlFile: map['crlFile'] == null ? null : (map['crlFile'] as String).input(),
      defaultsFrom: map['defaultsFrom'] == null ? null : (map['defaultsFrom'] as String).input(),
      forwardProxyBypassDefaultAction: map['forwardProxyBypassDefaultAction'] == null ? null : (map['forwardProxyBypassDefaultAction'] as String).input(),
      fullPath: map['fullPath'] == null ? null : (map['fullPath'] as String).input(),
      generation: map['generation'] == null ? null : (map['generation'] as int).input(),
      genericAlert: map['genericAlert'] == null ? null : (map['genericAlert'] as String).input(),
      handshakeTimeout: map['handshakeTimeout'] == null ? null : (map['handshakeTimeout'] as String).input(),
      inheritCertKeychain: map['inheritCertKeychain'] == null ? null : (map['inheritCertKeychain'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      modSslMethods: map['modSslMethods'] == null ? null : (map['modSslMethods'] as String).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      name: (map['name'] as String).input(),
      ocspStapling: map['ocspStapling'] == null ? null : (map['ocspStapling'] as String).input(),
      partition: map['partition'] == null ? null : (map['partition'] as String).input(),
      passphrase: map['passphrase'] == null ? null : (map['passphrase'] as String).input(),
      peerCertMode: map['peerCertMode'] == null ? null : (map['peerCertMode'] as String).input(),
      proxyCaCert: map['proxyCaCert'] == null ? null : (map['proxyCaCert'] as String).input(),
      proxyCaKey: map['proxyCaKey'] == null ? null : (map['proxyCaKey'] as String).input(),
      proxyCaPassphrase: map['proxyCaPassphrase'] == null ? null : (map['proxyCaPassphrase'] as String).input(),
      proxySsl: map['proxySsl'] == null ? null : (map['proxySsl'] as String).input(),
      proxySslPassthrough: map['proxySslPassthrough'] == null ? null : (map['proxySslPassthrough'] as String).input(),
      renegotiatePeriod: map['renegotiatePeriod'] == null ? null : (map['renegotiatePeriod'] as String).input(),
      renegotiateSize: map['renegotiateSize'] == null ? null : (map['renegotiateSize'] as String).input(),
      renegotiation: map['renegotiation'] == null ? null : (map['renegotiation'] as String).input(),
      retainCertificate: map['retainCertificate'] == null ? null : (map['retainCertificate'] as String).input(),
      secureRenegotiation: map['secureRenegotiation'] == null ? null : (map['secureRenegotiation'] as String).input(),
      serverName: map['serverName'] == null ? null : (map['serverName'] as String).input(),
      sessionMirroring: map['sessionMirroring'] == null ? null : (map['sessionMirroring'] as String).input(),
      sessionTicket: map['sessionTicket'] == null ? null : (map['sessionTicket'] as String).input(),
      sniDefault: map['sniDefault'] == null ? null : (map['sniDefault'] as String).input(),
      sniRequire: map['sniRequire'] == null ? null : (map['sniRequire'] as String).input(),
      sslC3d: map['sslC3d'] == null ? null : (map['sslC3d'] as String).input(),
      sslForwardProxy: map['sslForwardProxy'] == null ? null : (map['sslForwardProxy'] as String).input(),
      sslForwardProxyBypass: map['sslForwardProxyBypass'] == null ? null : (map['sslForwardProxyBypass'] as String).input(),
      sslSignHash: map['sslSignHash'] == null ? null : (map['sslSignHash'] as String).input(),
      strictResume: map['strictResume'] == null ? null : (map['strictResume'] as String).input(),
      tmOptions: map['tmOptions'] == null ? null : ((map['tmOptions'] as List).cast<String>()).input(),
      uncleanShutdown: map['uncleanShutdown'] == null ? null : (map['uncleanShutdown'] as String).input(),
    );
  }
}

