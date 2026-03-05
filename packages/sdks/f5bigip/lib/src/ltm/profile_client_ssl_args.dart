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
  /// &gt; **NOTE**  `cert_key_chain` is recommend way for adding cert-key-chain to profile. If `cert_key_chain` block provided, we should not provide `cert`, `key` and `chain`.
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
      alertTimeout: (() { final guardedValue = map['alertTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowExpiredCrl: (() { final guardedValue = map['allowExpiredCrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowNonSsl: (() { final guardedValue = map['allowNonSsl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticate: (() { final guardedValue = map['authenticate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticateDepth: (() { final guardedValue = map['authenticateDepth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      c3dClientFallbackCert: (() { final guardedValue = map['c3dClientFallbackCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      c3dDropUnknownOcspStatus: (() { final guardedValue = map['c3dDropUnknownOcspStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      c3dOcsp: (() { final guardedValue = map['c3dOcsp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      caFile: (() { final guardedValue = map['caFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheSize: (() { final guardedValue = map['cacheSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cacheTimeout: (() { final guardedValue = map['cacheTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cert: (() { final guardedValue = map['cert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certExtensionIncludes: (() { final guardedValue = map['certExtensionIncludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      certKeyChain: (() { final guardedValue = map['certKeyChain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProfileClientSslCertKeyChain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certLifeSpan: (() { final guardedValue = map['certLifeSpan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      certLookupByIpaddrPort: (() { final guardedValue = map['certLookupByIpaddrPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      chain: (() { final guardedValue = map['chain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cipherGroup: (() { final guardedValue = map['cipherGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ciphers: (() { final guardedValue = map['ciphers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertCa: (() { final guardedValue = map['clientCertCa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crlFile: (() { final guardedValue = map['crlFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultsFrom: (() { final guardedValue = map['defaultsFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardProxyBypassDefaultAction: (() { final guardedValue = map['forwardProxyBypassDefaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fullPath: (() { final guardedValue = map['fullPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      genericAlert: (() { final guardedValue = map['genericAlert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      handshakeTimeout: (() { final guardedValue = map['handshakeTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inheritCertKeychain: (() { final guardedValue = map['inheritCertKeychain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modSslMethods: (() { final guardedValue = map['modSslMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      ocspStapling: (() { final guardedValue = map['ocspStapling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partition: (() { final guardedValue = map['partition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passphrase: (() { final guardedValue = map['passphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerCertMode: (() { final guardedValue = map['peerCertMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyCaCert: (() { final guardedValue = map['proxyCaCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyCaKey: (() { final guardedValue = map['proxyCaKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyCaPassphrase: (() { final guardedValue = map['proxyCaPassphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxySsl: (() { final guardedValue = map['proxySsl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxySslPassthrough: (() { final guardedValue = map['proxySslPassthrough']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
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
    );
  }
}

