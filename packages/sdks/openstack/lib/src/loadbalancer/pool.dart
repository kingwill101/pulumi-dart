import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_args.dart';
import 'pool_persistence.dart';
import 'pool_state.dart';

/// Manages a V2 pool resource within OpenStack.
///
/// &gt; **Note:** This resource has attributes that depend on octavia minor versions.
/// Please ensure your Openstack cloud supports the required minor version.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const pool1 = new openstack.loadbalancer.Pool("pool_1", {
///     protocol: "HTTP",
///     lbMethod: "ROUND_ROBIN",
///     listenerId: "d9415786-5f1a-428b-b35f-2f1523e146d2",
///     persistence: {
///         type: "APP_COOKIE",
///         cookieName: "testCookie",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// pool1 = openstack.loadbalancer.Pool("pool_1",
///     protocol="HTTP",
///     lb_method="ROUND_ROBIN",
///     listener_id="d9415786-5f1a-428b-b35f-2f1523e146d2",
///     persistence={
///         "type": "APP_COOKIE",
///         "cookie_name": "testCookie",
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
///     var pool1 = new OpenStack.LoadBalancer.Pool("pool_1", new()
///     {
///         Protocol = "HTTP",
///         LbMethod = "ROUND_ROBIN",
///         ListenerId = "d9415786-5f1a-428b-b35f-2f1523e146d2",
///         Persistence = new OpenStack.LoadBalancer.Inputs.PoolPersistenceArgs
///         {
///             Type = "APP_COOKIE",
///             CookieName = "testCookie",
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
/// 		_, err := loadbalancer.NewPool(ctx, "pool_1", &loadbalancer.PoolArgs{
/// 			Protocol:   pulumi.String("HTTP"),
/// 			LbMethod:   pulumi.String("ROUND_ROBIN"),
/// 			ListenerId: pulumi.String("d9415786-5f1a-428b-b35f-2f1523e146d2"),
/// 			Persistence: &loadbalancer.PoolPersistenceArgs{
/// 				Type:       pulumi.String("APP_COOKIE"),
/// 				CookieName: pulumi.String("testCookie"),
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
/// import com.pulumi.openstack.loadbalancer.Pool;
/// import com.pulumi.openstack.loadbalancer.PoolArgs;
/// import com.pulumi.openstack.loadbalancer.inputs.PoolPersistenceArgs;
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
///         var pool1 = new Pool("pool1", PoolArgs.builder()
///             .protocol("HTTP")
///             .lbMethod("ROUND_ROBIN")
///             .listenerId("d9415786-5f1a-428b-b35f-2f1523e146d2")
///             .persistence(PoolPersistenceArgs.builder()
///                 .type("APP_COOKIE")
///                 .cookieName("testCookie")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pool1:
///     type: openstack:loadbalancer:Pool
///     name: pool_1
///     properties:
///       protocol: HTTP
///       lbMethod: ROUND_ROBIN
///       listenerId: d9415786-5f1a-428b-b35f-2f1523e146d2
///       persistence:
///         type: APP_COOKIE
///         cookieName: testCookie
/// ```
///
///
/// ## Import
///
/// Load Balancer Pool can be imported using the Pool ID, e.g.:
///
/// ```sh
/// $ pulumi import openstack:loadbalancer/pool:Pool pool_1 60ad9ee4-249a-4d60-a45b-aa60e046c513
/// ```
class Pool extends pulumi.CustomResource {
  /// The administrative state of the pool. A valid
  /// value is true (UP) or false (DOWN).
  late final pulumi.Output<bool?> adminStateUp;

  /// A list of ALPN protocols. Available protocols:
  /// `http/1.0`, `http/1.1`, `h2`. Supported only in **Octavia minor version &gt;=
  /// 2.24**.
  late final pulumi.Output<List<String>> alpnProtocols;

  /// The reference of the key manager service
  /// secret containing a PEM format CA certificate bundle for `tls_enabled` pools.
  /// Supported only in **Octavia minor version &gt;= 2.8**.
  late final pulumi.Output<String?> caTlsContainerRef;

  /// The reference of the key manager service
  /// secret containing a PEM format CA revocation list file for `tls_enabled`
  /// pools. Supported only in **Octavia minor version &gt;= 2.8**.
  late final pulumi.Output<String?> crlContainerRef;

  /// Human-readable description for the pool.
  late final pulumi.Output<String?> description;

  /// The load balancing algorithm to distribute traffic
  /// to the pool's members. Must be one of ROUND_ROBIN, LEAST_CONNECTIONS,
  /// SOURCE_IP, or SOURCE_IP_PORT.
  late final pulumi.Output<String> lbMethod;

  /// The Listener on which the members of the pool will
  /// be associated with. Changing this creates a new pool. Note: One of
  /// LoadbalancerID or ListenerID must be provided.
  late final pulumi.Output<String?> listenerId;

  /// The load balancer on which to provision this
  /// pool. Changing this creates a new pool. Note: One of LoadbalancerID or
  /// ListenerID must be provided.
  late final pulumi.Output<String?> loadbalancerId;

  /// Human-readable name for the pool.
  late final pulumi.Output<String> name;

  /// Omit this field to prevent session persistence.
  /// Indicates whether connections in the same session will be processed by the
  /// same Pool member or not. Changing this creates a new pool.
  late final pulumi.Output<PoolPersistence?> persistence;

  /// The protocol - can either be TCP, HTTP, HTTPS, PROXY,
  /// UDP, PROXYV2 (**Octavia minor version &gt;= 2.22**) or SCTP (**Octavia minor
  /// version &gt;= 2.23**). Changing this creates a new pool.
  late final pulumi.Output<String> protocol;

  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a pool. If omitted, the `region`
  /// argument of the provider is used. Changing this creates a new pool.
  late final pulumi.Output<String> region;
  late final pulumi.Output<List<String>?> tags;

  /// Required for admins. The UUID of the tenant who owns
  /// the pool.  Only administrative users can specify a tenant UUID other than
  /// their own. Changing this creates a new pool.
  late final pulumi.Output<String> tenantId;

  /// List of ciphers in OpenSSL format
  /// (colon-separated). See
  /// https://www.openssl.org/docs/man1.1.1/man1/ciphers.html for more information.
  /// Supported only in **Octavia minor version &gt;= 2.15**.
  late final pulumi.Output<String> tlsCiphers;

  /// The reference to the key manager service
  /// secret containing a PKCS12 format certificate/key bundle for `tls_enabled`
  /// pools for TLS client authentication to the member servers. Supported only in
  /// **Octavia minor version &gt;= 2.8**.
  late final pulumi.Output<String?> tlsContainerRef;

  /// When true connections to backend member servers
  /// will use TLS encryption. Default is false. Supported only in **Octavia minor
  /// version &gt;= 2.8**.
  late final pulumi.Output<bool?> tlsEnabled;

  /// A list of TLS protocol versions. Available
  /// versions: `TLSv1`, `TLSv1.1`, `TLSv1.2`, `TLSv1.3`. Supported only in
  /// **Octavia minor version &gt;= 2.17**.
  late final pulumi.Output<List<String>> tlsVersions;

  /// Creates a new [Pool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pool]. {@macro pulumi_loadbalancer_pool_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pool(String name, {PoolArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'openstack:loadbalancer/pool:Pool',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    adminStateUp = registerOutput<bool?>('adminStateUp');
    alpnProtocols = registerOutput<List<String>>('alpnProtocols');
    caTlsContainerRef = registerOutput<String?>('caTlsContainerRef');
    crlContainerRef = registerOutput<String?>('crlContainerRef');
    description = registerOutput<String?>('description');
    lbMethod = registerOutput<String>('lbMethod');
    listenerId = registerOutput<String?>('listenerId');
    loadbalancerId = registerOutput<String?>('loadbalancerId');
    this.name = registerOutput<String>('name');
    persistence = registerOutput<PoolPersistence?>('persistence');
    protocol = registerOutput<String>('protocol');
    region = registerOutput<String>('region');
    tags = registerOutput<List<String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
    tlsCiphers = registerOutput<String>('tlsCiphers');
    tlsContainerRef = registerOutput<String?>('tlsContainerRef');
    tlsEnabled = registerOutput<bool?>('tlsEnabled');
    tlsVersions = registerOutput<List<String>>('tlsVersions');
  }

  /// Gets an existing [Pool] resource's state with the given [name] and [id].
  static Pool get(String name, pulumi.Input<String> id, {PoolState? state}) {
    return Pool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Pool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:loadbalancer/pool:Pool',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adminStateUp = registerOutput<bool?>('adminStateUp');
    alpnProtocols = registerOutput<List<String>>('alpnProtocols');
    caTlsContainerRef = registerOutput<String?>('caTlsContainerRef');
    crlContainerRef = registerOutput<String?>('crlContainerRef');
    description = registerOutput<String?>('description');
    lbMethod = registerOutput<String>('lbMethod');
    listenerId = registerOutput<String?>('listenerId');
    loadbalancerId = registerOutput<String?>('loadbalancerId');
    this.name = registerOutput<String>('name');
    persistence = registerOutput<PoolPersistence?>('persistence');
    protocol = registerOutput<String>('protocol');
    region = registerOutput<String>('region');
    tags = registerOutput<List<String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
    tlsCiphers = registerOutput<String>('tlsCiphers');
    tlsContainerRef = registerOutput<String?>('tlsContainerRef');
    tlsEnabled = registerOutput<bool?>('tlsEnabled');
    tlsVersions = registerOutput<List<String>>('tlsVersions');
  }
}
