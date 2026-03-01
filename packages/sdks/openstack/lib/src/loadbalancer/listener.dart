import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_args.dart';
import 'listener_state.dart';

/// Manages a V2 listener resource within OpenStack.
///
/// > **Note:** This resource has attributes that depend on octavia minor versions.
/// Please ensure your Openstack cloud supports the required minor version.
///
/// ## Example Usage
///
/// ### Simple listener
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const listener1 = new openstack.loadbalancer.Listener("listener_1", {
///     protocol: "HTTP",
///     protocolPort: 8080,
///     loadbalancerId: "d9415786-5f1a-428b-b35f-2f1523e146d2",
///     insertHeaders: {
///         "X-Forwarded-For": "true",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// listener1 = openstack.loadbalancer.Listener("listener_1",
///     protocol="HTTP",
///     protocol_port=8080,
///     loadbalancer_id="d9415786-5f1a-428b-b35f-2f1523e146d2",
///     insert_headers={
///         "X-Forwarded-For": "true",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var listener1 = new OpenStack.LoadBalancer.Listener("listener_1", new()
///     {
///         Protocol = "HTTP",
///         ProtocolPort = 8080,
///         LoadbalancerId = "d9415786-5f1a-428b-b35f-2f1523e146d2",
///         InsertHeaders =
///         {
///             { "X-Forwarded-For", "true" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/loadbalancer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := loadbalancer.NewListener(ctx, "listener_1", &loadbalancer.ListenerArgs{
/// 			Protocol:       pulumi.String("HTTP"),
/// 			ProtocolPort:   pulumi.Int(8080),
/// 			LoadbalancerId: pulumi.String("d9415786-5f1a-428b-b35f-2f1523e146d2"),
/// 			InsertHeaders: pulumi.StringMap{
/// 				"X-Forwarded-For": pulumi.String("true"),
/// 			},
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
/// import com.pulumi.openstack.loadbalancer.Listener;
/// import com.pulumi.openstack.loadbalancer.ListenerArgs;
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
///         var listener1 = new Listener("listener1", ListenerArgs.builder()
///             .protocol("HTTP")
///             .protocolPort(8080)
///             .loadbalancerId("d9415786-5f1a-428b-b35f-2f1523e146d2")
///             .insertHeaders(Map.of("X-Forwarded-For", "true"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   listener1:
///     type: openstack:loadbalancer:Listener
///     name: listener_1
///     properties:
///       protocol: HTTP
///       protocolPort: 8080
///       loadbalancerId: d9415786-5f1a-428b-b35f-2f1523e146d2
///       insertHeaders:
///         X-Forwarded-For: 'true'
/// ```
///
///
/// ### Listener with TLS and client certificate authentication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
/// import * as std from "@pulumi/std";
///
/// const certificate1 = new openstack.keymanager.SecretV1("certificate_1", {
///     name: "certificate",
///     payload: std.filebase64({
///         input: "snakeoil.p12",
///     }).then(invoke => invoke.result),
///     payloadContentEncoding: "base64",
///     payloadContentType: "application/octet-stream",
/// });
/// const caCertificate1 = new openstack.keymanager.SecretV1("ca_certificate_1", {
///     name: "certificate",
///     payload: std.file({
///         input: "CA.pem",
///     }).then(invoke => invoke.result),
///     secretType: "certificate",
///     payloadContentType: "text/plain",
/// });
/// const subnet1 = openstack.networking.getSubnet({
///     name: "my-subnet",
/// });
/// const lb1 = new openstack.loadbalancer.LoadBalancer("lb_1", {
///     name: "loadbalancer",
///     vipSubnetId: subnet1.then(subnet1 => subnet1.id),
/// });
/// const listener1 = new openstack.loadbalancer.Listener("listener_1", {
///     name: "https",
///     protocol: "TERMINATED_HTTPS",
///     protocolPort: 443,
///     loadbalancerId: lb1.id,
///     defaultTlsContainerRef: certificate1,
///     clientAuthentication: "OPTIONAL",
///     clientCaTlsContainerRef: caCertificate2.secretRef,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
/// import pulumi_std as std
///
/// certificate1 = openstack.keymanager.SecretV1("certificate_1",
///     name="certificate",
///     payload=std.filebase64(input="snakeoil.p12").result,
///     payload_content_encoding="base64",
///     payload_content_type="application/octet-stream")
/// ca_certificate1 = openstack.keymanager.SecretV1("ca_certificate_1",
///     name="certificate",
///     payload=std.file(input="CA.pem").result,
///     secret_type="certificate",
///     payload_content_type="text/plain")
/// subnet1 = openstack.networking.get_subnet(name="my-subnet")
/// lb1 = openstack.loadbalancer.LoadBalancer("lb_1",
///     name="loadbalancer",
///     vip_subnet_id=subnet1.id)
/// listener1 = openstack.loadbalancer.Listener("listener_1",
///     name="https",
///     protocol="TERMINATED_HTTPS",
///     protocol_port=443,
///     loadbalancer_id=lb1.id,
///     default_tls_container_ref=certificate1,
///     client_authentication="OPTIONAL",
///     client_ca_tls_container_ref=ca_certificate2["secretRef"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var certificate1 = new OpenStack.KeyManager.SecretV1("certificate_1", new()
///     {
///         Name = "certificate",
///         Payload = Std.Filebase64.Invoke(new()
///         {
///             Input = "snakeoil.p12",
///         }).Apply(invoke => invoke.Result),
///         PayloadContentEncoding = "base64",
///         PayloadContentType = "application/octet-stream",
///     });
///
///     var caCertificate1 = new OpenStack.KeyManager.SecretV1("ca_certificate_1", new()
///     {
///         Name = "certificate",
///         Payload = Std.File.Invoke(new()
///         {
///             Input = "CA.pem",
///         }).Apply(invoke => invoke.Result),
///         SecretType = "certificate",
///         PayloadContentType = "text/plain",
///     });
///
///     var subnet1 = OpenStack.Networking.GetSubnet.Invoke(new()
///     {
///         Name = "my-subnet",
///     });
///
///     var lb1 = new OpenStack.LoadBalancer.LoadBalancer("lb_1", new()
///     {
///         Name = "loadbalancer",
///         VipSubnetId = subnet1.Apply(getSubnetResult => getSubnetResult.Id),
///     });
///
///     var listener1 = new OpenStack.LoadBalancer.Listener("listener_1", new()
///     {
///         Name = "https",
///         Protocol = "TERMINATED_HTTPS",
///         ProtocolPort = 443,
///         LoadbalancerId = lb1.Id,
///         DefaultTlsContainerRef = certificate1,
///         ClientAuthentication = "OPTIONAL",
///         ClientCaTlsContainerRef = caCertificate2.SecretRef,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/keymanager"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/loadbalancer"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "snakeoil.p12",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		certificate1, err := keymanager.NewSecretV1(ctx, "certificate_1", &keymanager.SecretV1Args{
/// 			Name:                   pulumi.String("certificate"),
/// 			Payload:                pulumi.String(invokeFilebase64.Result),
/// 			PayloadContentEncoding: pulumi.String("base64"),
/// 			PayloadContentType:     pulumi.String("application/octet-stream"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "CA.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keymanager.NewSecretV1(ctx, "ca_certificate_1", &keymanager.SecretV1Args{
/// 			Name:               pulumi.String("certificate"),
/// 			Payload:            pulumi.String(invokeFile1.Result),
/// 			SecretType:         pulumi.String("certificate"),
/// 			PayloadContentType: pulumi.String("text/plain"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnet1, err := networking.LookupSubnet(ctx, &networking.LookupSubnetArgs{
/// 			Name: pulumi.StringRef("my-subnet"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		lb1, err := loadbalancer.NewLoadBalancer(ctx, "lb_1", &loadbalancer.LoadBalancerArgs{
/// 			Name:        pulumi.String("loadbalancer"),
/// 			VipSubnetId: pulumi.String(subnet1.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = loadbalancer.NewListener(ctx, "listener_1", &loadbalancer.ListenerArgs{
/// 			Name:                    pulumi.String("https"),
/// 			Protocol:                pulumi.String("TERMINATED_HTTPS"),
/// 			ProtocolPort:            pulumi.Int(443),
/// 			LoadbalancerId:          lb1.ID(),
/// 			DefaultTlsContainerRef:  certificate1,
/// 			ClientAuthentication:    pulumi.String("OPTIONAL"),
/// 			ClientCaTlsContainerRef: pulumi.Any(caCertificate2.SecretRef),
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
/// import com.pulumi.openstack.keymanager.SecretV1;
/// import com.pulumi.openstack.keymanager.SecretV1Args;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetSubnetArgs;
/// import com.pulumi.openstack.loadbalancer.LoadBalancer;
/// import com.pulumi.openstack.loadbalancer.LoadBalancerArgs;
/// import com.pulumi.openstack.loadbalancer.Listener;
/// import com.pulumi.openstack.loadbalancer.ListenerArgs;
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
///         var certificate1 = new SecretV1("certificate1", SecretV1Args.builder()
///             .name("certificate")
///             .payload(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("snakeoil.p12")
///                 .build()).result())
///             .payloadContentEncoding("base64")
///             .payloadContentType("application/octet-stream")
///             .build());
///
///         var caCertificate1 = new SecretV1("caCertificate1", SecretV1Args.builder()
///             .name("certificate")
///             .payload(StdFunctions.file(FileArgs.builder()
///                 .input("CA.pem")
///                 .build()).result())
///             .secretType("certificate")
///             .payloadContentType("text/plain")
///             .build());
///
///         final var subnet1 = NetworkingFunctions.getSubnet(GetSubnetArgs.builder()
///             .name("my-subnet")
///             .build());
///
///         var lb1 = new LoadBalancer("lb1", LoadBalancerArgs.builder()
///             .name("loadbalancer")
///             .vipSubnetId(subnet1.id())
///             .build());
///
///         var listener1 = new Listener("listener1", ListenerArgs.builder()
///             .name("https")
///             .protocol("TERMINATED_HTTPS")
///             .protocolPort(443)
///             .loadbalancerId(lb1.id())
///             .defaultTlsContainerRef(certificate1)
///             .clientAuthentication("OPTIONAL")
///             .clientCaTlsContainerRef(caCertificate2.secretRef())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   certificate1:
///     type: openstack:keymanager:SecretV1
///     name: certificate_1
///     properties:
///       name: certificate
///       payload:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: snakeoil.p12
///           return: result
///       payloadContentEncoding: base64
///       payloadContentType: application/octet-stream
///   caCertificate1:
///     type: openstack:keymanager:SecretV1
///     name: ca_certificate_1
///     properties:
///       name: certificate
///       payload:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: CA.pem
///           return: result
///       secretType: certificate
///       payloadContentType: text/plain
///   lb1:
///     type: openstack:loadbalancer:LoadBalancer
///     name: lb_1
///     properties:
///       name: loadbalancer
///       vipSubnetId: ${subnet1.id}
///   listener1:
///     type: openstack:loadbalancer:Listener
///     name: listener_1
///     properties:
///       name: https
///       protocol: TERMINATED_HTTPS
///       protocolPort: 443
///       loadbalancerId: ${lb1.id}
///       defaultTlsContainerRef: ${certificate1}
///       clientAuthentication: OPTIONAL
///       clientCaTlsContainerRef: ${caCertificate2.secretRef}
/// variables:
///   subnet1:
///     fn::invoke:
///       function: openstack:networking:getSubnet
///       arguments:
///         name: my-subnet
/// ```
///
///
/// ## Import
///
/// Load Balancer Listener can be imported using the Listener ID, e.g.:
///
/// ```sh
/// $ pulumi import openstack:loadbalancer/listener:Listener listener_1 b67ce64e-8b26-405d-afeb-4a078901f15a
/// ```
class Listener extends pulumi.CustomResource {
  /// The administrative state of the Listener. A
  /// valid value is true (UP) or false (DOWN).
  late final pulumi.Output<bool?> adminStateUp;
  /// A list of CIDR blocks that are permitted to
  /// connect to this listener, denying all other source addresses. If not present,
  /// defaults to allow all.
  late final pulumi.Output<List<String>?> allowedCidrs;
  /// A list of ALPN protocols. Available protocols:
  /// `http/1.0`, `http/1.1`, `h2`. Supported only in **Octavia minor version >=
  /// 2.20**.
  late final pulumi.Output<List<String>> alpnProtocols;
  /// The TLS client authentication mode.
  /// Available options: `NONE`, `OPTIONAL` or `MANDATORY`. Requires
  /// `TERMINATED_HTTPS` listener protocol and the `client_ca_tls_container_ref`.
  /// Supported only in **Octavia minor version >= 2.8**.
  late final pulumi.Output<String?> clientAuthentication;
  /// The ref of the key manager service
  /// secret containing a PEM format client CA certificate bundle for
  /// `TERMINATED_HTTPS` listeners. Required if `client_authentication` is
  /// `OPTIONAL` or `MANDATORY`. Supported only in **Octavia minor version >=
  /// 2.8**.
  late final pulumi.Output<String?> clientCaTlsContainerRef;
  /// The URI of the key manager service
  /// secret containing a PEM format CA revocation list file for `TERMINATED_HTTPS`
  /// listeners. Supported only in **Octavia minor version >= 2.8**.
  late final pulumi.Output<String?> clientCrlContainerRef;
  /// The maximum number of connections allowed for
  /// the Listener.
  late final pulumi.Output<int> connectionLimit;
  /// The ID of the default pool with which the
  /// Listener is associated.
  late final pulumi.Output<String> defaultPoolId;
  /// A reference to a Barbican Secrets
  /// container which stores TLS information. This is required if the protocol is
  /// `TERMINATED_HTTPS`. See
  /// [here](https://docs.openstack.org/octavia/latest/user/guides/basic-cookbook.html#deploy-a-tls-terminated-https-load-balancer)
  /// for more information.
  late final pulumi.Output<String?> defaultTlsContainerRef;
  /// Human-readable description for the Listener.
  late final pulumi.Output<String?> description;
  /// Defines whether the
  /// **includeSubDomains** directive should be added to the
  /// Strict-Transport-Security HTTP response header. This requires setting the
  /// `hsts_max_age` option as well in order to become effective. Requires
  /// `TERMINATED_HTTPS` listener protocol. Supported only in **Octavia minor
  /// version >= 2.27**.
  late final pulumi.Output<bool?> hstsIncludeSubdomains;
  /// The value of the **max_age** directive for the
  /// Strict-Transport-Security HTTP response header. Setting this enables HTTP
  /// Strict Transport Security (HSTS) for the TLS-terminated listener. Requires
  /// `TERMINATED_HTTPS` listener protocol. Supported only in **Octavia minor
  /// version >= 2.27**.
  late final pulumi.Output<int?> hstsMaxAge;
  /// Defines whether the **preload** directive should
  /// be added to the Strict-Transport-Security HTTP response header. This requires
  /// setting the `hsts_max_age` option as well in order to become effective.
  /// Requires `TERMINATED_HTTPS` listener protocol. Supported only in **Octavia
  /// minor version >= 2.27**.
  late final pulumi.Output<bool?> hstsPreload;
  /// The list of key value pairs representing
  /// headers to insert into the request before it is sent to the backend members.
  /// Changing this updates the headers of the existing listener.
  late final pulumi.Output<Map<String, String>?> insertHeaders;
  /// The load balancer on which to provision this
  /// Listener. Changing this creates a new Listener.
  late final pulumi.Output<String> loadbalancerId;
  /// Human-readable name for the Listener. Does not have to be
  /// unique.
  late final pulumi.Output<String> name;
  /// The protocol can be either `TCP`, `HTTP`, `HTTPS`,
  /// `TERMINATED_HTTPS`, `UDP`, `SCTP` (supported only in **Octavia minor version
  /// \>= 2.23**), or `PROMETHEUS` (supported only in **Octavia minor version >=
  /// 2.25**). Changing this creates a new Listener.
  late final pulumi.Output<String> protocol;
  /// The port on which to listen for client traffic.
  /// * Changing this creates a new Listener.
  late final pulumi.Output<int> protocolPort;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a listener. If omitted, the `region`
  /// argument of the provider is used. Changing this creates a new Listener.
  late final pulumi.Output<String> region;
  /// A list of references to Barbican Secrets
  /// containers which store SNI information. See
  /// [here](https://docs.openstack.org/octavia/latest/user/guides/basic-cookbook.html#deploy-a-tls-terminated-https-load-balancer)
  /// for more information.
  late final pulumi.Output<List<String>?> sniContainerRefs;
  /// A list of simple strings assigned to the pool. Available
  /// for Octavia **minor version 2.5 or later**.
  late final pulumi.Output<List<String>?> tags;
  /// Required for admins. The UUID of the tenant who owns
  /// the Listener.  Only administrative users can specify a tenant UUID other than
  /// their own. Changing this creates a new Listener.
  late final pulumi.Output<String> tenantId;
  /// The client inactivity timeout in
  /// milliseconds.
  late final pulumi.Output<int> timeoutClientData;
  /// The member connection timeout in
  /// milliseconds.
  late final pulumi.Output<int> timeoutMemberConnect;
  /// The member inactivity timeout in
  /// milliseconds.
  late final pulumi.Output<int> timeoutMemberData;
  /// The time in milliseconds, to wait for
  /// additional TCP packets for content inspection.
  late final pulumi.Output<int> timeoutTcpInspect;
  /// List of ciphers in OpenSSL format
  /// (colon-separated). See
  /// https://www.openssl.org/docs/man1.1.1/man1/ciphers.html for more information.
  /// Supported only in **Octavia minor version >= 2.15**.
  late final pulumi.Output<String> tlsCiphers;
  /// A list of TLS protocol versions. Available
  /// versions: `TLSv1`, `TLSv1.1`, `TLSv1.2`, `TLSv1.3`. Supported only in
  /// **Octavia minor version >= 2.17**.
  late final pulumi.Output<List<String>> tlsVersions;

  /// Creates a new [Listener].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Listener]. {@macro pulumi_loadbalancer_listener_listener_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Listener(
    String name, {
    ListenerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:loadbalancer/listener:Listener',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminStateUp = registerOutput<bool?>('adminStateUp');
    this.allowedCidrs = registerOutput<List<String>?>('allowedCidrs');
    this.alpnProtocols = registerOutput<List<String>>('alpnProtocols');
    this.clientAuthentication = registerOutput<String?>('clientAuthentication');
    this.clientCaTlsContainerRef = registerOutput<String?>('clientCaTlsContainerRef');
    this.clientCrlContainerRef = registerOutput<String?>('clientCrlContainerRef');
    this.connectionLimit = registerOutput<int>('connectionLimit');
    this.defaultPoolId = registerOutput<String>('defaultPoolId');
    this.defaultTlsContainerRef = registerOutput<String?>('defaultTlsContainerRef');
    this.description = registerOutput<String?>('description');
    this.hstsIncludeSubdomains = registerOutput<bool?>('hstsIncludeSubdomains');
    this.hstsMaxAge = registerOutput<int?>('hstsMaxAge');
    this.hstsPreload = registerOutput<bool?>('hstsPreload');
    this.insertHeaders = registerOutput<Map<String, String>?>('insertHeaders');
    this.loadbalancerId = registerOutput<String>('loadbalancerId');
    this.name = registerOutput<String>('name');
    this.protocol = registerOutput<String>('protocol');
    this.protocolPort = registerOutput<int>('protocolPort');
    this.region = registerOutput<String>('region');
    this.sniContainerRefs = registerOutput<List<String>?>('sniContainerRefs');
    this.tags = registerOutput<List<String>?>('tags');
    this.tenantId = registerOutput<String>('tenantId');
    this.timeoutClientData = registerOutput<int>('timeoutClientData');
    this.timeoutMemberConnect = registerOutput<int>('timeoutMemberConnect');
    this.timeoutMemberData = registerOutput<int>('timeoutMemberData');
    this.timeoutTcpInspect = registerOutput<int>('timeoutTcpInspect');
    this.tlsCiphers = registerOutput<String>('tlsCiphers');
    this.tlsVersions = registerOutput<List<String>>('tlsVersions');
  }

  /// Gets an existing [Listener] resource's state with the given [name] and [id].
  static Listener get(
    String name,
    pulumi.Input<String> id, {
    ListenerState? state,
  }) {
    return Listener._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Listener._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:loadbalancer/listener:Listener',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminStateUp = registerOutput<bool?>('adminStateUp');
    this.allowedCidrs = registerOutput<List<String>?>('allowedCidrs');
    this.alpnProtocols = registerOutput<List<String>>('alpnProtocols');
    this.clientAuthentication = registerOutput<String?>('clientAuthentication');
    this.clientCaTlsContainerRef = registerOutput<String?>('clientCaTlsContainerRef');
    this.clientCrlContainerRef = registerOutput<String?>('clientCrlContainerRef');
    this.connectionLimit = registerOutput<int>('connectionLimit');
    this.defaultPoolId = registerOutput<String>('defaultPoolId');
    this.defaultTlsContainerRef = registerOutput<String?>('defaultTlsContainerRef');
    this.description = registerOutput<String?>('description');
    this.hstsIncludeSubdomains = registerOutput<bool?>('hstsIncludeSubdomains');
    this.hstsMaxAge = registerOutput<int?>('hstsMaxAge');
    this.hstsPreload = registerOutput<bool?>('hstsPreload');
    this.insertHeaders = registerOutput<Map<String, String>?>('insertHeaders');
    this.loadbalancerId = registerOutput<String>('loadbalancerId');
    this.name = registerOutput<String>('name');
    this.protocol = registerOutput<String>('protocol');
    this.protocolPort = registerOutput<int>('protocolPort');
    this.region = registerOutput<String>('region');
    this.sniContainerRefs = registerOutput<List<String>?>('sniContainerRefs');
    this.tags = registerOutput<List<String>?>('tags');
    this.tenantId = registerOutput<String>('tenantId');
    this.timeoutClientData = registerOutput<int>('timeoutClientData');
    this.timeoutMemberConnect = registerOutput<int>('timeoutMemberConnect');
    this.timeoutMemberData = registerOutput<int>('timeoutMemberData');
    this.timeoutTcpInspect = registerOutput<int>('timeoutTcpInspect');
    this.tlsCiphers = registerOutput<String>('tlsCiphers');
    this.tlsVersions = registerOutput<List<String>>('tlsVersions');
  }
}
