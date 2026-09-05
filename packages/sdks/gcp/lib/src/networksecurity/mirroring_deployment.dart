import 'package:pulumi/pulumi.dart' as pulumi;
import 'mirroring_deployment_args.dart';
import 'mirroring_deployment_state.dart';

/// A deployment represents a zonal mirroring backend ready to accept
/// GENEVE-encapsulated replica traffic, e.g. a zonal instance group fronted by
/// an internal passthrough load balancer. Deployments are always part of a
/// global deployment group which represents a global mirroring service.
///
///
/// To get more information about MirroringDeployment, see:
///
/// * [API documentation](https://cloud.google.com/network-security-integration/docs/reference/rest/v1/projects.locations.mirroringDeployments)
/// * How-to Guides
/// * [Mirroring deployment overview](https://cloud.google.com/network-security-integration/docs/out-of-band/deployments-overview)
///
/// ## Example Usage
///
/// ### Network Security Mirroring Deployment Basic
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
///     region: "us-central1",
///     ipCidrRange: "10.1.0.0/16",
///     network: network.name,
/// });
/// const healthCheck = new gcp.compute.RegionHealthCheck("health_check", {
///     name: "example-hc",
///     region: "us-central1",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const backendService = new gcp.compute.RegionBackendService("backend_service", {
///     name: "example-bs",
///     region: "us-central1",
///     healthChecks: healthCheck.id,
///     protocol: "UDP",
///     loadBalancingScheme: "INTERNAL",
/// });
/// const forwardingRule = new gcp.compute.ForwardingRule("forwarding_rule", {
///     name: "example-fwr",
///     region: "us-central1",
///     network: network.name,
///     subnetwork: subnetwork.name,
///     backendService: backendService.id,
///     loadBalancingScheme: "INTERNAL",
///     ports: ["6081"],
///     ipProtocol: "UDP",
///     isMirroringCollector: true,
/// });
/// const deploymentGroup = new gcp.networksecurity.MirroringDeploymentGroup("deployment_group", {
///     mirroringDeploymentGroupId: "example-dg",
///     location: "global",
///     network: network.id,
/// });
/// const _default = new gcp.networksecurity.MirroringDeployment("default", {
///     mirroringDeploymentId: "example-deployment",
///     location: "us-central1-a",
///     forwardingRule: forwardingRule.id,
///     mirroringDeploymentGroup: deploymentGroup.id,
///     description: "some description",
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
///     region="us-central1",
///     ip_cidr_range="10.1.0.0/16",
///     network=network.name)
/// health_check = gcp.compute.RegionHealthCheck("health_check",
///     name="example-hc",
///     region="us-central1",
///     http_health_check={
///         "port": 80,
///     })
/// backend_service = gcp.compute.RegionBackendService("backend_service",
///     name="example-bs",
///     region="us-central1",
///     health_checks=health_check.id,
///     protocol="UDP",
///     load_balancing_scheme="INTERNAL")
/// forwarding_rule = gcp.compute.ForwardingRule("forwarding_rule",
///     name="example-fwr",
///     region="us-central1",
///     network=network.name,
///     subnetwork=subnetwork.name,
///     backend_service=backend_service.id,
///     load_balancing_scheme="INTERNAL",
///     ports=["6081"],
///     ip_protocol="UDP",
///     is_mirroring_collector=True)
/// deployment_group = gcp.networksecurity.MirroringDeploymentGroup("deployment_group",
///     mirroring_deployment_group_id="example-dg",
///     location="global",
///     network=network.id)
/// default = gcp.networksecurity.MirroringDeployment("default",
///     mirroring_deployment_id="example-deployment",
///     location="us-central1-a",
///     forwarding_rule=forwarding_rule.id,
///     mirroring_deployment_group=deployment_group.id,
///     description="some description",
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
///         Region = "us-central1",
///         IpCidrRange = "10.1.0.0/16",
///         Network = network.Name,
///     });
///
///     var healthCheck = new Gcp.Compute.RegionHealthCheck("health_check", new()
///     {
///         Name = "example-hc",
///         Region = "us-central1",
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var backendService = new Gcp.Compute.RegionBackendService("backend_service", new()
///     {
///         Name = "example-bs",
///         Region = "us-central1",
///         HealthChecks = healthCheck.Id,
///         Protocol = "UDP",
///         LoadBalancingScheme = "INTERNAL",
///     });
///
///     var forwardingRule = new Gcp.Compute.ForwardingRule("forwarding_rule", new()
///     {
///         Name = "example-fwr",
///         Region = "us-central1",
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
///     var deploymentGroup = new Gcp.NetworkSecurity.MirroringDeploymentGroup("deployment_group", new()
///     {
///         MirroringDeploymentGroupId = "example-dg",
///         Location = "global",
///         Network = network.Id,
///     });
///
///     var @default = new Gcp.NetworkSecurity.MirroringDeployment("default", new()
///     {
///         MirroringDeploymentId = "example-deployment",
///         Location = "us-central1-a",
///         ForwardingRule = forwardingRule.Id,
///         MirroringDeploymentGroup = deploymentGroup.Id,
///         Description = "some description",
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
/// 			Region:      pulumi.String("us-central1"),
/// 			IpCidrRange: pulumi.String("10.1.0.0/16"),
/// 			Network:     network.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		healthCheck, err := compute.NewRegionHealthCheck(ctx, "health_check", &compute.RegionHealthCheckArgs{
/// 			Name:   pulumi.String("example-hc"),
/// 			Region: pulumi.String("us-central1"),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		backendService, err := compute.NewRegionBackendService(ctx, "backend_service", &compute.RegionBackendServiceArgs{
/// 			Name:                pulumi.String("example-bs"),
/// 			Region:              pulumi.String("us-central1"),
/// 			HealthChecks:        healthCheck.ID().ToIDOutput().ToStringOutput(),
/// 			Protocol:            pulumi.String("UDP"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		forwardingRule, err := compute.NewForwardingRule(ctx, "forwarding_rule", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("example-fwr"),
/// 			Region:              pulumi.String("us-central1"),
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
/// 		deploymentGroup, err := networksecurity.NewMirroringDeploymentGroup(ctx, "deployment_group", &networksecurity.MirroringDeploymentGroupArgs{
/// 			MirroringDeploymentGroupId: pulumi.String("example-dg"),
/// 			Location:                   pulumi.String("global"),
/// 			Network:                    network.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewMirroringDeployment(ctx, "default", &networksecurity.MirroringDeploymentArgs{
/// 			MirroringDeploymentId:    pulumi.String("example-deployment"),
/// 			Location:                 pulumi.String("us-central1-a"),
/// 			ForwardingRule:           forwardingRule.ID().ToIDOutput().ToStringOutput(),
/// 			MirroringDeploymentGroup: deploymentGroup.ID().ToIDOutput().ToStringOutput(),
/// 			Description:              pulumi.String("some description"),
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
///   region        = "us-central1"
///   ip_cidr_range = "10.1.0.0/16"
///   network       = gcp_compute_network.network.name
/// }
/// resource "gcp_compute_regionhealthcheck" "health_check" {
///   name   = "example-hc"
///   region = "us-central1"
///   http_health_check = {
///     port = 80
///   }
/// }
/// resource "gcp_compute_regionbackendservice" "backend_service" {
///   name                  = "example-bs"
///   region                = "us-central1"
///   health_checks         = gcp_compute_regionhealthcheck.health_check.id
///   protocol              = "UDP"
///   load_balancing_scheme = "INTERNAL"
/// }
/// resource "gcp_compute_forwardingrule" "forwarding_rule" {
///   name                   = "example-fwr"
///   region                 = "us-central1"
///   network                = gcp_compute_network.network.name
///   subnetwork             = gcp_compute_subnetwork.subnetwork.name
///   backend_service        = gcp_compute_regionbackendservice.backend_service.id
///   load_balancing_scheme  = "INTERNAL"
///   ports                  = [6081]
///   ip_protocol            = "UDP"
///   is_mirroring_collector = true
/// }
/// resource "gcp_networksecurity_mirroringdeploymentgroup" "deployment_group" {
///   mirroring_deployment_group_id = "example-dg"
///   location                      = "global"
///   network                       = gcp_compute_network.network.id
/// }
/// resource "gcp_networksecurity_mirroringdeployment" "default" {
///   mirroring_deployment_id    = "example-deployment"
///   location                   = "us-central1-a"
///   forwarding_rule            = gcp_compute_forwardingrule.forwarding_rule.id
///   mirroring_deployment_group = gcp_networksecurity_mirroringdeploymentgroup.deployment_group.id
///   description                = "some description"
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
/// import com.pulumi.gcp.networksecurity.MirroringDeploymentGroup;
/// import com.pulumi.gcp.networksecurity.MirroringDeploymentGroupArgs;
/// import com.pulumi.gcp.networksecurity.MirroringDeployment;
/// import com.pulumi.gcp.networksecurity.MirroringDeploymentArgs;
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
///             .region("us-central1")
///             .ipCidrRange("10.1.0.0/16")
///             .network(network.name())
///             .build());
///
///         var healthCheck = new RegionHealthCheck("healthCheck", RegionHealthCheckArgs.builder()
///             .name("example-hc")
///             .region("us-central1")
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var backendService = new RegionBackendService("backendService", RegionBackendServiceArgs.builder()
///             .name("example-bs")
///             .region("us-central1")
///             .healthChecks(healthCheck.id())
///             .protocol("UDP")
///             .loadBalancingScheme("INTERNAL")
///             .build());
///
///         var forwardingRule = new ForwardingRule("forwardingRule", ForwardingRuleArgs.builder()
///             .name("example-fwr")
///             .region("us-central1")
///             .network(network.name())
///             .subnetwork(subnetwork.name())
///             .backendService(backendService.id())
///             .loadBalancingScheme("INTERNAL")
///             .ports("6081")
///             .ipProtocol("UDP")
///             .isMirroringCollector(true)
///             .build());
///
///         var deploymentGroup = new MirroringDeploymentGroup("deploymentGroup", MirroringDeploymentGroupArgs.builder()
///             .mirroringDeploymentGroupId("example-dg")
///             .location("global")
///             .network(network.id())
///             .build());
///
///         var default_ = new MirroringDeployment("default", MirroringDeploymentArgs.builder()
///             .mirroringDeploymentId("example-deployment")
///             .location("us-central1-a")
///             .forwardingRule(forwardingRule.id())
///             .mirroringDeploymentGroup(deploymentGroup.id())
///             .description("some description")
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
///       region: us-central1
///       ipCidrRange: 10.1.0.0/16
///       network: ${network.name}
///   healthCheck:
///     type: gcp:compute:RegionHealthCheck
///     name: health_check
///     properties:
///       name: example-hc
///       region: us-central1
///       httpHealthCheck:
///         port: 80
///   backendService:
///     type: gcp:compute:RegionBackendService
///     name: backend_service
///     properties:
///       name: example-bs
///       region: us-central1
///       healthChecks: ${healthCheck.id}
///       protocol: UDP
///       loadBalancingScheme: INTERNAL
///   forwardingRule:
///     type: gcp:compute:ForwardingRule
///     name: forwarding_rule
///     properties:
///       name: example-fwr
///       region: us-central1
///       network: ${network.name}
///       subnetwork: ${subnetwork.name}
///       backendService: ${backendService.id}
///       loadBalancingScheme: INTERNAL
///       ports:
///         - 6081
///       ipProtocol: UDP
///       isMirroringCollector: true
///   deploymentGroup:
///     type: gcp:networksecurity:MirroringDeploymentGroup
///     name: deployment_group
///     properties:
///       mirroringDeploymentGroupId: example-dg
///       location: global
///       network: ${network.id}
///   default:
///     type: gcp:networksecurity:MirroringDeployment
///     properties:
///       mirroringDeploymentId: example-deployment
///       location: us-central1-a
///       forwardingRule: ${forwardingRule.id}
///       mirroringDeploymentGroup: ${deploymentGroup.id}
///       description: some description
///       labels:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// MirroringDeployment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/mirroringDeployments/{{mirroring_deployment_id}}`
/// * `{{project}}/{{location}}/{{mirroring_deployment_id}}`
/// * `{{location}}/{{mirroring_deployment_id}}`
///
///
/// When using the `pulumi import` command, MirroringDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringDeployment:MirroringDeployment default projects/{{project}}/locations/{{location}}/mirroringDeployments/{{mirroring_deployment_id}}
/// $ pulumi import gcp:networksecurity/mirroringDeployment:MirroringDeployment default {{project}}/{{location}}/{{mirroring_deployment_id}}
/// $ pulumi import gcp:networksecurity/mirroringDeployment:MirroringDeployment default {{location}}/{{mirroring_deployment_id}}
/// ```
class MirroringDeployment extends pulumi.CustomResource {
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
  /// User-provided description of the deployment.
  /// Used as additional context for the deployment.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The regional forwarding rule that fronts the mirroring collectors, for
  /// example: `projects/123456789/regions/us-central1/forwardingRules/my-rule`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<String> forwardingRule;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The cloud location of the deployment, e.g. `us-central1-a` or `asia-south1-b`.
  late final pulumi.Output<String> location;
  /// The deployment group that this deployment is a part of, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<String> mirroringDeploymentGroup;
  /// The ID to use for the new deployment, which will become the final
  /// component of the deployment's resource name.
  late final pulumi.Output<String> mirroringDeploymentId;
  /// The resource name of this deployment, for example:
  /// `projects/123456789/locations/us-central1-a/mirroringDeployments/my-dep`.
  /// See https://google.aip.dev/122 for more details.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This part of the normal
  /// operation (e.g. linking a new association to the parent group).
  /// See https://google.aip.dev/128.
  late final pulumi.Output<bool> reconciling;
  /// The current state of the deployment.
  /// See https://google.aip.dev/216.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// CREATING
  /// DELETING
  /// OUT_OF_SYNC
  /// DELETE_FAILED
  late final pulumi.Output<String> state;
  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MirroringDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MirroringDeployment]. {@macro pulumi_networksecurity_mirroring_deployment_mirroring_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MirroringDeployment(
    String name, {
    MirroringDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/mirroringDeployment:MirroringDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    forwardingRule = registerOutput<String>('forwardingRule');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    mirroringDeploymentGroup = registerOutput<String>('mirroringDeploymentGroup');
    mirroringDeploymentId = registerOutput<String>('mirroringDeploymentId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [MirroringDeployment] resource's state with the given [name] and [id].
  static MirroringDeployment get(
    String name,
    pulumi.Input<String> id, {
    MirroringDeploymentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MirroringDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MirroringDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/mirroringDeployment:MirroringDeployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    forwardingRule = registerOutput<String>('forwardingRule');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    mirroringDeploymentGroup = registerOutput<String>('mirroringDeploymentGroup');
    mirroringDeploymentId = registerOutput<String>('mirroringDeploymentId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [MirroringDeployment] resource.
  MirroringDeployment.reference(String urn)
    : super(
        'gcp:networksecurity/mirroringDeployment:MirroringDeployment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    forwardingRule = registerOutput<String>('forwardingRule');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    mirroringDeploymentGroup = registerOutput<String>('mirroringDeploymentGroup');
    mirroringDeploymentId = registerOutput<String>('mirroringDeploymentId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
