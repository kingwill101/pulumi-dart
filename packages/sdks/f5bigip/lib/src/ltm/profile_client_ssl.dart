import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_client_ssl_args.dart';
import 'profile_client_ssl_cert_key_chain.dart';
import 'profile_client_ssl_state.dart';

/// `f5bigip.ltm.ProfileClientSsl` Manages client SSL profiles on a BIG-IP
///
/// Resources should be named with their "full path". The full path is the combination of the partition + name (example: /Common/my-pool ) or  partition + directory + name of the resource  (example: /Common/test/my-pool )
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const test_ClientSsl = new f5bigip.ltm.ProfileClientSsl("test-ClientSsl", {
///     name: "/Common/test-ClientSsl",
///     defaultsFrom: "/Common/clientssl",
///     authenticate: "always",
///     ciphers: "DEFAULT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// test__client_ssl = f5bigip.ltm.ProfileClientSsl("test-ClientSsl",
///     name="/Common/test-ClientSsl",
///     defaults_from="/Common/clientssl",
///     authenticate="always",
///     ciphers="DEFAULT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test_ClientSsl = new F5BigIP.Ltm.ProfileClientSsl("test-ClientSsl", new()
///     {
///         Name = "/Common/test-ClientSsl",
///         DefaultsFrom = "/Common/clientssl",
///         Authenticate = "always",
///         Ciphers = "DEFAULT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ltm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ltm.NewProfileClientSsl(ctx, "test-ClientSsl", &ltm.ProfileClientSslArgs{
/// 			Name:         pulumi.String("/Common/test-ClientSsl"),
/// 			DefaultsFrom: pulumi.String("/Common/clientssl"),
/// 			Authenticate: pulumi.String("always"),
/// 			Ciphers:      pulumi.String("DEFAULT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.f5bigip.ltm.ProfileClientSsl;
/// import com.pulumi.f5bigip.ltm.ProfileClientSslArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test_ClientSsl = new ProfileClientSsl("test-ClientSsl", ProfileClientSslArgs.builder()
///             .name("/Common/test-ClientSsl")
///             .defaultsFrom("/Common/clientssl")
///             .authenticate("always")
///             .ciphers("DEFAULT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-ClientSsl:
///     type: f5bigip:ltm:ProfileClientSsl
///     properties:
///       name: /Common/test-ClientSsl
///       defaultsFrom: /Common/clientssl
///       authenticate: always
///       ciphers: DEFAULT
/// ```
///
///
/// ## Importing
///
/// An existing client-ssl profile can be imported into this resource by supplying client-ssl profile Name in `full path` as `id`.
/// An example is below:
/// ```sh
/// $ terraform import bigip_ltm_profile_client_ssl.test-ClientSsl-import /Common/test-ClientSsl
/// ```
class ProfileClientSsl extends pulumi.CustomResource {
  /// Alert time out
  late final pulumi.Output<String> alertTimeout;

  /// Instructs the system to use the specified CRL file even if it has expired. The default is `disabled`.
  late final pulumi.Output<String> allowExpiredCrl;

  /// Enables or disables acceptance of non-SSL connections, When creating a new profile, the setting is provided by the parent profile
  late final pulumi.Output<String> allowNonSsl;

  /// Specifies the frequency of client authentication for an SSL session.When `once`,specifies that the system authenticates the client once for an SSL session.
  /// When `always`, specifies that the system authenticates the client once for an SSL session and also upon reuse of that session.
  late final pulumi.Output<String> authenticate;

  /// Specifies the maximum number of certificates to be traversed in a client certificate chain
  late final pulumi.Output<int> authenticateDepth;

  /// Specifies the client certificate to use in SSL client certificate constrained delegation. This certificate will be used if client does not provide a cert during the SSL handshake. The default value is none.
  late final pulumi.Output<String> c3dClientFallbackCert;

  /// Specifies the BIG-IP action when the OCSP responder returns unknown status. The default value is drop, which causes the onnection to be dropped. Conversely, you can specify ignore, which causes the connection to ignore the unknown status and continue.
  late final pulumi.Output<String> c3dDropUnknownOcspStatus;

  /// Specifies the SSL client certificate constrained delegation OCSP object that the BIG-IP SSL should use to connect to the OCSP responder and check the client certificate status.
  late final pulumi.Output<String> c3dOcsp;

  /// (Trusted Certificate Authorities)Specifies a client CA that the system trusts. The default is `None`.
  late final pulumi.Output<String> caFile;

  /// Cache size (sessions).
  late final pulumi.Output<int> cacheSize;

  /// Cache time out
  late final pulumi.Output<int> cacheTimeout;

  /// Specifies the name of the certificate that the system uses for client-side SSL processing. The default is `default`
  late final pulumi.Output<String> cert;

  /// Cert extension includes for ssl forward proxy
  late final pulumi.Output<List<String>> certExtensionIncludes;

  /// `cert_key_chain` Specifies one or more certificates and keys to associate with the SSL profile.
  /// See Cert Key Chain below for more details.
  ///
  /// &gt; **NOTE**  `cert_key_chain` is recommend way for adding cert-key-chain to profile. If `cert_key_chain` block provided, we should not provide `cert`, `key` and `chain`.
  late final pulumi.Output<ProfileClientSslCertKeyChain?> certKeyChain;

  /// Life span of the certificate in days for ssl forward proxy
  late final pulumi.Output<int> certLifeSpan;

  /// Cert lookup by ip address and port enabled / disabled
  late final pulumi.Output<String> certLookupByIpaddrPort;

  /// Specifies a certificate chain file that a server can use for authentication. The default is `None`.
  late final pulumi.Output<String> chain;

  /// Specifies the cipher group for the SSL server profile. It is mutually exclusive with the argument, `ciphers`. The default value is `none`.
  late final pulumi.Output<String> cipherGroup;

  /// BigIP Cipher string.
  late final pulumi.Output<String> ciphers;

  /// (Advertised Certificate Authorities)Specifies that the CAs that the system advertises to clients is being trusted by the profile. The default is `None`.
  late final pulumi.Output<String> clientCertCa;

  /// Specifies the name of a file containing a list of revoked client certificates. The default is `None`.
  late final pulumi.Output<String> crlFile;

  /// Parent profile for this clientssl profile.Once this value has been set, it cannot be changed. Default value is `/Common/clientssl`. It Should Full path `/partition/profile_name`
  late final pulumi.Output<String?> defaultsFrom;

  /// Forward proxy bypass default action. (enabled / disabled)
  late final pulumi.Output<String> forwardProxyBypassDefaultAction;

  /// full path of the profile
  late final pulumi.Output<String> fullPath;

  /// generation
  late final pulumi.Output<int> generation;

  /// Generic alerts enabled / disabled.
  late final pulumi.Output<String> genericAlert;

  /// Handshake time out (seconds)
  late final pulumi.Output<String> handshakeTimeout;

  /// Inherit cert key chain
  late final pulumi.Output<String> inheritCertKeychain;

  /// Specifies the file name of the SSL key. The default is `default`
  late final pulumi.Output<String> key;

  /// ModSSL Methods enabled / disabled.  Default is disabled.
  late final pulumi.Output<String> modSslMethods;

  /// ModSSL Methods enabled / disabled.  Default is disabled.
  late final pulumi.Output<String> mode;

  /// Specifies the name of the profile.Name of Profile should be full path.The full path is the combination of the `partition + profile name`,For example `/Common/test-clientssl-profile`.
  late final pulumi.Output<String> name;

  /// Specifies whether the system uses OCSP stapling. The default value is `disabled`.
  late final pulumi.Output<String?> ocspStapling;

  /// name of partition
  late final pulumi.Output<String> partition;

  /// Client Certificate Constrained Delegation CA passphrase
  late final pulumi.Output<String> passphrase;

  /// Specifies the way the system handles client certificates.When ignore, specifies that the system ignores certificates from client systems.When require, specifies that the system requires a client to present a valid certificate.When request, specifies that the system requests a valid certificate from a client but always authenticate the client.
  late final pulumi.Output<String> peerCertMode;

  /// Proxy CA Cert
  late final pulumi.Output<String> proxyCaCert;

  /// Proxy CA Key
  late final pulumi.Output<String> proxyCaKey;

  /// Proxy CA Passphrase
  late final pulumi.Output<String> proxyCaPassphrase;

  /// Proxy SSL enabled / disabled.  Default is disabled.
  late final pulumi.Output<String> proxySsl;

  /// Proxy SSL passthrough enabled / disabled.  Default is disabled.
  late final pulumi.Output<String> proxySslPassthrough;

  /// Renogotiate Period (seconds)
  late final pulumi.Output<String> renegotiatePeriod;

  /// Renogotiate Size
  late final pulumi.Output<String> renegotiateSize;

  /// Enables or disables SSL renegotiation.When creating a new profile, the setting is provided by the parent profile
  late final pulumi.Output<String> renegotiation;

  /// When `true`, client certificate is retained in SSL session.
  late final pulumi.Output<String> retainCertificate;

  /// Specifies the method of secure renegotiations for SSL connections. When creating a new profile, the setting is provided by the parent profile.
  /// When `request` is set the system request secure renegotation of SSL connections.
  /// `require` is a default setting and when set the system permits initial SSL handshakes from clients but terminates renegotiations from unpatched clients.
  /// The `require-strict` setting the system requires strict renegotiation of SSL connections. In this mode the system refuses connections to insecure servers, and terminates existing SSL connections to insecure servers
  late final pulumi.Output<String> secureRenegotiation;

  /// Specifies the fully qualified DNS hostname of the server used in Server Name Indication communications. When creating a new profile, the setting is provided by the parent profile.The server name can also be a wildcard string containing the asterisk `*` character.
  late final pulumi.Output<String> serverName;

  /// Session Mirroring (enabled / disabled)
  late final pulumi.Output<String> sessionMirroring;

  /// Session Ticket (enabled / disabled)
  late final pulumi.Output<String> sessionTicket;

  /// Indicates that the system uses this profile as the default SSL profile when there is no match to the server name, or when the client provides no SNI extension support.When creating a new profile, the setting is provided by the parent profile.
  /// There can be only one SSL profile with this setting enabled.
  late final pulumi.Output<String> sniDefault;

  /// Requires that the network peers also provide SNI support, this setting only takes effect when `sni_default` is set to `true`.When creating a new profile, the setting is provided by the parent profile
  late final pulumi.Output<String> sniRequire;

  /// Enables or disables SSL client certificate constrained delegation. The default option is disabled. Conversely, you can specify enabled to use the SSL client certificate constrained delegation.
  late final pulumi.Output<String> sslC3d;

  /// Specifies whether SSL forward proxy feature is enabled or not. The default value is disabled.
  late final pulumi.Output<String> sslForwardProxy;

  /// Specifies whether SSL forward proxy bypass feature is enabled or not. The default value is disabled.
  late final pulumi.Output<String> sslForwardProxyBypass;

  /// SSL sign hash (any, sha1, sha256, sha384)
  late final pulumi.Output<String> sslSignHash;

  /// Enables or disables the resumption of SSL sessions after an unclean shutdown.When creating a new profile, the setting is provided by the parent profile.
  late final pulumi.Output<String> strictResume;

  /// List of Enabled selection from a set of industry standard options for handling SSL processing.By default,
  /// Don't insert empty fragments and No TLSv1.3 are listed as Enabled Options. `Usage` : tm_options    = ["dont-insert-empty-fragments","no-tlsv1.3"]
  late final pulumi.Output<List<String>> tmOptions;

  /// Unclean Shutdown (enabled / disabled)
  late final pulumi.Output<String> uncleanShutdown;

  /// Creates a new [ProfileClientSsl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProfileClientSsl]. {@macro pulumi_ltm_profile_client_ssl_profile_client_ssl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProfileClientSsl(
    String name, {
    ProfileClientSslArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:ltm/profileClientSsl:ProfileClientSsl',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alertTimeout = registerOutput<String>('alertTimeout');
    allowExpiredCrl = registerOutput<String>('allowExpiredCrl');
    allowNonSsl = registerOutput<String>('allowNonSsl');
    authenticate = registerOutput<String>('authenticate');
    authenticateDepth = registerOutput<int>('authenticateDepth');
    c3dClientFallbackCert = registerOutput<String>('c3dClientFallbackCert');
    c3dDropUnknownOcspStatus = registerOutput<String>(
      'c3dDropUnknownOcspStatus',
    );
    c3dOcsp = registerOutput<String>('c3dOcsp');
    caFile = registerOutput<String>('caFile');
    cacheSize = registerOutput<int>('cacheSize');
    cacheTimeout = registerOutput<int>('cacheTimeout');
    cert = registerOutput<String>('cert');
    certExtensionIncludes = registerOutput<List<String>>(
      'certExtensionIncludes',
    );
    certKeyChain = registerOutput<ProfileClientSslCertKeyChain?>(
      'certKeyChain',
    );
    certLifeSpan = registerOutput<int>('certLifeSpan');
    certLookupByIpaddrPort = registerOutput<String>('certLookupByIpaddrPort');
    chain = registerOutput<String>('chain');
    cipherGroup = registerOutput<String>('cipherGroup');
    ciphers = registerOutput<String>('ciphers');
    clientCertCa = registerOutput<String>('clientCertCa');
    crlFile = registerOutput<String>('crlFile');
    defaultsFrom = registerOutput<String?>('defaultsFrom');
    forwardProxyBypassDefaultAction = registerOutput<String>(
      'forwardProxyBypassDefaultAction',
    );
    fullPath = registerOutput<String>('fullPath');
    generation = registerOutput<int>('generation');
    genericAlert = registerOutput<String>('genericAlert');
    handshakeTimeout = registerOutput<String>('handshakeTimeout');
    inheritCertKeychain = registerOutput<String>('inheritCertKeychain');
    key = registerOutput<String>('key');
    modSslMethods = registerOutput<String>('modSslMethods');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    ocspStapling = registerOutput<String?>('ocspStapling');
    partition = registerOutput<String>('partition');
    passphrase = registerOutput<String>('passphrase');
    peerCertMode = registerOutput<String>('peerCertMode');
    proxyCaCert = registerOutput<String>('proxyCaCert');
    proxyCaKey = registerOutput<String>('proxyCaKey');
    proxyCaPassphrase = registerOutput<String>('proxyCaPassphrase');
    proxySsl = registerOutput<String>('proxySsl');
    proxySslPassthrough = registerOutput<String>('proxySslPassthrough');
    renegotiatePeriod = registerOutput<String>('renegotiatePeriod');
    renegotiateSize = registerOutput<String>('renegotiateSize');
    renegotiation = registerOutput<String>('renegotiation');
    retainCertificate = registerOutput<String>('retainCertificate');
    secureRenegotiation = registerOutput<String>('secureRenegotiation');
    serverName = registerOutput<String>('serverName');
    sessionMirroring = registerOutput<String>('sessionMirroring');
    sessionTicket = registerOutput<String>('sessionTicket');
    sniDefault = registerOutput<String>('sniDefault');
    sniRequire = registerOutput<String>('sniRequire');
    sslC3d = registerOutput<String>('sslC3d');
    sslForwardProxy = registerOutput<String>('sslForwardProxy');
    sslForwardProxyBypass = registerOutput<String>('sslForwardProxyBypass');
    sslSignHash = registerOutput<String>('sslSignHash');
    strictResume = registerOutput<String>('strictResume');
    tmOptions = registerOutput<List<String>>('tmOptions');
    uncleanShutdown = registerOutput<String>('uncleanShutdown');
  }

  /// Gets an existing [ProfileClientSsl] resource's state with the given [name] and [id].
  static ProfileClientSsl get(
    String name,
    pulumi.Input<String> id, {
    ProfileClientSslState? state,
  }) {
    return ProfileClientSsl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProfileClientSsl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:ltm/profileClientSsl:ProfileClientSsl',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alertTimeout = registerOutput<String>('alertTimeout');
    allowExpiredCrl = registerOutput<String>('allowExpiredCrl');
    allowNonSsl = registerOutput<String>('allowNonSsl');
    authenticate = registerOutput<String>('authenticate');
    authenticateDepth = registerOutput<int>('authenticateDepth');
    c3dClientFallbackCert = registerOutput<String>('c3dClientFallbackCert');
    c3dDropUnknownOcspStatus = registerOutput<String>(
      'c3dDropUnknownOcspStatus',
    );
    c3dOcsp = registerOutput<String>('c3dOcsp');
    caFile = registerOutput<String>('caFile');
    cacheSize = registerOutput<int>('cacheSize');
    cacheTimeout = registerOutput<int>('cacheTimeout');
    cert = registerOutput<String>('cert');
    certExtensionIncludes = registerOutput<List<String>>(
      'certExtensionIncludes',
    );
    certKeyChain = registerOutput<ProfileClientSslCertKeyChain?>(
      'certKeyChain',
    );
    certLifeSpan = registerOutput<int>('certLifeSpan');
    certLookupByIpaddrPort = registerOutput<String>('certLookupByIpaddrPort');
    chain = registerOutput<String>('chain');
    cipherGroup = registerOutput<String>('cipherGroup');
    ciphers = registerOutput<String>('ciphers');
    clientCertCa = registerOutput<String>('clientCertCa');
    crlFile = registerOutput<String>('crlFile');
    defaultsFrom = registerOutput<String?>('defaultsFrom');
    forwardProxyBypassDefaultAction = registerOutput<String>(
      'forwardProxyBypassDefaultAction',
    );
    fullPath = registerOutput<String>('fullPath');
    generation = registerOutput<int>('generation');
    genericAlert = registerOutput<String>('genericAlert');
    handshakeTimeout = registerOutput<String>('handshakeTimeout');
    inheritCertKeychain = registerOutput<String>('inheritCertKeychain');
    key = registerOutput<String>('key');
    modSslMethods = registerOutput<String>('modSslMethods');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    ocspStapling = registerOutput<String?>('ocspStapling');
    partition = registerOutput<String>('partition');
    passphrase = registerOutput<String>('passphrase');
    peerCertMode = registerOutput<String>('peerCertMode');
    proxyCaCert = registerOutput<String>('proxyCaCert');
    proxyCaKey = registerOutput<String>('proxyCaKey');
    proxyCaPassphrase = registerOutput<String>('proxyCaPassphrase');
    proxySsl = registerOutput<String>('proxySsl');
    proxySslPassthrough = registerOutput<String>('proxySslPassthrough');
    renegotiatePeriod = registerOutput<String>('renegotiatePeriod');
    renegotiateSize = registerOutput<String>('renegotiateSize');
    renegotiation = registerOutput<String>('renegotiation');
    retainCertificate = registerOutput<String>('retainCertificate');
    secureRenegotiation = registerOutput<String>('secureRenegotiation');
    serverName = registerOutput<String>('serverName');
    sessionMirroring = registerOutput<String>('sessionMirroring');
    sessionTicket = registerOutput<String>('sessionTicket');
    sniDefault = registerOutput<String>('sniDefault');
    sniRequire = registerOutput<String>('sniRequire');
    sslC3d = registerOutput<String>('sslC3d');
    sslForwardProxy = registerOutput<String>('sslForwardProxy');
    sslForwardProxyBypass = registerOutput<String>('sslForwardProxyBypass');
    sslSignHash = registerOutput<String>('sslSignHash');
    strictResume = registerOutput<String>('strictResume');
    tmOptions = registerOutput<List<String>>('tmOptions');
    uncleanShutdown = registerOutput<String>('uncleanShutdown');
  }
}
