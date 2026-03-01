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
    pulumi.Output<String>? alertTimeout,
    pulumi.Output<String>? allowExpiredCrl,
    pulumi.Output<String>? allowNonSsl,
    pulumi.Output<String>? authenticate,
    pulumi.Output<int>? authenticateDepth,
    pulumi.Output<String>? c3dClientFallbackCert,
    pulumi.Output<String>? c3dDropUnknownOcspStatus,
    pulumi.Output<String>? c3dOcsp,
    pulumi.Output<String>? caFile,
    pulumi.Output<int>? cacheSize,
    pulumi.Output<int>? cacheTimeout,
    pulumi.Output<String>? cert,
    pulumi.Output<List<String>>? certExtensionIncludes,
    pulumi.Output<ProfileClientSslCertKeyChain>? certKeyChain,
    pulumi.Output<int>? certLifeSpan,
    pulumi.Output<String>? certLookupByIpaddrPort,
    pulumi.Output<String>? chain,
    pulumi.Output<String>? cipherGroup,
    pulumi.Output<String>? ciphers,
    pulumi.Output<String>? clientCertCa,
    pulumi.Output<String>? crlFile,
    pulumi.Output<String>? defaultsFrom,
    pulumi.Output<String>? forwardProxyBypassDefaultAction,
    pulumi.Output<String>? fullPath,
    pulumi.Output<int>? generation,
    pulumi.Output<String>? genericAlert,
    pulumi.Output<String>? handshakeTimeout,
    pulumi.Output<String>? inheritCertKeychain,
    pulumi.Output<String>? key,
    pulumi.Output<String>? modSslMethods,
    pulumi.Output<String>? mode,
    required pulumi.Output<String> name,
    pulumi.Output<String>? ocspStapling,
    pulumi.Output<String>? partition,
    pulumi.Output<String>? passphrase,
    pulumi.Output<String>? peerCertMode,
    pulumi.Output<String>? proxyCaCert,
    pulumi.Output<String>? proxyCaKey,
    pulumi.Output<String>? proxyCaPassphrase,
    pulumi.Output<String>? proxySsl,
    pulumi.Output<String>? proxySslPassthrough,
    pulumi.Output<String>? renegotiatePeriod,
    pulumi.Output<String>? renegotiateSize,
    pulumi.Output<String>? renegotiation,
    pulumi.Output<String>? retainCertificate,
    pulumi.Output<String>? secureRenegotiation,
    pulumi.Output<String>? serverName,
    pulumi.Output<String>? sessionMirroring,
    pulumi.Output<String>? sessionTicket,
    pulumi.Output<String>? sniDefault,
    pulumi.Output<String>? sniRequire,
    pulumi.Output<String>? sslC3d,
    pulumi.Output<String>? sslForwardProxy,
    pulumi.Output<String>? sslForwardProxyBypass,
    pulumi.Output<String>? sslSignHash,
    pulumi.Output<String>? strictResume,
    pulumi.Output<List<String>>? tmOptions,
    pulumi.Output<String>? uncleanShutdown,
  }) :
      alertTimeout = pulumi.Input.asOptionalInput<String>(alertTimeout),
      allowExpiredCrl = pulumi.Input.asOptionalInput<String>(allowExpiredCrl),
      allowNonSsl = pulumi.Input.asOptionalInput<String>(allowNonSsl),
      authenticate = pulumi.Input.asOptionalInput<String>(authenticate),
      authenticateDepth = pulumi.Input.asOptionalInput<int>(authenticateDepth),
      c3dClientFallbackCert = pulumi.Input.asOptionalInput<String>(c3dClientFallbackCert),
      c3dDropUnknownOcspStatus = pulumi.Input.asOptionalInput<String>(c3dDropUnknownOcspStatus),
      c3dOcsp = pulumi.Input.asOptionalInput<String>(c3dOcsp),
      caFile = pulumi.Input.asOptionalInput<String>(caFile),
      cacheSize = pulumi.Input.asOptionalInput<int>(cacheSize),
      cacheTimeout = pulumi.Input.asOptionalInput<int>(cacheTimeout),
      cert = pulumi.Input.asOptionalInput<String>(cert),
      certExtensionIncludes = pulumi.Input.asOptionalInput<List<String>>(certExtensionIncludes),
      certKeyChain = pulumi.Input.asOptionalInput<ProfileClientSslCertKeyChain>(certKeyChain),
      certLifeSpan = pulumi.Input.asOptionalInput<int>(certLifeSpan),
      certLookupByIpaddrPort = pulumi.Input.asOptionalInput<String>(certLookupByIpaddrPort),
      chain = pulumi.Input.asOptionalInput<String>(chain),
      cipherGroup = pulumi.Input.asOptionalInput<String>(cipherGroup),
      ciphers = pulumi.Input.asOptionalInput<String>(ciphers),
      clientCertCa = pulumi.Input.asOptionalInput<String>(clientCertCa),
      crlFile = pulumi.Input.asOptionalInput<String>(crlFile),
      defaultsFrom = pulumi.Input.asOptionalInput<String>(defaultsFrom),
      forwardProxyBypassDefaultAction = pulumi.Input.asOptionalInput<String>(forwardProxyBypassDefaultAction),
      fullPath = pulumi.Input.asOptionalInput<String>(fullPath),
      generation = pulumi.Input.asOptionalInput<int>(generation),
      genericAlert = pulumi.Input.asOptionalInput<String>(genericAlert),
      handshakeTimeout = pulumi.Input.asOptionalInput<String>(handshakeTimeout),
      inheritCertKeychain = pulumi.Input.asOptionalInput<String>(inheritCertKeychain),
      key = pulumi.Input.asOptionalInput<String>(key),
      modSslMethods = pulumi.Input.asOptionalInput<String>(modSslMethods),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asInput<String>(name),
      ocspStapling = pulumi.Input.asOptionalInput<String>(ocspStapling),
      partition = pulumi.Input.asOptionalInput<String>(partition),
      passphrase = pulumi.Input.asOptionalInput<String>(passphrase),
      peerCertMode = pulumi.Input.asOptionalInput<String>(peerCertMode),
      proxyCaCert = pulumi.Input.asOptionalInput<String>(proxyCaCert),
      proxyCaKey = pulumi.Input.asOptionalInput<String>(proxyCaKey),
      proxyCaPassphrase = pulumi.Input.asOptionalInput<String>(proxyCaPassphrase),
      proxySsl = pulumi.Input.asOptionalInput<String>(proxySsl),
      proxySslPassthrough = pulumi.Input.asOptionalInput<String>(proxySslPassthrough),
      renegotiatePeriod = pulumi.Input.asOptionalInput<String>(renegotiatePeriod),
      renegotiateSize = pulumi.Input.asOptionalInput<String>(renegotiateSize),
      renegotiation = pulumi.Input.asOptionalInput<String>(renegotiation),
      retainCertificate = pulumi.Input.asOptionalInput<String>(retainCertificate),
      secureRenegotiation = pulumi.Input.asOptionalInput<String>(secureRenegotiation),
      serverName = pulumi.Input.asOptionalInput<String>(serverName),
      sessionMirroring = pulumi.Input.asOptionalInput<String>(sessionMirroring),
      sessionTicket = pulumi.Input.asOptionalInput<String>(sessionTicket),
      sniDefault = pulumi.Input.asOptionalInput<String>(sniDefault),
      sniRequire = pulumi.Input.asOptionalInput<String>(sniRequire),
      sslC3d = pulumi.Input.asOptionalInput<String>(sslC3d),
      sslForwardProxy = pulumi.Input.asOptionalInput<String>(sslForwardProxy),
      sslForwardProxyBypass = pulumi.Input.asOptionalInput<String>(sslForwardProxyBypass),
      sslSignHash = pulumi.Input.asOptionalInput<String>(sslSignHash),
      strictResume = pulumi.Input.asOptionalInput<String>(strictResume),
      tmOptions = pulumi.Input.asOptionalInput<List<String>>(tmOptions),
      uncleanShutdown = pulumi.Input.asOptionalInput<String>(uncleanShutdown);

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
      alertTimeout: map['alertTimeout'] == null ? null : pulumi.Output.create<String>(map['alertTimeout'] as String),
      allowExpiredCrl: map['allowExpiredCrl'] == null ? null : pulumi.Output.create<String>(map['allowExpiredCrl'] as String),
      allowNonSsl: map['allowNonSsl'] == null ? null : pulumi.Output.create<String>(map['allowNonSsl'] as String),
      authenticate: map['authenticate'] == null ? null : pulumi.Output.create<String>(map['authenticate'] as String),
      authenticateDepth: map['authenticateDepth'] == null ? null : pulumi.Output.create<int>(map['authenticateDepth'] as int),
      c3dClientFallbackCert: map['c3dClientFallbackCert'] == null ? null : pulumi.Output.create<String>(map['c3dClientFallbackCert'] as String),
      c3dDropUnknownOcspStatus: map['c3dDropUnknownOcspStatus'] == null ? null : pulumi.Output.create<String>(map['c3dDropUnknownOcspStatus'] as String),
      c3dOcsp: map['c3dOcsp'] == null ? null : pulumi.Output.create<String>(map['c3dOcsp'] as String),
      caFile: map['caFile'] == null ? null : pulumi.Output.create<String>(map['caFile'] as String),
      cacheSize: map['cacheSize'] == null ? null : pulumi.Output.create<int>(map['cacheSize'] as int),
      cacheTimeout: map['cacheTimeout'] == null ? null : pulumi.Output.create<int>(map['cacheTimeout'] as int),
      cert: map['cert'] == null ? null : pulumi.Output.create<String>(map['cert'] as String),
      certExtensionIncludes: map['certExtensionIncludes'] == null ? null : pulumi.Output.create<List<String>>((map['certExtensionIncludes'] as List).cast<String>()),
      certKeyChain: map['certKeyChain'] == null ? null : pulumi.Output.create<ProfileClientSslCertKeyChain>(ProfileClientSslCertKeyChain.fromMap((map['certKeyChain'] as Map).cast<String, dynamic>())),
      certLifeSpan: map['certLifeSpan'] == null ? null : pulumi.Output.create<int>(map['certLifeSpan'] as int),
      certLookupByIpaddrPort: map['certLookupByIpaddrPort'] == null ? null : pulumi.Output.create<String>(map['certLookupByIpaddrPort'] as String),
      chain: map['chain'] == null ? null : pulumi.Output.create<String>(map['chain'] as String),
      cipherGroup: map['cipherGroup'] == null ? null : pulumi.Output.create<String>(map['cipherGroup'] as String),
      ciphers: map['ciphers'] == null ? null : pulumi.Output.create<String>(map['ciphers'] as String),
      clientCertCa: map['clientCertCa'] == null ? null : pulumi.Output.create<String>(map['clientCertCa'] as String),
      crlFile: map['crlFile'] == null ? null : pulumi.Output.create<String>(map['crlFile'] as String),
      defaultsFrom: map['defaultsFrom'] == null ? null : pulumi.Output.create<String>(map['defaultsFrom'] as String),
      forwardProxyBypassDefaultAction: map['forwardProxyBypassDefaultAction'] == null ? null : pulumi.Output.create<String>(map['forwardProxyBypassDefaultAction'] as String),
      fullPath: map['fullPath'] == null ? null : pulumi.Output.create<String>(map['fullPath'] as String),
      generation: map['generation'] == null ? null : pulumi.Output.create<int>(map['generation'] as int),
      genericAlert: map['genericAlert'] == null ? null : pulumi.Output.create<String>(map['genericAlert'] as String),
      handshakeTimeout: map['handshakeTimeout'] == null ? null : pulumi.Output.create<String>(map['handshakeTimeout'] as String),
      inheritCertKeychain: map['inheritCertKeychain'] == null ? null : pulumi.Output.create<String>(map['inheritCertKeychain'] as String),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      modSslMethods: map['modSslMethods'] == null ? null : pulumi.Output.create<String>(map['modSslMethods'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      ocspStapling: map['ocspStapling'] == null ? null : pulumi.Output.create<String>(map['ocspStapling'] as String),
      partition: map['partition'] == null ? null : pulumi.Output.create<String>(map['partition'] as String),
      passphrase: map['passphrase'] == null ? null : pulumi.Output.create<String>(map['passphrase'] as String),
      peerCertMode: map['peerCertMode'] == null ? null : pulumi.Output.create<String>(map['peerCertMode'] as String),
      proxyCaCert: map['proxyCaCert'] == null ? null : pulumi.Output.create<String>(map['proxyCaCert'] as String),
      proxyCaKey: map['proxyCaKey'] == null ? null : pulumi.Output.create<String>(map['proxyCaKey'] as String),
      proxyCaPassphrase: map['proxyCaPassphrase'] == null ? null : pulumi.Output.create<String>(map['proxyCaPassphrase'] as String),
      proxySsl: map['proxySsl'] == null ? null : pulumi.Output.create<String>(map['proxySsl'] as String),
      proxySslPassthrough: map['proxySslPassthrough'] == null ? null : pulumi.Output.create<String>(map['proxySslPassthrough'] as String),
      renegotiatePeriod: map['renegotiatePeriod'] == null ? null : pulumi.Output.create<String>(map['renegotiatePeriod'] as String),
      renegotiateSize: map['renegotiateSize'] == null ? null : pulumi.Output.create<String>(map['renegotiateSize'] as String),
      renegotiation: map['renegotiation'] == null ? null : pulumi.Output.create<String>(map['renegotiation'] as String),
      retainCertificate: map['retainCertificate'] == null ? null : pulumi.Output.create<String>(map['retainCertificate'] as String),
      secureRenegotiation: map['secureRenegotiation'] == null ? null : pulumi.Output.create<String>(map['secureRenegotiation'] as String),
      serverName: map['serverName'] == null ? null : pulumi.Output.create<String>(map['serverName'] as String),
      sessionMirroring: map['sessionMirroring'] == null ? null : pulumi.Output.create<String>(map['sessionMirroring'] as String),
      sessionTicket: map['sessionTicket'] == null ? null : pulumi.Output.create<String>(map['sessionTicket'] as String),
      sniDefault: map['sniDefault'] == null ? null : pulumi.Output.create<String>(map['sniDefault'] as String),
      sniRequire: map['sniRequire'] == null ? null : pulumi.Output.create<String>(map['sniRequire'] as String),
      sslC3d: map['sslC3d'] == null ? null : pulumi.Output.create<String>(map['sslC3d'] as String),
      sslForwardProxy: map['sslForwardProxy'] == null ? null : pulumi.Output.create<String>(map['sslForwardProxy'] as String),
      sslForwardProxyBypass: map['sslForwardProxyBypass'] == null ? null : pulumi.Output.create<String>(map['sslForwardProxyBypass'] as String),
      sslSignHash: map['sslSignHash'] == null ? null : pulumi.Output.create<String>(map['sslSignHash'] as String),
      strictResume: map['strictResume'] == null ? null : pulumi.Output.create<String>(map['strictResume'] as String),
      tmOptions: map['tmOptions'] == null ? null : pulumi.Output.create<List<String>>((map['tmOptions'] as List).cast<String>()),
      uncleanShutdown: map['uncleanShutdown'] == null ? null : pulumi.Output.create<String>(map['uncleanShutdown'] as String),
    );
  }
}

