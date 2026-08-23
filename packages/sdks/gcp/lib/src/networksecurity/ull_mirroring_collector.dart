import 'package:pulumi/pulumi.dart' as pulumi;
import 'ull_mirroring_collector_args.dart';
import 'ull_mirroring_collector_state.dart';

/// A Mirroring Collector is a logical representation of an appliance that collects
/// mirrored traffic.
///
///
///
/// ## Example Usage
///
/// ### Network Security Ull Mirroring Collector Basic
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
/// const _default = new gcp.networksecurity.UllMirroringCollector("default", {
///     ullMirroringCollectorId: "example-ull-col",
///     location: "us-south1-d",
///     forwardingRule: forwardingRule.id,
///     engine: ullMirroringEngine.id,
///     labels: {
///         foo: "bar",
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
/// default = gcp.networksecurity.UllMirroringCollector("default",
///     ull_mirroring_collector_id="example-ull-col",
///     location="us-south1-d",
///     forwarding_rule=forwarding_rule.id,
///     engine=ull_mirroring_engine.id,
///     labels={
///         "foo": "bar",
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
///     var @default = new Gcp.NetworkSecurity.UllMirroringCollector("default", new()
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
/// 		_, err = networksecurity.NewUllMirroringCollector(ctx, "default", &networksecurity.UllMirroringCollectorArgs{
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
/// resource "gcp_networksecurity_ullmirroringcollector" "default" {
///   ull_mirroring_collector_id = "example-ull-col"
///   location                   = "us-south1-d"
///   forwarding_rule            = gcp_compute_forwardingrule.forwarding_rule.id
///   engine                     = gcp_networksecurity_ullmirroringengine.ull_mirroring_engine.id
///   labels = {
///     "foo" = "bar"
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
///         var default_ = new UllMirroringCollector("default", UllMirroringCollectorArgs.builder()
///             .ullMirroringCollectorId("example-ull-col")
///             .location("us-south1-d")
///             .forwardingRule(forwardingRule.id())
///             .engine(ullMirroringEngine.id())
///             .labels(Map.of("foo", "bar"))
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
///   default:
///     type: gcp:networksecurity:UllMirroringCollector
///     properties:
///       ullMirroringCollectorId: example-ull-col
///       location: us-south1-d
///       forwardingRule: ${forwardingRule.id}
///       engine: ${ullMirroringEngine.id}
///       labels:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// UllMirroringCollector can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/ullMirroringCollectors/{{ull_mirroring_collector_id}}`
/// * `{{project}}/{{location}}/{{ull_mirroring_collector_id}}`
/// * `{{location}}/{{ull_mirroring_collector_id}}`
///
///
/// When using the `pulumi import` command, UllMirroringCollector can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/ullMirroringCollector:UllMirroringCollector default projects/{{project}}/locations/{{location}}/ullMirroringCollectors/{{ull_mirroring_collector_id}}
/// $ pulumi import gcp:networksecurity/ullMirroringCollector:UllMirroringCollector default {{project}}/{{location}}/{{ull_mirroring_collector_id}}
/// $ pulumi import gcp:networksecurity/ullMirroringCollector:UllMirroringCollector default {{location}}/{{ull_mirroring_collector_id}}
/// ```
class UllMirroringCollector extends pulumi.CustomResource {
  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
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
  /// The engine resource to which this collector points to, for example:
  /// `projects/123456789/locations/us-south1-d/ullMirroringEngines/my-engine`.
  late final pulumi.Output<String> engine;
  /// The regional load balancer which the mirrored traffic should be forwarded
  /// to, for example:
  /// `projects/123456789/regions/us-south1/forwardingRules/my-fr`.
  late final pulumi.Output<String> forwardingRule;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The cloud location of the collector, e.g. `us-south1-d` or `us-south1-e`.
  late final pulumi.Output<String> location;
  /// The resource name of this collector, for example:
  /// `projects/123456789/locations/us-south1-d/ullMirroringCollectors/my-collector`.
  /// See https://google.aip.dev/122 for more details.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This is part of the normal
  /// operation. See https://google.aip.dev/128.
  late final pulumi.Output<bool> reconciling;
  /// The current state of the collector.
  /// See https://google.aip.dev/216.
  /// Possible values:
  /// ACTIVE
  /// CREATING
  /// DELETING
  late final pulumi.Output<String> state;
  /// The ID to use for the new collector, which will become the final
  /// component of the collector's resource name.
  late final pulumi.Output<String> ullMirroringCollectorId;
  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [UllMirroringCollector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UllMirroringCollector]. {@macro pulumi_networksecurity_ull_mirroring_collector_ull_mirroring_collector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UllMirroringCollector(
    String name, {
    UllMirroringCollectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/ullMirroringCollector:UllMirroringCollector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    engine = registerOutput<String>('engine');
    forwardingRule = registerOutput<String>('forwardingRule');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String>('state');
    ullMirroringCollectorId = registerOutput<String>('ullMirroringCollectorId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [UllMirroringCollector] resource's state with the given [name] and [id].
  static UllMirroringCollector get(
    String name,
    pulumi.Input<String> id, {
    UllMirroringCollectorState? state,
  }) {
    return UllMirroringCollector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UllMirroringCollector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/ullMirroringCollector:UllMirroringCollector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    engine = registerOutput<String>('engine');
    forwardingRule = registerOutput<String>('forwardingRule');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    ullMirroringCollectorId = registerOutput<String>('ullMirroringCollectorId');
    updateTime = registerOutput<String>('updateTime');
  }
}
