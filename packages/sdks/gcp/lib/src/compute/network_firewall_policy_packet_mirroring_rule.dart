import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_firewall_policy_packet_mirroring_rule_args.dart';
import 'network_firewall_policy_packet_mirroring_rule_match.dart';
import 'network_firewall_policy_packet_mirroring_rule_state.dart';

/// Represents a packet mirroring rule that describes one or more match conditions along with the action to be taken when traffic matches this condition (mirror or do_not_mirror).
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about NetworkFirewallPolicyPacketMirroringRule, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/networkFirewallPolicies/addPacketMirroringRule)
///
/// ## Example Usage
///
/// ### Compute Network Firewall Policy Packet Mirroring Rule
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const _default = new gcp.compute.Network("default", {
///     name: "fw-network",
///     autoCreateSubnetworks: false,
/// });
/// const basicNetworkFirewallPolicy = new gcp.compute.NetworkFirewallPolicy("basic_network_firewall_policy", {
///     name: "fw-policy",
///     description: "Sample global network firewall policy",
///     project: "my-project-name",
/// });
/// const defaultMirroringDeploymentGroup = new gcp.networksecurity.MirroringDeploymentGroup("default", {
///     mirroringDeploymentGroupId: "deployment-group",
///     location: "global",
///     network: _default.id,
/// });
/// const defaultMirroringEndpointGroup = new gcp.networksecurity.MirroringEndpointGroup("default", {
///     mirroringEndpointGroupId: "endpoint-group",
///     location: "global",
///     mirroringDeploymentGroup: defaultMirroringDeploymentGroup.id,
/// });
/// const defaultSecurityProfile = new gcp.networksecurity.SecurityProfile("default", {
///     name: "sec-profile",
///     parent: "organizations/123456789",
///     description: "my description",
///     type: "CUSTOM_MIRRORING",
///     customMirroringProfile: {
///         mirroringEndpointGroup: defaultMirroringEndpointGroup.id,
///     },
/// });
/// const securityProfileGroup1 = new gcp.networksecurity.SecurityProfileGroup("security_profile_group_1", {
///     name: "sec-profile-group",
///     parent: "organizations/123456789",
///     description: "my description",
///     customMirroringProfile: defaultSecurityProfile.id,
/// });
/// const secureTagKey1 = new gcp.tags.TagKey("secure_tag_key_1", {
///     description: "Test tag key description",
///     parent: "organizations/123456789",
///     purpose: "GCE_FIREWALL",
///     shortName: "tag-key",
///     purposeData: {
///         network: pulumi.interpolate`my-project-name/${_default.name}`,
///     },
/// });
/// const secureTagValue1 = new gcp.tags.TagValue("secure_tag_value_1", {
///     description: "Test tag value description.",
///     parent: secureTagKey1.id,
///     shortName: "tag-value",
/// });
/// const primary = new gcp.compute.NetworkFirewallPolicyPacketMirroringRule("primary", {
///     action: "mirror",
///     description: "This is a simple packet mirroring rule description",
///     direction: "INGRESS",
///     disabled: false,
///     firewallPolicy: basicNetworkFirewallPolicy.id,
///     priority: 1000,
///     ruleName: "test-rule",
///     match: {
///         srcIpRanges: ["10.100.0.1/32"],
///         layer4Configs: [{
///             ipProtocol: "all",
///         }],
///     },
///     securityProfileGroup: pulumi.interpolate`//networksecurity.googleapis.com/${securityProfileGroup1.id}`,
///     targetSecureTags: [{
///         name: pulumi.interpolate`tagValues/${secureTagValue1.name}`,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// default = gcp.compute.Network("default",
///     name="fw-network",
///     auto_create_subnetworks=False)
/// basic_network_firewall_policy = gcp.compute.NetworkFirewallPolicy("basic_network_firewall_policy",
///     name="fw-policy",
///     description="Sample global network firewall policy",
///     project="my-project-name")
/// default_mirroring_deployment_group = gcp.networksecurity.MirroringDeploymentGroup("default",
///     mirroring_deployment_group_id="deployment-group",
///     location="global",
///     network=default.id)
/// default_mirroring_endpoint_group = gcp.networksecurity.MirroringEndpointGroup("default",
///     mirroring_endpoint_group_id="endpoint-group",
///     location="global",
///     mirroring_deployment_group=default_mirroring_deployment_group.id)
/// default_security_profile = gcp.networksecurity.SecurityProfile("default",
///     name="sec-profile",
///     parent="organizations/123456789",
///     description="my description",
///     type="CUSTOM_MIRRORING",
///     custom_mirroring_profile={
///         "mirroring_endpoint_group": default_mirroring_endpoint_group.id,
///     })
/// security_profile_group1 = gcp.networksecurity.SecurityProfileGroup("security_profile_group_1",
///     name="sec-profile-group",
///     parent="organizations/123456789",
///     description="my description",
///     custom_mirroring_profile=default_security_profile.id)
/// secure_tag_key1 = gcp.tags.TagKey("secure_tag_key_1",
///     description="Test tag key description",
///     parent="organizations/123456789",
///     purpose="GCE_FIREWALL",
///     short_name="tag-key",
///     purpose_data={
///         "network": default.name.apply(lambda name: f"my-project-name/{name}"),
///     })
/// secure_tag_value1 = gcp.tags.TagValue("secure_tag_value_1",
///     description="Test tag value description.",
///     parent=secure_tag_key1.id,
///     short_name="tag-value")
/// primary = gcp.compute.NetworkFirewallPolicyPacketMirroringRule("primary",
///     action="mirror",
///     description="This is a simple packet mirroring rule description",
///     direction="INGRESS",
///     disabled=False,
///     firewall_policy=basic_network_firewall_policy.id,
///     priority=1000,
///     rule_name="test-rule",
///     match={
///         "src_ip_ranges": ["10.100.0.1/32"],
///         "layer4_configs": [{
///             "ip_protocol": "all",
///         }],
///     },
///     security_profile_group=security_profile_group1.id.apply(lambda id: f"//networksecurity.googleapis.com/{id}"),
///     target_secure_tags=[{
///         "name": secure_tag_value1.name.apply(lambda name: f"tagValues/{name}"),
///     }])
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
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "fw-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var basicNetworkFirewallPolicy = new Gcp.Compute.NetworkFirewallPolicy("basic_network_firewall_policy", new()
///     {
///         Name = "fw-policy",
///         Description = "Sample global network firewall policy",
///         Project = "my-project-name",
///     });
///
///     var defaultMirroringDeploymentGroup = new Gcp.NetworkSecurity.MirroringDeploymentGroup("default", new()
///     {
///         MirroringDeploymentGroupId = "deployment-group",
///         Location = "global",
///         Network = @default.Id,
///     });
///
///     var defaultMirroringEndpointGroup = new Gcp.NetworkSecurity.MirroringEndpointGroup("default", new()
///     {
///         MirroringEndpointGroupId = "endpoint-group",
///         Location = "global",
///         MirroringDeploymentGroup = defaultMirroringDeploymentGroup.Id,
///     });
///
///     var defaultSecurityProfile = new Gcp.NetworkSecurity.SecurityProfile("default", new()
///     {
///         Name = "sec-profile",
///         Parent = "organizations/123456789",
///         Description = "my description",
///         Type = "CUSTOM_MIRRORING",
///         CustomMirroringProfile = new Gcp.NetworkSecurity.Inputs.SecurityProfileCustomMirroringProfileArgs
///         {
///             MirroringEndpointGroup = defaultMirroringEndpointGroup.Id,
///         },
///     });
///
///     var securityProfileGroup1 = new Gcp.NetworkSecurity.SecurityProfileGroup("security_profile_group_1", new()
///     {
///         Name = "sec-profile-group",
///         Parent = "organizations/123456789",
///         Description = "my description",
///         CustomMirroringProfile = defaultSecurityProfile.Id,
///     });
///
///     var secureTagKey1 = new Gcp.Tags.TagKey("secure_tag_key_1", new()
///     {
///         Description = "Test tag key description",
///         Parent = "organizations/123456789",
///         Purpose = "GCE_FIREWALL",
///         ShortName = "tag-key",
///         PurposeData =
///         {
///             { "network", @default.Name.Apply(name => $"my-project-name/{name}") },
///         },
///     });
///
///     var secureTagValue1 = new Gcp.Tags.TagValue("secure_tag_value_1", new()
///     {
///         Description = "Test tag value description.",
///         Parent = secureTagKey1.Id,
///         ShortName = "tag-value",
///     });
///
///     var primary = new Gcp.Compute.NetworkFirewallPolicyPacketMirroringRule("primary", new()
///     {
///         Action = "mirror",
///         Description = "This is a simple packet mirroring rule description",
///         Direction = "INGRESS",
///         Disabled = false,
///         FirewallPolicy = basicNetworkFirewallPolicy.Id,
///         Priority = 1000,
///         RuleName = "test-rule",
///         Match = new Gcp.Compute.Inputs.NetworkFirewallPolicyPacketMirroringRuleMatchArgs
///         {
///             SrcIpRanges = new[]
///             {
///                 "10.100.0.1/32",
///             },
///             Layer4Configs = new[]
///             {
///                 new Gcp.Compute.Inputs.NetworkFirewallPolicyPacketMirroringRuleMatchLayer4ConfigArgs
///                 {
///                     IpProtocol = "all",
///                 },
///             },
///         },
///         SecurityProfileGroup = securityProfileGroup1.Id.Apply(id => $"//networksecurity.googleapis.com/{id}"),
///         TargetSecureTags = new[]
///         {
///             new Gcp.Compute.Inputs.NetworkFirewallPolicyPacketMirroringRuleTargetSecureTagArgs
///             {
///                 Name = secureTagValue1.Name.Apply(name => $"tagValues/{name}"),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("fw-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicNetworkFirewallPolicy, err := compute.NewNetworkFirewallPolicy(ctx, "basic_network_firewall_policy", &compute.NetworkFirewallPolicyArgs{
/// 			Name:        pulumi.String("fw-policy"),
/// 			Description: pulumi.String("Sample global network firewall policy"),
/// 			Project:     pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultMirroringDeploymentGroup, err := networksecurity.NewMirroringDeploymentGroup(ctx, "default", &networksecurity.MirroringDeploymentGroupArgs{
/// 			MirroringDeploymentGroupId: pulumi.String("deployment-group"),
/// 			Location:                   pulumi.String("global"),
/// 			Network:                    _default.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultMirroringEndpointGroup, err := networksecurity.NewMirroringEndpointGroup(ctx, "default", &networksecurity.MirroringEndpointGroupArgs{
/// 			MirroringEndpointGroupId: pulumi.String("endpoint-group"),
/// 			Location:                 pulumi.String("global"),
/// 			MirroringDeploymentGroup: defaultMirroringDeploymentGroup.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityProfile, err := networksecurity.NewSecurityProfile(ctx, "default", &networksecurity.SecurityProfileArgs{
/// 			Name:        pulumi.String("sec-profile"),
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			Description: pulumi.String("my description"),
/// 			Type:        pulumi.String("CUSTOM_MIRRORING"),
/// 			CustomMirroringProfile: &networksecurity.SecurityProfileCustomMirroringProfileArgs{
/// 				MirroringEndpointGroup: defaultMirroringEndpointGroup.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		securityProfileGroup1, err := networksecurity.NewSecurityProfileGroup(ctx, "security_profile_group_1", &networksecurity.SecurityProfileGroupArgs{
/// 			Name:                   pulumi.String("sec-profile-group"),
/// 			Parent:                 pulumi.String("organizations/123456789"),
/// 			Description:            pulumi.String("my description"),
/// 			CustomMirroringProfile: defaultSecurityProfile.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secureTagKey1, err := tags.NewTagKey(ctx, "secure_tag_key_1", &tags.TagKeyArgs{
/// 			Description: pulumi.String("Test tag key description"),
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			Purpose:     pulumi.String("GCE_FIREWALL"),
/// 			ShortName:   pulumi.String("tag-key"),
/// 			PurposeData: pulumi.StringMap{
/// 				"network": _default.Name.ApplyT(func(name string) (string, error) {
/// 					return fmt.Sprintf("my-project-name/%v", name), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secureTagValue1, err := tags.NewTagValue(ctx, "secure_tag_value_1", &tags.TagValueArgs{
/// 			Description: pulumi.String("Test tag value description."),
/// 			Parent:      secureTagKey1.ID().ToIDOutput().ToStringOutput(),
/// 			ShortName:   pulumi.String("tag-value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkFirewallPolicyPacketMirroringRule(ctx, "primary", &compute.NetworkFirewallPolicyPacketMirroringRuleArgs{
/// 			Action:         pulumi.String("mirror"),
/// 			Description:    pulumi.String("This is a simple packet mirroring rule description"),
/// 			Direction:      pulumi.String("INGRESS"),
/// 			Disabled:       pulumi.Bool(false),
/// 			FirewallPolicy: basicNetworkFirewallPolicy.ID().ToIDOutput().ToStringOutput(),
/// 			Priority:       pulumi.Int(1000),
/// 			RuleName:       pulumi.String("test-rule"),
/// 			Match: &compute.NetworkFirewallPolicyPacketMirroringRuleMatchArgs{
/// 				SrcIpRanges: pulumi.StringArray{
/// 					pulumi.String("10.100.0.1/32"),
/// 				},
/// 				Layer4Configs: compute.NetworkFirewallPolicyPacketMirroringRuleMatchLayer4ConfigArray{
/// 					&compute.NetworkFirewallPolicyPacketMirroringRuleMatchLayer4ConfigArgs{
/// 						IpProtocol: pulumi.String("all"),
/// 					},
/// 				},
/// 			},
/// 			SecurityProfileGroup: securityProfileGroup1.ID().ApplyT(func(id pulumi.ID) (string, error) {
/// 				return fmt.Sprintf("//networksecurity.googleapis.com/%v", id), nil
/// 			}).(pulumi.StringOutput),
/// 			TargetSecureTags: compute.NetworkFirewallPolicyPacketMirroringRuleTargetSecureTagArray{
/// 				&compute.NetworkFirewallPolicyPacketMirroringRuleTargetSecureTagArgs{
/// 					Name: secureTagValue1.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("tagValues/%v", name), nil
/// 					}).(pulumi.StringOutput),
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_compute_network" "default" {
///   name                    = "fw-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_networkfirewallpolicy" "basic_network_firewall_policy" {
///   name        = "fw-policy"
///   description = "Sample global network firewall policy"
///   project     = "my-project-name"
/// }
/// resource "gcp_compute_networkfirewallpolicypacketmirroringrule" "primary" {
///   action          = "mirror"
///   description     = "This is a simple packet mirroring rule description"
///   direction       = "INGRESS"
///   disabled        = false
///   firewall_policy = gcp_compute_networkfirewallpolicy.basic_network_firewall_policy.id
///   priority        = 1000
///   rule_name       = "test-rule"
///   match = {
///     src_ip_ranges = ["10.100.0.1/32"]
///     layer4_configs = [{
///       "ipProtocol" = "all"
///     }]
///   }
///   security_profile_group ="//networksecurity.googleapis.com/${gcp_networksecurity_securityprofilegroup.security_profile_group_1.id}"
///   target_secure_tags {
///     name ="tagValues/${gcp_tags_tagvalue.secure_tag_value_1.name}"
///   }
/// }
/// resource "gcp_networksecurity_mirroringdeploymentgroup" "default" {
///   mirroring_deployment_group_id = "deployment-group"
///   location                      = "global"
///   network                       = gcp_compute_network.default.id
/// }
/// resource "gcp_networksecurity_mirroringendpointgroup" "default" {
///   mirroring_endpoint_group_id = "endpoint-group"
///   location                    = "global"
///   mirroring_deployment_group  = gcp_networksecurity_mirroringdeploymentgroup.default.id
/// }
/// resource "gcp_networksecurity_securityprofile" "default" {
///   name        = "sec-profile"
///   parent      = "organizations/123456789"
///   description = "my description"
///   type        = "CUSTOM_MIRRORING"
///   custom_mirroring_profile = {
///     mirroring_endpoint_group = gcp_networksecurity_mirroringendpointgroup.default.id
///   }
/// }
/// resource "gcp_networksecurity_securityprofilegroup" "security_profile_group_1" {
///   name                     = "sec-profile-group"
///   parent                   = "organizations/123456789"
///   description              = "my description"
///   custom_mirroring_profile = gcp_networksecurity_securityprofile.default.id
/// }
/// resource "gcp_tags_tagkey" "secure_tag_key_1" {
///   description = "Test tag key description"
///   parent      = "organizations/123456789"
///   purpose     = "GCE_FIREWALL"
///   short_name  = "tag-key"
///   purpose_data = {
///     "network" ="my-project-name/${gcp_compute_network.default.name}"
///   }
/// }
/// resource "gcp_tags_tagvalue" "secure_tag_value_1" {
///   description = "Test tag value description."
///   parent      = gcp_tags_tagkey.secure_tag_key_1.id
///   short_name  = "tag-value"
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
/// import com.pulumi.gcp.compute.NetworkFirewallPolicy;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyArgs;
/// import com.pulumi.gcp.networksecurity.MirroringDeploymentGroup;
/// import com.pulumi.gcp.networksecurity.MirroringDeploymentGroupArgs;
/// import com.pulumi.gcp.networksecurity.MirroringEndpointGroup;
/// import com.pulumi.gcp.networksecurity.MirroringEndpointGroupArgs;
/// import com.pulumi.gcp.networksecurity.SecurityProfile;
/// import com.pulumi.gcp.networksecurity.SecurityProfileArgs;
/// import com.pulumi.gcp.networksecurity.inputs.SecurityProfileCustomMirroringProfileArgs;
/// import com.pulumi.gcp.networksecurity.SecurityProfileGroup;
/// import com.pulumi.gcp.networksecurity.SecurityProfileGroupArgs;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyPacketMirroringRule;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyPacketMirroringRuleArgs;
/// import com.pulumi.gcp.compute.inputs.NetworkFirewallPolicyPacketMirroringRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.NetworkFirewallPolicyPacketMirroringRuleMatchLayer4ConfigArgs;
/// import com.pulumi.gcp.compute.inputs.NetworkFirewallPolicyPacketMirroringRuleTargetSecureTagArgs;
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
///             .name("fw-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var basicNetworkFirewallPolicy = new NetworkFirewallPolicy("basicNetworkFirewallPolicy", NetworkFirewallPolicyArgs.builder()
///             .name("fw-policy")
///             .description("Sample global network firewall policy")
///             .project("my-project-name")
///             .build());
///
///         var defaultMirroringDeploymentGroup = new MirroringDeploymentGroup("defaultMirroringDeploymentGroup", MirroringDeploymentGroupArgs.builder()
///             .mirroringDeploymentGroupId("deployment-group")
///             .location("global")
///             .network(default_.id())
///             .build());
///
///         var defaultMirroringEndpointGroup = new MirroringEndpointGroup("defaultMirroringEndpointGroup", MirroringEndpointGroupArgs.builder()
///             .mirroringEndpointGroupId("endpoint-group")
///             .location("global")
///             .mirroringDeploymentGroup(defaultMirroringDeploymentGroup.id())
///             .build());
///
///         var defaultSecurityProfile = new SecurityProfile("defaultSecurityProfile", SecurityProfileArgs.builder()
///             .name("sec-profile")
///             .parent("organizations/123456789")
///             .description("my description")
///             .type("CUSTOM_MIRRORING")
///             .customMirroringProfile(SecurityProfileCustomMirroringProfileArgs.builder()
///                 .mirroringEndpointGroup(defaultMirroringEndpointGroup.id())
///                 .build())
///             .build());
///
///         var securityProfileGroup1 = new SecurityProfileGroup("securityProfileGroup1", SecurityProfileGroupArgs.builder()
///             .name("sec-profile-group")
///             .parent("organizations/123456789")
///             .description("my description")
///             .customMirroringProfile(defaultSecurityProfile.id())
///             .build());
///
///         var secureTagKey1 = new TagKey("secureTagKey1", TagKeyArgs.builder()
///             .description("Test tag key description")
///             .parent("organizations/123456789")
///             .purpose("GCE_FIREWALL")
///             .shortName("tag-key")
///             .purposeData(Map.of("network", default_.name().applyValue(_name -> String.format("my-project-name/%s", _name))))
///             .build());
///
///         var secureTagValue1 = new TagValue("secureTagValue1", TagValueArgs.builder()
///             .description("Test tag value description.")
///             .parent(secureTagKey1.id())
///             .shortName("tag-value")
///             .build());
///
///         var primary = new NetworkFirewallPolicyPacketMirroringRule("primary", NetworkFirewallPolicyPacketMirroringRuleArgs.builder()
///             .action("mirror")
///             .description("This is a simple packet mirroring rule description")
///             .direction("INGRESS")
///             .disabled(false)
///             .firewallPolicy(basicNetworkFirewallPolicy.id())
///             .priority(1000)
///             .ruleName("test-rule")
///             .match(NetworkFirewallPolicyPacketMirroringRuleMatchArgs.builder()
///                 .srcIpRanges("10.100.0.1/32")
///                 .layer4Configs(NetworkFirewallPolicyPacketMirroringRuleMatchLayer4ConfigArgs.builder()
///                     .ipProtocol("all")
///                     .build())
///                 .build())
///             .securityProfileGroup(securityProfileGroup1.id().applyValue(_id -> String.format("//networksecurity.googleapis.com/%s", _id)))
///             .targetSecureTags(NetworkFirewallPolicyPacketMirroringRuleTargetSecureTagArgs.builder()
///                 .name(secureTagValue1.name().applyValue(_name -> String.format("tagValues/%s", _name)))
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
///       name: fw-network
///       autoCreateSubnetworks: false
///   basicNetworkFirewallPolicy:
///     type: gcp:compute:NetworkFirewallPolicy
///     name: basic_network_firewall_policy
///     properties:
///       name: fw-policy
///       description: Sample global network firewall policy
///       project: my-project-name
///   primary:
///     type: gcp:compute:NetworkFirewallPolicyPacketMirroringRule
///     properties:
///       action: mirror
///       description: This is a simple packet mirroring rule description
///       direction: INGRESS
///       disabled: false
///       firewallPolicy: ${basicNetworkFirewallPolicy.id}
///       priority: 1000
///       ruleName: test-rule
///       match:
///         srcIpRanges:
///           - 10.100.0.1/32
///         layer4Configs:
///           - ipProtocol: all
///       securityProfileGroup: //networksecurity.googleapis.com/${securityProfileGroup1.id}
///       targetSecureTags:
///         - name: tagValues/${secureTagValue1.name}
///   defaultMirroringDeploymentGroup:
///     type: gcp:networksecurity:MirroringDeploymentGroup
///     name: default
///     properties:
///       mirroringDeploymentGroupId: deployment-group
///       location: global
///       network: ${default.id}
///   defaultMirroringEndpointGroup:
///     type: gcp:networksecurity:MirroringEndpointGroup
///     name: default
///     properties:
///       mirroringEndpointGroupId: endpoint-group
///       location: global
///       mirroringDeploymentGroup: ${defaultMirroringDeploymentGroup.id}
///   defaultSecurityProfile:
///     type: gcp:networksecurity:SecurityProfile
///     name: default
///     properties:
///       name: sec-profile
///       parent: organizations/123456789
///       description: my description
///       type: CUSTOM_MIRRORING
///       customMirroringProfile:
///         mirroringEndpointGroup: ${defaultMirroringEndpointGroup.id}
///   securityProfileGroup1:
///     type: gcp:networksecurity:SecurityProfileGroup
///     name: security_profile_group_1
///     properties:
///       name: sec-profile-group
///       parent: organizations/123456789
///       description: my description
///       customMirroringProfile: ${defaultSecurityProfile.id}
///   secureTagKey1:
///     type: gcp:tags:TagKey
///     name: secure_tag_key_1
///     properties:
///       description: Test tag key description
///       parent: organizations/123456789
///       purpose: GCE_FIREWALL
///       shortName: tag-key
///       purposeData:
///         network: my-project-name/${default.name}
///   secureTagValue1:
///     type: gcp:tags:TagValue
///     name: secure_tag_value_1
///     properties:
///       description: Test tag value description.
///       parent: ${secureTagKey1.id}
///       shortName: tag-value
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
/// NetworkFirewallPolicyPacketMirroringRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/firewallPolicies/{{firewall_policy}}/packetMirroringRules/{{priority}}`
/// * `{{project}}/{{firewall_policy}}/{{priority}}`
/// * `{{firewall_policy}}/{{priority}}`
///
///
/// When using the `pulumi import` command, NetworkFirewallPolicyPacketMirroringRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyPacketMirroringRule:NetworkFirewallPolicyPacketMirroringRule default projects/{{project}}/global/firewallPolicies/{{firewall_policy}}/packetMirroringRules/{{priority}}
/// $ pulumi import gcp:compute/networkFirewallPolicyPacketMirroringRule:NetworkFirewallPolicyPacketMirroringRule default {{project}}/{{firewall_policy}}/{{priority}}
/// $ pulumi import gcp:compute/networkFirewallPolicyPacketMirroringRule:NetworkFirewallPolicyPacketMirroringRule default {{firewall_policy}}/{{priority}}
/// ```
class NetworkFirewallPolicyPacketMirroringRule extends pulumi.CustomResource {
  /// The Action to perform when the client connection triggers the rule. Valid actions are "mirror", "doNotMirror", "gotoNext".
  late final pulumi.Output<String> action;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description for this resource.
  late final pulumi.Output<String?> description;
  /// The direction in which this rule applies.
  /// Possible values are: `INGRESS`, `EGRESS`.
  late final pulumi.Output<String> direction;
  /// Denotes whether the firewall policy rule is disabled.
  /// When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist.
  /// If this is unspecified, the firewall policy rule will be enabled.
  late final pulumi.Output<bool?> disabled;
  /// The firewall policy of the resource.
  late final pulumi.Output<String> firewallPolicy;
  /// Type of the resource. Always `compute#packetMirroringRule` for firewall policy packet mirroring rules
  late final pulumi.Output<String> kind;
  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  late final pulumi.Output<NetworkFirewallPolicyPacketMirroringRuleMatch> match;
  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  late final pulumi.Output<int> priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// An optional name for the rule. This field is not a unique identifier and can be updated.
  late final pulumi.Output<String?> ruleName;
  /// Calculation of the complexity of a single firewall policy rule.
  late final pulumi.Output<int> ruleTupleCount;
  /// A fully-qualified URL of a SecurityProfile resource instance.
  /// Example: https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group
  /// Must be specified if action = 'mirror' and cannot be specified for other actions.
  late final pulumi.Output<String?> securityProfileGroup;
  /// A list of secure tags that controls which instances the firewall rule applies to.
  /// If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the targetSecureTag are in INEFFECTIVE state, then this rule will be ignored.
  /// targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> targetSecureTags;
  /// Boolean flag indicating if the traffic should be TLS decrypted.
  /// Can be set only if action = 'mirror' and cannot be set for other actions.
  late final pulumi.Output<bool?> tlsInspect;

  /// Creates a new [NetworkFirewallPolicyPacketMirroringRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkFirewallPolicyPacketMirroringRule]. {@macro pulumi_compute_network_firewall_policy_packet_mirroring_rule_network_firewall_policy_packet_mirroring_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkFirewallPolicyPacketMirroringRule(
    String name, {
    NetworkFirewallPolicyPacketMirroringRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkFirewallPolicyPacketMirroringRule:NetworkFirewallPolicyPacketMirroringRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String>('action');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    direction = registerOutput<String>('direction');
    disabled = registerOutput<bool?>('disabled');
    firewallPolicy = registerOutput<String>('firewallPolicy');
    kind = registerOutput<String>('kind');
    match = registerOutput<NetworkFirewallPolicyPacketMirroringRuleMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkFirewallPolicyPacketMirroringRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    ruleName = registerOutput<String?>('ruleName');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    securityProfileGroup = registerOutput<String?>('securityProfileGroup');
    targetSecureTags = registerOutput<List<Map<String, dynamic>>?>('targetSecureTags');
    tlsInspect = registerOutput<bool?>('tlsInspect');
  }

  /// Gets an existing [NetworkFirewallPolicyPacketMirroringRule] resource's state with the given [name] and [id].
  static NetworkFirewallPolicyPacketMirroringRule get(
    String name,
    pulumi.Input<String> id, {
    NetworkFirewallPolicyPacketMirroringRuleState? state,
  }) {
    return NetworkFirewallPolicyPacketMirroringRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkFirewallPolicyPacketMirroringRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkFirewallPolicyPacketMirroringRule:NetworkFirewallPolicyPacketMirroringRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String>('action');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    direction = registerOutput<String>('direction');
    disabled = registerOutput<bool?>('disabled');
    firewallPolicy = registerOutput<String>('firewallPolicy');
    kind = registerOutput<String>('kind');
    match = registerOutput<NetworkFirewallPolicyPacketMirroringRuleMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkFirewallPolicyPacketMirroringRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    ruleName = registerOutput<String?>('ruleName');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    securityProfileGroup = registerOutput<String?>('securityProfileGroup');
    targetSecureTags = registerOutput<List<Map<String, dynamic>>?>('targetSecureTags');
    tlsInspect = registerOutput<bool?>('tlsInspect');
  }
}
