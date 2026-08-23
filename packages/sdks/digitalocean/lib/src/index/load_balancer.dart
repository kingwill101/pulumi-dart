import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_args.dart';
import 'load_balancer_firewall.dart';
import 'load_balancer_glb_settings.dart';
import 'load_balancer_healthcheck.dart';
import 'load_balancer_state.dart';
import 'load_balancer_sticky_sessions.dart';

/// Provides a DigitalOcean Load Balancer resource. This can be used to create,
/// modify, and delete Load Balancers.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const web = new digitalocean.Droplet("web", {
///     name: "web-1",
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     image: "ubuntu-18-04-x64",
///     region: digitalocean.Region.NYC3,
/// });
/// const _public = new digitalocean.LoadBalancer("public", {
///     name: "loadbalancer-1",
///     region: digitalocean.Region.NYC3,
///     forwardingRules: [{
///         entryPort: 80,
///         entryProtocol: "http",
///         targetPort: 80,
///         targetProtocol: "http",
///     }],
///     healthcheck: {
///         port: 22,
///         protocol: "tcp",
///     },
///     dropletIds: [web.id.apply(x =>Number(x))],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// web = digitalocean.Droplet("web",
///     name="web-1",
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     image="ubuntu-18-04-x64",
///     region=digitalocean.Region.NYC3)
/// public = digitalocean.LoadBalancer("public",
///     name="loadbalancer-1",
///     region=digitalocean.Region.NYC3,
///     forwarding_rules=[{
///         "entry_port": 80,
///         "entry_protocol": "http",
///         "target_port": 80,
///         "target_protocol": "http",
///     }],
///     healthcheck={
///         "port": 22,
///         "protocol": "tcp",
///     },
///     droplet_ids=[web.id.apply(lambda x: int(x))])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var web = new DigitalOcean.Droplet("web", new()
///     {
///         Name = "web-1",
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Image = "ubuntu-18-04-x64",
///         Region = DigitalOcean.Region.NYC3,
///     });
///
///     var @public = new DigitalOcean.LoadBalancer("public", new()
///     {
///         Name = "loadbalancer-1",
///         Region = DigitalOcean.Region.NYC3,
///         ForwardingRules = new[]
///         {
///             new DigitalOcean.Inputs.LoadBalancerForwardingRuleArgs
///             {
///                 EntryPort = 80,
///                 EntryProtocol = "http",
///                 TargetPort = 80,
///                 TargetProtocol = "http",
///             },
///         },
///         Healthcheck = new DigitalOcean.Inputs.LoadBalancerHealthcheckArgs
///         {
///             Port = 22,
///             Protocol = "tcp",
///         },
///         DropletIds = new[]
///         {
///             web.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"strconv"
///
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		web, err := digitalocean.NewDroplet(ctx, "web", &digitalocean.DropletArgs{
/// 			Name:   pulumi.String("web-1"),
/// 			Size:   pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Image:  pulumi.String("ubuntu-18-04-x64"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewLoadBalancer(ctx, "public", &digitalocean.LoadBalancerArgs{
/// 			Name:   pulumi.String("loadbalancer-1"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
/// 			ForwardingRules: digitalocean.LoadBalancerForwardingRuleArray{
/// 				&digitalocean.LoadBalancerForwardingRuleArgs{
/// 					EntryPort:      pulumi.Int(80),
/// 					EntryProtocol:  pulumi.String("http"),
/// 					TargetPort:     pulumi.Int(80),
/// 					TargetProtocol: pulumi.String("http"),
/// 				},
/// 			},
/// 			Healthcheck: &digitalocean.LoadBalancerHealthcheckArgs{
/// 				Port:     pulumi.Int(22),
/// 				Protocol: pulumi.String("tcp"),
/// 			},
/// 			DropletIds: pulumi.IntArray{
/// 				web.ID().ToIDOutput().ApplyT(func(id pulumi.ID) (int, error) { return strconv.Atoi(string(id)) }).(pulumi.IntOutput),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_droplet" "web" {
///   name   = "web-1"
///   size   = "s-1vcpu-1gb"
///   image  = "ubuntu-18-04-x64"
///   region = "nyc3"
/// }
/// resource "digitalocean_loadbalancer" "public" {
///   name   = "loadbalancer-1"
///   region = "nyc3"
///   forwarding_rules {
///     entry_port      = 80
///     entry_protocol  = "http"
///     target_port     = 80
///     target_protocol = "http"
///   }
///   healthcheck = {
///     port     = 22
///     protocol = "tcp"
///   }
///   droplet_ids = [digitalocean_droplet.web.id]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
/// import com.pulumi.digitalocean.LoadBalancer;
/// import com.pulumi.digitalocean.LoadBalancerArgs;
/// import com.pulumi.digitalocean.inputs.LoadBalancerForwardingRuleArgs;
/// import com.pulumi.digitalocean.inputs.LoadBalancerHealthcheckArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var web = new Droplet("web", DropletArgs.builder()
///             .name("web-1")
///             .size("s-1vcpu-1gb")
///             .image("ubuntu-18-04-x64")
///             .region("nyc3")
///             .build());
///
///         var public_ = new LoadBalancer("public", LoadBalancerArgs.builder()
///             .name("loadbalancer-1")
///             .region("nyc3")
///             .forwardingRules(LoadBalancerForwardingRuleArgs.builder()
///                 .entryPort(80)
///                 .entryProtocol("http")
///                 .targetPort(80)
///                 .targetProtocol("http")
///                 .build())
///             .healthcheck(LoadBalancerHealthcheckArgs.builder()
///                 .port(22)
///                 .protocol("tcp")
///                 .build())
///             .dropletIds(web.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   web:
///     type: digitalocean:Droplet
///     properties:
///       name: web-1
///       size: s-1vcpu-1gb
///       image: ubuntu-18-04-x64
///       region: nyc3
///   public:
///     type: digitalocean:LoadBalancer
///     properties:
///       name: loadbalancer-1
///       region: nyc3
///       forwardingRules:
///         - entryPort: 80
///           entryProtocol: http
///           targetPort: 80
///           targetProtocol: http
///       healthcheck:
///         port: 22
///         protocol: tcp
///       dropletIds:
///         - ${web.id}
/// ```
///
///
/// When managing certificates attached to the load balancer, make sure to add the `createBeforeDestroy`
/// lifecycle property in order to ensure the certificate is correctly updated when changed. The order of
/// operations will then be: `Create new certificate` &gt; `Update loadbalancer with new certificate` -&gt;
/// `Delete old certificate`. When doing so, you must also change the name of the certificate,
/// as there cannot be multiple certificates with the same name in an account.
///
/// ## Import
///
/// Load Balancers can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/loadBalancer:LoadBalancer myloadbalancer 4de7ac8b-495b-4884-9a69-1050c6793cd6
/// ```
class LoadBalancer extends pulumi.CustomResource {
  /// **Deprecated** This field has been deprecated. You can no longer specify an algorithm for load balancers.
  /// or `leastConnections`. The default value is `roundRobin`.
  late final pulumi.Output<String?> algorithm;
  /// A boolean value indicating whether to disable automatic DNS record creation for Let's Encrypt certificates that are added to the load balancer. Default value is `false`.
  late final pulumi.Output<bool?> disableLetsEncryptDnsRecords;
  /// A list of `domains` required to ingress traffic to a Global Load Balancer. The `domains` block is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> domains;
  /// A list of the IDs of each droplet to be attached to the Load Balancer.
  late final pulumi.Output<List<int>> dropletIds;
  /// The name of a Droplet tag corresponding to Droplets to be assigned to the Load Balancer.
  late final pulumi.Output<String?> dropletTag;
  /// A boolean value indicating whether HTTP keepalive connections are maintained to target Droplets. Default value is `false`.
  late final pulumi.Output<bool?> enableBackendKeepalive;
  /// A boolean value indicating whether PROXY
  /// Protocol should be used to pass information from connecting client requests to
  /// the backend service. Default value is `false`.
  late final pulumi.Output<bool?> enableProxyProtocol;
  /// A block containing rules for allowing/denying traffic to the Load Balancer. The `firewall` block is documented below. Only 1 firewall is allowed.
  late final pulumi.Output<LoadBalancerFirewall> firewall;
  /// A list of `forwardingRule` to be assigned to the
  /// Load Balancer. The `forwardingRule` block is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> forwardingRules;
  /// A block containing `glbSettings` required to define target rules for a Global Load Balancer. The `glbSettings` block is documented below.
  late final pulumi.Output<LoadBalancerGlbSettings> glbSettings;
  /// A `healthcheck` block to be assigned to the
  /// Load Balancer. The `healthcheck` block is documented below. Only 1 healthcheck is allowed.
  late final pulumi.Output<LoadBalancerHealthcheck> healthcheck;
  /// Specifies the idle timeout for HTTPS connections on the load balancer in seconds.
  late final pulumi.Output<int> httpIdleTimeoutSeconds;
  /// The ip of the Load Balancer
  late final pulumi.Output<String> ip;
  late final pulumi.Output<String> ipv6;
  /// The uniform resource name for the Load Balancer
  late final pulumi.Output<String> loadBalancerUrn;
  /// The Load Balancer name
  late final pulumi.Output<String> name;
  /// The type of network the Load Balancer is accessible from. It must be either of `INTERNAL` or `EXTERNAL`. Defaults to `EXTERNAL`.
  late final pulumi.Output<String?> network;
  /// The network stack determines the allocation of ipv4/ipv6 addresses to the load balancer. It must be either of `IPV4` or `DUALSTACK`. Defaults to `IPV4`.
  late final pulumi.Output<String?> networkStack;
  /// The ID of the project that the load balancer is associated with. If no ID is provided at creation, the load balancer associates with the user's default project.
  late final pulumi.Output<String> projectId;
  /// A boolean value indicating whether
  /// HTTP requests to the Load Balancer on port 80 will be redirected to HTTPS on port 443.
  /// Default value is `false`.
  late final pulumi.Output<bool?> redirectHttpToHttps;
  /// The region to start in
  late final pulumi.Output<String?> region;
  /// The size of the Load Balancer. It must be either `lb-small`, `lb-medium`, or `lb-large`. Defaults to `lb-small`. Only one of `size` or `sizeUnit` may be provided.
  late final pulumi.Output<String?> size;
  /// The size of the Load Balancer. It must be in the range (1, 200). Defaults to `1`. Only one of `size` or `sizeUnit` may be provided.
  late final pulumi.Output<int> sizeUnit;
  late final pulumi.Output<String> status;
  /// A `stickySessions` block to be assigned to the
  /// Load Balancer. The `stickySessions` block is documented below. Only 1 stickySessions block is allowed.
  late final pulumi.Output<LoadBalancerStickySessions> stickySessions;
  /// The ID of the VPC subnet where the load balancer will be located. Must be a valid subnet in the specified VPC. Requires that `vpcUuid` is also set.
  late final pulumi.Output<String> subnetUuid;
  /// A list of Load Balancer IDs to be attached behind a Global Load Balancer.
  late final pulumi.Output<List<String>> targetLoadBalancerIds;
  /// The tls cipher policy controls the cipher suites to be used by the load balancer. It must be either of `DEFAULT` or `STRONG`. Defaults to `DEFAULT`.
  late final pulumi.Output<String?> tlsCipherPolicy;
  /// The type of the Load Balancer. It must be either of `REGIONAL`, `REGIONAL_NETWORK`, or `GLOBAL`. Defaults to `REGIONAL`.
  late final pulumi.Output<String> type;
  /// The ID of the VPC where the load balancer will be located.
  late final pulumi.Output<String> vpcUuid;

  /// Creates a new [LoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancer]. {@macro pulumi_index_load_balancer_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancer(
    String name, {
    LoadBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/loadBalancer:LoadBalancer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    algorithm = registerOutput<String?>('algorithm');
    disableLetsEncryptDnsRecords = registerOutput<bool?>('disableLetsEncryptDnsRecords');
    domains = registerOutput<List<Map<String, dynamic>>>('domains');
    dropletIds = registerOutput<List<int>>('dropletIds');
    dropletTag = registerOutput<String?>('dropletTag');
    enableBackendKeepalive = registerOutput<bool?>('enableBackendKeepalive');
    enableProxyProtocol = registerOutput<bool?>('enableProxyProtocol');
    firewall = registerOutput<LoadBalancerFirewall>('firewall', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerFirewall.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forwardingRules = registerOutput<List<Map<String, dynamic>>?>('forwardingRules');
    glbSettings = registerOutput<LoadBalancerGlbSettings>('glbSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerGlbSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    healthcheck = registerOutput<LoadBalancerHealthcheck>('healthcheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerHealthcheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpIdleTimeoutSeconds = registerOutput<int>('httpIdleTimeoutSeconds');
    ip = registerOutput<String>('ip');
    ipv6 = registerOutput<String>('ipv6');
    loadBalancerUrn = registerOutput<String>('loadBalancerUrn');
    this.name = registerOutput<String>('name');
    network = registerOutput<String?>('network');
    networkStack = registerOutput<String?>('networkStack');
    projectId = registerOutput<String>('projectId');
    redirectHttpToHttps = registerOutput<bool?>('redirectHttpToHttps');
    region = registerOutput<String?>('region');
    size = registerOutput<String?>('size');
    sizeUnit = registerOutput<int>('sizeUnit');
    status = registerOutput<String>('status');
    stickySessions = registerOutput<LoadBalancerStickySessions>('stickySessions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerStickySessions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subnetUuid = registerOutput<String>('subnetUuid');
    targetLoadBalancerIds = registerOutput<List<String>>('targetLoadBalancerIds');
    tlsCipherPolicy = registerOutput<String?>('tlsCipherPolicy');
    type = registerOutput<String>('type');
    vpcUuid = registerOutput<String>('vpcUuid');
  }

  /// Gets an existing [LoadBalancer] resource's state with the given [name] and [id].
  static LoadBalancer get(
    String name,
    pulumi.Input<String> id, {
    LoadBalancerState? state,
  }) {
    return LoadBalancer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LoadBalancer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/loadBalancer:LoadBalancer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    algorithm = registerOutput<String?>('algorithm');
    disableLetsEncryptDnsRecords = registerOutput<bool?>('disableLetsEncryptDnsRecords');
    domains = registerOutput<List<Map<String, dynamic>>>('domains');
    dropletIds = registerOutput<List<int>>('dropletIds');
    dropletTag = registerOutput<String?>('dropletTag');
    enableBackendKeepalive = registerOutput<bool?>('enableBackendKeepalive');
    enableProxyProtocol = registerOutput<bool?>('enableProxyProtocol');
    firewall = registerOutput<LoadBalancerFirewall>('firewall', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerFirewall.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forwardingRules = registerOutput<List<Map<String, dynamic>>?>('forwardingRules');
    glbSettings = registerOutput<LoadBalancerGlbSettings>('glbSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerGlbSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    healthcheck = registerOutput<LoadBalancerHealthcheck>('healthcheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerHealthcheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpIdleTimeoutSeconds = registerOutput<int>('httpIdleTimeoutSeconds');
    ip = registerOutput<String>('ip');
    ipv6 = registerOutput<String>('ipv6');
    loadBalancerUrn = registerOutput<String>('loadBalancerUrn');
    this.name = registerOutput<String>('name');
    network = registerOutput<String?>('network');
    networkStack = registerOutput<String?>('networkStack');
    projectId = registerOutput<String>('projectId');
    redirectHttpToHttps = registerOutput<bool?>('redirectHttpToHttps');
    region = registerOutput<String?>('region');
    size = registerOutput<String?>('size');
    sizeUnit = registerOutput<int>('sizeUnit');
    status = registerOutput<String>('status');
    stickySessions = registerOutput<LoadBalancerStickySessions>('stickySessions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerStickySessions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subnetUuid = registerOutput<String>('subnetUuid');
    targetLoadBalancerIds = registerOutput<List<String>>('targetLoadBalancerIds');
    tlsCipherPolicy = registerOutput<String?>('tlsCipherPolicy');
    type = registerOutput<String>('type');
    vpcUuid = registerOutput<String>('vpcUuid');
  }
}
