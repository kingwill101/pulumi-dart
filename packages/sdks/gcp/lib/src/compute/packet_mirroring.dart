import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_mirroring_args.dart';
import 'packet_mirroring_collector_ilb.dart';
import 'packet_mirroring_filter.dart';
import 'packet_mirroring_mirrored_resources.dart';
import 'packet_mirroring_network.dart';
import 'packet_mirroring_state.dart';

/// Packet Mirroring mirrors traffic to and from particular VM instances.
/// You can use the collected traffic to help you detect security threats
/// and monitor application performance.
///
///
/// To get more information about PacketMirroring, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/packetMirrorings)
/// * How-to Guides
/// * [Using Packet Mirroring](https://cloud.google.com/vpc/docs/using-packet-mirroring#creating)
///
/// ## Example Usage
///
/// ### Compute Packet Mirroring Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {name: "my-network"});
/// const mirror = new gcp.compute.Instance("mirror", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         network: _default.id,
///     }],
///     name: "my-instance",
///     machineType: "e2-medium",
///     bootDisk: {
///         initializeParams: {
///             image: "debian-cloud/debian-11",
///         },
///     },
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "my-subnetwork",
///     network: _default.id,
///     ipCidrRange: "10.2.0.0/16",
/// });
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "my-healthcheck",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
///     name: "my-service",
///     healthChecks: defaultHealthCheck.id,
/// });
/// const defaultForwardingRule = new gcp.compute.ForwardingRule("default", {
///     name: "my-ilb",
///     isMirroringCollector: true,
///     ipProtocol: "TCP",
///     loadBalancingScheme: "INTERNAL",
///     backendService: defaultRegionBackendService.id,
///     allPorts: true,
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     networkTier: "PREMIUM",
/// }, {
///     dependsOn: [defaultSubnetwork],
/// });
/// const foobar = new gcp.compute.PacketMirroring("foobar", {
///     name: "my-mirroring",
///     description: "bar",
///     enable: "TRUE",
///     network: {
///         url: _default.id,
///     },
///     collectorIlb: {
///         url: defaultForwardingRule.id,
///     },
///     mirroredResources: {
///         tags: ["foo"],
///         instances: [{
///             url: mirror.id,
///         }],
///         subnetworks: [{
///             url: defaultSubnetwork.id,
///         }],
///     },
///     filter: {
///         ipProtocols: ["tcp"],
///         cidrRanges: ["0.0.0.0/0"],
///         direction: "BOTH",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default", name="my-network")
/// mirror = gcp.compute.Instance("mirror",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "network": default.id,
///     }],
///     name="my-instance",
///     machine_type="e2-medium",
///     boot_disk={
///         "initialize_params": {
///             "image": "debian-cloud/debian-11",
///         },
///     })
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="my-subnetwork",
///     network=default.id,
///     ip_cidr_range="10.2.0.0/16")
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="my-healthcheck",
///     check_interval_sec=1,
///     timeout_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
///     name="my-service",
///     health_checks=default_health_check.id)
/// default_forwarding_rule = gcp.compute.ForwardingRule("default",
///     name="my-ilb",
///     is_mirroring_collector=True,
///     ip_protocol="TCP",
///     load_balancing_scheme="INTERNAL",
///     backend_service=default_region_backend_service.id,
///     all_ports=True,
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     network_tier="PREMIUM",
///     opts = pulumi.ResourceOptions(depends_on=[default_subnetwork]))
/// foobar = gcp.compute.PacketMirroring("foobar",
///     name="my-mirroring",
///     description="bar",
///     enable="TRUE",
///     network={
///         "url": default.id,
///     },
///     collector_ilb={
///         "url": default_forwarding_rule.id,
///     },
///     mirrored_resources={
///         "tags": ["foo"],
///         "instances": [{
///             "url": mirror.id,
///         }],
///         "subnetworks": [{
///             "url": default_subnetwork.id,
///         }],
///     },
///     filter={
///         "ip_protocols": ["tcp"],
///         "cidr_ranges": ["0.0.0.0/0"],
///         "direction": "BOTH",
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
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "my-network",
///     });
///
///     var mirror = new Gcp.Compute.Instance("mirror", new()
///     {
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 AccessConfigs = new[]
///                 {
///                     null,
///                 },
///                 Network = @default.Id,
///             },
///         },
///         Name = "my-instance",
///         MachineType = "e2-medium",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = "debian-cloud/debian-11",
///             },
///         },
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "my-subnetwork",
///         Network = @default.Id,
///         IpCidrRange = "10.2.0.0/16",
///     });
///
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "my-healthcheck",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Name = "my-service",
///         HealthChecks = defaultHealthCheck.Id,
///     });
///
///     var defaultForwardingRule = new Gcp.Compute.ForwardingRule("default", new()
///     {
///         Name = "my-ilb",
///         IsMirroringCollector = true,
///         IpProtocol = "TCP",
///         LoadBalancingScheme = "INTERNAL",
///         BackendService = defaultRegionBackendService.Id,
///         AllPorts = true,
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         NetworkTier = "PREMIUM",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultSubnetwork,
///         },
///     });
///
///     var foobar = new Gcp.Compute.PacketMirroring("foobar", new()
///     {
///         Name = "my-mirroring",
///         Description = "bar",
///         Enable = "TRUE",
///         Network = new Gcp.Compute.Inputs.PacketMirroringNetworkArgs
///         {
///             Url = @default.Id,
///         },
///         CollectorIlb = new Gcp.Compute.Inputs.PacketMirroringCollectorIlbArgs
///         {
///             Url = defaultForwardingRule.Id,
///         },
///         MirroredResources = new Gcp.Compute.Inputs.PacketMirroringMirroredResourcesArgs
///         {
///             Tags = new[]
///             {
///                 "foo",
///             },
///             Instances = new[]
///             {
///                 new Gcp.Compute.Inputs.PacketMirroringMirroredResourcesInstanceArgs
///                 {
///                     Url = mirror.Id,
///                 },
///             },
///             Subnetworks = new[]
///             {
///                 new Gcp.Compute.Inputs.PacketMirroringMirroredResourcesSubnetworkArgs
///                 {
///                     Url = defaultSubnetwork.Id,
///                 },
///             },
///         },
///         Filter = new Gcp.Compute.Inputs.PacketMirroringFilterArgs
///         {
///             IpProtocols = new[]
///             {
///                 "tcp",
///             },
///             CidrRanges = new[]
///             {
///                 "0.0.0.0/0",
///             },
///             Direction = "BOTH",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("my-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mirror, err := compute.NewInstance(ctx, "mirror", &compute.InstanceArgs{
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Network: _default.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			Name:        pulumi.String("my-instance"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String("debian-cloud/debian-11"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnetwork"),
/// 			Network:     _default.ID().ToIDOutput().ToStringOutput(),
/// 			IpCidrRange: pulumi.String("10.2.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("my-healthcheck"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegionBackendService, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Name:         pulumi.String("my-service"),
/// 			HealthChecks: defaultHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultForwardingRule, err := compute.NewForwardingRule(ctx, "default", &compute.ForwardingRuleArgs{
/// 			Name:                 pulumi.String("my-ilb"),
/// 			IsMirroringCollector: pulumi.Bool(true),
/// 			IpProtocol:           pulumi.String("TCP"),
/// 			LoadBalancingScheme:  pulumi.String("INTERNAL"),
/// 			BackendService:       defaultRegionBackendService.ID().ToIDOutput().ToStringOutput(),
/// 			AllPorts:             pulumi.Bool(true),
/// 			Network:              _default.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:           defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			NetworkTier:          pulumi.String("PREMIUM"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultSubnetwork,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewPacketMirroring(ctx, "foobar", &compute.PacketMirroringArgs{
/// 			Name:        pulumi.String("my-mirroring"),
/// 			Description: pulumi.String("bar"),
/// 			Enable:      pulumi.String("TRUE"),
/// 			Network: &compute.PacketMirroringNetworkArgs{
/// 				Url: _default.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			CollectorIlb: &compute.PacketMirroringCollectorIlbArgs{
/// 				Url: defaultForwardingRule.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			MirroredResources: &compute.PacketMirroringMirroredResourcesArgs{
/// 				Tags: pulumi.StringArray{
/// 					pulumi.String("foo"),
/// 				},
/// 				Instances: compute.PacketMirroringMirroredResourcesInstanceArray{
/// 					&compute.PacketMirroringMirroredResourcesInstanceArgs{
/// 						Url: mirror.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 				},
/// 				Subnetworks: compute.PacketMirroringMirroredResourcesSubnetworkArray{
/// 					&compute.PacketMirroringMirroredResourcesSubnetworkArgs{
/// 						Url: defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 				},
/// 			},
/// 			Filter: &compute.PacketMirroringFilterArgs{
/// 				IpProtocols: pulumi.StringArray{
/// 					pulumi.String("tcp"),
/// 				},
/// 				CidrRanges: pulumi.StringArray{
/// 					pulumi.String("0.0.0.0/0"),
/// 				},
/// 				Direction: pulumi.String("BOTH"),
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
/// resource "gcp_compute_instance" "mirror" {
///   network_interfaces {
///     access_configs {
///     }
///     network = gcp_compute_network.default.id
///   }
///   name         = "my-instance"
///   machine_type = "e2-medium"
///   boot_disk = {
///     initialize_params = {
///       image = "debian-cloud/debian-11"
///     }
///   }
/// }
/// resource "gcp_compute_network" "default" {
///   name = "my-network"
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "my-subnetwork"
///   network       = gcp_compute_network.default.id
///   ip_cidr_range = "10.2.0.0/16"
/// }
/// resource "gcp_compute_regionbackendservice" "default" {
///   name          = "my-service"
///   health_checks = gcp_compute_healthcheck.default.id
/// }
/// resource "gcp_compute_healthcheck" "default" {
///   name               = "my-healthcheck"
///   check_interval_sec = 1
///   timeout_sec        = 1
///   tcp_health_check = {
///     port = "80"
///   }
/// }
/// resource "gcp_compute_forwardingrule" "default" {
///   depends_on             = [gcp_compute_subnetwork.default]
///   name                   = "my-ilb"
///   is_mirroring_collector = true
///   ip_protocol            = "TCP"
///   load_balancing_scheme  = "INTERNAL"
///   backend_service        = gcp_compute_regionbackendservice.default.id
///   all_ports              = true
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   network_tier           = "PREMIUM"
/// }
/// resource "gcp_compute_packetmirroring" "foobar" {
///   name        = "my-mirroring"
///   description = "bar"
///   enable      = "TRUE"
///   network = {
///     url = gcp_compute_network.default.id
///   }
///   collector_ilb = {
///     url = gcp_compute_forwardingrule.default.id
///   }
///   mirrored_resources = {
///     tags = ["foo"]
///     instances = [{
///       "url" = gcp_compute_instance.mirror.id
///     }]
///     subnetworks = [{
///       "url" = gcp_compute_subnetwork.default.id
///     }]
///   }
///   filter = {
///     ip_protocols = ["tcp"]
///     cidr_ranges  = ["0.0.0.0/0"]
///     direction    = "BOTH"
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
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceAccessConfigArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.compute.PacketMirroring;
/// import com.pulumi.gcp.compute.PacketMirroringArgs;
/// import com.pulumi.gcp.compute.inputs.PacketMirroringNetworkArgs;
/// import com.pulumi.gcp.compute.inputs.PacketMirroringCollectorIlbArgs;
/// import com.pulumi.gcp.compute.inputs.PacketMirroringMirroredResourcesArgs;
/// import com.pulumi.gcp.compute.inputs.PacketMirroringMirroredResourcesInstanceArgs;
/// import com.pulumi.gcp.compute.inputs.PacketMirroringMirroredResourcesSubnetworkArgs;
/// import com.pulumi.gcp.compute.inputs.PacketMirroringFilterArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("my-network")
///             .build());
///
///         var mirror = new Instance("mirror", InstanceArgs.builder()
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .network(default_.id())
///                 .build())
///             .name("my-instance")
///             .machineType("e2-medium")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image("debian-cloud/debian-11")
///                     .build())
///                 .build())
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("my-subnetwork")
///             .network(default_.id())
///             .ipCidrRange("10.2.0.0/16")
///             .build());
///
///         var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
///             .name("my-healthcheck")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
///             .name("my-service")
///             .healthChecks(defaultHealthCheck.id())
///             .build());
///
///         var defaultForwardingRule = new ForwardingRule("defaultForwardingRule", ForwardingRuleArgs.builder()
///             .name("my-ilb")
///             .isMirroringCollector(true)
///             .ipProtocol("TCP")
///             .loadBalancingScheme("INTERNAL")
///             .backendService(defaultRegionBackendService.id())
///             .allPorts(true)
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .networkTier("PREMIUM")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(defaultSubnetwork)
///                 .build());
///
///         var foobar = new PacketMirroring("foobar", PacketMirroringArgs.builder()
///             .name("my-mirroring")
///             .description("bar")
///             .enable("TRUE")
///             .network(PacketMirroringNetworkArgs.builder()
///                 .url(default_.id())
///                 .build())
///             .collectorIlb(PacketMirroringCollectorIlbArgs.builder()
///                 .url(defaultForwardingRule.id())
///                 .build())
///             .mirroredResources(PacketMirroringMirroredResourcesArgs.builder()
///                 .tags("foo")
///                 .instances(PacketMirroringMirroredResourcesInstanceArgs.builder()
///                     .url(mirror.id())
///                     .build())
///                 .subnetworks(PacketMirroringMirroredResourcesSubnetworkArgs.builder()
///                     .url(defaultSubnetwork.id())
///                     .build())
///                 .build())
///             .filter(PacketMirroringFilterArgs.builder()
///                 .ipProtocols("tcp")
///                 .cidrRanges("0.0.0.0/0")
///                 .direction("BOTH")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mirror:
///     type: gcp:compute:Instance
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           network: ${default.id}
///       name: my-instance
///       machineType: e2-medium
///       bootDisk:
///         initializeParams:
///           image: debian-cloud/debian-11
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: my-network
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: my-subnetwork
///       network: ${default.id}
///       ipCidrRange: 10.2.0.0/16
///   defaultRegionBackendService:
///     type: gcp:compute:RegionBackendService
///     name: default
///     properties:
///       name: my-service
///       healthChecks: ${defaultHealthCheck.id}
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: my-healthcheck
///       checkIntervalSec: 1
///       timeoutSec: 1
///       tcpHealthCheck:
///         port: '80'
///   defaultForwardingRule:
///     type: gcp:compute:ForwardingRule
///     name: default
///     properties:
///       name: my-ilb
///       isMirroringCollector: true
///       ipProtocol: TCP
///       loadBalancingScheme: INTERNAL
///       backendService: ${defaultRegionBackendService.id}
///       allPorts: true
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       networkTier: PREMIUM
///     options:
///       dependsOn:
///         - ${defaultSubnetwork}
///   foobar:
///     type: gcp:compute:PacketMirroring
///     properties:
///       name: my-mirroring
///       description: bar
///       enable: TRUE
///       network:
///         url: ${default.id}
///       collectorIlb:
///         url: ${defaultForwardingRule.id}
///       mirroredResources:
///         tags:
///           - foo
///         instances:
///           - url: ${mirror.id}
///         subnetworks:
///           - url: ${defaultSubnetwork.id}
///       filter:
///         ipProtocols:
///           - tcp
///         cidrRanges:
///           - 0.0.0.0/0
///         direction: BOTH
/// ```
///
///
/// ## Import
///
/// PacketMirroring can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/packetMirrorings/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, PacketMirroring can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/packetMirroring:PacketMirroring default projects/{{project}}/regions/{{region}}/packetMirrorings/{{name}}
/// $ pulumi import gcp:compute/packetMirroring:PacketMirroring default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:compute/packetMirroring:PacketMirroring default {{region}}/{{name}}
/// $ pulumi import gcp:compute/packetMirroring:PacketMirroring default {{name}}
/// ```
class PacketMirroring extends pulumi.CustomResource {
  /// The Forwarding Rule resource (of type load_balancing_scheme=INTERNAL)
  /// that will be used as collector for mirrored traffic. The
  /// specified forwarding rule must have isMirroringCollector
  /// set to true.
  /// Structure is documented below.
  late final pulumi.Output<PacketMirroringCollectorIlb> collectorIlb;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A human-readable description of the rule.
  late final pulumi.Output<String?> description;
  /// Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring
  /// policy will not be enforced on the network. The default is TRUE.
  /// Possible values are: `TRUE`, `FALSE`.
  late final pulumi.Output<String> enable;
  /// A filter for mirrored traffic.  If unset, all traffic is mirrored.
  /// Structure is documented below.
  late final pulumi.Output<PacketMirroringFilter?> filter;
  /// A means of specifying which resources to mirror.
  /// Structure is documented below.
  late final pulumi.Output<PacketMirroringMirroredResources> mirroredResources;
  /// The name of the packet mirroring rule
  late final pulumi.Output<String> name;
  /// Specifies the mirrored VPC network. Only packets in this network
  /// will be mirrored. All mirrored VMs should have a NIC in the given
  /// network. All mirrored subnetworks should belong to the given network.
  /// Structure is documented below.
  late final pulumi.Output<PacketMirroringNetwork> network;
  /// Since only one rule can be active at a time, priority is
  /// used to break ties in the case of two rules that apply to
  /// the same instances.
  late final pulumi.Output<int> priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The Region in which the created address should reside.
  /// If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;

  /// Creates a new [PacketMirroring].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PacketMirroring]. {@macro pulumi_compute_packet_mirroring_packet_mirroring_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PacketMirroring(
    String name, {
    PacketMirroringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/packetMirroring:PacketMirroring',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    collectorIlb = registerOutput<PacketMirroringCollectorIlb>('collectorIlb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PacketMirroringCollectorIlb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    enable = registerOutput<String>('enable');
    filter = registerOutput<PacketMirroringFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PacketMirroringFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mirroredResources = registerOutput<PacketMirroringMirroredResources>('mirroredResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PacketMirroringMirroredResources.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    network = registerOutput<PacketMirroringNetwork>('network', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PacketMirroringNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [PacketMirroring] resource's state with the given [name] and [id].
  static PacketMirroring get(
    String name,
    pulumi.Input<String> id, {
    PacketMirroringState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PacketMirroring._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PacketMirroring._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/packetMirroring:PacketMirroring',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    collectorIlb = registerOutput<PacketMirroringCollectorIlb>('collectorIlb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PacketMirroringCollectorIlb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    enable = registerOutput<String>('enable');
    filter = registerOutput<PacketMirroringFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PacketMirroringFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mirroredResources = registerOutput<PacketMirroringMirroredResources>('mirroredResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PacketMirroringMirroredResources.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    network = registerOutput<PacketMirroringNetwork>('network', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PacketMirroringNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [PacketMirroring] resource.
  PacketMirroring.reference(String urn)
    : super(
        'gcp:compute/packetMirroring:PacketMirroring',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    collectorIlb = registerOutput<PacketMirroringCollectorIlb>('collectorIlb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PacketMirroringCollectorIlb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    enable = registerOutput<String>('enable');
    filter = registerOutput<PacketMirroringFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PacketMirroringFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mirroredResources = registerOutput<PacketMirroringMirroredResources>('mirroredResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PacketMirroringMirroredResources.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    network = registerOutput<PacketMirroringNetwork>('network', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PacketMirroringNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }
}
