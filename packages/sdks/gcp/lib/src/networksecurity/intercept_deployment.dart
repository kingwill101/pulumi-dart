import 'package:pulumi/pulumi.dart' as pulumi;
import 'intercept_deployment_args.dart';
import 'intercept_deployment_state.dart';

/// A deployment represents a zonal intercept backend ready to accept
/// GENEVE-encapsulated traffic, e.g. a zonal instance group fronted by an
/// internal passthrough load balancer. Deployments are always part of a
/// global deployment group which represents a global intercept service.
///
///
///
/// ## Example Usage
///
/// ### Network Security Intercept Deployment Basic
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
/// });
/// const deploymentGroup = new gcp.networksecurity.InterceptDeploymentGroup("deployment_group", {
///     interceptDeploymentGroupId: "example-dg",
///     location: "global",
///     network: network.id,
/// });
/// const _default = new gcp.networksecurity.InterceptDeployment("default", {
///     interceptDeploymentId: "example-deployment",
///     location: "us-central1-a",
///     forwardingRule: forwardingRule.id,
///     interceptDeploymentGroup: deploymentGroup.id,
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
///     ip_protocol="UDP")
/// deployment_group = gcp.networksecurity.InterceptDeploymentGroup("deployment_group",
///     intercept_deployment_group_id="example-dg",
///     location="global",
///     network=network.id)
/// default = gcp.networksecurity.InterceptDeployment("default",
///     intercept_deployment_id="example-deployment",
///     location="us-central1-a",
///     forwarding_rule=forwarding_rule.id,
///     intercept_deployment_group=deployment_group.id,
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
///     });
///
///     var deploymentGroup = new Gcp.NetworkSecurity.InterceptDeploymentGroup("deployment_group", new()
///     {
///         InterceptDeploymentGroupId = "example-dg",
///         Location = "global",
///         Network = network.Id,
///     });
///
///     var @default = new Gcp.NetworkSecurity.InterceptDeployment("default", new()
///     {
///         InterceptDeploymentId = "example-deployment",
///         Location = "us-central1-a",
///         ForwardingRule = forwardingRule.Id,
///         InterceptDeploymentGroup = deploymentGroup.Id,
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
/// 			HealthChecks:        healthCheck.ID(),
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
/// 			BackendService:      backendService.ID(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL"),
/// 			Ports: pulumi.StringArray{
/// 				pulumi.String("6081"),
/// 			},
/// 			IpProtocol: pulumi.String("UDP"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		deploymentGroup, err := networksecurity.NewInterceptDeploymentGroup(ctx, "deployment_group", &networksecurity.InterceptDeploymentGroupArgs{
/// 			InterceptDeploymentGroupId: pulumi.String("example-dg"),
/// 			Location:                   pulumi.String("global"),
/// 			Network:                    network.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewInterceptDeployment(ctx, "default", &networksecurity.InterceptDeploymentArgs{
/// 			InterceptDeploymentId:    pulumi.String("example-deployment"),
/// 			Location:                 pulumi.String("us-central1-a"),
/// 			ForwardingRule:           forwardingRule.ID(),
/// 			InterceptDeploymentGroup: deploymentGroup.ID(),
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
/// import com.pulumi.gcp.networksecurity.InterceptDeploymentGroup;
/// import com.pulumi.gcp.networksecurity.InterceptDeploymentGroupArgs;
/// import com.pulumi.gcp.networksecurity.InterceptDeployment;
/// import com.pulumi.gcp.networksecurity.InterceptDeploymentArgs;
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
///             .build());
///
///         var deploymentGroup = new InterceptDeploymentGroup("deploymentGroup", InterceptDeploymentGroupArgs.builder()
///             .interceptDeploymentGroupId("example-dg")
///             .location("global")
///             .network(network.id())
///             .build());
///
///         var default_ = new InterceptDeployment("default", InterceptDeploymentArgs.builder()
///             .interceptDeploymentId("example-deployment")
///             .location("us-central1-a")
///             .forwardingRule(forwardingRule.id())
///             .interceptDeploymentGroup(deploymentGroup.id())
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
///   deploymentGroup:
///     type: gcp:networksecurity:InterceptDeploymentGroup
///     name: deployment_group
///     properties:
///       interceptDeploymentGroupId: example-dg
///       location: global
///       network: ${network.id}
///   default:
///     type: gcp:networksecurity:InterceptDeployment
///     properties:
///       interceptDeploymentId: example-deployment
///       location: us-central1-a
///       forwardingRule: ${forwardingRule.id}
///       interceptDeploymentGroup: ${deploymentGroup.id}
///       description: some description
///       labels:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// InterceptDeployment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/interceptDeployments/{{intercept_deployment_id}}`
///
/// * `{{project}}/{{location}}/{{intercept_deployment_id}}`
///
/// * `{{location}}/{{intercept_deployment_id}}`
///
/// When using the `pulumi import` command, InterceptDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptDeployment:InterceptDeployment default projects/{{project}}/locations/{{location}}/interceptDeployments/{{intercept_deployment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptDeployment:InterceptDeployment default {{project}}/{{location}}/{{intercept_deployment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptDeployment:InterceptDeployment default {{location}}/{{intercept_deployment_id}}
/// ```
class InterceptDeployment extends pulumi.CustomResource {
  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> createTime;
  /// User-provided description of the deployment.
  /// Used as additional context for the deployment.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The regional forwarding rule that fronts the interceptors, for example:
  /// `projects/123456789/regions/us-central1/forwardingRules/my-rule`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<String> forwardingRule;
  /// The deployment group that this deployment is a part of, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<String> interceptDeploymentGroup;
  /// The ID to use for the new deployment, which will become the final
  /// component of the deployment's resource name.
  late final pulumi.Output<String> interceptDeploymentId;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The cloud location of the deployment, e.g. `us-central1-a` or `asia-south1-b`.
  late final pulumi.Output<String> location;
  /// The resource name of this deployment, for example:
  /// `projects/123456789/locations/us-central1-a/interceptDeployments/my-dep`.
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

  /// Creates a new [InterceptDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InterceptDeployment]. {@macro pulumi_networksecurity_intercept_deployment_intercept_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InterceptDeployment(
    String name, {
    InterceptDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/interceptDeployment:InterceptDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.forwardingRule = registerOutput<String>('forwardingRule');
    this.interceptDeploymentGroup = registerOutput<String>('interceptDeploymentGroup');
    this.interceptDeploymentId = registerOutput<String>('interceptDeploymentId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [InterceptDeployment] resource's state with the given [name] and [id].
  static InterceptDeployment get(
    String name,
    pulumi.Input<String> id, {
    InterceptDeploymentState? state,
  }) {
    return InterceptDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InterceptDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/interceptDeployment:InterceptDeployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.forwardingRule = registerOutput<String>('forwardingRule');
    this.interceptDeploymentGroup = registerOutput<String>('interceptDeploymentGroup');
    this.interceptDeploymentId = registerOutput<String>('interceptDeploymentId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
