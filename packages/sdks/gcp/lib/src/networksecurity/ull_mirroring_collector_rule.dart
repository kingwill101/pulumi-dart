import 'package:pulumi/pulumi.dart' as pulumi;
import 'ull_mirroring_collector_rule_args.dart';
import 'ull_mirroring_collector_rule_match.dart';
import 'ull_mirroring_collector_rule_state.dart';

/// UllMirroringCollectorRule is a resource that defines what traffic should be mirrored.
///
///
///
/// ## Example Usage
///
/// ### Network Security Ull Mirroring Collector Rule Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "example-network",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork = new gcp.compute.Subnetwork("subnetwork", {
///     name: "example-subnet",
///     region: "us-south1",
///     ipCidrRange: "10.1.0.0/16",
///     network: network.name,
/// });
/// const healthCheck = new gcp.compute.RegionHealthCheck("health_check", {
///     name: "example-hc",
///     region: "us-south1",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const backendService = new gcp.compute.RegionBackendService("backend_service", {
///     name: "example-bs",
///     region: "us-south1",
///     healthChecks: healthCheck.id,
///     protocol: "UDP",
///     loadBalancingScheme: "INTERNAL",
/// });
/// const forwardingRule = new gcp.compute.ForwardingRule("forwarding_rule", {
///     name: "example-fwr",
///     region: "us-south1",
///     network: network.name,
///     subnetwork: subnetwork.name,
///     backendService: backendService.id,
///     loadBalancingScheme: "INTERNAL",
///     ports: ["6081"],
///     ipProtocol: "UDP",
///     isMirroringCollector: true,
/// });
/// const ullMirroringEngine = new gcp.networksecurity.UllMirroringEngine("ull_mirroring_engine", {
///     ullMirroringEngineId: "example-ull-eng",
///     location: "us-south1-d",
/// });
/// const collector = new gcp.networksecurity.UllMirroringCollector("collector", {
///     ullMirroringCollectorId: "example-ull-col",
///     location: "us-south1-d",
///     forwardingRule: forwardingRule.id,
///     engine: ullMirroringEngine.id,
///     labels: {
///         foo: "bar",
///     },
/// });
/// const _default = new gcp.networksecurity.UllMirroringCollectorRule("default", {
///     ullMirroringCollectorRuleId: "example-ull-rule",
///     location: "us-south1-d",
///     ullMirroringCollector: collector.ullMirroringCollectorId,
///     match: {
///         direction: "INGRESS",
///         ipProtocols: ["tcp"],
///         srcIpRanges: ["10.0.0.0/8"],
///         dstIpRanges: ["192.168.0.0/16"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="example-network",
///     auto_create_subnetworks=False)
/// subnetwork = gcp.compute.Subnetwork("subnetwork",
///     name="example-subnet",
///     region="us-south1",
///     ip_cidr_range="10.1.0.0/16",
///     network=network.name)
/// health_check = gcp.compute.RegionHealthCheck("health_check",
///     name="example-hc",
///     region="us-south1",
///     http_health_check={
///         "port": 80,
///     })
/// backend_service = gcp.compute.RegionBackendService("backend_service",
///     name="example-bs",
///     region="us-south1",
///     health_checks=health_check.id,
///     protocol="UDP",
///     load_balancing_scheme="INTERNAL")
/// forwarding_rule = gcp.compute.ForwardingRule("forwarding_rule",
///     name="example-fwr",
///     region="us-south1",
///     network=network.name,
///     subnetwork=subnetwork.name,
///     backend_service=backend_service.id,
///     load_balancing_scheme="INTERNAL",
///     ports=["6081"],
///     ip_protocol="UDP",
///     is_mirroring_collector=True)
/// ull_mirroring_engine = gcp.networksecurity.UllMirroringEngine("ull_mirroring_engine",
///     ull_mirroring_engine_id="example-ull-eng",
///     location="us-south1-d")
/// collector = gcp.networksecurity.UllMirroringCollector("collector",
///     ull_mirroring_collector_id="example-ull-col",
///     location="us-south1-d",
///     forwarding_rule=forwarding_rule.id,
///     engine=ull_mirroring_engine.id,
///     labels={
///         "foo": "bar",
///     })
/// default = gcp.networksecurity.UllMirroringCollectorRule("default",
///     ull_mirroring_collector_rule_id="example-ull-rule",
///     location="us-south1-d",
///     ull_mirroring_collector=collector.ull_mirroring_collector_id,
///     match={
///         "direction": "INGRESS",
///         "ip_protocols": ["tcp"],
///         "src_ip_ranges": ["10.0.0.0/8"],
///         "dst_ip_ranges": ["192.168.0.0/16"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "example-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork = new Gcp.Compute.Subnetwork("subnetwork", new()
///     {
///         Name = "example-subnet",
///         Region = "us-south1",
///         IpCidrRange = "10.1.0.0/16",
///         Network = network.Name,
///     });
///
///     var healthCheck = new Gcp.Compute.RegionHealthCheck("health_check", new()
///     {
///         Name = "example-hc",
///         Region = "us-south1",
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var backendService = new Gcp.Compute.RegionBackendService("backend_service", new()
///     {
///         Name = "example-bs",
///         Region = "us-south1",
///         HealthChecks = healthCheck.Id,
///         Protocol = "UDP",
///         LoadBalancingScheme = "INTERNAL",
///     });
///
///     var forwardingRule = new Gcp.Compute.ForwardingRule("forwarding_rule", new()
///     {
///         Name = "example-fwr",
///         Region = "us-south1",
///         Network = network.Name,
///         Subnetwork = subnetwork.Name,
///         BackendService = backendService.Id,
///         LoadBalancingScheme = "INTERNAL",
///         Ports = new[]
///         {
///             "6081",
///         },
///         IpProtocol = "UDP",
///         IsMirroringCollector = true,
///     });
///
///     var ullMirroringEngine = new Gcp.NetworkSecurity.UllMirroringEngine("ull_mirroring_engine", new()
///     {
///         UllMirroringEngineId = "example-ull-eng",
///         Location = "us-south1-d",
///     });
///
///     var collector = new Gcp.NetworkSecurity.UllMirroringCollector("collector", new()
///     {
///         UllMirroringCollectorId = "example-ull-col",
///         Location = "us-south1-d",
///         ForwardingRule = forwardingRule.Id,
///         Engine = ullMirroringEngine.Id,
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
///     var @default = new Gcp.NetworkSecurity.UllMirroringCollectorRule("default", new()
///     {
///         UllMirroringCollectorRuleId = "example-ull-rule",
///         Location = "us-south1-d",
///         UllMirroringCollector = collector.UllMirroringCollectorId,
///         Match = new Gcp.NetworkSecurity.Inputs.UllMirroringCollectorRuleMatchArgs
///         {
///             Direction = "INGRESS",
///             IpProtocols = new[]
///             {
///                 "tcp",
///             },
///             SrcIpRanges = new[]
///             {
///                 "10.0.0.0/8",
///             },
///             DstIpRanges = new[]
///             {
///                 "192.168.0.0/16",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("example-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetwork, err := compute.NewSubnetwork(ctx, "subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("example-subnet"),
/// 			Region:      pulumi.String("us-south1"),
/// 			IpCidrRange: pulumi.String("10.1.0.0/16"),
/// 			Network:     network.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		healthCheck, err := compute.NewRegionHealthCheck(ctx, "health_check", &compute.RegionHealthCheckArgs{
/// 			Name:   pulumi.String("example-hc"),
/// 			Region: pulumi.String("us-south1"),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		backendService, err := compute.NewRegionBackendService(ctx, "backend_service", &compute.RegionBackendServiceArgs{
/// 			Name:                pulumi.String("example-bs"),
/// 			Region:              pulumi.String("us-south1"),
/// 			HealthChecks:        healthCheck.ID().ToIDOutput().ToStringOutput(),
/// 			Protocol:            pulumi.String("UDP"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		forwardingRule, err := compute.NewForwardingRule(ctx, "forwarding_rule", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("example-fwr"),
/// 			Region:              pulumi.String("us-south1"),
/// 			Network:             network.Name,
/// 			Subnetwork:          subnetwork.Name,
/// 			BackendService:      backendService.ID().ToIDOutput().ToStringOutput(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL"),
/// 			Ports: pulumi.StringArray{
/// 				pulumi.String("6081"),
/// 			},
/// 			IpProtocol:           pulumi.String("UDP"),
/// 			IsMirroringCollector: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ullMirroringEngine, err := networksecurity.NewUllMirroringEngine(ctx, "ull_mirroring_engine", &networksecurity.UllMirroringEngineArgs{
/// 			UllMirroringEngineId: pulumi.String("example-ull-eng"),
/// 			Location:             pulumi.String("us-south1-d"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		collector, err := networksecurity.NewUllMirroringCollector(ctx, "collector", &networksecurity.UllMirroringCollectorArgs{
/// 			UllMirroringCollectorId: pulumi.String("example-ull-col"),
/// 			Location:                pulumi.String("us-south1-d"),
/// 			ForwardingRule:          forwardingRule.ID().ToIDOutput().ToStringOutput(),
/// 			Engine:                  ullMirroringEngine.ID().ToIDOutput().ToStringOutput(),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewUllMirroringCollectorRule(ctx, "default", &networksecurity.UllMirroringCollectorRuleArgs{
/// 			UllMirroringCollectorRuleId: pulumi.String("example-ull-rule"),
/// 			Location:                    pulumi.String("us-south1-d"),
/// 			UllMirroringCollector:       collector.UllMirroringCollectorId,
/// 			Match: &networksecurity.UllMirroringCollectorRuleMatchArgs{
/// 				Direction: pulumi.String("INGRESS"),
/// 				IpProtocols: pulumi.StringArray{
/// 					pulumi.String("tcp"),
/// 				},
/// 				SrcIpRanges: pulumi.StringArray{
/// 					pulumi.String("10.0.0.0/8"),
/// 				},
/// 				DstIpRanges: pulumi.StringArray{
/// 					pulumi.String("192.168.0.0/16"),
/// 				},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_network" "network" {
///   name                    = "example-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "subnetwork" {
///   name          = "example-subnet"
///   region        = "us-south1"
///   ip_cidr_range = "10.1.0.0/16"
///   network       = gcp_compute_network.network.name
/// }
/// resource "gcp_compute_regionhealthcheck" "health_check" {
///   name   = "example-hc"
///   region = "us-south1"
///   http_health_check = {
///     port = 80
///   }
/// }
/// resource "gcp_compute_regionbackendservice" "backend_service" {
///   name                  = "example-bs"
///   region                = "us-south1"
///   health_checks         = gcp_compute_regionhealthcheck.health_check.id
///   protocol              = "UDP"
///   load_balancing_scheme = "INTERNAL"
/// }
/// resource "gcp_compute_forwardingrule" "forwarding_rule" {
///   name                   = "example-fwr"
///   region                 = "us-south1"
///   network                = gcp_compute_network.network.name
///   subnetwork             = gcp_compute_subnetwork.subnetwork.name
///   backend_service        = gcp_compute_regionbackendservice.backend_service.id
///   load_balancing_scheme  = "INTERNAL"
///   ports                  = [6081]
///   ip_protocol            = "UDP"
///   is_mirroring_collector = true
/// }
/// resource "gcp_networksecurity_ullmirroringengine" "ull_mirroring_engine" {
///   ull_mirroring_engine_id = "example-ull-eng"
///   location                = "us-south1-d"
/// }
/// resource "gcp_networksecurity_ullmirroringcollector" "collector" {
///   ull_mirroring_collector_id = "example-ull-col"
///   location                   = "us-south1-d"
///   forwarding_rule            = gcp_compute_forwardingrule.forwarding_rule.id
///   engine                     = gcp_networksecurity_ullmirroringengine.ull_mirroring_engine.id
///   labels = {
///     "foo" = "bar"
///   }
/// }
/// resource "gcp_networksecurity_ullmirroringcollectorrule" "default" {
///   ull_mirroring_collector_rule_id = "example-ull-rule"
///   location                        = "us-south1-d"
///   ull_mirroring_collector         = gcp_networksecurity_ullmirroringcollector.collector.ull_mirroring_collector_id
///   match = {
///     direction     = "INGRESS"
///     ip_protocols  = ["tcp"]
///     src_ip_ranges = ["10.0.0.0/8"]
///     dst_ip_ranges = ["192.168.0.0/16"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.networksecurity.UllMirroringEngine;
/// import com.pulumi.gcp.networksecurity.UllMirroringEngineArgs;
/// import com.pulumi.gcp.networksecurity.UllMirroringCollector;
/// import com.pulumi.gcp.networksecurity.UllMirroringCollectorArgs;
/// import com.pulumi.gcp.networksecurity.UllMirroringCollectorRule;
/// import com.pulumi.gcp.networksecurity.UllMirroringCollectorRuleArgs;
/// import com.pulumi.gcp.networksecurity.inputs.UllMirroringCollectorRuleMatchArgs;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .name("example-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork = new Subnetwork("subnetwork", SubnetworkArgs.builder()
///             .name("example-subnet")
///             .region("us-south1")
///             .ipCidrRange("10.1.0.0/16")
///             .network(network.name())
///             .build());
///
///         var healthCheck = new RegionHealthCheck("healthCheck", RegionHealthCheckArgs.builder()
///             .name("example-hc")
///             .region("us-south1")
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var backendService = new RegionBackendService("backendService", RegionBackendServiceArgs.builder()
///             .name("example-bs")
///             .region("us-south1")
///             .healthChecks(healthCheck.id())
///             .protocol("UDP")
///             .loadBalancingScheme("INTERNAL")
///             .build());
///
///         var forwardingRule = new ForwardingRule("forwardingRule", ForwardingRuleArgs.builder()
///             .name("example-fwr")
///             .region("us-south1")
///             .network(network.name())
///             .subnetwork(subnetwork.name())
///             .backendService(backendService.id())
///             .loadBalancingScheme("INTERNAL")
///             .ports("6081")
///             .ipProtocol("UDP")
///             .isMirroringCollector(true)
///             .build());
///
///         var ullMirroringEngine = new UllMirroringEngine("ullMirroringEngine", UllMirroringEngineArgs.builder()
///             .ullMirroringEngineId("example-ull-eng")
///             .location("us-south1-d")
///             .build());
///
///         var collector = new UllMirroringCollector("collector", UllMirroringCollectorArgs.builder()
///             .ullMirroringCollectorId("example-ull-col")
///             .location("us-south1-d")
///             .forwardingRule(forwardingRule.id())
///             .engine(ullMirroringEngine.id())
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///         var default_ = new UllMirroringCollectorRule("default", UllMirroringCollectorRuleArgs.builder()
///             .ullMirroringCollectorRuleId("example-ull-rule")
///             .location("us-south1-d")
///             .ullMirroringCollector(collector.ullMirroringCollectorId())
///             .match(UllMirroringCollectorRuleMatchArgs.builder()
///                 .direction("INGRESS")
///                 .ipProtocols("tcp")
///                 .srcIpRanges("10.0.0.0/8")
///                 .dstIpRanges("192.168.0.0/16")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: example-network
///       autoCreateSubnetworks: false
///   subnetwork:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: example-subnet
///       region: us-south1
///       ipCidrRange: 10.1.0.0/16
///       network: ${network.name}
///   healthCheck:
///     type: gcp:compute:RegionHealthCheck
///     name: health_check
///     properties:
///       name: example-hc
///       region: us-south1
///       httpHealthCheck:
///         port: 80
///   backendService:
///     type: gcp:compute:RegionBackendService
///     name: backend_service
///     properties:
///       name: example-bs
///       region: us-south1
///       healthChecks: ${healthCheck.id}
///       protocol: UDP
///       loadBalancingScheme: INTERNAL
///   forwardingRule:
///     type: gcp:compute:ForwardingRule
///     name: forwarding_rule
///     properties:
///       name: example-fwr
///       region: us-south1
///       network: ${network.name}
///       subnetwork: ${subnetwork.name}
///       backendService: ${backendService.id}
///       loadBalancingScheme: INTERNAL
///       ports:
///         - 6081
///       ipProtocol: UDP
///       isMirroringCollector: true
///   ullMirroringEngine:
///     type: gcp:networksecurity:UllMirroringEngine
///     name: ull_mirroring_engine
///     properties:
///       ullMirroringEngineId: example-ull-eng
///       location: us-south1-d
///   collector:
///     type: gcp:networksecurity:UllMirroringCollector
///     properties:
///       ullMirroringCollectorId: example-ull-col
///       location: us-south1-d
///       forwardingRule: ${forwardingRule.id}
///       engine: ${ullMirroringEngine.id}
///       labels:
///         foo: bar
///   default:
///     type: gcp:networksecurity:UllMirroringCollectorRule
///     properties:
///       ullMirroringCollectorRuleId: example-ull-rule
///       location: us-south1-d
///       ullMirroringCollector: ${collector.ullMirroringCollectorId}
///       match:
///         direction: INGRESS
///         ipProtocols:
///           - tcp
///         srcIpRanges:
///           - 10.0.0.0/8
///         dstIpRanges:
///           - 192.168.0.0/16
/// ```
///
///
/// ## Import
///
/// UllMirroringCollectorRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/ullMirroringCollectors/{{ull_mirroring_collector}}/rules/{{ull_mirroring_collector_rule_id}}`
/// * `{{project}}/{{location}}/{{ull_mirroring_collector}}/{{ull_mirroring_collector_rule_id}}`
/// * `{{location}}/{{ull_mirroring_collector}}/{{ull_mirroring_collector_rule_id}}`
///
///
/// When using the `pulumi import` command, UllMirroringCollectorRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/ullMirroringCollectorRule:UllMirroringCollectorRule default projects/{{project}}/locations/{{location}}/ullMirroringCollectors/{{ull_mirroring_collector}}/rules/{{ull_mirroring_collector_rule_id}}
/// $ pulumi import gcp:networksecurity/ullMirroringCollectorRule:UllMirroringCollectorRule default {{project}}/{{location}}/{{ull_mirroring_collector}}/{{ull_mirroring_collector_rule_id}}
/// $ pulumi import gcp:networksecurity/ullMirroringCollectorRule:UllMirroringCollectorRule default {{location}}/{{ull_mirroring_collector}}/{{ull_mirroring_collector_rule_id}}
/// ```
class UllMirroringCollectorRule extends pulumi.CustomResource {
  /// [Output only] Create time stamp
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Match defines what traffic to mirror.
  /// Structure is documented below.
  late final pulumi.Output<UllMirroringCollectorRuleMatch> match;
  /// Identifier. The name of the UllMirroringCollectorRule.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Whether reconciling is in progress, recommended per
  /// https://google.aip.dev/128.
  late final pulumi.Output<bool> reconciling;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> ullMirroringCollector;
  /// ID for the new UllMirroringCollectorRule.
  late final pulumi.Output<String> ullMirroringCollectorRuleId;
  /// [Output only] Update time stamp
  late final pulumi.Output<String> updateTime;

  /// Creates a new [UllMirroringCollectorRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UllMirroringCollectorRule]. {@macro pulumi_networksecurity_ull_mirroring_collector_rule_ull_mirroring_collector_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UllMirroringCollectorRule(
    String name, {
    UllMirroringCollectorRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/ullMirroringCollectorRule:UllMirroringCollectorRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    match = registerOutput<UllMirroringCollectorRuleMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UllMirroringCollectorRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    ullMirroringCollector = registerOutput<String>('ullMirroringCollector');
    ullMirroringCollectorRuleId = registerOutput<String>('ullMirroringCollectorRuleId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [UllMirroringCollectorRule] resource's state with the given [name] and [id].
  static UllMirroringCollectorRule get(
    String name,
    pulumi.Input<String> id, {
    UllMirroringCollectorRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return UllMirroringCollectorRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  UllMirroringCollectorRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/ullMirroringCollectorRule:UllMirroringCollectorRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    match = registerOutput<UllMirroringCollectorRuleMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UllMirroringCollectorRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    ullMirroringCollector = registerOutput<String>('ullMirroringCollector');
    ullMirroringCollectorRuleId = registerOutput<String>('ullMirroringCollectorRuleId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [UllMirroringCollectorRule] resource.
  UllMirroringCollectorRule.reference(String urn)
    : super(
        'gcp:networksecurity/ullMirroringCollectorRule:UllMirroringCollectorRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    match = registerOutput<UllMirroringCollectorRuleMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UllMirroringCollectorRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    ullMirroringCollector = registerOutput<String>('ullMirroringCollector');
    ullMirroringCollectorRuleId = registerOutput<String>('ullMirroringCollectorRuleId');
    updateTime = registerOutput<String>('updateTime');
  }
}
