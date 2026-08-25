import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_args.dart';
import 'managed_zone_state.dart';

/// An Integration connectors Managed Zone.
///
///
/// To get more information about ManagedZone, see:
///
/// * [API documentation](https://cloud.google.com/integration-connectors/docs/reference/rest/v1/projects.locations.global.managedZones)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/integration-connectors/docs)
///
/// ## Example Usage
///
/// ### Integration Connectors Managed Zone
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const targetProject = new gcp.organizations.Project("target_project", {
///     projectId: "tf-test_87829",
///     name: "tf-test_44023",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const testProject = gcp.organizations.getProject({});
/// const dnsPeerBinding = new gcp.projects.IAMMember("dns_peer_binding", {
///     project: targetProject.projectId,
///     role: "roles/dns.peer",
///     member: testProject.then(testProject => `serviceAccount:service-${testProject.number}@gcp-sa-connectors.iam.gserviceaccount.com`),
/// });
/// const dns = new gcp.projects.Service("dns", {
///     project: targetProject.projectId,
///     service: "dns.googleapis.com",
/// });
/// const compute = new gcp.projects.Service("compute", {
///     project: targetProject.projectId,
///     service: "compute.googleapis.com",
/// });
/// const network = new gcp.compute.Network("network", {
///     project: targetProject.projectId,
///     name: "test",
///     autoCreateSubnetworks: false,
/// }, {
///     dependsOn: [compute],
/// });
/// const zone = new gcp.dns.ManagedZone("zone", {
///     name: "tf-test-dns_50206",
///     dnsName: "private_9873.example.com.",
///     visibility: "private",
///     privateVisibilityConfig: {
///         networks: [{
///             networkUrl: network.id,
///         }],
///     },
/// }, {
///     dependsOn: [dns],
/// });
/// const testmanagedzone = new gcp.integrationconnectors.ManagedZone("testmanagedzone", {
///     name: "test",
///     description: "tf created description",
///     labels: {
///         intent: "example",
///     },
///     targetProject: targetProject.projectId,
///     targetVpc: "test",
///     dns: zone.dnsName,
/// }, {
///     dependsOn: [
///         dnsPeerBinding,
///         zone,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// target_project = gcp.organizations.Project("target_project",
///     project_id="tf-test_87829",
///     name="tf-test_44023",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// test_project = gcp.organizations.get_project()
/// dns_peer_binding = gcp.projects.IAMMember("dns_peer_binding",
///     project=target_project.project_id,
///     role="roles/dns.peer",
///     member=f"serviceAccount:service-{test_project.number}@gcp-sa-connectors.iam.gserviceaccount.com")
/// dns = gcp.projects.Service("dns",
///     project=target_project.project_id,
///     service="dns.googleapis.com")
/// compute = gcp.projects.Service("compute",
///     project=target_project.project_id,
///     service="compute.googleapis.com")
/// network = gcp.compute.Network("network",
///     project=target_project.project_id,
///     name="test",
///     auto_create_subnetworks=False,
///     opts = pulumi.ResourceOptions(depends_on=[compute]))
/// zone = gcp.dns.ManagedZone("zone",
///     name="tf-test-dns_50206",
///     dns_name="private_9873.example.com.",
///     visibility="private",
///     private_visibility_config={
///         "networks": [{
///             "network_url": network.id,
///         }],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[dns]))
/// testmanagedzone = gcp.integrationconnectors.ManagedZone("testmanagedzone",
///     name="test",
///     description="tf created description",
///     labels={
///         "intent": "example",
///     },
///     target_project=target_project.project_id,
///     target_vpc="test",
///     dns=zone.dns_name,
///     opts = pulumi.ResourceOptions(depends_on=[
///             dns_peer_binding,
///             zone,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var targetProject = new Gcp.Organizations.Project("target_project", new()
///     {
///         ProjectId = "tf-test_87829",
///         Name = "tf-test_44023",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var testProject = Gcp.Organizations.GetProject.Invoke();
///
///     var dnsPeerBinding = new Gcp.Projects.IAMMember("dns_peer_binding", new()
///     {
///         Project = targetProject.ProjectId,
///         Role = "roles/dns.peer",
///         Member = $"serviceAccount:service-{testProject.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-connectors.iam.gserviceaccount.com",
///     });
///
///     var dns = new Gcp.Projects.Service("dns", new()
///     {
///         Project = targetProject.ProjectId,
///         ServiceName = "dns.googleapis.com",
///     });
///
///     var compute = new Gcp.Projects.Service("compute", new()
///     {
///         Project = targetProject.ProjectId,
///         ServiceName = "compute.googleapis.com",
///     });
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Project = targetProject.ProjectId,
///         Name = "test",
///         AutoCreateSubnetworks = false,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             compute,
///         },
///     });
///
///     var zone = new Gcp.Dns.ManagedZone("zone", new()
///     {
///         Name = "tf-test-dns_50206",
///         DnsName = "private_9873.example.com.",
///         Visibility = "private",
///         PrivateVisibilityConfig = new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigArgs
///         {
///             Networks = new[]
///             {
///                 new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigNetworkArgs
///                 {
///                     NetworkUrl = network.Id,
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             dns,
///         },
///     });
///
///     var testmanagedzone = new Gcp.IntegrationConnectors.ManagedZone("testmanagedzone", new()
///     {
///         Name = "test",
///         Description = "tf created description",
///         Labels =
///         {
///             { "intent", "example" },
///         },
///         TargetProject = targetProject.ProjectId,
///         TargetVpc = "test",
///         Dns = zone.DnsName,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             dnsPeerBinding,
///             zone,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/integrationconnectors"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		targetProject, err := organizations.NewProject(ctx, "target_project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("tf-test_87829"),
/// 			Name:           pulumi.String("tf-test_44023"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testProject, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dnsPeerBinding, err := projects.NewIAMMember(ctx, "dns_peer_binding", &projects.IAMMemberArgs{
/// 			Project: targetProject.ProjectId,
/// 			Role:    pulumi.String("roles/dns.peer"),
/// 			Member:  pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-connectors.iam.gserviceaccount.com", testProject.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dns2, err := projects.NewService(ctx, "dns", &projects.ServiceArgs{
/// 			Project: targetProject.ProjectId,
/// 			Service: pulumi.String("dns.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		compute2, err := projects.NewService(ctx, "compute", &projects.ServiceArgs{
/// 			Project: targetProject.ProjectId,
/// 			Service: pulumi.String("compute.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Project:               targetProject.ProjectId,
/// 			Name:                  pulumi.String("test"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			compute2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		zone, err := dns.NewManagedZone(ctx, "zone", &dns.ManagedZoneArgs{
/// 			Name:       pulumi.String("tf-test-dns_50206"),
/// 			DnsName:    pulumi.String("private_9873.example.com."),
/// 			Visibility: pulumi.String("private"),
/// 			PrivateVisibilityConfig: &dns.ManagedZonePrivateVisibilityConfigArgs{
/// 				Networks: dns.ManagedZonePrivateVisibilityConfigNetworkArray{
/// 					&dns.ManagedZonePrivateVisibilityConfigNetworkArgs{
/// 						NetworkUrl: network.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			dns2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = integrationconnectors.NewManagedZone(ctx, "testmanagedzone", &integrationconnectors.ManagedZoneArgs{
/// 			Name:        pulumi.String("test"),
/// 			Description: pulumi.String("tf created description"),
/// 			Labels: pulumi.StringMap{
/// 				"intent": pulumi.String("example"),
/// 			},
/// 			TargetProject: targetProject.ProjectId,
/// 			TargetVpc:     pulumi.String("test"),
/// 			Dns:           zone.DnsName,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			dnsPeerBinding,
/// 			zone,
/// 		}))
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
/// data "gcp_organizations_getproject" "testProject" {
/// }
///
/// resource "gcp_organizations_project" "target_project" {
///   project_id      = "tf-test_87829"
///   name            = "tf-test_44023"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// resource "gcp_projects_iammember" "dns_peer_binding" {
///   project = gcp_organizations_project.target_project.project_id
///   role    = "roles/dns.peer"
///   member  ="serviceAccount:service-${data.gcp_organizations_getproject.testProject.number}@gcp-sa-connectors.iam.gserviceaccount.com"
/// }
/// resource "gcp_projects_service" "dns" {
///   project = gcp_organizations_project.target_project.project_id
///   service = "dns.googleapis.com"
/// }
/// resource "gcp_projects_service" "compute" {
///   project = gcp_organizations_project.target_project.project_id
///   service = "compute.googleapis.com"
/// }
/// resource "gcp_compute_network" "network" {
///   depends_on              = [gcp_projects_service.compute]
///   project                 = gcp_organizations_project.target_project.project_id
///   name                    = "test"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_dns_managedzone" "zone" {
///   depends_on = [gcp_projects_service.dns]
///   name       = "tf-test-dns_50206"
///   dns_name   = "private_9873.example.com."
///   visibility = "private"
///   private_visibility_config = {
///     networks = [{
///       "networkUrl" = gcp_compute_network.network.id
///     }]
///   }
/// }
/// resource "gcp_integrationconnectors_managedzone" "testmanagedzone" {
///   depends_on  = [gcp_projects_iammember.dns_peer_binding, gcp_dns_managedzone.zone]
///   name        = "test"
///   description = "tf created description"
///   labels = {
///     "intent" = "example"
///   }
///   target_project = gcp_organizations_project.target_project.project_id
///   target_vpc     = "test"
///   dns            = gcp_dns_managedzone.zone.dns_name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZonePrivateVisibilityConfigArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZonePrivateVisibilityConfigNetworkArgs;
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
///         var targetProject = new Project("targetProject", ProjectArgs.builder()
///             .projectId("tf-test_87829")
///             .name("tf-test_44023")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         final var testProject = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var dnsPeerBinding = new IAMMember("dnsPeerBinding", IAMMemberArgs.builder()
///             .project(targetProject.projectId())
///             .role("roles/dns.peer")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-connectors.iam.gserviceaccount.com", testProject.number()))
///             .build());
///
///         var dns = new Service("dns", ServiceArgs.builder()
///             .project(targetProject.projectId())
///             .service("dns.googleapis.com")
///             .build());
///
///         var compute = new Service("compute", ServiceArgs.builder()
///             .project(targetProject.projectId())
///             .service("compute.googleapis.com")
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .project(targetProject.projectId())
///             .name("test")
///             .autoCreateSubnetworks(false)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(compute)
///                 .build());
///
///         var zone = new com.pulumi.gcp.dns.ManagedZone("zone", com.pulumi.gcp.dns.ManagedZoneArgs.builder()
///             .name("tf-test-dns_50206")
///             .dnsName("private_9873.example.com.")
///             .visibility("private")
///             .privateVisibilityConfig(ManagedZonePrivateVisibilityConfigArgs.builder()
///                 .networks(ManagedZonePrivateVisibilityConfigNetworkArgs.builder()
///                     .networkUrl(network.id())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(dns)
///                 .build());
///
///         var testmanagedzone = new com.pulumi.gcp.integrationconnectors.ManagedZone("testmanagedzone", com.pulumi.gcp.integrationconnectors.ManagedZoneArgs.builder()
///             .name("test")
///             .description("tf created description")
///             .labels(Map.of("intent", "example"))
///             .targetProject(targetProject.projectId())
///             .targetVpc("test")
///             .dns(zone.dnsName())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     dnsPeerBinding,
///                     zone)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   targetProject:
///     type: gcp:organizations:Project
///     name: target_project
///     properties:
///       projectId: tf-test_87829
///       name: tf-test_44023
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   dnsPeerBinding:
///     type: gcp:projects:IAMMember
///     name: dns_peer_binding
///     properties:
///       project: ${targetProject.projectId}
///       role: roles/dns.peer
///       member: serviceAccount:service-${testProject.number}@gcp-sa-connectors.iam.gserviceaccount.com
///   dns:
///     type: gcp:projects:Service
///     properties:
///       project: ${targetProject.projectId}
///       service: dns.googleapis.com
///   compute:
///     type: gcp:projects:Service
///     properties:
///       project: ${targetProject.projectId}
///       service: compute.googleapis.com
///   network:
///     type: gcp:compute:Network
///     properties:
///       project: ${targetProject.projectId}
///       name: test
///       autoCreateSubnetworks: false
///     options:
///       dependsOn:
///         - ${compute}
///   zone:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: tf-test-dns_50206
///       dnsName: private_9873.example.com.
///       visibility: private
///       privateVisibilityConfig:
///         networks:
///           - networkUrl: ${network.id}
///     options:
///       dependsOn:
///         - ${dns}
///   testmanagedzone:
///     type: gcp:integrationconnectors:ManagedZone
///     properties:
///       name: test
///       description: tf created description
///       labels:
///         intent: example
///       targetProject: ${targetProject.projectId}
///       targetVpc: test
///       dns: ${zone.dnsName}
///     options:
///       dependsOn:
///         - ${dnsPeerBinding}
///         - ${zone}
/// variables:
///   testProject:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ManagedZone can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/managedZones/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, ManagedZone can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:integrationconnectors/managedZone:ManagedZone default projects/{{project}}/locations/global/managedZones/{{name}}
/// $ pulumi import gcp:integrationconnectors/managedZone:ManagedZone default {{project}}/{{name}}
/// $ pulumi import gcp:integrationconnectors/managedZone:ManagedZone default {{name}}
/// ```
class ManagedZone extends pulumi.CustomResource {
  /// Time the Namespace was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description of the resource.
  late final pulumi.Output<String?> description;
  /// DNS Name of the resource.
  late final pulumi.Output<String> dns;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Name of Managed Zone needs to be created.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The name of the Target Project.
  late final pulumi.Output<String> targetProject;
  /// The name of the Target Project VPC Network.
  late final pulumi.Output<String> targetVpc;
  /// Time the Namespace was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ManagedZone].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedZone]. {@macro pulumi_integrationconnectors_managed_zone_managed_zone_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedZone(
    String name, {
    ManagedZoneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:integrationconnectors/managedZone:ManagedZone',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    dns = registerOutput<String>('dns');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    targetProject = registerOutput<String>('targetProject');
    targetVpc = registerOutput<String>('targetVpc');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [ManagedZone] resource's state with the given [name] and [id].
  static ManagedZone get(
    String name,
    pulumi.Input<String> id, {
    ManagedZoneState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ManagedZone._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ManagedZone._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:integrationconnectors/managedZone:ManagedZone',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    dns = registerOutput<String>('dns');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    targetProject = registerOutput<String>('targetProject');
    targetVpc = registerOutput<String>('targetVpc');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [ManagedZone] resource.
  ManagedZone.reference(String urn)
    : super(
        'gcp:integrationconnectors/managedZone:ManagedZone',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    dns = registerOutput<String>('dns');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    targetProject = registerOutput<String>('targetProject');
    targetVpc = registerOutput<String>('targetVpc');
    updateTime = registerOutput<String>('updateTime');
  }
}
