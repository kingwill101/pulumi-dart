import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_server_ssl_args.dart';
import 'profile_server_ssl_state.dart';

/// `f5bigip.ltm.ProfileServerSsl` Manages server SSL profiles on a BIG-IP
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
/// const test_ServerSsl = new f5bigip.ltm.ProfileServerSsl("test-ServerSsl", {
///     name: "/Common/test-ServerSsl",
///     defaultsFrom: "/Common/serverssl",
///     authenticate: "always",
///     ciphers: "DEFAULT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// test__server_ssl = f5bigip.ltm.ProfileServerSsl("test-ServerSsl",
///     name="/Common/test-ServerSsl",
///     defaults_from="/Common/serverssl",
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
///     var test_ServerSsl = new F5BigIP.Ltm.ProfileServerSsl("test-ServerSsl", new()
///     {
///         Name = "/Common/test-ServerSsl",
///         DefaultsFrom = "/Common/serverssl",
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
/// 		_, err := ltm.NewProfileServerSsl(ctx, "test-ServerSsl", &ltm.ProfileServerSslArgs{
/// 			Name:         pulumi.String("/Common/test-ServerSsl"),
/// 			DefaultsFrom: pulumi.String("/Common/serverssl"),
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
/// import com.pulumi.f5bigip.ltm.ProfileServerSsl;
/// import com.pulumi.f5bigip.ltm.ProfileServerSslArgs;
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
///         var test_ServerSsl = new ProfileServerSsl("test-ServerSsl", ProfileServerSslArgs.builder()
///             .name("/Common/test-ServerSsl")
///             .defaultsFrom("/Common/serverssl")
///             .authenticate("always")
///             .ciphers("DEFAULT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-ServerSsl:
///     type: f5bigip:ltm:ProfileServerSsl
///     properties:
///       name: /Common/test-ServerSsl
///       defaultsFrom: /Common/serverssl
///       authenticate: always
///       ciphers: DEFAULT
/// ```
///
///
/// ## Importing
///
/// An existing server-ssl profile can be imported into this resource by supplying server-ssl profile Name in `full path` as `id`.
/// An example is below:
/// ```sh
/// $ terraform import bigip_ltm_profile_server_ssl.test-ServerSsl-import /Common/test-ServerSsl
///
/// ```
class ProfileServerSsl extends pulumi.CustomResource {
  /// Alert time out
  late final pulumi.Output<String> alertTimeout;
  /// Specifies the frequency of server authentication for an SSL session.When `once`,specifies that the system authenticates the server once for an SSL session.
  /// When `always`, specifies that the system authenticates the server once for an SSL session and also upon reuse of that session.
  late final pulumi.Output<String> authenticate;
  /// Client certificate chain traversal depth.  Default 9.
  late final pulumi.Output<int> authenticateDepth;
  /// Specifies the name of the certificate file that is used as the certification authority certificate when SSL client certificate constrained delegation is enabled. The certificate should be generated and installed by you on the system. When selecting this option, type a certificate file name.
  late final pulumi.Output<String?> c3dCaCert;
  /// Specifies the name of the key file that is used as the certification authority key when SSL client certificate constrained delegation is enabled. The key should be generated and installed by you on the system. When selecting this option, type a key file name.
  ///
  /// * `c3d-ca-passphrase` (Optional) Specifies the passphrase of the key file that is used as the certification authority key when SSL client certificate constrained delegation is enabled. When selecting this option, type the passphrase corresponding to the selected c3d-ca-key.
  ///
  /// * `c3d-cert-extension-custom-oids` (Optional) Specifies the custom extension OID of the client certificates to be included in the generated certificates using SSL client certificate constrained delegation.
  late final pulumi.Output<String?> c3dCaKey;
  /// CA Passphrase. Default
  late final pulumi.Output<String> c3dCaPassphrase;
  /// Certificate Extensions List.  Default
  late final pulumi.Output<List<String>?> c3dCertExtensionCustomOids;
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
  late final pulumi.Output<List<String>?> c3dCertExtensionIncludes;
  /// Certificate Lifespan.  Default
  late final pulumi.Output<int> c3dCertLifespan;
  /// CA Passphrase. Default enabled
  late final pulumi.Output<String> c3dCertificateExtensions;
  /// Client certificate file path.  Default None.
  late final pulumi.Output<String> caFile;
  /// Cache size (sessions).
  late final pulumi.Output<int> cacheSize;
  /// Cache time out
  late final pulumi.Output<int> cacheTimeout;
  /// Specifies the name of the certificate that the system uses for server-side SSL processing.
  late final pulumi.Output<String?> cert;
  /// Specifies the certificates-key chain to associate with the SSL profile
  late final pulumi.Output<String?> chain;
  /// Specifies the cipher group for the SSL server profile. It is mutually exclusive with the argument, `ciphers`. The default value is `none`.
  late final pulumi.Output<String?> cipherGroup;
  /// Specifies the list of ciphers that the system supports. When creating a new profile, the default cipher list is provided by the parent profile.
  late final pulumi.Output<String> ciphers;
  /// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is `/Common/serverssl`.
  late final pulumi.Output<String?> defaultsFrom;
  /// Response if the cert is expired (drop / ignore).
  late final pulumi.Output<String> expireCertResponseControl;
  /// full path of the profile
  late final pulumi.Output<String> fullPath;
  /// generation
  late final pulumi.Output<int> generation;
  /// Generic alerts enabled / disabled.
  late final pulumi.Output<String> genericAlert;
  /// Handshake time out (seconds)
  late final pulumi.Output<String> handshakeTimeout;
  /// Specifies the file name of the SSL key.
  late final pulumi.Output<String?> key;
  /// ModSSL Methods enabled / disabled.  Default is disabled.
  late final pulumi.Output<String> modSslMethods;
  /// ModSSL Methods enabled / disabled.  Default is disabled.
  late final pulumi.Output<String> mode;
  /// Specifies the name of the profile.Name of Profile should be full path,full path is the combination of the `partition + profile name`. For example `/Common/test-serverssl-profile`.
  late final pulumi.Output<String> name;
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
  /// Proxy SSL enabled / disabled.  Default is disabled.
  late final pulumi.Output<String> proxySsl;
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
  /// Enables or disables SSL forward proxy bypass on receiving
  /// handshake_failure, protocol_version or unsupported_extension alert message during the serverside SSL handshake. When enabled and there is an SSL handshake_failure, protocol_version or unsupported_extension alert during the serverside SSL handshake, SSL traffic bypasses the BIG-IP system untouched, without decryption/encryption. The default value is disabled. Conversely, you can specify enabled to use this feature.
  late final pulumi.Output<String?> sslC3d;
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
  /// Unclean Shutdown (drop / ignore)
  late final pulumi.Output<String> untrustedCertResponseControl;

  /// Creates a new [ProfileServerSsl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProfileServerSsl]. {@macro pulumi_ltm_profile_server_ssl_profile_server_ssl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProfileServerSsl(
    String name, {
    ProfileServerSslArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/profileServerSsl:ProfileServerSsl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alertTimeout = registerOutput<String>('alertTimeout');
    authenticate = registerOutput<String>('authenticate');
    authenticateDepth = registerOutput<int>('authenticateDepth');
    c3dCaCert = registerOutput<String?>('c3dCaCert');
    c3dCaKey = registerOutput<String?>('c3dCaKey');
    c3dCaPassphrase = registerOutput<String>('c3dCaPassphrase');
    c3dCertExtensionCustomOids = registerOutput<List<String>?>('c3dCertExtensionCustomOids');
    c3dCertExtensionIncludes = registerOutput<List<String>?>('c3dCertExtensionIncludes');
    c3dCertLifespan = registerOutput<int>('c3dCertLifespan');
    c3dCertificateExtensions = registerOutput<String>('c3dCertificateExtensions');
    caFile = registerOutput<String>('caFile');
    cacheSize = registerOutput<int>('cacheSize');
    cacheTimeout = registerOutput<int>('cacheTimeout');
    cert = registerOutput<String?>('cert');
    chain = registerOutput<String?>('chain');
    cipherGroup = registerOutput<String?>('cipherGroup');
    ciphers = registerOutput<String>('ciphers');
    defaultsFrom = registerOutput<String?>('defaultsFrom');
    expireCertResponseControl = registerOutput<String>('expireCertResponseControl');
    fullPath = registerOutput<String>('fullPath');
    generation = registerOutput<int>('generation');
    genericAlert = registerOutput<String>('genericAlert');
    handshakeTimeout = registerOutput<String>('handshakeTimeout');
    key = registerOutput<String?>('key');
    modSslMethods = registerOutput<String>('modSslMethods');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    partition = registerOutput<String>('partition');
    passphrase = registerOutput<String>('passphrase');
    peerCertMode = registerOutput<String>('peerCertMode');
    proxyCaCert = registerOutput<String>('proxyCaCert');
    proxyCaKey = registerOutput<String>('proxyCaKey');
    proxySsl = registerOutput<String>('proxySsl');
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
    sslC3d = registerOutput<String?>('sslC3d');
    sslForwardProxy = registerOutput<String>('sslForwardProxy');
    sslForwardProxyBypass = registerOutput<String>('sslForwardProxyBypass');
    sslSignHash = registerOutput<String>('sslSignHash');
    strictResume = registerOutput<String>('strictResume');
    tmOptions = registerOutput<List<String>>('tmOptions');
    uncleanShutdown = registerOutput<String>('uncleanShutdown');
    untrustedCertResponseControl = registerOutput<String>('untrustedCertResponseControl');
  }

  /// Gets an existing [ProfileServerSsl] resource's state with the given [name] and [id].
  static ProfileServerSsl get(
    String name,
    pulumi.Input<String> id, {
    ProfileServerSslState? state,
  }) {
    return ProfileServerSsl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProfileServerSsl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/profileServerSsl:ProfileServerSsl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alertTimeout = registerOutput<String>('alertTimeout');
    authenticate = registerOutput<String>('authenticate');
    authenticateDepth = registerOutput<int>('authenticateDepth');
    c3dCaCert = registerOutput<String?>('c3dCaCert');
    c3dCaKey = registerOutput<String?>('c3dCaKey');
    c3dCaPassphrase = registerOutput<String>('c3dCaPassphrase');
    c3dCertExtensionCustomOids = registerOutput<List<String>?>('c3dCertExtensionCustomOids');
    c3dCertExtensionIncludes = registerOutput<List<String>?>('c3dCertExtensionIncludes');
    c3dCertLifespan = registerOutput<int>('c3dCertLifespan');
    c3dCertificateExtensions = registerOutput<String>('c3dCertificateExtensions');
    caFile = registerOutput<String>('caFile');
    cacheSize = registerOutput<int>('cacheSize');
    cacheTimeout = registerOutput<int>('cacheTimeout');
    cert = registerOutput<String?>('cert');
    chain = registerOutput<String?>('chain');
    cipherGroup = registerOutput<String?>('cipherGroup');
    ciphers = registerOutput<String>('ciphers');
    defaultsFrom = registerOutput<String?>('defaultsFrom');
    expireCertResponseControl = registerOutput<String>('expireCertResponseControl');
    fullPath = registerOutput<String>('fullPath');
    generation = registerOutput<int>('generation');
    genericAlert = registerOutput<String>('genericAlert');
    handshakeTimeout = registerOutput<String>('handshakeTimeout');
    key = registerOutput<String?>('key');
    modSslMethods = registerOutput<String>('modSslMethods');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    partition = registerOutput<String>('partition');
    passphrase = registerOutput<String>('passphrase');
    peerCertMode = registerOutput<String>('peerCertMode');
    proxyCaCert = registerOutput<String>('proxyCaCert');
    proxyCaKey = registerOutput<String>('proxyCaKey');
    proxySsl = registerOutput<String>('proxySsl');
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
    sslC3d = registerOutput<String?>('sslC3d');
    sslForwardProxy = registerOutput<String>('sslForwardProxy');
    sslForwardProxyBypass = registerOutput<String>('sslForwardProxyBypass');
    sslSignHash = registerOutput<String>('sslSignHash');
    strictResume = registerOutput<String>('strictResume');
    tmOptions = registerOutput<List<String>>('tmOptions');
    uncleanShutdown = registerOutput<String>('uncleanShutdown');
    untrustedCertResponseControl = registerOutput<String>('untrustedCertResponseControl');
  }
}
