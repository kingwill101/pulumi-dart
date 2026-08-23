import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_gateway_args.dart';
import 'agent_gateway_google_managed.dart';
import 'agent_gateway_network_config.dart';
import 'agent_gateway_self_managed.dart';
import 'agent_gateway_state.dart';

/// AgentGateway represents the agent gateway resource.
///
///
/// To get more information about AgentGateway, see:
///
/// * [API documentation](https://cloud.google.com/network-services/docs/reference/network-services/rest/v1/projects.locations.agentGateways)
///
/// ## Example Usage
///
/// ### Network Services Agent Gateway Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const agentRegistry = new gcp.projects.Service("agent_registry", {
///     service: "agentregistry.googleapis.com",
///     disableOnDestroy: false,
/// });
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "my-gateway-network",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "my-gateway-subnetwork",
///     region: "us-central1",
///     network: defaultNetwork.id,
///     ipCidrRange: "10.0.0.0/16",
/// });
/// const defaultNetworkAttachment = new gcp.compute.NetworkAttachment("default", {
///     name: "my-gateway-attachment",
///     region: "us-central1",
///     connectionPreference: "ACCEPT_MANUAL",
///     subnetworks: [defaultSubnetwork.id],
/// });
/// const defaultManagedZone = new gcp.dns.ManagedZone("default", {
///     name: "my-gateway-zone",
///     dnsName: "example.com.",
///     description: "Private zone used by AgentGateway DNS peering",
///     visibility: "private",
///     privateVisibilityConfig: {
///         networks: [{
///             networkUrl: defaultNetwork.id,
///         }],
///     },
/// });
/// const _default = new gcp.networkservices.AgentGateway("default", {
///     name: "my-full-agent-gateway",
///     location: "us-central1",
///     description: "A full configuration for Agent Gateway",
///     labels: {
///         env: "test",
///         tier: "gold",
///     },
///     protocols: ["MCP"],
///     googleManaged: {
///         governedAccessPath: "AGENT_TO_ANYWHERE",
///     },
///     registries: ["//agentregistry.googleapis.com/projects/my-project-name/locations/us-central1"],
///     networkConfig: {
///         egress: {
///             networkAttachment: defaultNetworkAttachment.id,
///         },
///         dnsPeeringConfig: {
///             domains: [defaultManagedZone.dnsName],
///             targetProject: project.then(project => project.projectId),
///             targetNetwork: defaultNetwork.id,
///         },
///     },
/// }, {
///     dependsOn: [agentRegistry],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// agent_registry = gcp.projects.Service("agent_registry",
///     service="agentregistry.googleapis.com",
///     disable_on_destroy=False)
/// default_network = gcp.compute.Network("default",
///     name="my-gateway-network",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="my-gateway-subnetwork",
///     region="us-central1",
///     network=default_network.id,
///     ip_cidr_range="10.0.0.0/16")
/// default_network_attachment = gcp.compute.NetworkAttachment("default",
///     name="my-gateway-attachment",
///     region="us-central1",
///     connection_preference="ACCEPT_MANUAL",
///     subnetworks=[default_subnetwork.id])
/// default_managed_zone = gcp.dns.ManagedZone("default",
///     name="my-gateway-zone",
///     dns_name="example.com.",
///     description="Private zone used by AgentGateway DNS peering",
///     visibility="private",
///     private_visibility_config={
///         "networks": [{
///             "network_url": default_network.id,
///         }],
///     })
/// default = gcp.networkservices.AgentGateway("default",
///     name="my-full-agent-gateway",
///     location="us-central1",
///     description="A full configuration for Agent Gateway",
///     labels={
///         "env": "test",
///         "tier": "gold",
///     },
///     protocols=["MCP"],
///     google_managed={
///         "governed_access_path": "AGENT_TO_ANYWHERE",
///     },
///     registries=["//agentregistry.googleapis.com/projects/my-project-name/locations/us-central1"],
///     network_config={
///         "egress": {
///             "network_attachment": default_network_attachment.id,
///         },
///         "dns_peering_config": {
///             "domains": [default_managed_zone.dns_name],
///             "target_project": project.project_id,
///             "target_network": default_network.id,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[agent_registry]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var agentRegistry = new Gcp.Projects.Service("agent_registry", new()
///     {
///         ServiceName = "agentregistry.googleapis.com",
///         DisableOnDestroy = false,
///     });
///
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "my-gateway-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "my-gateway-subnetwork",
///         Region = "us-central1",
///         Network = defaultNetwork.Id,
///         IpCidrRange = "10.0.0.0/16",
///     });
///
///     var defaultNetworkAttachment = new Gcp.Compute.NetworkAttachment("default", new()
///     {
///         Name = "my-gateway-attachment",
///         Region = "us-central1",
///         ConnectionPreference = "ACCEPT_MANUAL",
///         Subnetworks = new[]
///         {
///             defaultSubnetwork.Id,
///         },
///     });
///
///     var defaultManagedZone = new Gcp.Dns.ManagedZone("default", new()
///     {
///         Name = "my-gateway-zone",
///         DnsName = "example.com.",
///         Description = "Private zone used by AgentGateway DNS peering",
///         Visibility = "private",
///         PrivateVisibilityConfig = new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigArgs
///         {
///             Networks = new[]
///             {
///                 new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigNetworkArgs
///                 {
///                     NetworkUrl = defaultNetwork.Id,
///                 },
///             },
///         },
///     });
///
///     var @default = new Gcp.NetworkServices.AgentGateway("default", new()
///     {
///         Name = "my-full-agent-gateway",
///         Location = "us-central1",
///         Description = "A full configuration for Agent Gateway",
///         Labels =
///         {
///             { "env", "test" },
///             { "tier", "gold" },
///         },
///         Protocols = new[]
///         {
///             "MCP",
///         },
///         GoogleManaged = new Gcp.NetworkServices.Inputs.AgentGatewayGoogleManagedArgs
///         {
///             GovernedAccessPath = "AGENT_TO_ANYWHERE",
///         },
///         Registries = new[]
///         {
///             "//agentregistry.googleapis.com/projects/my-project-name/locations/us-central1",
///         },
///         NetworkConfig = new Gcp.NetworkServices.Inputs.AgentGatewayNetworkConfigArgs
///         {
///             Egress = new Gcp.NetworkServices.Inputs.AgentGatewayNetworkConfigEgressArgs
///             {
///                 NetworkAttachment = defaultNetworkAttachment.Id,
///             },
///             DnsPeeringConfig = new Gcp.NetworkServices.Inputs.AgentGatewayNetworkConfigDnsPeeringConfigArgs
///             {
///                 Domains = new[]
///                 {
///                     defaultManagedZone.DnsName,
///                 },
///                 TargetProject = project.Apply(getProjectResult => getProjectResult.ProjectId),
///                 TargetNetwork = defaultNetwork.Id,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             agentRegistry,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		agentRegistry, err := projects.NewService(ctx, "agent_registry", &projects.ServiceArgs{
/// 			Service:          pulumi.String("agentregistry.googleapis.com"),
/// 			DisableOnDestroy: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-gateway-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-gateway-subnetwork"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     defaultNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetworkAttachment, err := compute.NewNetworkAttachment(ctx, "default", &compute.NetworkAttachmentArgs{
/// 			Name:                 pulumi.String("my-gateway-attachment"),
/// 			Region:               pulumi.String("us-central1"),
/// 			ConnectionPreference: pulumi.String("ACCEPT_MANUAL"),
/// 			Subnetworks: pulumi.StringArray{
/// 				defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultManagedZone, err := dns.NewManagedZone(ctx, "default", &dns.ManagedZoneArgs{
/// 			Name:        pulumi.String("my-gateway-zone"),
/// 			DnsName:     pulumi.String("example.com."),
/// 			Description: pulumi.String("Private zone used by AgentGateway DNS peering"),
/// 			Visibility:  pulumi.String("private"),
/// 			PrivateVisibilityConfig: &dns.ManagedZonePrivateVisibilityConfigArgs{
/// 				Networks: dns.ManagedZonePrivateVisibilityConfigNetworkArray{
/// 					&dns.ManagedZonePrivateVisibilityConfigNetworkArgs{
/// 						NetworkUrl: defaultNetwork.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewAgentGateway(ctx, "default", &networkservices.AgentGatewayArgs{
/// 			Name:        pulumi.String("my-full-agent-gateway"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("A full configuration for Agent Gateway"),
/// 			Labels: pulumi.StringMap{
/// 				"env":  pulumi.String("test"),
/// 				"tier": pulumi.String("gold"),
/// 			},
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String("MCP"),
/// 			},
/// 			GoogleManaged: &networkservices.AgentGatewayGoogleManagedArgs{
/// 				GovernedAccessPath: pulumi.String("AGENT_TO_ANYWHERE"),
/// 			},
/// 			Registries: pulumi.StringArray{
/// 				pulumi.String("//agentregistry.googleapis.com/projects/my-project-name/locations/us-central1"),
/// 			},
/// 			NetworkConfig: &networkservices.AgentGatewayNetworkConfigArgs{
/// 				Egress: &networkservices.AgentGatewayNetworkConfigEgressArgs{
/// 					NetworkAttachment: defaultNetworkAttachment.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 				DnsPeeringConfig: &networkservices.AgentGatewayNetworkConfigDnsPeeringConfigArgs{
/// 					Domains: pulumi.StringArray{
/// 						defaultManagedZone.DnsName,
/// 					},
/// 					TargetProject: pulumi.String(project.ProjectId),
/// 					TargetNetwork: defaultNetwork.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			agentRegistry,
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_networkservices_agentgateway" "default" {
///   depends_on  = [gcp_projects_service.agent_registry]
///   name        = "my-full-agent-gateway"
///   location    = "us-central1"
///   description = "A full configuration for Agent Gateway"
///   labels = {
///     "env"  = "test"
///     "tier" = "gold"
///   }
///   protocols = ["MCP"]
///   google_managed = {
///     governed_access_path = "AGENT_TO_ANYWHERE"
///   }
///   registries = ["//agentregistry.googleapis.com/projects/my-project-name/locations/us-central1"]
///   network_config = {
///     egress = {
///       network_attachment = gcp_compute_networkattachment.default.id
///     }
///     dns_peering_config = {
///       domains        = [gcp_dns_managedzone.default.dns_name]
///       target_project = data.gcp_organizations_getproject.project.project_id
///       target_network = gcp_compute_network.default.id
///     }
///   }
/// }
/// resource "gcp_projects_service" "agent_registry" {
///   service            = "agentregistry.googleapis.com"
///   disable_on_destroy = false
/// }
/// resource "gcp_compute_network" "default" {
///   name                    = "my-gateway-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "my-gateway-subnetwork"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.id
///   ip_cidr_range = "10.0.0.0/16"
/// }
/// resource "gcp_compute_networkattachment" "default" {
///   name                  = "my-gateway-attachment"
///   region                = "us-central1"
///   connection_preference = "ACCEPT_MANUAL"
///   subnetworks           = [gcp_compute_subnetwork.default.id]
/// }
/// resource "gcp_dns_managedzone" "default" {
///   name        = "my-gateway-zone"
///   dns_name    = "example.com."
///   description = "Private zone used by AgentGateway DNS peering"
///   visibility  = "private"
///   private_visibility_config = {
///     networks = [{
///       "networkUrl" = gcp_compute_network.default.id
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.NetworkAttachment;
/// import com.pulumi.gcp.compute.NetworkAttachmentArgs;
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZonePrivateVisibilityConfigArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZonePrivateVisibilityConfigNetworkArgs;
/// import com.pulumi.gcp.networkservices.AgentGateway;
/// import com.pulumi.gcp.networkservices.AgentGatewayArgs;
/// import com.pulumi.gcp.networkservices.inputs.AgentGatewayGoogleManagedArgs;
/// import com.pulumi.gcp.networkservices.inputs.AgentGatewayNetworkConfigArgs;
/// import com.pulumi.gcp.networkservices.inputs.AgentGatewayNetworkConfigEgressArgs;
/// import com.pulumi.gcp.networkservices.inputs.AgentGatewayNetworkConfigDnsPeeringConfigArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var agentRegistry = new Service("agentRegistry", ServiceArgs.builder()
///             .service("agentregistry.googleapis.com")
///             .disableOnDestroy(false)
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("my-gateway-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("my-gateway-subnetwork")
///             .region("us-central1")
///             .network(defaultNetwork.id())
///             .ipCidrRange("10.0.0.0/16")
///             .build());
///
///         var defaultNetworkAttachment = new NetworkAttachment("defaultNetworkAttachment", NetworkAttachmentArgs.builder()
///             .name("my-gateway-attachment")
///             .region("us-central1")
///             .connectionPreference("ACCEPT_MANUAL")
///             .subnetworks(defaultSubnetwork.id())
///             .build());
///
///         var defaultManagedZone = new ManagedZone("defaultManagedZone", ManagedZoneArgs.builder()
///             .name("my-gateway-zone")
///             .dnsName("example.com.")
///             .description("Private zone used by AgentGateway DNS peering")
///             .visibility("private")
///             .privateVisibilityConfig(ManagedZonePrivateVisibilityConfigArgs.builder()
///                 .networks(ManagedZonePrivateVisibilityConfigNetworkArgs.builder()
///                     .networkUrl(defaultNetwork.id())
///                     .build())
///                 .build())
///             .build());
///
///         var default_ = new AgentGateway("default", AgentGatewayArgs.builder()
///             .name("my-full-agent-gateway")
///             .location("us-central1")
///             .description("A full configuration for Agent Gateway")
///             .labels(Map.ofEntries(
///                 Map.entry("env", "test"),
///                 Map.entry("tier", "gold")
///             ))
///             .protocols("MCP")
///             .googleManaged(AgentGatewayGoogleManagedArgs.builder()
///                 .governedAccessPath("AGENT_TO_ANYWHERE")
///                 .build())
///             .registries("//agentregistry.googleapis.com/projects/my-project-name/locations/us-central1")
///             .networkConfig(AgentGatewayNetworkConfigArgs.builder()
///                 .egress(AgentGatewayNetworkConfigEgressArgs.builder()
///                     .networkAttachment(defaultNetworkAttachment.id())
///                     .build())
///                 .dnsPeeringConfig(AgentGatewayNetworkConfigDnsPeeringConfigArgs.builder()
///                     .domains(defaultManagedZone.dnsName())
///                     .targetProject(project.projectId())
///                     .targetNetwork(defaultNetwork.id())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(agentRegistry)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:AgentGateway
///     properties:
///       name: my-full-agent-gateway
///       location: us-central1
///       description: A full configuration for Agent Gateway
///       labels:
///         env: test
///         tier: gold
///       protocols:
///         - MCP
///       googleManaged:
///         governedAccessPath: AGENT_TO_ANYWHERE
///       registries:
///         - //agentregistry.googleapis.com/projects/my-project-name/locations/us-central1
///       networkConfig:
///         egress:
///           networkAttachment: ${defaultNetworkAttachment.id}
///         dnsPeeringConfig:
///           domains:
///             - ${defaultManagedZone.dnsName}
///           targetProject: ${project.projectId}
///           targetNetwork: ${defaultNetwork.id}
///     options:
///       dependsOn:
///         - ${agentRegistry}
///   agentRegistry:
///     type: gcp:projects:Service
///     name: agent_registry
///     properties:
///       service: agentregistry.googleapis.com
///       disableOnDestroy: false
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: my-gateway-network
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: my-gateway-subnetwork
///       region: us-central1
///       network: ${defaultNetwork.id}
///       ipCidrRange: 10.0.0.0/16
///   defaultNetworkAttachment:
///     type: gcp:compute:NetworkAttachment
///     name: default
///     properties:
///       name: my-gateway-attachment
///       region: us-central1
///       connectionPreference: ACCEPT_MANUAL
///       subnetworks:
///         - ${defaultSubnetwork.id}
///   defaultManagedZone:
///     type: gcp:dns:ManagedZone
///     name: default
///     properties:
///       name: my-gateway-zone
///       dnsName: example.com.
///       description: Private zone used by AgentGateway DNS peering
///       visibility: private
///       privateVisibilityConfig:
///         networks:
///           - networkUrl: ${defaultNetwork.id}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Network Services Agent Gateway Client To Agent
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agentRegistry = new gcp.projects.Service("agent_registry", {
///     service: "agentregistry.googleapis.com",
///     disableOnDestroy: false,
/// });
/// const _default = new gcp.networkservices.AgentGateway("default", {
///     name: "my-client-to-agent-gateway",
///     location: "us-central1",
///     googleManaged: {
///         governedAccessPath: "CLIENT_TO_AGENT",
///     },
///     registries: ["//agentregistry.googleapis.com/projects/my-project-name/locations/us-central1"],
/// }, {
///     dependsOn: [agentRegistry],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// agent_registry = gcp.projects.Service("agent_registry",
///     service="agentregistry.googleapis.com",
///     disable_on_destroy=False)
/// default = gcp.networkservices.AgentGateway("default",
///     name="my-client-to-agent-gateway",
///     location="us-central1",
///     google_managed={
///         "governed_access_path": "CLIENT_TO_AGENT",
///     },
///     registries=["//agentregistry.googleapis.com/projects/my-project-name/locations/us-central1"],
///     opts = pulumi.ResourceOptions(depends_on=[agent_registry]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentRegistry = new Gcp.Projects.Service("agent_registry", new()
///     {
///         ServiceName = "agentregistry.googleapis.com",
///         DisableOnDestroy = false,
///     });
///
///     var @default = new Gcp.NetworkServices.AgentGateway("default", new()
///     {
///         Name = "my-client-to-agent-gateway",
///         Location = "us-central1",
///         GoogleManaged = new Gcp.NetworkServices.Inputs.AgentGatewayGoogleManagedArgs
///         {
///             GovernedAccessPath = "CLIENT_TO_AGENT",
///         },
///         Registries = new[]
///         {
///             "//agentregistry.googleapis.com/projects/my-project-name/locations/us-central1",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             agentRegistry,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agentRegistry, err := projects.NewService(ctx, "agent_registry", &projects.ServiceArgs{
/// 			Service:          pulumi.String("agentregistry.googleapis.com"),
/// 			DisableOnDestroy: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewAgentGateway(ctx, "default", &networkservices.AgentGatewayArgs{
/// 			Name:     pulumi.String("my-client-to-agent-gateway"),
/// 			Location: pulumi.String("us-central1"),
/// 			GoogleManaged: &networkservices.AgentGatewayGoogleManagedArgs{
/// 				GovernedAccessPath: pulumi.String("CLIENT_TO_AGENT"),
/// 			},
/// 			Registries: pulumi.StringArray{
/// 				pulumi.String("//agentregistry.googleapis.com/projects/my-project-name/locations/us-central1"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			agentRegistry,
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
/// resource "gcp_networkservices_agentgateway" "default" {
///   depends_on = [gcp_projects_service.agent_registry]
///   name       = "my-client-to-agent-gateway"
///   location   = "us-central1"
///   google_managed = {
///     governed_access_path = "CLIENT_TO_AGENT"
///   }
///   registries = ["//agentregistry.googleapis.com/projects/my-project-name/locations/us-central1"]
/// }
/// resource "gcp_projects_service" "agent_registry" {
///   service            = "agentregistry.googleapis.com"
///   disable_on_destroy = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.networkservices.AgentGateway;
/// import com.pulumi.gcp.networkservices.AgentGatewayArgs;
/// import com.pulumi.gcp.networkservices.inputs.AgentGatewayGoogleManagedArgs;
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
///         var agentRegistry = new Service("agentRegistry", ServiceArgs.builder()
///             .service("agentregistry.googleapis.com")
///             .disableOnDestroy(false)
///             .build());
///
///         var default_ = new AgentGateway("default", AgentGatewayArgs.builder()
///             .name("my-client-to-agent-gateway")
///             .location("us-central1")
///             .googleManaged(AgentGatewayGoogleManagedArgs.builder()
///                 .governedAccessPath("CLIENT_TO_AGENT")
///                 .build())
///             .registries("//agentregistry.googleapis.com/projects/my-project-name/locations/us-central1")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(agentRegistry)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:AgentGateway
///     properties:
///       name: my-client-to-agent-gateway
///       location: us-central1
///       googleManaged:
///         governedAccessPath: CLIENT_TO_AGENT
///       registries:
///         - //agentregistry.googleapis.com/projects/my-project-name/locations/us-central1
///     options:
///       dependsOn:
///         - ${agentRegistry}
///   agentRegistry:
///     type: gcp:projects:Service
///     name: agent_registry
///     properties:
///       service: agentregistry.googleapis.com
///       disableOnDestroy: false
/// ```
///
/// ### Network Services Agent Gateway Self Managed
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.AgentGateway("default", {
///     name: "my-self-managed-agent-gateway",
///     location: "us-central1",
///     selfManaged: {
///         resourceUri: "projects/my-project-name/locations/us-central1/gateways/my-gateway",
///     },
///     registries: ["//agentregistry.googleapis.com/projects/my-project-name/locations/us-central1"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.AgentGateway("default",
///     name="my-self-managed-agent-gateway",
///     location="us-central1",
///     self_managed={
///         "resource_uri": "projects/my-project-name/locations/us-central1/gateways/my-gateway",
///     },
///     registries=["//agentregistry.googleapis.com/projects/my-project-name/locations/us-central1"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkServices.AgentGateway("default", new()
///     {
///         Name = "my-self-managed-agent-gateway",
///         Location = "us-central1",
///         SelfManaged = new Gcp.NetworkServices.Inputs.AgentGatewaySelfManagedArgs
///         {
///             ResourceUri = "projects/my-project-name/locations/us-central1/gateways/my-gateway",
///         },
///         Registries = new[]
///         {
///             "//agentregistry.googleapis.com/projects/my-project-name/locations/us-central1",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewAgentGateway(ctx, "default", &networkservices.AgentGatewayArgs{
/// 			Name:     pulumi.String("my-self-managed-agent-gateway"),
/// 			Location: pulumi.String("us-central1"),
/// 			SelfManaged: &networkservices.AgentGatewaySelfManagedArgs{
/// 				ResourceUri: pulumi.String("projects/my-project-name/locations/us-central1/gateways/my-gateway"),
/// 			},
/// 			Registries: pulumi.StringArray{
/// 				pulumi.String("//agentregistry.googleapis.com/projects/my-project-name/locations/us-central1"),
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
/// resource "gcp_networkservices_agentgateway" "default" {
///   name     = "my-self-managed-agent-gateway"
///   location = "us-central1"
///   self_managed = {
///     resource_uri = "projects/my-project-name/locations/us-central1/gateways/my-gateway"
///   }
///   registries = ["//agentregistry.googleapis.com/projects/my-project-name/locations/us-central1"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networkservices.AgentGateway;
/// import com.pulumi.gcp.networkservices.AgentGatewayArgs;
/// import com.pulumi.gcp.networkservices.inputs.AgentGatewaySelfManagedArgs;
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
///         var default_ = new AgentGateway("default", AgentGatewayArgs.builder()
///             .name("my-self-managed-agent-gateway")
///             .location("us-central1")
///             .selfManaged(AgentGatewaySelfManagedArgs.builder()
///                 .resourceUri("projects/my-project-name/locations/us-central1/gateways/my-gateway")
///                 .build())
///             .registries("//agentregistry.googleapis.com/projects/my-project-name/locations/us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:AgentGateway
///     properties:
///       name: my-self-managed-agent-gateway
///       location: us-central1
///       selfManaged:
///         resourceUri: projects/my-project-name/locations/us-central1/gateways/my-gateway
///       registries:
///         - //agentregistry.googleapis.com/projects/my-project-name/locations/us-central1
/// ```
///
///
/// ## Import
///
/// AgentGateway can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/agentGateways/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, AgentGateway can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/agentGateway:AgentGateway default projects/{{project}}/locations/{{location}}/agentGateways/{{name}}
/// $ pulumi import gcp:networkservices/agentGateway:AgentGateway default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:networkservices/agentGateway:AgentGateway default {{location}}/{{name}}
/// ```
class AgentGateway extends pulumi.CustomResource {
  /// AgentGatewayOutputCard contains informational output-only fields.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> agentGatewayCards;
  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Etag of the resource.
  /// If this is provided, it must match the server's etag. If the provided etag
  /// does not match the server's etag, the request will fail with a 409 ABORTED
  /// error.
  late final pulumi.Output<String> etag;
  /// Configuration for Google Managed deployment mode.
  /// Proxy is orchestrated and managed by GoogleCloud in a tenant project.
  /// Structure is documented below.
  late final pulumi.Output<AgentGatewayGoogleManaged?> googleManaged;
  /// Set of label tags associated with the AgentGateway resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the agent gateway.
  late final pulumi.Output<String> location;
  /// Name of the AgentGateway resource.
  late final pulumi.Output<String> name;
  /// Network configuration for the AgentGateway.
  /// Structure is documented below.
  late final pulumi.Output<AgentGatewayNetworkConfig?> networkConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// (Optional, Deprecated)
  /// List of protocols supported by an Agent Gateway.
  /// Each value may be one of: `MCP`.
  ///
  /// &gt; **Warning:** `protocols` is deprecated and will be removed in a future major release.
  late final pulumi.Output<List<String>?> protocols;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// A list of Agent registries containing the agents, MCP servers and tools governed by the Agent Gateway.
  /// Note: Currently limited to project-scoped registries Must be of format
  /// `//agentregistry.googleapis.com/{version}/projects/{{project}}/locations/{{location}}`
  late final pulumi.Output<List<String>?> registries;
  /// Configuration for Self Managed deployment mode.
  /// Attach to existing Application Load Balancers or Secure Web Proxies.
  /// Structure is documented below.
  late final pulumi.Output<AgentGatewaySelfManaged?> selfManaged;
  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AgentGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentGateway]. {@macro pulumi_networkservices_agent_gateway_agent_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentGateway(
    String name, {
    AgentGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/agentGateway:AgentGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentGatewayCards = registerOutput<List<Map<String, dynamic>>>('agentGatewayCards');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    etag = registerOutput<String>('etag');
    googleManaged = registerOutput<AgentGatewayGoogleManaged?>('googleManaged', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentGatewayGoogleManaged.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkConfig = registerOutput<AgentGatewayNetworkConfig?>('networkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentGatewayNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    protocols = registerOutput<List<String>?>('protocols');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    registries = registerOutput<List<String>?>('registries');
    selfManaged = registerOutput<AgentGatewaySelfManaged?>('selfManaged', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentGatewaySelfManaged.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AgentGateway] resource's state with the given [name] and [id].
  static AgentGateway get(
    String name,
    pulumi.Input<String> id, {
    AgentGatewayState? state,
  }) {
    return AgentGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AgentGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/agentGateway:AgentGateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentGatewayCards = registerOutput<List<Map<String, dynamic>>>('agentGatewayCards');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    etag = registerOutput<String>('etag');
    googleManaged = registerOutput<AgentGatewayGoogleManaged?>('googleManaged', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentGatewayGoogleManaged.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkConfig = registerOutput<AgentGatewayNetworkConfig?>('networkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentGatewayNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    protocols = registerOutput<List<String>?>('protocols');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    registries = registerOutput<List<String>?>('registries');
    selfManaged = registerOutput<AgentGatewaySelfManaged?>('selfManaged', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentGatewaySelfManaged.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }
}
