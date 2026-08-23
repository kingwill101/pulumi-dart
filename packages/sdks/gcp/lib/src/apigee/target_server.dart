import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_server_args.dart';
import 'target_server_ssl_info.dart';
import 'target_server_state.dart';

/// TargetServer configuration. TargetServers are used to decouple a proxy TargetEndpoint HTTPTargetConnections from concrete URLs for backend services.
///
///
/// To get more information about TargetServer, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.targetservers/create)
/// * How-to Guides
/// * [Load balancing across backend servers](https://cloud.google.com/apigee/docs/api-platform/deploy/load-balancing-across-backend-servers)
///
/// ## Example Usage
///
/// ### Apigee Target Server Test Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "my-project",
///     name: "my-project",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const apigee = new gcp.projects.Service("apigee", {
///     project: project.projectId,
///     service: "apigee.googleapis.com",
/// });
/// const servicenetworking = new gcp.projects.Service("servicenetworking", {
///     project: project.projectId,
///     service: "servicenetworking.googleapis.com",
/// }, {
///     dependsOn: [apigee],
/// });
/// const compute = new gcp.projects.Service("compute", {
///     project: project.projectId,
///     service: "compute.googleapis.com",
/// }, {
///     dependsOn: [servicenetworking],
/// });
/// const apigeeNetwork = new gcp.compute.Network("apigee_network", {
///     name: "apigee-network",
///     project: project.projectId,
/// }, {
///     dependsOn: [compute],
/// });
/// const apigeeRange = new gcp.compute.GlobalAddress("apigee_range", {
///     name: "apigee-range",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 16,
///     network: apigeeNetwork.id,
///     project: project.projectId,
/// });
/// const apigeeVpcConnection = new gcp.servicenetworking.Connection("apigee_vpc_connection", {
///     network: apigeeNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [apigeeRange.name],
/// }, {
///     dependsOn: [servicenetworking],
/// });
/// const apigeeOrg = new gcp.apigee.Organization("apigee_org", {
///     analyticsRegion: "us-central1",
///     projectId: project.projectId,
///     authorizedNetwork: apigeeNetwork.id,
/// }, {
///     dependsOn: [
///         apigeeVpcConnection,
///         apigee,
///     ],
/// });
/// const apigeeEnvironment = new gcp.apigee.Environment("apigee_environment", {
///     orgId: apigeeOrg.id,
///     name: "my-environment-name",
///     description: "Apigee Environment",
///     displayName: "environment-1",
/// });
/// const apigeeTargetServer = new gcp.apigee.TargetServer("apigee_target_server", {
///     name: "my-target-server",
///     description: "Apigee Target Server",
///     protocol: "HTTP",
///     host: "abc.foo.com",
///     port: 8080,
///     envId: apigeeEnvironment.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.Project("project",
///     project_id="my-project",
///     name="my-project",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// apigee = gcp.projects.Service("apigee",
///     project=project.project_id,
///     service="apigee.googleapis.com")
/// servicenetworking = gcp.projects.Service("servicenetworking",
///     project=project.project_id,
///     service="servicenetworking.googleapis.com",
///     opts = pulumi.ResourceOptions(depends_on=[apigee]))
/// compute = gcp.projects.Service("compute",
///     project=project.project_id,
///     service="compute.googleapis.com",
///     opts = pulumi.ResourceOptions(depends_on=[servicenetworking]))
/// apigee_network = gcp.compute.Network("apigee_network",
///     name="apigee-network",
///     project=project.project_id,
///     opts = pulumi.ResourceOptions(depends_on=[compute]))
/// apigee_range = gcp.compute.GlobalAddress("apigee_range",
///     name="apigee-range",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=16,
///     network=apigee_network.id,
///     project=project.project_id)
/// apigee_vpc_connection = gcp.servicenetworking.Connection("apigee_vpc_connection",
///     network=apigee_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[apigee_range.name],
///     opts = pulumi.ResourceOptions(depends_on=[servicenetworking]))
/// apigee_org = gcp.apigee.Organization("apigee_org",
///     analytics_region="us-central1",
///     project_id=project.project_id,
///     authorized_network=apigee_network.id,
///     opts = pulumi.ResourceOptions(depends_on=[
///             apigee_vpc_connection,
///             apigee,
///         ]))
/// apigee_environment = gcp.apigee.Environment("apigee_environment",
///     org_id=apigee_org.id,
///     name="my-environment-name",
///     description="Apigee Environment",
///     display_name="environment-1")
/// apigee_target_server = gcp.apigee.TargetServer("apigee_target_server",
///     name="my-target-server",
///     description="Apigee Target Server",
///     protocol="HTTP",
///     host="abc.foo.com",
///     port=8080,
///     env_id=apigee_environment.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "my-project",
///         Name = "my-project",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var apigee = new Gcp.Projects.Service("apigee", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "apigee.googleapis.com",
///     });
///
///     var servicenetworking = new Gcp.Projects.Service("servicenetworking", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "servicenetworking.googleapis.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigee,
///         },
///     });
///
///     var compute = new Gcp.Projects.Service("compute", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "compute.googleapis.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             servicenetworking,
///         },
///     });
///
///     var apigeeNetwork = new Gcp.Compute.Network("apigee_network", new()
///     {
///         Name = "apigee-network",
///         Project = project.ProjectId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             compute,
///         },
///     });
///
///     var apigeeRange = new Gcp.Compute.GlobalAddress("apigee_range", new()
///     {
///         Name = "apigee-range",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 16,
///         Network = apigeeNetwork.Id,
///         Project = project.ProjectId,
///     });
///
///     var apigeeVpcConnection = new Gcp.ServiceNetworking.Connection("apigee_vpc_connection", new()
///     {
///         Network = apigeeNetwork.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             apigeeRange.Name,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             servicenetworking,
///         },
///     });
///
///     var apigeeOrg = new Gcp.Apigee.Organization("apigee_org", new()
///     {
///         AnalyticsRegion = "us-central1",
///         ProjectId = project.ProjectId,
///         AuthorizedNetwork = apigeeNetwork.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigeeVpcConnection,
///             apigee,
///         },
///     });
///
///     var apigeeEnvironment = new Gcp.Apigee.Environment("apigee_environment", new()
///     {
///         OrgId = apigeeOrg.Id,
///         Name = "my-environment-name",
///         Description = "Apigee Environment",
///         DisplayName = "environment-1",
///     });
///
///     var apigeeTargetServer = new Gcp.Apigee.TargetServer("apigee_target_server", new()
///     {
///         Name = "my-target-server",
///         Description = "Apigee Target Server",
///         Protocol = "HTTP",
///         Host = "abc.foo.com",
///         Port = 8080,
///         EnvId = apigeeEnvironment.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("my-project"),
/// 			Name:           pulumi.String("my-project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigee2, err := projects.NewService(ctx, "apigee", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("apigee.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		servicenetworking2, err := projects.NewService(ctx, "servicenetworking", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigee2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		compute2, err := projects.NewService(ctx, "compute", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("compute.googleapis.com"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			servicenetworking2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeNetwork, err := compute.NewNetwork(ctx, "apigee_network", &compute.NetworkArgs{
/// 			Name:    pulumi.String("apigee-network"),
/// 			Project: project.ProjectId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			compute2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeRange, err := compute.NewGlobalAddress(ctx, "apigee_range", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("apigee-range"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Project:      project.ProjectId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeVpcConnection, err := servicenetworking.NewConnection(ctx, "apigee_vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				apigeeRange.Name,
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			servicenetworking2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeOrg, err := apigee.NewOrganization(ctx, "apigee_org", &apigee.OrganizationArgs{
/// 			AnalyticsRegion:   pulumi.String("us-central1"),
/// 			ProjectId:         project.ProjectId,
/// 			AuthorizedNetwork: apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeVpcConnection,
/// 			apigee2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeEnvironment, err := apigee.NewEnvironment(ctx, "apigee_environment", &apigee.EnvironmentArgs{
/// 			OrgId:       apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 			Name:        pulumi.String("my-environment-name"),
/// 			Description: pulumi.String("Apigee Environment"),
/// 			DisplayName: pulumi.String("environment-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewTargetServer(ctx, "apigee_target_server", &apigee.TargetServerArgs{
/// 			Name:        pulumi.String("my-target-server"),
/// 			Description: pulumi.String("Apigee Target Server"),
/// 			Protocol:    pulumi.String("HTTP"),
/// 			Host:        pulumi.String("abc.foo.com"),
/// 			Port:        pulumi.Int(8080),
/// 			EnvId:       apigeeEnvironment.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_organizations_project" "project" {
///   project_id      = "my-project"
///   name            = "my-project"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// resource "gcp_projects_service" "apigee" {
///   project = gcp_organizations_project.project.project_id
///   service = "apigee.googleapis.com"
/// }
/// resource "gcp_projects_service" "servicenetworking" {
///   depends_on = [gcp_projects_service.apigee]
///   project    = gcp_organizations_project.project.project_id
///   service    = "servicenetworking.googleapis.com"
/// }
/// resource "gcp_projects_service" "compute" {
///   depends_on = [gcp_projects_service.servicenetworking]
///   project    = gcp_organizations_project.project.project_id
///   service    = "compute.googleapis.com"
/// }
/// resource "gcp_compute_network" "apigee_network" {
///   depends_on = [gcp_projects_service.compute]
///   name       = "apigee-network"
///   project    = gcp_organizations_project.project.project_id
/// }
/// resource "gcp_compute_globaladdress" "apigee_range" {
///   name          = "apigee-range"
///   purpose       = "VPC_PEERING"
///   address_type  = "INTERNAL"
///   prefix_length = 16
///   network       = gcp_compute_network.apigee_network.id
///   project       = gcp_organizations_project.project.project_id
/// }
/// resource "gcp_servicenetworking_connection" "apigee_vpc_connection" {
///   depends_on              = [gcp_projects_service.servicenetworking]
///   network                 = gcp_compute_network.apigee_network.id
///   service                 = "servicenetworking.googleapis.com"
///   reserved_peering_ranges = [gcp_compute_globaladdress.apigee_range.name]
/// }
/// resource "gcp_apigee_organization" "apigee_org" {
///   depends_on         = [gcp_servicenetworking_connection.apigee_vpc_connection, gcp_projects_service.apigee]
///   analytics_region   = "us-central1"
///   project_id         = gcp_organizations_project.project.project_id
///   authorized_network = gcp_compute_network.apigee_network.id
/// }
/// resource "gcp_apigee_environment" "apigee_environment" {
///   org_id       = gcp_apigee_organization.apigee_org.id
///   name         = "my-environment-name"
///   description  = "Apigee Environment"
///   display_name = "environment-1"
/// }
/// resource "gcp_apigee_targetserver" "apigee_target_server" {
///   name        = "my-target-server"
///   description = "Apigee Target Server"
///   protocol    = "HTTP"
///   host        = "abc.foo.com"
///   port        = 8080
///   env_id      = gcp_apigee_environment.apigee_environment.id
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
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
/// import com.pulumi.gcp.apigee.Environment;
/// import com.pulumi.gcp.apigee.EnvironmentArgs;
/// import com.pulumi.gcp.apigee.TargetServer;
/// import com.pulumi.gcp.apigee.TargetServerArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("my-project")
///             .name("my-project")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var apigee = new Service("apigee", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("apigee.googleapis.com")
///             .build());
///
///         var servicenetworking = new Service("servicenetworking", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("servicenetworking.googleapis.com")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apigee)
///                 .build());
///
///         var compute = new Service("compute", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("compute.googleapis.com")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(servicenetworking)
///                 .build());
///
///         var apigeeNetwork = new Network("apigeeNetwork", NetworkArgs.builder()
///             .name("apigee-network")
///             .project(project.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(compute)
///                 .build());
///
///         var apigeeRange = new GlobalAddress("apigeeRange", GlobalAddressArgs.builder()
///             .name("apigee-range")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(16)
///             .network(apigeeNetwork.id())
///             .project(project.projectId())
///             .build());
///
///         var apigeeVpcConnection = new Connection("apigeeVpcConnection", ConnectionArgs.builder()
///             .network(apigeeNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(apigeeRange.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(servicenetworking)
///                 .build());
///
///         var apigeeOrg = new Organization("apigeeOrg", OrganizationArgs.builder()
///             .analyticsRegion("us-central1")
///             .projectId(project.projectId())
///             .authorizedNetwork(apigeeNetwork.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     apigeeVpcConnection,
///                     apigee)
///                 .build());
///
///         var apigeeEnvironment = new Environment("apigeeEnvironment", EnvironmentArgs.builder()
///             .orgId(apigeeOrg.id())
///             .name("my-environment-name")
///             .description("Apigee Environment")
///             .displayName("environment-1")
///             .build());
///
///         var apigeeTargetServer = new TargetServer("apigeeTargetServer", TargetServerArgs.builder()
///             .name("my-target-server")
///             .description("Apigee Target Server")
///             .protocol("HTTP")
///             .host("abc.foo.com")
///             .port(8080)
///             .envId(apigeeEnvironment.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: my-project
///       name: my-project
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   apigee:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: apigee.googleapis.com
///   servicenetworking:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: servicenetworking.googleapis.com
///     options:
///       dependsOn:
///         - ${apigee}
///   compute:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: compute.googleapis.com
///     options:
///       dependsOn:
///         - ${servicenetworking}
///   apigeeNetwork:
///     type: gcp:compute:Network
///     name: apigee_network
///     properties:
///       name: apigee-network
///       project: ${project.projectId}
///     options:
///       dependsOn:
///         - ${compute}
///   apigeeRange:
///     type: gcp:compute:GlobalAddress
///     name: apigee_range
///     properties:
///       name: apigee-range
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 16
///       network: ${apigeeNetwork.id}
///       project: ${project.projectId}
///   apigeeVpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: apigee_vpc_connection
///     properties:
///       network: ${apigeeNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${apigeeRange.name}
///     options:
///       dependsOn:
///         - ${servicenetworking}
///   apigeeOrg:
///     type: gcp:apigee:Organization
///     name: apigee_org
///     properties:
///       analyticsRegion: us-central1
///       projectId: ${project.projectId}
///       authorizedNetwork: ${apigeeNetwork.id}
///     options:
///       dependsOn:
///         - ${apigeeVpcConnection}
///         - ${apigee}
///   apigeeEnvironment:
///     type: gcp:apigee:Environment
///     name: apigee_environment
///     properties:
///       orgId: ${apigeeOrg.id}
///       name: my-environment-name
///       description: Apigee Environment
///       displayName: environment-1
///   apigeeTargetServer:
///     type: gcp:apigee:TargetServer
///     name: apigee_target_server
///     properties:
///       name: my-target-server
///       description: Apigee Target Server
///       protocol: HTTP
///       host: abc.foo.com
///       port: 8080
///       envId: ${apigeeEnvironment.id}
/// ```
///
///
/// ## Import
///
/// TargetServer can be imported using any of these accepted formats:
///
/// * `{{env_id}}/targetservers/{{name}}`
/// * `{{env_id}}/{{name}}`
///
///
/// When using the `pulumi import` command, TargetServer can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/targetServer:TargetServer default {{env_id}}/targetservers/{{name}}
/// $ pulumi import gcp:apigee/targetServer:TargetServer default {{env_id}}/{{name}}
/// ```
class TargetServer extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A human-readable description of this TargetServer.
  late final pulumi.Output<String?> description;
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  late final pulumi.Output<String> envId;
  /// The host name this target connects to. Value must be a valid hostname as described by RFC-1123.
  late final pulumi.Output<String> host;
  /// Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true.
  late final pulumi.Output<bool?> isEnabled;
  /// The resource id of this reference. Values must match the regular expression [\w\s-.]+.
  late final pulumi.Output<String> name;
  /// The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.
  late final pulumi.Output<int> port;
  /// Immutable. The protocol used by this TargetServer.
  /// Possible values are: `HTTP`, `HTTP2`, `GRPC_TARGET`, `GRPC`, `EXTERNAL_CALLOUT`.
  late final pulumi.Output<String> protocol;
  /// Specifies TLS configuration info for this TargetServer. The JSON name is sSLInfo for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration.
  /// Structure is documented below.
  late final pulumi.Output<TargetServerSSlInfo?> sSlInfo;

  /// Creates a new [TargetServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetServer]. {@macro pulumi_apigee_target_server_target_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetServer(
    String name, {
    TargetServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/targetServer:TargetServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    envId = registerOutput<String>('envId');
    host = registerOutput<String>('host');
    isEnabled = registerOutput<bool?>('isEnabled');
    this.name = registerOutput<String>('name');
    port = registerOutput<int>('port');
    protocol = registerOutput<String>('protocol');
    sSlInfo = registerOutput<TargetServerSSlInfo?>('sSlInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetServerSSlInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [TargetServer] resource's state with the given [name] and [id].
  static TargetServer get(
    String name,
    pulumi.Input<String> id, {
    TargetServerState? state,
  }) {
    return TargetServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TargetServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/targetServer:TargetServer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    envId = registerOutput<String>('envId');
    host = registerOutput<String>('host');
    isEnabled = registerOutput<bool?>('isEnabled');
    this.name = registerOutput<String>('name');
    port = registerOutput<int>('port');
    protocol = registerOutput<String>('protocol');
    sSlInfo = registerOutput<TargetServerSSlInfo?>('sSlInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetServerSSlInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
