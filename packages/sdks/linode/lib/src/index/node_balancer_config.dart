import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_balancer_config_args.dart';
import 'node_balancer_config_node_status.dart';
import 'node_balancer_config_state.dart';

/// Provides a Linode NodeBalancer Config resource.  This can be used to create, modify, and delete Linodes NodeBalancer Configs.
/// For more information, see [Getting Started with NodeBalancers](https://www.linode.com/docs/platform/nodebalancer/getting-started-with-nodebalancers/) and the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-node-balancer-config).
///
/// ## Example Usage
///
/// The following example shows how one might use this resource to configure a NodeBalancer Config attached to a Linode instance.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.NodeBalancer("foobar", {
///     label: "mynodebalancer",
///     region: "us-east",
///     clientConnThrottle: 20,
/// });
/// const foofig = new linode.NodeBalancerConfig("foofig", {
///     nodebalancerId: foobar.id,
///     port: 8088,
///     protocol: "http",
///     check: "http",
///     checkPath: "/foo",
///     checkAttempts: 3,
///     checkTimeout: 30,
///     udpCheckPort: 12345,
///     stickiness: "http_cookie",
///     algorithm: "source",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.NodeBalancer("foobar",
///     label="mynodebalancer",
///     region="us-east",
///     client_conn_throttle=20)
/// foofig = linode.NodeBalancerConfig("foofig",
///     nodebalancer_id=foobar.id,
///     port=8088,
///     protocol="http",
///     check="http",
///     check_path="/foo",
///     check_attempts=3,
///     check_timeout=30,
///     udp_check_port=12345,
///     stickiness="http_cookie",
///     algorithm="source")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.NodeBalancer("foobar", new()
///     {
///         Label = "mynodebalancer",
///         Region = "us-east",
///         ClientConnThrottle = 20,
///     });
///
///     var foofig = new Linode.NodeBalancerConfig("foofig", new()
///     {
///         NodebalancerId = foobar.Id,
///         Port = 8088,
///         Protocol = "http",
///         Check = "http",
///         CheckPath = "/foo",
///         CheckAttempts = 3,
///         CheckTimeout = 30,
///         UdpCheckPort = 12345,
///         Stickiness = "http_cookie",
///         Algorithm = "source",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foobar, err := linode.NewNodeBalancer(ctx, "foobar", &linode.NodeBalancerArgs{
/// 			Label:              pulumi.String("mynodebalancer"),
/// 			Region:             pulumi.String("us-east"),
/// 			ClientConnThrottle: pulumi.Int(20),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewNodeBalancerConfig(ctx, "foofig", &linode.NodeBalancerConfigArgs{
/// 			NodebalancerId: foobar.ID(),
/// 			Port:           pulumi.Int(8088),
/// 			Protocol:       pulumi.String("http"),
/// 			Check:          pulumi.String("http"),
/// 			CheckPath:      pulumi.String("/foo"),
/// 			CheckAttempts:  pulumi.Int(3),
/// 			CheckTimeout:   pulumi.Int(30),
/// 			UdpCheckPort:   pulumi.Int(12345),
/// 			Stickiness:     pulumi.String("http_cookie"),
/// 			Algorithm:      pulumi.String("source"),
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
/// import com.pulumi.linode.NodeBalancer;
/// import com.pulumi.linode.NodeBalancerArgs;
/// import com.pulumi.linode.NodeBalancerConfig;
/// import com.pulumi.linode.NodeBalancerConfigArgs;
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
///         var foobar = new NodeBalancer("foobar", NodeBalancerArgs.builder()
///             .label("mynodebalancer")
///             .region("us-east")
///             .clientConnThrottle(20)
///             .build());
///
///         var foofig = new NodeBalancerConfig("foofig", NodeBalancerConfigArgs.builder()
///             .nodebalancerId(foobar.id())
///             .port(8088)
///             .protocol("http")
///             .check("http")
///             .checkPath("/foo")
///             .checkAttempts(3)
///             .checkTimeout(30)
///             .udpCheckPort(12345)
///             .stickiness("http_cookie")
///             .algorithm("source")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:NodeBalancer
///     properties:
///       label: mynodebalancer
///       region: us-east
///       clientConnThrottle: 20
///   foofig:
///     type: linode:NodeBalancerConfig
///     properties:
///       nodebalancerId: ${foobar.id}
///       port: 8088
///       protocol: http
///       check: http
///       checkPath: /foo
///       checkAttempts: 3
///       checkTimeout: 30
///       udpCheckPort: 12345
///       stickiness: http_cookie
///       algorithm: source
/// ```
///
///
/// ## Import
///
/// NodeBalancer Configs can be imported using the NodeBalancer `nodebalancer_id` followed by the NodeBalancer Config `id` separated by a comma, e.g.
///
/// ```sh
/// $ pulumi import linode:index/nodeBalancerConfig:NodeBalancerConfig http-foobar 1234567,7654321
/// ```
class NodeBalancerConfig extends pulumi.CustomResource {
  /// What algorithm this NodeBalancer should use for routing traffic to backends. (`roundrobin`, `leastconn`, `source`)
  late final pulumi.Output<String> algorithm;
  /// The type of check to perform against backends to ensure they are serving requests. This is used to determine if backends are up or down. If none no check is performed. connection requires only a connection to the backend to succeed. http and http_body rely on the backend serving HTTP, and that the response returned matches what is expected. (`none`, `connection`, `http`, `http_body`)
  late final pulumi.Output<String> check;
  /// How many times to attempt a check before considering a backend to be down. (1-30)
  late final pulumi.Output<int> checkAttempts;
  /// This value must be present in the response body of the check in order for it to pass. If this value is not present in the response body of a check request, the backend is considered to be down
  late final pulumi.Output<String> checkBody;
  /// How often, in seconds, to check that backends are up and serving requests.
  late final pulumi.Output<int> checkInterval;
  /// If true, any response from this backend with a 5xx status code will be enough for it to be considered unhealthy and taken out of rotation.
  late final pulumi.Output<bool> checkPassive;
  /// The URL path to check on each backend. If the backend does not respond to this request it is considered to be down.
  late final pulumi.Output<String> checkPath;
  /// How long, in seconds, to wait for a check attempt before considering it failed. (1-30)
  late final pulumi.Output<int> checkTimeout;
  /// What ciphers to use for SSL connections served by this NodeBalancer. `legacy` is considered insecure and should only be used if necessary.
  late final pulumi.Output<String> cipherSuite;
  /// A structure containing information about the health of the backends for this port. This information is updated periodically as checks are performed against backends.
  late final pulumi.Output<List<NodeBalancerConfigNodeStatus>> nodeStatuses;
  /// The ID of the NodeBalancer to access.
  ///
  /// - - -
  late final pulumi.Output<int> nodebalancerId;
  /// The TCP port this Config is for. These values must be unique across configs on a single NodeBalancer (you can't have two configs for port 80, for example). While some ports imply some protocols, no enforcement is done and you may configure your NodeBalancer however is useful to you. For example, while port 443 is generally used for HTTPS, you do not need SSL configured to have a NodeBalancer listening on port 443. (Defaults to 80)
  late final pulumi.Output<int> port;
  /// The protocol this port is configured to serve. If this is set to https you must include an ssl_cert and an ssl_key. (`http`, `https`, `tcp`) (Defaults to `http`)
  late final pulumi.Output<String> protocol;
  /// The version of ProxyProtocol to use for the underlying NodeBalancer. This requires protocol to be `tcp`. (`none`, `v1`, `v2`) (Defaults to `none`)
  late final pulumi.Output<String> proxyProtocol;
  /// The certificate this port is serving. This is not returned. If set, this field will come back as `<REDACTED>`. Please use the ssl_commonname and ssl_fingerprint to identify the certificate.
  late final pulumi.Output<String?> sslCert;
  /// The read-only common name automatically derived from the SSL certificate assigned to this NodeBalancerConfig. Please refer to this field to verify that the appropriate certificate is assigned to your NodeBalancerConfig.
  late final pulumi.Output<String> sslCommonname;
  /// The read-only fingerprint automatically derived from the SSL certificate assigned to this NodeBalancerConfig. Please refer to this field to verify that the appropriate certificate is assigned to your NodeBalancerConfig.
  late final pulumi.Output<String> sslFingerprint;
  /// The private key corresponding to this port's certificate. This is not returned. If set, this field will come back as `<REDACTED>`. Please use the ssl_commonname and ssl_fingerprint to identify the certificate.
  late final pulumi.Output<String?> sslKey;
  /// Controls how session stickiness is handled on this port. (`none`, `table`, `http_cookie`)
  late final pulumi.Output<String> stickiness;
  /// Specifies the port on the backend node used for active health checks, which may differ from the port serving traffic. Defaults to 80.
  ///
  /// * **NOTE: This argument may not be generally available.**
  late final pulumi.Output<int> udpCheckPort;
  /// The read-only idle time in seconds after which a session that hasn’t received packets is destroyed.
  late final pulumi.Output<int> udpSessionTimeout;

  /// Creates a new [NodeBalancerConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeBalancerConfig]. {@macro pulumi_index_node_balancer_config_node_balancer_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeBalancerConfig(
    String name, {
    NodeBalancerConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/nodeBalancerConfig:NodeBalancerConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.algorithm = registerOutput<String>('algorithm');
    this.check = registerOutput<String>('check');
    this.checkAttempts = registerOutput<int>('checkAttempts');
    this.checkBody = registerOutput<String>('checkBody');
    this.checkInterval = registerOutput<int>('checkInterval');
    this.checkPassive = registerOutput<bool>('checkPassive');
    this.checkPath = registerOutput<String>('checkPath');
    this.checkTimeout = registerOutput<int>('checkTimeout');
    this.cipherSuite = registerOutput<String>('cipherSuite');
    this.nodeStatuses = registerOutput<List<NodeBalancerConfigNodeStatus>>('nodeStatuses');
    this.nodebalancerId = registerOutput<int>('nodebalancerId');
    this.port = registerOutput<int>('port');
    this.protocol = registerOutput<String>('protocol');
    this.proxyProtocol = registerOutput<String>('proxyProtocol');
    this.sslCert = registerOutput<String?>('sslCert');
    this.sslCommonname = registerOutput<String>('sslCommonname');
    this.sslFingerprint = registerOutput<String>('sslFingerprint');
    this.sslKey = registerOutput<String?>('sslKey');
    this.stickiness = registerOutput<String>('stickiness');
    this.udpCheckPort = registerOutput<int>('udpCheckPort');
    this.udpSessionTimeout = registerOutput<int>('udpSessionTimeout');
  }

  /// Gets an existing [NodeBalancerConfig] resource's state with the given [name] and [id].
  static NodeBalancerConfig get(
    String name,
    pulumi.Input<String> id, {
    NodeBalancerConfigState? state,
  }) {
    return NodeBalancerConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NodeBalancerConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/nodeBalancerConfig:NodeBalancerConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.algorithm = registerOutput<String>('algorithm');
    this.check = registerOutput<String>('check');
    this.checkAttempts = registerOutput<int>('checkAttempts');
    this.checkBody = registerOutput<String>('checkBody');
    this.checkInterval = registerOutput<int>('checkInterval');
    this.checkPassive = registerOutput<bool>('checkPassive');
    this.checkPath = registerOutput<String>('checkPath');
    this.checkTimeout = registerOutput<int>('checkTimeout');
    this.cipherSuite = registerOutput<String>('cipherSuite');
    this.nodeStatuses = registerOutput<List<NodeBalancerConfigNodeStatus>>('nodeStatuses');
    this.nodebalancerId = registerOutput<int>('nodebalancerId');
    this.port = registerOutput<int>('port');
    this.protocol = registerOutput<String>('protocol');
    this.proxyProtocol = registerOutput<String>('proxyProtocol');
    this.sslCert = registerOutput<String?>('sslCert');
    this.sslCommonname = registerOutput<String>('sslCommonname');
    this.sslFingerprint = registerOutput<String>('sslFingerprint');
    this.sslKey = registerOutput<String?>('sslKey');
    this.stickiness = registerOutput<String>('stickiness');
    this.udpCheckPort = registerOutput<int>('udpCheckPort');
    this.udpSessionTimeout = registerOutput<int>('udpSessionTimeout');
  }
}
