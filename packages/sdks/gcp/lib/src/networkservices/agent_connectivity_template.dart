import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_connectivity_template_args.dart';
import 'agent_connectivity_template_egress_network_config.dart';
import 'agent_connectivity_template_state.dart';

/// AgentConnectivityTemplate represents a reusable network configuration.
///
///
/// To get more information about AgentConnectivityTemplate, see:
///
/// * [API documentation](https://cloud.google.com/network-services/docs/reference/network-services/rest/v1/projects.locations.agentConnectivityTemplates)
///
/// ## Example Usage
///
/// ### Network Services Agent Connectivity Template Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const _default = new gcp.networkservices.AgentConnectivityTemplate("default", {
///     agentConnectivityTemplateId: "my-connectivity-template",
///     location: "us-west2",
///     description: "A basic configuration for Agent Connectivity Template",
///     labels: {
///         env: "test",
///         tier: "gold",
///     },
///     agentCompute: "GKE",
///     deploymentModel: "CENTRALIZED",
///     accessPath: "CLIENT_TO_AGENT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// default = gcp.networkservices.AgentConnectivityTemplate("default",
///     agent_connectivity_template_id="my-connectivity-template",
///     location="us-west2",
///     description="A basic configuration for Agent Connectivity Template",
///     labels={
///         "env": "test",
///         "tier": "gold",
///     },
///     agent_compute="GKE",
///     deployment_model="CENTRALIZED",
///     access_path="CLIENT_TO_AGENT")
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
///     var @default = new Gcp.NetworkServices.AgentConnectivityTemplate("default", new()
///     {
///         AgentConnectivityTemplateId = "my-connectivity-template",
///         Location = "us-west2",
///         Description = "A basic configuration for Agent Connectivity Template",
///         Labels =
///         {
///             { "env", "test" },
///             { "tier", "gold" },
///         },
///         AgentCompute = "GKE",
///         DeploymentModel = "CENTRALIZED",
///         AccessPath = "CLIENT_TO_AGENT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewAgentConnectivityTemplate(ctx, "default", &networkservices.AgentConnectivityTemplateArgs{
/// 			AgentConnectivityTemplateId: pulumi.String("my-connectivity-template"),
/// 			Location:                    pulumi.String("us-west2"),
/// 			Description:                 pulumi.String("A basic configuration for Agent Connectivity Template"),
/// 			Labels: pulumi.StringMap{
/// 				"env":  pulumi.String("test"),
/// 				"tier": pulumi.String("gold"),
/// 			},
/// 			AgentCompute:    pulumi.String("GKE"),
/// 			DeploymentModel: pulumi.String("CENTRALIZED"),
/// 			AccessPath:      pulumi.String("CLIENT_TO_AGENT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_networkservices_agent_connectivity_template" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   agent_connectivity_template_id = "my-connectivity-template"
///   location                       = "us-west2"
///   description                    = "A basic configuration for Agent Connectivity Template"
///   labels = {
///     "env"  = "test"
///     "tier" = "gold"
///   }
///   agent_compute    = "GKE"
///   deployment_model = "CENTRALIZED"
///   access_path      = "CLIENT_TO_AGENT"
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
/// import com.pulumi.gcp.networkservices.AgentConnectivityTemplate;
/// import com.pulumi.gcp.networkservices.AgentConnectivityTemplateArgs;
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
///         var default_ = new AgentConnectivityTemplate("default", AgentConnectivityTemplateArgs.builder()
///             .agentConnectivityTemplateId("my-connectivity-template")
///             .location("us-west2")
///             .description("A basic configuration for Agent Connectivity Template")
///             .labels(Map.ofEntries(
///                 Map.entry("env", "test"),
///                 Map.entry("tier", "gold")
///             ))
///             .agentCompute("GKE")
///             .deploymentModel("CENTRALIZED")
///             .accessPath("CLIENT_TO_AGENT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:AgentConnectivityTemplate
///     properties:
///       agentConnectivityTemplateId: my-connectivity-template
///       location: us-west2
///       description: A basic configuration for Agent Connectivity Template
///       labels:
///         env: test
///         tier: gold
///       agentCompute: GKE
///       deploymentModel: CENTRALIZED
///       accessPath: CLIENT_TO_AGENT
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Network Services Agent Connectivity Template Advanced
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const project = gcp.organizations.getProject({});
/// const _default = new gcp.compute.Network("default", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "my-subnetwork",
///     region: "us-west2",
///     network: _default.id,
///     ipCidrRange: "10.0.0.0/16",
/// });
/// const defaultNetworkAttachment = new gcp.compute.NetworkAttachment("default", {
///     name: "my-attachment",
///     region: "us-west2",
///     connectionPreference: "ACCEPT_AUTOMATIC",
///     subnetworks: [defaultSubnetwork.id],
/// });
/// const defaultManagedZone = new gcp.dns.ManagedZone("default", {
///     name: "my-zone",
///     dnsName: "example.com.",
///     description: "Private zone used by AgentGateway DNS peering",
///     visibility: "private",
///     privateVisibilityConfig: {
///         networks: [{
///             networkUrl: _default.id,
///         }],
///     },
/// });
/// const defaultTrustConfig = new gcp.certificatemanager.TrustConfig("default", {
///     name: "my-trust-config",
///     location: "us-west2",
///     trustStores: [{
///         trustAnchors: [{
///             pemCertificate: std.file({
///                 input: "test-fixtures/cert.pem",
///             }).then(invoke => invoke.result),
///         }],
///         intermediateCas: [{
///             pemCertificate: std.file({
///                 input: "test-fixtures/cert.pem",
///             }).then(invoke => invoke.result),
///         }],
///     }],
/// });
/// const defaultAgentConnectivityTemplate = new gcp.networkservices.AgentConnectivityTemplate("default", {
///     agentConnectivityTemplateId: "my-connectivity-template",
///     location: "us-west2",
///     description: "An advanced configuration for Agent Connectivity Template",
///     agentCompute: "GKE",
///     deploymentModel: "CENTRALIZED",
///     accessTypes: ["PRIVATE"],
///     accessPath: "AGENT_TO_ANYWHERE",
///     egressNetworkConfig: {
///         vpcEgress: "ALL_TRAFFIC",
///         networkAttachment: defaultNetworkAttachment.id,
///         dnsPeeringConfig: {
///             domains: [defaultManagedZone.dnsName],
///             targetNetwork: _default.id,
///         },
///         tlsConfig: {
///             trustConfig: pulumi.all([project, defaultTrustConfig.name]).apply(([project, name]) => `projects/${project.number}/locations/us-west2/trustConfigs/${name}`),
///             additionalRoots: "NO_ADDITIONAL_ROOTS",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// project = gcp.organizations.get_project()
/// default = gcp.compute.Network("default",
///     name="my-network",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="my-subnetwork",
///     region="us-west2",
///     network=default.id,
///     ip_cidr_range="10.0.0.0/16")
/// default_network_attachment = gcp.compute.NetworkAttachment("default",
///     name="my-attachment",
///     region="us-west2",
///     connection_preference="ACCEPT_AUTOMATIC",
///     subnetworks=[default_subnetwork.id])
/// default_managed_zone = gcp.dns.ManagedZone("default",
///     name="my-zone",
///     dns_name="example.com.",
///     description="Private zone used by AgentGateway DNS peering",
///     visibility="private",
///     private_visibility_config={
///         "networks": [{
///             "network_url": default.id,
///         }],
///     })
/// default_trust_config = gcp.certificatemanager.TrustConfig("default",
///     name="my-trust-config",
///     location="us-west2",
///     trust_stores=[{
///         "trust_anchors": [{
///             "pem_certificate": std.file(input="test-fixtures/cert.pem").result,
///         }],
///         "intermediate_cas": [{
///             "pem_certificate": std.file(input="test-fixtures/cert.pem").result,
///         }],
///     }])
/// default_agent_connectivity_template = gcp.networkservices.AgentConnectivityTemplate("default",
///     agent_connectivity_template_id="my-connectivity-template",
///     location="us-west2",
///     description="An advanced configuration for Agent Connectivity Template",
///     agent_compute="GKE",
///     deployment_model="CENTRALIZED",
///     access_types=["PRIVATE"],
///     access_path="AGENT_TO_ANYWHERE",
///     egress_network_config={
///         "vpc_egress": "ALL_TRAFFIC",
///         "network_attachment": default_network_attachment.id,
///         "dns_peering_config": {
///             "domains": [default_managed_zone.dns_name],
///             "target_network": default.id,
///         },
///         "tls_config": {
///             "trust_config": default_trust_config.name.apply(lambda name: f"projects/{project.number}/locations/us-west2/trustConfigs/{name}"),
///             "additional_roots": "NO_ADDITIONAL_ROOTS",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "my-subnetwork",
///         Region = "us-west2",
///         Network = @default.Id,
///         IpCidrRange = "10.0.0.0/16",
///     });
///
///     var defaultNetworkAttachment = new Gcp.Compute.NetworkAttachment("default", new()
///     {
///         Name = "my-attachment",
///         Region = "us-west2",
///         ConnectionPreference = "ACCEPT_AUTOMATIC",
///         Subnetworks = new[]
///         {
///             defaultSubnetwork.Id,
///         },
///     });
///
///     var defaultManagedZone = new Gcp.Dns.ManagedZone("default", new()
///     {
///         Name = "my-zone",
///         DnsName = "example.com.",
///         Description = "Private zone used by AgentGateway DNS peering",
///         Visibility = "private",
///         PrivateVisibilityConfig = new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigArgs
///         {
///             Networks = new[]
///             {
///                 new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigNetworkArgs
///                 {
///                     NetworkUrl = @default.Id,
///                 },
///             },
///         },
///     });
///
///     var defaultTrustConfig = new Gcp.CertificateManager.TrustConfig("default", new()
///     {
///         Name = "my-trust-config",
///         Location = "us-west2",
///         TrustStores = new[]
///         {
///             new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreArgs
///             {
///                 TrustAnchors = new[]
///                 {
///                     new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreTrustAnchorArgs
///                     {
///                         PemCertificate = Std.File.Invoke(new()
///                         {
///                             Input = "test-fixtures/cert.pem",
///                         }).Apply(invoke => invoke.Result),
///                     },
///                 },
///                 IntermediateCas = new[]
///                 {
///                     new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreIntermediateCaArgs
///                     {
///                         PemCertificate = Std.File.Invoke(new()
///                         {
///                             Input = "test-fixtures/cert.pem",
///                         }).Apply(invoke => invoke.Result),
///                     },
///                 },
///             },
///         },
///     });
///
///     var defaultAgentConnectivityTemplate = new Gcp.NetworkServices.AgentConnectivityTemplate("default", new()
///     {
///         AgentConnectivityTemplateId = "my-connectivity-template",
///         Location = "us-west2",
///         Description = "An advanced configuration for Agent Connectivity Template",
///         AgentCompute = "GKE",
///         DeploymentModel = "CENTRALIZED",
///         AccessTypes = new[]
///         {
///             "PRIVATE",
///         },
///         AccessPath = "AGENT_TO_ANYWHERE",
///         EgressNetworkConfig = new Gcp.NetworkServices.Inputs.AgentConnectivityTemplateEgressNetworkConfigArgs
///         {
///             VpcEgress = "ALL_TRAFFIC",
///             NetworkAttachment = defaultNetworkAttachment.Id,
///             DnsPeeringConfig = new Gcp.NetworkServices.Inputs.AgentConnectivityTemplateEgressNetworkConfigDnsPeeringConfigArgs
///             {
///                 Domains = new[]
///                 {
///                     defaultManagedZone.DnsName,
///                 },
///                 TargetNetwork = @default.Id,
///             },
///             TlsConfig = new Gcp.NetworkServices.Inputs.AgentConnectivityTemplateEgressNetworkConfigTlsConfigArgs
///             {
///                 TrustConfig = Output.Tuple(project, defaultTrustConfig.Name).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var name = values.Item2;
///                     return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/us-west2/trustConfigs/{name}";
///                 }),
///                 AdditionalRoots = "NO_ADDITIONAL_ROOTS",
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/dns"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnetwork"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Network:     _default.ID(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetworkAttachment, err := compute.NewNetworkAttachment(ctx, "default", &compute.NetworkAttachmentArgs{
/// 			Name:                 pulumi.String("my-attachment"),
/// 			Region:               pulumi.String("us-west2"),
/// 			ConnectionPreference: pulumi.String("ACCEPT_AUTOMATIC"),
/// 			Subnetworks: pulumi.StringArray{
/// 				defaultSubnetwork.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultManagedZone, err := dns.NewManagedZone(ctx, "default", &dns.ManagedZoneArgs{
/// 			Name:        pulumi.String("my-zone"),
/// 			DnsName:     pulumi.String("example.com."),
/// 			Description: pulumi.String("Private zone used by AgentGateway DNS peering"),
/// 			Visibility:  pulumi.String("private"),
/// 			PrivateVisibilityConfig: &dns.ManagedZonePrivateVisibilityConfigArgs{
/// 				Networks: dns.ManagedZonePrivateVisibilityConfigNetworkArray{
/// 					&dns.ManagedZonePrivateVisibilityConfigNetworkArgs{
/// 						NetworkUrl: _default.ID(),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTrustConfig, err := certificatemanager.NewTrustConfig(ctx, "default", &certificatemanager.TrustConfigArgs{
/// 			Name:     pulumi.String("my-trust-config"),
/// 			Location: pulumi.String("us-west2"),
/// 			TrustStores: certificatemanager.TrustConfigTrustStoreArray{
/// 				&certificatemanager.TrustConfigTrustStoreArgs{
/// 					TrustAnchors: certificatemanager.TrustConfigTrustStoreTrustAnchorArray{
/// 						&certificatemanager.TrustConfigTrustStoreTrustAnchorArgs{
/// 							PemCertificate: pulumi.String(invokeFile.Result),
/// 						},
/// 					},
/// 					IntermediateCas: certificatemanager.TrustConfigTrustStoreIntermediateCaArray{
/// 						&certificatemanager.TrustConfigTrustStoreIntermediateCaArgs{
/// 							PemCertificate: pulumi.String(invokeFile1.Result),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewAgentConnectivityTemplate(ctx, "default", &networkservices.AgentConnectivityTemplateArgs{
/// 			AgentConnectivityTemplateId: pulumi.String("my-connectivity-template"),
/// 			Location:                    pulumi.String("us-west2"),
/// 			Description:                 pulumi.String("An advanced configuration for Agent Connectivity Template"),
/// 			AgentCompute:                pulumi.String("GKE"),
/// 			DeploymentModel:             pulumi.String("CENTRALIZED"),
/// 			AccessTypes: pulumi.StringArray{
/// 				pulumi.String("PRIVATE"),
/// 			},
/// 			AccessPath: pulumi.String("AGENT_TO_ANYWHERE"),
/// 			EgressNetworkConfig: &networkservices.AgentConnectivityTemplateEgressNetworkConfigArgs{
/// 				VpcEgress:         pulumi.String("ALL_TRAFFIC"),
/// 				NetworkAttachment: defaultNetworkAttachment.ID(),
/// 				DnsPeeringConfig: &networkservices.AgentConnectivityTemplateEgressNetworkConfigDnsPeeringConfigArgs{
/// 					Domains: pulumi.StringArray{
/// 						defaultManagedZone.DnsName,
/// 					},
/// 					TargetNetwork: _default.ID(),
/// 				},
/// 				TlsConfig: &networkservices.AgentConnectivityTemplateEgressNetworkConfigTlsConfigArgs{
/// 					TrustConfig: defaultTrustConfig.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("projects/%v/locations/us-west2/trustConfigs/%v", project.Number, name), nil
/// 					}).(pulumi.StringOutput),
/// 					AdditionalRoots: pulumi.String("NO_ADDITIONAL_ROOTS"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_compute_network" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                    = "my-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "my-subnetwork"
///   region        = "us-west2"
///   network       = gcp_compute_network.default.id
///   ip_cidr_range = "10.0.0.0/16"
/// }
/// resource "gcp_compute_network_attachment" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                  = "my-attachment"
///   region                = "us-west2"
///   connection_preference = "ACCEPT_AUTOMATIC"
///   subnetworks           = [gcp_compute_subnetwork.default.id]
/// }
/// resource "gcp_dns_managed_zone" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name        = "my-zone"
///   dns_name    = "example.com."
///   description = "Private zone used by AgentGateway DNS peering"
///   visibility  = "private"
///   private_visibility_config = {
///     networks = [{
///       network_url = gcp_compute_network.default.id
///     }]
///   }
/// }
/// resource "gcp_certificatemanager_trust_config" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "my-trust-config"
///   location = "us-west2"
///   trust_stores {
///     trust_anchors {
///       pem_certificate = file("test-fixtures/cert.pem")
///     }
///     intermediate_cas {
///       pem_certificate = file("test-fixtures/cert.pem")
///     }
///   }
/// }
/// resource "gcp_networkservices_agent_connectivity_template" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   agent_connectivity_template_id = "my-connectivity-template"
///   location                       = "us-west2"
///   description                    = "An advanced configuration for Agent Connectivity Template"
///   agent_compute                  = "GKE"
///   deployment_model               = "CENTRALIZED"
///   access_types                   = ["PRIVATE"]
///   access_path                    = "AGENT_TO_ANYWHERE"
///   egress_network_config = {
///     vpc_egress         = "ALL_TRAFFIC"
///     network_attachment = gcp_compute_network_attachment.default.id
///     dns_peering_config = {
///       domains        = [gcp_dns_managed_zone.default.dns_name]
///       target_network = gcp_compute_network.default.id
///     }
///     tls_config = {
///       trust_config     ="projects/${data.gcp_organizations_project.project.number}/locations/us-west2/trustConfigs/${gcp_certificatemanager_trust_config.default.name}"
///       additional_roots = "NO_ADDITIONAL_ROOTS"
///     }
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
/// import com.pulumi.gcp.certificatemanager.TrustConfig;
/// import com.pulumi.gcp.certificatemanager.TrustConfigArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.TrustConfigTrustStoreArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.TrustConfigTrustStoreTrustAnchorArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.TrustConfigTrustStoreIntermediateCaArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.networkservices.AgentConnectivityTemplate;
/// import com.pulumi.gcp.networkservices.AgentConnectivityTemplateArgs;
/// import com.pulumi.gcp.networkservices.inputs.AgentConnectivityTemplateEgressNetworkConfigArgs;
/// import com.pulumi.gcp.networkservices.inputs.AgentConnectivityTemplateEgressNetworkConfigDnsPeeringConfigArgs;
/// import com.pulumi.gcp.networkservices.inputs.AgentConnectivityTemplateEgressNetworkConfigTlsConfigArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("my-subnetwork")
///             .region("us-west2")
///             .network(default_.id())
///             .ipCidrRange("10.0.0.0/16")
///             .build());
///
///         var defaultNetworkAttachment = new NetworkAttachment("defaultNetworkAttachment", NetworkAttachmentArgs.builder()
///             .name("my-attachment")
///             .region("us-west2")
///             .connectionPreference("ACCEPT_AUTOMATIC")
///             .subnetworks(defaultSubnetwork.id())
///             .build());
///
///         var defaultManagedZone = new ManagedZone("defaultManagedZone", ManagedZoneArgs.builder()
///             .name("my-zone")
///             .dnsName("example.com.")
///             .description("Private zone used by AgentGateway DNS peering")
///             .visibility("private")
///             .privateVisibilityConfig(ManagedZonePrivateVisibilityConfigArgs.builder()
///                 .networks(ManagedZonePrivateVisibilityConfigNetworkArgs.builder()
///                     .networkUrl(default_.id())
///                     .build())
///                 .build())
///             .build());
///
///         var defaultTrustConfig = new TrustConfig("defaultTrustConfig", TrustConfigArgs.builder()
///             .name("my-trust-config")
///             .location("us-west2")
///             .trustStores(TrustConfigTrustStoreArgs.builder()
///                 .trustAnchors(TrustConfigTrustStoreTrustAnchorArgs.builder()
///                     .pemCertificate(StdFunctions.file(FileArgs.builder()
///                         .input("test-fixtures/cert.pem")
///                         .build()).result())
///                     .build())
///                 .intermediateCas(TrustConfigTrustStoreIntermediateCaArgs.builder()
///                     .pemCertificate(StdFunctions.file(FileArgs.builder()
///                         .input("test-fixtures/cert.pem")
///                         .build()).result())
///                     .build())
///                 .build())
///             .build());
///
///         var defaultAgentConnectivityTemplate = new AgentConnectivityTemplate("defaultAgentConnectivityTemplate", AgentConnectivityTemplateArgs.builder()
///             .agentConnectivityTemplateId("my-connectivity-template")
///             .location("us-west2")
///             .description("An advanced configuration for Agent Connectivity Template")
///             .agentCompute("GKE")
///             .deploymentModel("CENTRALIZED")
///             .accessTypes("PRIVATE")
///             .accessPath("AGENT_TO_ANYWHERE")
///             .egressNetworkConfig(AgentConnectivityTemplateEgressNetworkConfigArgs.builder()
///                 .vpcEgress("ALL_TRAFFIC")
///                 .networkAttachment(defaultNetworkAttachment.id())
///                 .dnsPeeringConfig(AgentConnectivityTemplateEgressNetworkConfigDnsPeeringConfigArgs.builder()
///                     .domains(defaultManagedZone.dnsName())
///                     .targetNetwork(default_.id())
///                     .build())
///                 .tlsConfig(AgentConnectivityTemplateEgressNetworkConfigTlsConfigArgs.builder()
///                     .trustConfig(defaultTrustConfig.name().applyValue(_name -> String.format("projects/%s/locations/us-west2/trustConfigs/%s", project.number(),_name)))
///                     .additionalRoots("NO_ADDITIONAL_ROOTS")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: my-subnetwork
///       region: us-west2
///       network: ${default.id}
///       ipCidrRange: 10.0.0.0/16
///   defaultNetworkAttachment:
///     type: gcp:compute:NetworkAttachment
///     name: default
///     properties:
///       name: my-attachment
///       region: us-west2
///       connectionPreference: ACCEPT_AUTOMATIC
///       subnetworks:
///         - ${defaultSubnetwork.id}
///   defaultManagedZone:
///     type: gcp:dns:ManagedZone
///     name: default
///     properties:
///       name: my-zone
///       dnsName: example.com.
///       description: Private zone used by AgentGateway DNS peering
///       visibility: private
///       privateVisibilityConfig:
///         networks:
///           - networkUrl: ${default.id}
///   defaultTrustConfig:
///     type: gcp:certificatemanager:TrustConfig
///     name: default
///     properties:
///       name: my-trust-config
///       location: us-west2
///       trustStores:
///         - trustAnchors:
///             - pemCertificate:
///                 fn::invoke:
///                   function: std:file
///                   arguments:
///                     input: test-fixtures/cert.pem
///                   return: result
///           intermediateCas:
///             - pemCertificate:
///                 fn::invoke:
///                   function: std:file
///                   arguments:
///                     input: test-fixtures/cert.pem
///                   return: result
///   defaultAgentConnectivityTemplate:
///     type: gcp:networkservices:AgentConnectivityTemplate
///     name: default
///     properties:
///       agentConnectivityTemplateId: my-connectivity-template
///       location: us-west2
///       description: An advanced configuration for Agent Connectivity Template
///       agentCompute: GKE
///       deploymentModel: CENTRALIZED
///       accessTypes:
///         - PRIVATE
///       accessPath: AGENT_TO_ANYWHERE
///       egressNetworkConfig:
///         vpcEgress: ALL_TRAFFIC
///         networkAttachment: ${defaultNetworkAttachment.id}
///         dnsPeeringConfig:
///           domains:
///             - ${defaultManagedZone.dnsName}
///           targetNetwork: ${default.id}
///         tlsConfig:
///           trustConfig: projects/${project.number}/locations/us-west2/trustConfigs/${defaultTrustConfig.name}
///           additionalRoots: NO_ADDITIONAL_ROOTS
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// AgentConnectivityTemplate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/agentConnectivityTemplates/{{agent_connectivity_template_id}}`
/// * `{{project}}/{{location}}/{{agent_connectivity_template_id}}`
/// * `{{location}}/{{agent_connectivity_template_id}}`
///
///
/// When using the `pulumi import` command, AgentConnectivityTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/agentConnectivityTemplate:AgentConnectivityTemplate default projects/{{project}}/locations/{{location}}/agentConnectivityTemplates/{{agent_connectivity_template_id}}
/// $ pulumi import gcp:networkservices/agentConnectivityTemplate:AgentConnectivityTemplate default {{project}}/{{location}}/{{agent_connectivity_template_id}}
/// $ pulumi import gcp:networkservices/agentConnectivityTemplate:AgentConnectivityTemplate default {{location}}/{{agent_connectivity_template_id}}
/// ```
class AgentConnectivityTemplate extends pulumi.CustomResource {
  /// The path of the access.
  /// The path is immutable once set. Exactly one path can be set.
  /// Possible values are: `CLIENT_TO_AGENT`, `AGENT_TO_ANYWHERE`.
  late final pulumi.Output<String> accessPath;
  /// The types of network access provided to the gateway.
  /// Both PUBLIC and PRIVATE can be configured.
  /// Each value may be one of: `PUBLIC`, `PRIVATE`.
  late final pulumi.Output<List<String>> accessTypes;
  /// The compute environment where the agent is hosted.
  /// Exactly one type of compute must be chosen.
  /// Possible values are: `GKE`, `CLOUD_RUN`.
  late final pulumi.Output<String?> agentCompute;
  /// Short name of the AgentConnectivityTemplate resource.
  late final pulumi.Output<String> agentConnectivityTemplateId;
  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The deployment model for the gateway.
  /// Possible values are: `CENTRALIZED`, `AMBIENT`.
  late final pulumi.Output<String?> deploymentModel;
  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Configuration for egress network traffic.
  /// Structure is documented below.
  late final pulumi.Output<AgentConnectivityTemplateEgressNetworkConfig?> egressNetworkConfig;
  /// Etag of the resource.
  /// If this is provided, it must match the server's etag. If the provided etag
  /// does not match the server's etag, the request will fail with a 409 ABORTED
  /// error.
  late final pulumi.Output<String> etag;
  /// Set of label tags associated with the AgentConnectivityTemplate resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the AgentConnectivityTemplate.
  late final pulumi.Output<String> location;
  /// Identifier. Name of the resource.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AgentConnectivityTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentConnectivityTemplate]. {@macro pulumi_networkservices_agent_connectivity_template_agent_connectivity_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentConnectivityTemplate(
    String name, {
    AgentConnectivityTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/agentConnectivityTemplate:AgentConnectivityTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.0').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    accessPath = registerOutput<String>('accessPath');
    accessTypes = registerOutput<List<String>>('accessTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    agentCompute = registerOutput<String?>('agentCompute');
    agentConnectivityTemplateId = registerOutput<String>('agentConnectivityTemplateId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deploymentModel = registerOutput<String?>('deploymentModel');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    egressNetworkConfig = registerOutput<AgentConnectivityTemplateEgressNetworkConfig?>('egressNetworkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentConnectivityTemplateEgressNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AgentConnectivityTemplate] resource's state with the given [name] and [id].
  static AgentConnectivityTemplate get(
    String name,
    pulumi.Input<String> id, {
    AgentConnectivityTemplateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentConnectivityTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentConnectivityTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/agentConnectivityTemplate:AgentConnectivityTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPath = registerOutput<String>('accessPath');
    accessTypes = registerOutput<List<String>>('accessTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    agentCompute = registerOutput<String?>('agentCompute');
    agentConnectivityTemplateId = registerOutput<String>('agentConnectivityTemplateId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deploymentModel = registerOutput<String?>('deploymentModel');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    egressNetworkConfig = registerOutput<AgentConnectivityTemplateEgressNetworkConfig?>('egressNetworkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentConnectivityTemplateEgressNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [AgentConnectivityTemplate] resource.
  AgentConnectivityTemplate.reference(String urn)
    : super(
        'gcp:networkservices/agentConnectivityTemplate:AgentConnectivityTemplate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    accessPath = registerOutput<String>('accessPath');
    accessTypes = registerOutput<List<String>>('accessTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    agentCompute = registerOutput<String?>('agentCompute');
    agentConnectivityTemplateId = registerOutput<String>('agentConnectivityTemplateId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deploymentModel = registerOutput<String?>('deploymentModel');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    egressNetworkConfig = registerOutput<AgentConnectivityTemplateEgressNetworkConfig?>('egressNetworkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentConnectivityTemplateEgressNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
  }
}
