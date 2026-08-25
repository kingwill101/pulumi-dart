import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_firewall_policy_rule_args.dart';
import 'network_firewall_policy_rule_match.dart';
import 'network_firewall_policy_rule_state.dart';
import 'network_firewall_policy_rule_target_secure_tag.dart';

/// Represents a rule that describes one or more match conditions along with the action to be taken when traffic matches this condition (allow or deny).
///
///
/// To get more information about NetworkFirewallPolicyRule, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/addRule)
///
/// ## Example Usage
///
/// ### Network Firewall Policy Rule
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicGlobalNetworksecurityAddressGroup = new gcp.networksecurity.AddressGroup("basic_global_networksecurity_address_group", {
///     name: "address-group",
///     parent: "projects/my-project-name",
///     description: "Sample global networksecurity_address_group",
///     location: "global",
///     items: ["208.80.154.224/32"],
///     type: "IPV4",
///     capacity: 100,
/// });
/// const basicNetworkFirewallPolicy = new gcp.compute.NetworkFirewallPolicy("basic_network_firewall_policy", {
///     name: "fw-policy",
///     description: "Sample global network firewall policy",
///     project: "my-project-name",
/// });
/// const basicNetwork = new gcp.compute.Network("basic_network", {name: "network"});
/// const basicKey = new gcp.tags.TagKey("basic_key", {
///     description: "For keyname resources.",
///     parent: "organizations/123456789",
///     purpose: "GCE_FIREWALL",
///     shortName: "tag-key",
///     purposeData: {
///         network: pulumi.interpolate`my-project-name/${basicNetwork.name}`,
///     },
/// });
/// const basicValue = new gcp.tags.TagValue("basic_value", {
///     description: "For valuename resources.",
///     parent: basicKey.id,
///     shortName: "tag-value",
/// });
/// const primary = new gcp.compute.NetworkFirewallPolicyRule("primary", {
///     action: "allow",
///     description: "This is a simple rule description",
///     direction: "INGRESS",
///     disabled: false,
///     enableLogging: true,
///     firewallPolicy: basicNetworkFirewallPolicy.name,
///     priority: 1000,
///     ruleName: "test-rule",
///     targetServiceAccounts: ["my@service-account.com"],
///     match: {
///         srcAddressGroups: [basicGlobalNetworksecurityAddressGroup.id],
///         srcIpRanges: ["10.100.0.1/32"],
///         srcFqdns: ["google.com"],
///         srcRegionCodes: ["US"],
///         srcThreatIntelligences: ["iplist-known-malicious-ips"],
///         srcSecureTags: [{
///             name: basicValue.id,
///         }],
///         layer4Configs: [{
///             ipProtocol: "all",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_global_networksecurity_address_group = gcp.networksecurity.AddressGroup("basic_global_networksecurity_address_group",
///     name="address-group",
///     parent="projects/my-project-name",
///     description="Sample global networksecurity_address_group",
///     location="global",
///     items=["208.80.154.224/32"],
///     type="IPV4",
///     capacity=100)
/// basic_network_firewall_policy = gcp.compute.NetworkFirewallPolicy("basic_network_firewall_policy",
///     name="fw-policy",
///     description="Sample global network firewall policy",
///     project="my-project-name")
/// basic_network = gcp.compute.Network("basic_network", name="network")
/// basic_key = gcp.tags.TagKey("basic_key",
///     description="For keyname resources.",
///     parent="organizations/123456789",
///     purpose="GCE_FIREWALL",
///     short_name="tag-key",
///     purpose_data={
///         "network": basic_network.name.apply(lambda name: f"my-project-name/{name}"),
///     })
/// basic_value = gcp.tags.TagValue("basic_value",
///     description="For valuename resources.",
///     parent=basic_key.id,
///     short_name="tag-value")
/// primary = gcp.compute.NetworkFirewallPolicyRule("primary",
///     action="allow",
///     description="This is a simple rule description",
///     direction="INGRESS",
///     disabled=False,
///     enable_logging=True,
///     firewall_policy=basic_network_firewall_policy.name,
///     priority=1000,
///     rule_name="test-rule",
///     target_service_accounts=["my@service-account.com"],
///     match={
///         "src_address_groups": [basic_global_networksecurity_address_group.id],
///         "src_ip_ranges": ["10.100.0.1/32"],
///         "src_fqdns": ["google.com"],
///         "src_region_codes": ["US"],
///         "src_threat_intelligences": ["iplist-known-malicious-ips"],
///         "src_secure_tags": [{
///             "name": basic_value.id,
///         }],
///         "layer4_configs": [{
///             "ip_protocol": "all",
///         }],
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
///     var basicGlobalNetworksecurityAddressGroup = new Gcp.NetworkSecurity.AddressGroup("basic_global_networksecurity_address_group", new()
///     {
///         Name = "address-group",
///         Parent = "projects/my-project-name",
///         Description = "Sample global networksecurity_address_group",
///         Location = "global",
///         Items = new[]
///         {
///             "208.80.154.224/32",
///         },
///         Type = "IPV4",
///         Capacity = 100,
///     });
///
///     var basicNetworkFirewallPolicy = new Gcp.Compute.NetworkFirewallPolicy("basic_network_firewall_policy", new()
///     {
///         Name = "fw-policy",
///         Description = "Sample global network firewall policy",
///         Project = "my-project-name",
///     });
///
///     var basicNetwork = new Gcp.Compute.Network("basic_network", new()
///     {
///         Name = "network",
///     });
///
///     var basicKey = new Gcp.Tags.TagKey("basic_key", new()
///     {
///         Description = "For keyname resources.",
///         Parent = "organizations/123456789",
///         Purpose = "GCE_FIREWALL",
///         ShortName = "tag-key",
///         PurposeData =
///         {
///             { "network", basicNetwork.Name.Apply(name => $"my-project-name/{name}") },
///         },
///     });
///
///     var basicValue = new Gcp.Tags.TagValue("basic_value", new()
///     {
///         Description = "For valuename resources.",
///         Parent = basicKey.Id,
///         ShortName = "tag-value",
///     });
///
///     var primary = new Gcp.Compute.NetworkFirewallPolicyRule("primary", new()
///     {
///         Action = "allow",
///         Description = "This is a simple rule description",
///         Direction = "INGRESS",
///         Disabled = false,
///         EnableLogging = true,
///         FirewallPolicy = basicNetworkFirewallPolicy.Name,
///         Priority = 1000,
///         RuleName = "test-rule",
///         TargetServiceAccounts = new[]
///         {
///             "my@service-account.com",
///         },
///         Match = new Gcp.Compute.Inputs.NetworkFirewallPolicyRuleMatchArgs
///         {
///             SrcAddressGroups = new[]
///             {
///                 basicGlobalNetworksecurityAddressGroup.Id,
///             },
///             SrcIpRanges = new[]
///             {
///                 "10.100.0.1/32",
///             },
///             SrcFqdns = new[]
///             {
///                 "google.com",
///             },
///             SrcRegionCodes = new[]
///             {
///                 "US",
///             },
///             SrcThreatIntelligences = new[]
///             {
///                 "iplist-known-malicious-ips",
///             },
///             SrcSecureTags = new[]
///             {
///                 new Gcp.Compute.Inputs.NetworkFirewallPolicyRuleMatchSrcSecureTagArgs
///                 {
///                     Name = basicValue.Id,
///                 },
///             },
///             Layer4Configs = new[]
///             {
///                 new Gcp.Compute.Inputs.NetworkFirewallPolicyRuleMatchLayer4ConfigArgs
///                 {
///                     IpProtocol = "all",
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basicGlobalNetworksecurityAddressGroup, err := networksecurity.NewAddressGroup(ctx, "basic_global_networksecurity_address_group", &networksecurity.AddressGroupArgs{
/// 			Name:        pulumi.String("address-group"),
/// 			Parent:      pulumi.String("projects/my-project-name"),
/// 			Description: pulumi.String("Sample global networksecurity_address_group"),
/// 			Location:    pulumi.String("global"),
/// 			Items: pulumi.StringArray{
/// 				pulumi.String("208.80.154.224/32"),
/// 			},
/// 			Type:     pulumi.String("IPV4"),
/// 			Capacity: pulumi.Int(100),
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
/// 		basicNetwork, err := compute.NewNetwork(ctx, "basic_network", &compute.NetworkArgs{
/// 			Name: pulumi.String("network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicKey, err := tags.NewTagKey(ctx, "basic_key", &tags.TagKeyArgs{
/// 			Description: pulumi.String("For keyname resources."),
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			Purpose:     pulumi.String("GCE_FIREWALL"),
/// 			ShortName:   pulumi.String("tag-key"),
/// 			PurposeData: pulumi.StringMap{
/// 				"network": basicNetwork.Name.ApplyT(func(name string) (string, error) {
/// 					return fmt.Sprintf("my-project-name/%v", name), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicValue, err := tags.NewTagValue(ctx, "basic_value", &tags.TagValueArgs{
/// 			Description: pulumi.String("For valuename resources."),
/// 			Parent:      basicKey.ID().ToIDOutput().ToStringOutput(),
/// 			ShortName:   pulumi.String("tag-value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkFirewallPolicyRule(ctx, "primary", &compute.NetworkFirewallPolicyRuleArgs{
/// 			Action:         pulumi.String("allow"),
/// 			Description:    pulumi.String("This is a simple rule description"),
/// 			Direction:      pulumi.String("INGRESS"),
/// 			Disabled:       pulumi.Bool(false),
/// 			EnableLogging:  pulumi.Bool(true),
/// 			FirewallPolicy: basicNetworkFirewallPolicy.Name,
/// 			Priority:       pulumi.Int(1000),
/// 			RuleName:       pulumi.String("test-rule"),
/// 			TargetServiceAccounts: pulumi.StringArray{
/// 				pulumi.String("my@service-account.com"),
/// 			},
/// 			Match: &compute.NetworkFirewallPolicyRuleMatchArgs{
/// 				SrcAddressGroups: pulumi.StringArray{
/// 					basicGlobalNetworksecurityAddressGroup.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 				SrcIpRanges: pulumi.StringArray{
/// 					pulumi.String("10.100.0.1/32"),
/// 				},
/// 				SrcFqdns: pulumi.StringArray{
/// 					pulumi.String("google.com"),
/// 				},
/// 				SrcRegionCodes: pulumi.StringArray{
/// 					pulumi.String("US"),
/// 				},
/// 				SrcThreatIntelligences: pulumi.StringArray{
/// 					pulumi.String("iplist-known-malicious-ips"),
/// 				},
/// 				SrcSecureTags: compute.NetworkFirewallPolicyRuleMatchSrcSecureTagArray{
/// 					&compute.NetworkFirewallPolicyRuleMatchSrcSecureTagArgs{
/// 						Name: basicValue.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 				},
/// 				Layer4Configs: compute.NetworkFirewallPolicyRuleMatchLayer4ConfigArray{
/// 					&compute.NetworkFirewallPolicyRuleMatchLayer4ConfigArgs{
/// 						IpProtocol: pulumi.String("all"),
/// 					},
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
/// resource "gcp_networksecurity_addressgroup" "basic_global_networksecurity_address_group" {
///   name        = "address-group"
///   parent      = "projects/my-project-name"
///   description = "Sample global networksecurity_address_group"
///   location    = "global"
///   items       = ["208.80.154.224/32"]
///   type        = "IPV4"
///   capacity    = 100
/// }
/// resource "gcp_compute_networkfirewallpolicy" "basic_network_firewall_policy" {
///   name        = "fw-policy"
///   description = "Sample global network firewall policy"
///   project     = "my-project-name"
/// }
/// resource "gcp_compute_networkfirewallpolicyrule" "primary" {
///   action                  = "allow"
///   description             = "This is a simple rule description"
///   direction               = "INGRESS"
///   disabled                = false
///   enable_logging          = true
///   firewall_policy         = gcp_compute_networkfirewallpolicy.basic_network_firewall_policy.name
///   priority                = 1000
///   rule_name               = "test-rule"
///   target_service_accounts = ["my@service-account.com"]
///   match = {
///     src_address_groups       = [gcp_networksecurity_addressgroup.basic_global_networksecurity_address_group.id]
///     src_ip_ranges            = ["10.100.0.1/32"]
///     src_fqdns                = ["google.com"]
///     src_region_codes         = ["US"]
///     src_threat_intelligences = ["iplist-known-malicious-ips"]
///     src_secure_tags = [{
///       "name" = gcp_tags_tagvalue.basic_value.id
///     }]
///     layer4_configs = [{
///       "ipProtocol" = "all"
///     }]
///   }
/// }
/// resource "gcp_compute_network" "basic_network" {
///   name = "network"
/// }
/// resource "gcp_tags_tagkey" "basic_key" {
///   description = "For keyname resources."
///   parent      = "organizations/123456789"
///   purpose     = "GCE_FIREWALL"
///   short_name  = "tag-key"
///   purpose_data = {
///     "network" ="my-project-name/${gcp_compute_network.basic_network.name}"
///   }
/// }
/// resource "gcp_tags_tagvalue" "basic_value" {
///   description = "For valuename resources."
///   parent      = gcp_tags_tagkey.basic_key.id
///   short_name  = "tag-value"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networksecurity.AddressGroup;
/// import com.pulumi.gcp.networksecurity.AddressGroupArgs;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicy;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyRule;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.NetworkFirewallPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.NetworkFirewallPolicyRuleMatchSrcSecureTagArgs;
/// import com.pulumi.gcp.compute.inputs.NetworkFirewallPolicyRuleMatchLayer4ConfigArgs;
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
///         var basicGlobalNetworksecurityAddressGroup = new AddressGroup("basicGlobalNetworksecurityAddressGroup", AddressGroupArgs.builder()
///             .name("address-group")
///             .parent("projects/my-project-name")
///             .description("Sample global networksecurity_address_group")
///             .location("global")
///             .items("208.80.154.224/32")
///             .type("IPV4")
///             .capacity(100)
///             .build());
///
///         var basicNetworkFirewallPolicy = new NetworkFirewallPolicy("basicNetworkFirewallPolicy", NetworkFirewallPolicyArgs.builder()
///             .name("fw-policy")
///             .description("Sample global network firewall policy")
///             .project("my-project-name")
///             .build());
///
///         var basicNetwork = new Network("basicNetwork", NetworkArgs.builder()
///             .name("network")
///             .build());
///
///         var basicKey = new TagKey("basicKey", TagKeyArgs.builder()
///             .description("For keyname resources.")
///             .parent("organizations/123456789")
///             .purpose("GCE_FIREWALL")
///             .shortName("tag-key")
///             .purposeData(Map.of("network", basicNetwork.name().applyValue(_name -> String.format("my-project-name/%s", _name))))
///             .build());
///
///         var basicValue = new TagValue("basicValue", TagValueArgs.builder()
///             .description("For valuename resources.")
///             .parent(basicKey.id())
///             .shortName("tag-value")
///             .build());
///
///         var primary = new NetworkFirewallPolicyRule("primary", NetworkFirewallPolicyRuleArgs.builder()
///             .action("allow")
///             .description("This is a simple rule description")
///             .direction("INGRESS")
///             .disabled(false)
///             .enableLogging(true)
///             .firewallPolicy(basicNetworkFirewallPolicy.name())
///             .priority(1000)
///             .ruleName("test-rule")
///             .targetServiceAccounts("my@service-account.com")
///             .match(NetworkFirewallPolicyRuleMatchArgs.builder()
///                 .srcAddressGroups(basicGlobalNetworksecurityAddressGroup.id())
///                 .srcIpRanges("10.100.0.1/32")
///                 .srcFqdns("google.com")
///                 .srcRegionCodes("US")
///                 .srcThreatIntelligences("iplist-known-malicious-ips")
///                 .srcSecureTags(NetworkFirewallPolicyRuleMatchSrcSecureTagArgs.builder()
///                     .name(basicValue.id())
///                     .build())
///                 .layer4Configs(NetworkFirewallPolicyRuleMatchLayer4ConfigArgs.builder()
///                     .ipProtocol("all")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicGlobalNetworksecurityAddressGroup:
///     type: gcp:networksecurity:AddressGroup
///     name: basic_global_networksecurity_address_group
///     properties:
///       name: address-group
///       parent: projects/my-project-name
///       description: Sample global networksecurity_address_group
///       location: global
///       items:
///         - 208.80.154.224/32
///       type: IPV4
///       capacity: 100
///   basicNetworkFirewallPolicy:
///     type: gcp:compute:NetworkFirewallPolicy
///     name: basic_network_firewall_policy
///     properties:
///       name: fw-policy
///       description: Sample global network firewall policy
///       project: my-project-name
///   primary:
///     type: gcp:compute:NetworkFirewallPolicyRule
///     properties:
///       action: allow
///       description: This is a simple rule description
///       direction: INGRESS
///       disabled: false
///       enableLogging: true
///       firewallPolicy: ${basicNetworkFirewallPolicy.name}
///       priority: 1000
///       ruleName: test-rule
///       targetServiceAccounts:
///         - my@service-account.com
///       match:
///         srcAddressGroups:
///           - ${basicGlobalNetworksecurityAddressGroup.id}
///         srcIpRanges:
///           - 10.100.0.1/32
///         srcFqdns:
///           - google.com
///         srcRegionCodes:
///           - US
///         srcThreatIntelligences:
///           - iplist-known-malicious-ips
///         srcSecureTags:
///           - name: ${basicValue.id}
///         layer4Configs:
///           - ipProtocol: all
///   basicNetwork:
///     type: gcp:compute:Network
///     name: basic_network
///     properties:
///       name: network
///   basicKey:
///     type: gcp:tags:TagKey
///     name: basic_key
///     properties:
///       description: For keyname resources.
///       parent: organizations/123456789
///       purpose: GCE_FIREWALL
///       shortName: tag-key
///       purposeData:
///         network: my-project-name/${basicNetwork.name}
///   basicValue:
///     type: gcp:tags:TagValue
///     name: basic_value
///     properties:
///       description: For valuename resources.
///       parent: ${basicKey.id}
///       shortName: tag-value
/// ```
///
/// ### Network Firewall Policy Rule Network Scope Egress
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicNetworkFirewallPolicy = new gcp.compute.NetworkFirewallPolicy("basic_network_firewall_policy", {
///     name: "fw-policy",
///     description: "Sample global network firewall policy",
///     project: "my-project-name",
/// });
/// const primary = new gcp.compute.NetworkFirewallPolicyRule("primary", {
///     action: "allow",
///     description: "This is a simple rule description",
///     direction: "EGRESS",
///     disabled: false,
///     enableLogging: true,
///     firewallPolicy: basicNetworkFirewallPolicy.name,
///     priority: 1000,
///     ruleName: "test-rule",
///     match: {
///         destIpRanges: ["10.100.0.1/32"],
///         destNetworkScope: "INTERNET",
///         layer4Configs: [{
///             ipProtocol: "all",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_network_firewall_policy = gcp.compute.NetworkFirewallPolicy("basic_network_firewall_policy",
///     name="fw-policy",
///     description="Sample global network firewall policy",
///     project="my-project-name")
/// primary = gcp.compute.NetworkFirewallPolicyRule("primary",
///     action="allow",
///     description="This is a simple rule description",
///     direction="EGRESS",
///     disabled=False,
///     enable_logging=True,
///     firewall_policy=basic_network_firewall_policy.name,
///     priority=1000,
///     rule_name="test-rule",
///     match={
///         "dest_ip_ranges": ["10.100.0.1/32"],
///         "dest_network_scope": "INTERNET",
///         "layer4_configs": [{
///             "ip_protocol": "all",
///         }],
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
///     var basicNetworkFirewallPolicy = new Gcp.Compute.NetworkFirewallPolicy("basic_network_firewall_policy", new()
///     {
///         Name = "fw-policy",
///         Description = "Sample global network firewall policy",
///         Project = "my-project-name",
///     });
///
///     var primary = new Gcp.Compute.NetworkFirewallPolicyRule("primary", new()
///     {
///         Action = "allow",
///         Description = "This is a simple rule description",
///         Direction = "EGRESS",
///         Disabled = false,
///         EnableLogging = true,
///         FirewallPolicy = basicNetworkFirewallPolicy.Name,
///         Priority = 1000,
///         RuleName = "test-rule",
///         Match = new Gcp.Compute.Inputs.NetworkFirewallPolicyRuleMatchArgs
///         {
///             DestIpRanges = new[]
///             {
///                 "10.100.0.1/32",
///             },
///             DestNetworkScope = "INTERNET",
///             Layer4Configs = new[]
///             {
///                 new Gcp.Compute.Inputs.NetworkFirewallPolicyRuleMatchLayer4ConfigArgs
///                 {
///                     IpProtocol = "all",
///                 },
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basicNetworkFirewallPolicy, err := compute.NewNetworkFirewallPolicy(ctx, "basic_network_firewall_policy", &compute.NetworkFirewallPolicyArgs{
/// 			Name:        pulumi.String("fw-policy"),
/// 			Description: pulumi.String("Sample global network firewall policy"),
/// 			Project:     pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkFirewallPolicyRule(ctx, "primary", &compute.NetworkFirewallPolicyRuleArgs{
/// 			Action:         pulumi.String("allow"),
/// 			Description:    pulumi.String("This is a simple rule description"),
/// 			Direction:      pulumi.String("EGRESS"),
/// 			Disabled:       pulumi.Bool(false),
/// 			EnableLogging:  pulumi.Bool(true),
/// 			FirewallPolicy: basicNetworkFirewallPolicy.Name,
/// 			Priority:       pulumi.Int(1000),
/// 			RuleName:       pulumi.String("test-rule"),
/// 			Match: &compute.NetworkFirewallPolicyRuleMatchArgs{
/// 				DestIpRanges: pulumi.StringArray{
/// 					pulumi.String("10.100.0.1/32"),
/// 				},
/// 				DestNetworkScope: pulumi.String("INTERNET"),
/// 				Layer4Configs: compute.NetworkFirewallPolicyRuleMatchLayer4ConfigArray{
/// 					&compute.NetworkFirewallPolicyRuleMatchLayer4ConfigArgs{
/// 						IpProtocol: pulumi.String("all"),
/// 					},
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
/// resource "gcp_compute_networkfirewallpolicy" "basic_network_firewall_policy" {
///   name        = "fw-policy"
///   description = "Sample global network firewall policy"
///   project     = "my-project-name"
/// }
/// resource "gcp_compute_networkfirewallpolicyrule" "primary" {
///   action          = "allow"
///   description     = "This is a simple rule description"
///   direction       = "EGRESS"
///   disabled        = false
///   enable_logging  = true
///   firewall_policy = gcp_compute_networkfirewallpolicy.basic_network_firewall_policy.name
///   priority        = 1000
///   rule_name       = "test-rule"
///   match = {
///     dest_ip_ranges     = ["10.100.0.1/32"]
///     dest_network_scope = "INTERNET"
///     layer4_configs = [{
///       "ipProtocol" = "all"
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
/// import com.pulumi.gcp.compute.NetworkFirewallPolicy;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyArgs;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyRule;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.NetworkFirewallPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.NetworkFirewallPolicyRuleMatchLayer4ConfigArgs;
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
///         var basicNetworkFirewallPolicy = new NetworkFirewallPolicy("basicNetworkFirewallPolicy", NetworkFirewallPolicyArgs.builder()
///             .name("fw-policy")
///             .description("Sample global network firewall policy")
///             .project("my-project-name")
///             .build());
///
///         var primary = new NetworkFirewallPolicyRule("primary", NetworkFirewallPolicyRuleArgs.builder()
///             .action("allow")
///             .description("This is a simple rule description")
///             .direction("EGRESS")
///             .disabled(false)
///             .enableLogging(true)
///             .firewallPolicy(basicNetworkFirewallPolicy.name())
///             .priority(1000)
///             .ruleName("test-rule")
///             .match(NetworkFirewallPolicyRuleMatchArgs.builder()
///                 .destIpRanges("10.100.0.1/32")
///                 .destNetworkScope("INTERNET")
///                 .layer4Configs(NetworkFirewallPolicyRuleMatchLayer4ConfigArgs.builder()
///                     .ipProtocol("all")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicNetworkFirewallPolicy:
///     type: gcp:compute:NetworkFirewallPolicy
///     name: basic_network_firewall_policy
///     properties:
///       name: fw-policy
///       description: Sample global network firewall policy
///       project: my-project-name
///   primary:
///     type: gcp:compute:NetworkFirewallPolicyRule
///     properties:
///       action: allow
///       description: This is a simple rule description
///       direction: EGRESS
///       disabled: false
///       enableLogging: true
///       firewallPolicy: ${basicNetworkFirewallPolicy.name}
///       priority: 1000
///       ruleName: test-rule
///       match:
///         destIpRanges:
///           - 10.100.0.1/32
///         destNetworkScope: INTERNET
///         layer4Configs:
///           - ipProtocol: all
/// ```
///
/// ### Network Firewall Policy Rule Network Scope Ingress
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicNetworkFirewallPolicy = new gcp.compute.NetworkFirewallPolicy("basic_network_firewall_policy", {
///     name: "fw-policy",
///     description: "Sample global network firewall policy",
///     project: "my-project-name",
/// });
/// const network = new gcp.compute.Network("network", {name: "network"});
/// const primary = new gcp.compute.NetworkFirewallPolicyRule("primary", {
///     action: "allow",
///     description: "This is a simple rule description",
///     direction: "INGRESS",
///     disabled: false,
///     enableLogging: true,
///     firewallPolicy: basicNetworkFirewallPolicy.name,
///     priority: 1000,
///     ruleName: "test-rule",
///     match: {
///         srcIpRanges: ["11.100.0.1/32"],
///         srcNetworkScope: "VPC_NETWORKS",
///         srcNetworks: [network.id],
///         layer4Configs: [{
///             ipProtocol: "all",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_network_firewall_policy = gcp.compute.NetworkFirewallPolicy("basic_network_firewall_policy",
///     name="fw-policy",
///     description="Sample global network firewall policy",
///     project="my-project-name")
/// network = gcp.compute.Network("network", name="network")
/// primary = gcp.compute.NetworkFirewallPolicyRule("primary",
///     action="allow",
///     description="This is a simple rule description",
///     direction="INGRESS",
///     disabled=False,
///     enable_logging=True,
///     firewall_policy=basic_network_firewall_policy.name,
///     priority=1000,
///     rule_name="test-rule",
///     match={
///         "src_ip_ranges": ["11.100.0.1/32"],
///         "src_network_scope": "VPC_NETWORKS",
///         "src_networks": [network.id],
///         "layer4_configs": [{
///             "ip_protocol": "all",
///         }],
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
///     var basicNetworkFirewallPolicy = new Gcp.Compute.NetworkFirewallPolicy("basic_network_firewall_policy", new()
///     {
///         Name = "fw-policy",
///         Description = "Sample global network firewall policy",
///         Project = "my-project-name",
///     });
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "network",
///     });
///
///     var primary = new Gcp.Compute.NetworkFirewallPolicyRule("primary", new()
///     {
///         Action = "allow",
///         Description = "This is a simple rule description",
///         Direction = "INGRESS",
///         Disabled = false,
///         EnableLogging = true,
///         FirewallPolicy = basicNetworkFirewallPolicy.Name,
///         Priority = 1000,
///         RuleName = "test-rule",
///         Match = new Gcp.Compute.Inputs.NetworkFirewallPolicyRuleMatchArgs
///         {
///             SrcIpRanges = new[]
///             {
///                 "11.100.0.1/32",
///             },
///             SrcNetworkScope = "VPC_NETWORKS",
///             SrcNetworks = new[]
///             {
///                 network.Id,
///             },
///             Layer4Configs = new[]
///             {
///                 new Gcp.Compute.Inputs.NetworkFirewallPolicyRuleMatchLayer4ConfigArgs
///                 {
///                     IpProtocol = "all",
///                 },
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basicNetworkFirewallPolicy, err := compute.NewNetworkFirewallPolicy(ctx, "basic_network_firewall_policy", &compute.NetworkFirewallPolicyArgs{
/// 			Name:        pulumi.String("fw-policy"),
/// 			Description: pulumi.String("Sample global network firewall policy"),
/// 			Project:     pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name: pulumi.String("network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkFirewallPolicyRule(ctx, "primary", &compute.NetworkFirewallPolicyRuleArgs{
/// 			Action:         pulumi.String("allow"),
/// 			Description:    pulumi.String("This is a simple rule description"),
/// 			Direction:      pulumi.String("INGRESS"),
/// 			Disabled:       pulumi.Bool(false),
/// 			EnableLogging:  pulumi.Bool(true),
/// 			FirewallPolicy: basicNetworkFirewallPolicy.Name,
/// 			Priority:       pulumi.Int(1000),
/// 			RuleName:       pulumi.String("test-rule"),
/// 			Match: &compute.NetworkFirewallPolicyRuleMatchArgs{
/// 				SrcIpRanges: pulumi.StringArray{
/// 					pulumi.String("11.100.0.1/32"),
/// 				},
/// 				SrcNetworkScope: pulumi.String("VPC_NETWORKS"),
/// 				SrcNetworks: pulumi.StringArray{
/// 					network.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 				Layer4Configs: compute.NetworkFirewallPolicyRuleMatchLayer4ConfigArray{
/// 					&compute.NetworkFirewallPolicyRuleMatchLayer4ConfigArgs{
/// 						IpProtocol: pulumi.String("all"),
/// 					},
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
/// resource "gcp_compute_networkfirewallpolicy" "basic_network_firewall_policy" {
///   name        = "fw-policy"
///   description = "Sample global network firewall policy"
///   project     = "my-project-name"
/// }
/// resource "gcp_compute_networkfirewallpolicyrule" "primary" {
///   action          = "allow"
///   description     = "This is a simple rule description"
///   direction       = "INGRESS"
///   disabled        = false
///   enable_logging  = true
///   firewall_policy = gcp_compute_networkfirewallpolicy.basic_network_firewall_policy.name
///   priority        = 1000
///   rule_name       = "test-rule"
///   match = {
///     src_ip_ranges     = ["11.100.0.1/32"]
///     src_network_scope = "VPC_NETWORKS"
///     src_networks      = [gcp_compute_network.network.id]
///     layer4_configs = [{
///       "ipProtocol" = "all"
///     }]
///   }
/// }
/// resource "gcp_compute_network" "network" {
///   name = "network"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicy;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyRule;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.NetworkFirewallPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.NetworkFirewallPolicyRuleMatchLayer4ConfigArgs;
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
///         var basicNetworkFirewallPolicy = new NetworkFirewallPolicy("basicNetworkFirewallPolicy", NetworkFirewallPolicyArgs.builder()
///             .name("fw-policy")
///             .description("Sample global network firewall policy")
///             .project("my-project-name")
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("network")
///             .build());
///
///         var primary = new NetworkFirewallPolicyRule("primary", NetworkFirewallPolicyRuleArgs.builder()
///             .action("allow")
///             .description("This is a simple rule description")
///             .direction("INGRESS")
///             .disabled(false)
///             .enableLogging(true)
///             .firewallPolicy(basicNetworkFirewallPolicy.name())
///             .priority(1000)
///             .ruleName("test-rule")
///             .match(NetworkFirewallPolicyRuleMatchArgs.builder()
///                 .srcIpRanges("11.100.0.1/32")
///                 .srcNetworkScope("VPC_NETWORKS")
///                 .srcNetworks(network.id())
///                 .layer4Configs(NetworkFirewallPolicyRuleMatchLayer4ConfigArgs.builder()
///                     .ipProtocol("all")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicNetworkFirewallPolicy:
///     type: gcp:compute:NetworkFirewallPolicy
///     name: basic_network_firewall_policy
///     properties:
///       name: fw-policy
///       description: Sample global network firewall policy
///       project: my-project-name
///   primary:
///     type: gcp:compute:NetworkFirewallPolicyRule
///     properties:
///       action: allow
///       description: This is a simple rule description
///       direction: INGRESS
///       disabled: false
///       enableLogging: true
///       firewallPolicy: ${basicNetworkFirewallPolicy.name}
///       priority: 1000
///       ruleName: test-rule
///       match:
///         srcIpRanges:
///           - 11.100.0.1/32
///         srcNetworkScope: VPC_NETWORKS
///         srcNetworks:
///           - ${network.id}
///         layer4Configs:
///           - ipProtocol: all
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: network
/// ```
///
/// ### Network Firewall Policy Rule Network Context Egress
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicNetworkFirewallPolicy = new gcp.compute.NetworkFirewallPolicy("basic_network_firewall_policy", {
///     name: "fw-policy",
///     description: "Sample global network firewall policy",
///     project: "my-project-name",
/// });
/// const primary = new gcp.compute.NetworkFirewallPolicyRule("primary", {
///     action: "allow",
///     description: "This is a simple rule description",
///     direction: "EGRESS",
///     disabled: false,
///     enableLogging: true,
///     firewallPolicy: basicNetworkFirewallPolicy.name,
///     priority: 1000,
///     ruleName: "test-rule",
///     match: {
///         destIpRanges: ["10.100.0.1/32"],
///         destNetworkContext: "INTERNET",
///         layer4Configs: [{
///             ipProtocol: "all",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_network_firewall_policy = gcp.compute.NetworkFirewallPolicy("basic_network_firewall_policy",
///     name="fw-policy",
///     description="Sample global network firewall policy",
///     project="my-project-name")
/// primary = gcp.compute.NetworkFirewallPolicyRule("primary",
///     action="allow",
///     description="This is a simple rule description",
///     direction="EGRESS",
///     disabled=False,
///     enable_logging=True,
///     firewall_policy=basic_network_firewall_policy.name,
///     priority=1000,
///     rule_name="test-rule",
///     match={
///         "dest_ip_ranges": ["10.100.0.1/32"],
///         "dest_network_context": "INTERNET",
///         "layer4_configs": [{
///             "ip_protocol": "all",
///         }],
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
///     var basicNetworkFirewallPolicy = new Gcp.Compute.NetworkFirewallPolicy("basic_network_firewall_policy", new()
///     {
///         Name = "fw-policy",
///         Description = "Sample global network firewall policy",
///         Project = "my-project-name",
///     });
///
///     var primary = new Gcp.Compute.NetworkFirewallPolicyRule("primary", new()
///     {
///         Action = "allow",
///         Description = "This is a simple rule description",
///         Direction = "EGRESS",
///         Disabled = false,
///         EnableLogging = true,
///         FirewallPolicy = basicNetworkFirewallPolicy.Name,
///         Priority = 1000,
///         RuleName = "test-rule",
///         Match = new Gcp.Compute.Inputs.NetworkFirewallPolicyRuleMatchArgs
///         {
///             DestIpRanges = new[]
///             {
///                 "10.100.0.1/32",
///             },
///             DestNetworkContext = "INTERNET",
///             Layer4Configs = new[]
///             {
///                 new Gcp.Compute.Inputs.NetworkFirewallPolicyRuleMatchLayer4ConfigArgs
///                 {
///                     IpProtocol = "all",
///                 },
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basicNetworkFirewallPolicy, err := compute.NewNetworkFirewallPolicy(ctx, "basic_network_firewall_policy", &compute.NetworkFirewallPolicyArgs{
/// 			Name:        pulumi.String("fw-policy"),
/// 			Description: pulumi.String("Sample global network firewall policy"),
/// 			Project:     pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkFirewallPolicyRule(ctx, "primary", &compute.NetworkFirewallPolicyRuleArgs{
/// 			Action:         pulumi.String("allow"),
/// 			Description:    pulumi.String("This is a simple rule description"),
/// 			Direction:      pulumi.String("EGRESS"),
/// 			Disabled:       pulumi.Bool(false),
/// 			EnableLogging:  pulumi.Bool(true),
/// 			FirewallPolicy: basicNetworkFirewallPolicy.Name,
/// 			Priority:       pulumi.Int(1000),
/// 			RuleName:       pulumi.String("test-rule"),
/// 			Match: &compute.NetworkFirewallPolicyRuleMatchArgs{
/// 				DestIpRanges: pulumi.StringArray{
/// 					pulumi.String("10.100.0.1/32"),
/// 				},
/// 				DestNetworkContext: pulumi.String("INTERNET"),
/// 				Layer4Configs: compute.NetworkFirewallPolicyRuleMatchLayer4ConfigArray{
/// 					&compute.NetworkFirewallPolicyRuleMatchLayer4ConfigArgs{
/// 						IpProtocol: pulumi.String("all"),
/// 					},
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
/// resource "gcp_compute_networkfirewallpolicy" "basic_network_firewall_policy" {
///   name        = "fw-policy"
///   description = "Sample global network firewall policy"
///   project     = "my-project-name"
/// }
/// resource "gcp_compute_networkfirewallpolicyrule" "primary" {
///   action          = "allow"
///   description     = "This is a simple rule description"
///   direction       = "EGRESS"
///   disabled        = false
///   enable_logging  = true
///   firewall_policy = gcp_compute_networkfirewallpolicy.basic_network_firewall_policy.name
///   priority        = 1000
///   rule_name       = "test-rule"
///   match = {
///     dest_ip_ranges       = ["10.100.0.1/32"]
///     dest_network_context = "INTERNET"
///     layer4_configs = [{
///       "ipProtocol" = "all"
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
/// import com.pulumi.gcp.compute.NetworkFirewallPolicy;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyArgs;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyRule;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.NetworkFirewallPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.NetworkFirewallPolicyRuleMatchLayer4ConfigArgs;
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
///         var basicNetworkFirewallPolicy = new NetworkFirewallPolicy("basicNetworkFirewallPolicy", NetworkFirewallPolicyArgs.builder()
///             .name("fw-policy")
///             .description("Sample global network firewall policy")
///             .project("my-project-name")
///             .build());
///
///         var primary = new NetworkFirewallPolicyRule("primary", NetworkFirewallPolicyRuleArgs.builder()
///             .action("allow")
///             .description("This is a simple rule description")
///             .direction("EGRESS")
///             .disabled(false)
///             .enableLogging(true)
///             .firewallPolicy(basicNetworkFirewallPolicy.name())
///             .priority(1000)
///             .ruleName("test-rule")
///             .match(NetworkFirewallPolicyRuleMatchArgs.builder()
///                 .destIpRanges("10.100.0.1/32")
///                 .destNetworkContext("INTERNET")
///                 .layer4Configs(NetworkFirewallPolicyRuleMatchLayer4ConfigArgs.builder()
///                     .ipProtocol("all")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicNetworkFirewallPolicy:
///     type: gcp:compute:NetworkFirewallPolicy
///     name: basic_network_firewall_policy
///     properties:
///       name: fw-policy
///       description: Sample global network firewall policy
///       project: my-project-name
///   primary:
///     type: gcp:compute:NetworkFirewallPolicyRule
///     properties:
///       action: allow
///       description: This is a simple rule description
///       direction: EGRESS
///       disabled: false
///       enableLogging: true
///       firewallPolicy: ${basicNetworkFirewallPolicy.name}
///       priority: 1000
///       ruleName: test-rule
///       match:
///         destIpRanges:
///           - 10.100.0.1/32
///         destNetworkContext: INTERNET
///         layer4Configs:
///           - ipProtocol: all
/// ```
///
/// ### Network Firewall Policy Rule Network Context Ingress
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicNetworkFirewallPolicy = new gcp.compute.NetworkFirewallPolicy("basic_network_firewall_policy", {
///     name: "fw-policy",
///     description: "Sample global network firewall policy",
///     project: "my-project-name",
/// });
/// const network = new gcp.compute.Network("network", {name: "network"});
/// const primary = new gcp.compute.NetworkFirewallPolicyRule("primary", {
///     action: "allow",
///     description: "This is a simple rule description",
///     direction: "INGRESS",
///     disabled: false,
///     enableLogging: true,
///     firewallPolicy: basicNetworkFirewallPolicy.name,
///     priority: 1000,
///     ruleName: "test-rule",
///     match: {
///         srcIpRanges: ["11.100.0.1/32"],
///         srcNetworkContext: "VPC_NETWORKS",
///         srcNetworks: [network.id],
///         layer4Configs: [{
///             ipProtocol: "all",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_network_firewall_policy = gcp.compute.NetworkFirewallPolicy("basic_network_firewall_policy",
///     name="fw-policy",
///     description="Sample global network firewall policy",
///     project="my-project-name")
/// network = gcp.compute.Network("network", name="network")
/// primary = gcp.compute.NetworkFirewallPolicyRule("primary",
///     action="allow",
///     description="This is a simple rule description",
///     direction="INGRESS",
///     disabled=False,
///     enable_logging=True,
///     firewall_policy=basic_network_firewall_policy.name,
///     priority=1000,
///     rule_name="test-rule",
///     match={
///         "src_ip_ranges": ["11.100.0.1/32"],
///         "src_network_context": "VPC_NETWORKS",
///         "src_networks": [network.id],
///         "layer4_configs": [{
///             "ip_protocol": "all",
///         }],
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
///     var basicNetworkFirewallPolicy = new Gcp.Compute.NetworkFirewallPolicy("basic_network_firewall_policy", new()
///     {
///         Name = "fw-policy",
///         Description = "Sample global network firewall policy",
///         Project = "my-project-name",
///     });
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "network",
///     });
///
///     var primary = new Gcp.Compute.NetworkFirewallPolicyRule("primary", new()
///     {
///         Action = "allow",
///         Description = "This is a simple rule description",
///         Direction = "INGRESS",
///         Disabled = false,
///         EnableLogging = true,
///         FirewallPolicy = basicNetworkFirewallPolicy.Name,
///         Priority = 1000,
///         RuleName = "test-rule",
///         Match = new Gcp.Compute.Inputs.NetworkFirewallPolicyRuleMatchArgs
///         {
///             SrcIpRanges = new[]
///             {
///                 "11.100.0.1/32",
///             },
///             SrcNetworkContext = "VPC_NETWORKS",
///             SrcNetworks = new[]
///             {
///                 network.Id,
///             },
///             Layer4Configs = new[]
///             {
///                 new Gcp.Compute.Inputs.NetworkFirewallPolicyRuleMatchLayer4ConfigArgs
///                 {
///                     IpProtocol = "all",
///                 },
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basicNetworkFirewallPolicy, err := compute.NewNetworkFirewallPolicy(ctx, "basic_network_firewall_policy", &compute.NetworkFirewallPolicyArgs{
/// 			Name:        pulumi.String("fw-policy"),
/// 			Description: pulumi.String("Sample global network firewall policy"),
/// 			Project:     pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name: pulumi.String("network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkFirewallPolicyRule(ctx, "primary", &compute.NetworkFirewallPolicyRuleArgs{
/// 			Action:         pulumi.String("allow"),
/// 			Description:    pulumi.String("This is a simple rule description"),
/// 			Direction:      pulumi.String("INGRESS"),
/// 			Disabled:       pulumi.Bool(false),
/// 			EnableLogging:  pulumi.Bool(true),
/// 			FirewallPolicy: basicNetworkFirewallPolicy.Name,
/// 			Priority:       pulumi.Int(1000),
/// 			RuleName:       pulumi.String("test-rule"),
/// 			Match: &compute.NetworkFirewallPolicyRuleMatchArgs{
/// 				SrcIpRanges: pulumi.StringArray{
/// 					pulumi.String("11.100.0.1/32"),
/// 				},
/// 				SrcNetworkContext: pulumi.String("VPC_NETWORKS"),
/// 				SrcNetworks: pulumi.StringArray{
/// 					network.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 				Layer4Configs: compute.NetworkFirewallPolicyRuleMatchLayer4ConfigArray{
/// 					&compute.NetworkFirewallPolicyRuleMatchLayer4ConfigArgs{
/// 						IpProtocol: pulumi.String("all"),
/// 					},
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
/// resource "gcp_compute_networkfirewallpolicy" "basic_network_firewall_policy" {
///   name        = "fw-policy"
///   description = "Sample global network firewall policy"
///   project     = "my-project-name"
/// }
/// resource "gcp_compute_networkfirewallpolicyrule" "primary" {
///   action          = "allow"
///   description     = "This is a simple rule description"
///   direction       = "INGRESS"
///   disabled        = false
///   enable_logging  = true
///   firewall_policy = gcp_compute_networkfirewallpolicy.basic_network_firewall_policy.name
///   priority        = 1000
///   rule_name       = "test-rule"
///   match = {
///     src_ip_ranges       = ["11.100.0.1/32"]
///     src_network_context = "VPC_NETWORKS"
///     src_networks        = [gcp_compute_network.network.id]
///     layer4_configs = [{
///       "ipProtocol" = "all"
///     }]
///   }
/// }
/// resource "gcp_compute_network" "network" {
///   name = "network"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicy;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyRule;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.NetworkFirewallPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.NetworkFirewallPolicyRuleMatchLayer4ConfigArgs;
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
///         var basicNetworkFirewallPolicy = new NetworkFirewallPolicy("basicNetworkFirewallPolicy", NetworkFirewallPolicyArgs.builder()
///             .name("fw-policy")
///             .description("Sample global network firewall policy")
///             .project("my-project-name")
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("network")
///             .build());
///
///         var primary = new NetworkFirewallPolicyRule("primary", NetworkFirewallPolicyRuleArgs.builder()
///             .action("allow")
///             .description("This is a simple rule description")
///             .direction("INGRESS")
///             .disabled(false)
///             .enableLogging(true)
///             .firewallPolicy(basicNetworkFirewallPolicy.name())
///             .priority(1000)
///             .ruleName("test-rule")
///             .match(NetworkFirewallPolicyRuleMatchArgs.builder()
///                 .srcIpRanges("11.100.0.1/32")
///                 .srcNetworkContext("VPC_NETWORKS")
///                 .srcNetworks(network.id())
///                 .layer4Configs(NetworkFirewallPolicyRuleMatchLayer4ConfigArgs.builder()
///                     .ipProtocol("all")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicNetworkFirewallPolicy:
///     type: gcp:compute:NetworkFirewallPolicy
///     name: basic_network_firewall_policy
///     properties:
///       name: fw-policy
///       description: Sample global network firewall policy
///       project: my-project-name
///   primary:
///     type: gcp:compute:NetworkFirewallPolicyRule
///     properties:
///       action: allow
///       description: This is a simple rule description
///       direction: INGRESS
///       disabled: false
///       enableLogging: true
///       firewallPolicy: ${basicNetworkFirewallPolicy.name}
///       priority: 1000
///       ruleName: test-rule
///       match:
///         srcIpRanges:
///           - 11.100.0.1/32
///         srcNetworkContext: VPC_NETWORKS
///         srcNetworks:
///           - ${network.id}
///         layer4Configs:
///           - ipProtocol: all
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: network
/// ```
///
/// ### Network Firewall Policy Rule Target Type Internal Managed Lb
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const net = new gcp.compute.Network("net", {
///     name: "network",
///     autoCreateSubnetworks: false,
/// });
/// const backend = new gcp.compute.Subnetwork("backend", {
///     name: "backend-subnet",
///     region: "us-central1",
///     network: net.id,
///     ipCidrRange: "10.10.0.0/24",
/// });
/// const proxy = new gcp.compute.Subnetwork("proxy", {
///     name: "proxy-subnet",
///     region: "us-central1",
///     network: net.id,
///     ipCidrRange: "10.20.0.0/24",
///     purpose: "REGIONAL_MANAGED_PROXY",
///     role: "ACTIVE",
/// });
/// const _default = new gcp.compute.RegionHealthCheck("default", {
///     name: "health-check",
///     region: "us-central1",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
///     name: "backend-service",
///     region: "us-central1",
///     protocol: "HTTP",
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const defaultRegionUrlMap = new gcp.compute.RegionUrlMap("default", {
///     name: "url-map",
///     region: "us-central1",
///     defaultService: defaultRegionBackendService.id,
/// });
/// const defaultRegionTargetHttpProxy = new gcp.compute.RegionTargetHttpProxy("default", {
///     name: "target-http-proxy",
///     region: "us-central1",
///     urlMap: defaultRegionUrlMap.id,
/// });
/// const ilb = new gcp.compute.ForwardingRule("ilb", {
///     name: "forwarding-rule",
///     region: "us-central1",
///     network: net.id,
///     subnetwork: backend.id,
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     target: defaultRegionTargetHttpProxy.id,
///     ipProtocol: "TCP",
///     portRange: "80",
/// }, {
///     dependsOn: [proxy],
/// });
/// const fwPolicy = new gcp.compute.NetworkFirewallPolicy("fw_policy", {
///     name: "fw-policy",
///     project: "my-project-name",
/// });
/// const primary = new gcp.compute.NetworkFirewallPolicyRule("primary", {
///     firewallPolicy: fwPolicy.name,
///     priority: 1000,
///     action: "allow",
///     direction: "INGRESS",
///     targetType: "INTERNAL_MANAGED_LB",
///     targetForwardingRules: [ilb.id],
///     match: {
///         srcIpRanges: ["10.0.0.0/8"],
///         layer4Configs: [{
///             ipProtocol: "tcp",
///         }],
///     },
/// });
/// const globalAssoc = new gcp.compute.NetworkFirewallPolicyAssociation("global_assoc", {
///     name: "global-policy-assoc-_27169",
///     firewallPolicy: fwPolicy.id,
///     attachmentTarget: net.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// net = gcp.compute.Network("net",
///     name="network",
///     auto_create_subnetworks=False)
/// backend = gcp.compute.Subnetwork("backend",
///     name="backend-subnet",
///     region="us-central1",
///     network=net.id,
///     ip_cidr_range="10.10.0.0/24")
/// proxy = gcp.compute.Subnetwork("proxy",
///     name="proxy-subnet",
///     region="us-central1",
///     network=net.id,
///     ip_cidr_range="10.20.0.0/24",
///     purpose="REGIONAL_MANAGED_PROXY",
///     role="ACTIVE")
/// default = gcp.compute.RegionHealthCheck("default",
///     name="health-check",
///     region="us-central1",
///     http_health_check={
///         "port": 80,
///     })
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
///     name="backend-service",
///     region="us-central1",
///     protocol="HTTP",
///     load_balancing_scheme="INTERNAL_MANAGED",
///     health_checks=default.id)
/// default_region_url_map = gcp.compute.RegionUrlMap("default",
///     name="url-map",
///     region="us-central1",
///     default_service=default_region_backend_service.id)
/// default_region_target_http_proxy = gcp.compute.RegionTargetHttpProxy("default",
///     name="target-http-proxy",
///     region="us-central1",
///     url_map=default_region_url_map.id)
/// ilb = gcp.compute.ForwardingRule("ilb",
///     name="forwarding-rule",
///     region="us-central1",
///     network=net.id,
///     subnetwork=backend.id,
///     load_balancing_scheme="INTERNAL_MANAGED",
///     target=default_region_target_http_proxy.id,
///     ip_protocol="TCP",
///     port_range="80",
///     opts = pulumi.ResourceOptions(depends_on=[proxy]))
/// fw_policy = gcp.compute.NetworkFirewallPolicy("fw_policy",
///     name="fw-policy",
///     project="my-project-name")
/// primary = gcp.compute.NetworkFirewallPolicyRule("primary",
///     firewall_policy=fw_policy.name,
///     priority=1000,
///     action="allow",
///     direction="INGRESS",
///     target_type="INTERNAL_MANAGED_LB",
///     target_forwarding_rules=[ilb.id],
///     match={
///         "src_ip_ranges": ["10.0.0.0/8"],
///         "layer4_configs": [{
///             "ip_protocol": "tcp",
///         }],
///     })
/// global_assoc = gcp.compute.NetworkFirewallPolicyAssociation("global_assoc",
///     name="global-policy-assoc-_27169",
///     firewall_policy=fw_policy.id,
///     attachment_target=net.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var net = new Gcp.Compute.Network("net", new()
///     {
///         Name = "network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var backend = new Gcp.Compute.Subnetwork("backend", new()
///     {
///         Name = "backend-subnet",
///         Region = "us-central1",
///         Network = net.Id,
///         IpCidrRange = "10.10.0.0/24",
///     });
///
///     var proxy = new Gcp.Compute.Subnetwork("proxy", new()
///     {
///         Name = "proxy-subnet",
///         Region = "us-central1",
///         Network = net.Id,
///         IpCidrRange = "10.20.0.0/24",
///         Purpose = "REGIONAL_MANAGED_PROXY",
///         Role = "ACTIVE",
///     });
///
///     var @default = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Name = "health-check",
///         Region = "us-central1",
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Name = "backend-service",
///         Region = "us-central1",
///         Protocol = "HTTP",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var defaultRegionUrlMap = new Gcp.Compute.RegionUrlMap("default", new()
///     {
///         Name = "url-map",
///         Region = "us-central1",
///         DefaultService = defaultRegionBackendService.Id,
///     });
///
///     var defaultRegionTargetHttpProxy = new Gcp.Compute.RegionTargetHttpProxy("default", new()
///     {
///         Name = "target-http-proxy",
///         Region = "us-central1",
///         UrlMap = defaultRegionUrlMap.Id,
///     });
///
///     var ilb = new Gcp.Compute.ForwardingRule("ilb", new()
///     {
///         Name = "forwarding-rule",
///         Region = "us-central1",
///         Network = net.Id,
///         Subnetwork = backend.Id,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         Target = defaultRegionTargetHttpProxy.Id,
///         IpProtocol = "TCP",
///         PortRange = "80",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             proxy,
///         },
///     });
///
///     var fwPolicy = new Gcp.Compute.NetworkFirewallPolicy("fw_policy", new()
///     {
///         Name = "fw-policy",
///         Project = "my-project-name",
///     });
///
///     var primary = new Gcp.Compute.NetworkFirewallPolicyRule("primary", new()
///     {
///         FirewallPolicy = fwPolicy.Name,
///         Priority = 1000,
///         Action = "allow",
///         Direction = "INGRESS",
///         TargetType = "INTERNAL_MANAGED_LB",
///         TargetForwardingRules = new[]
///         {
///             ilb.Id,
///         },
///         Match = new Gcp.Compute.Inputs.NetworkFirewallPolicyRuleMatchArgs
///         {
///             SrcIpRanges = new[]
///             {
///                 "10.0.0.0/8",
///             },
///             Layer4Configs = new[]
///             {
///                 new Gcp.Compute.Inputs.NetworkFirewallPolicyRuleMatchLayer4ConfigArgs
///                 {
///                     IpProtocol = "tcp",
///                 },
///             },
///         },
///     });
///
///     var globalAssoc = new Gcp.Compute.NetworkFirewallPolicyAssociation("global_assoc", new()
///     {
///         Name = "global-policy-assoc-_27169",
///         FirewallPolicy = fwPolicy.Id,
///         AttachmentTarget = net.Id,
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
/// 		net, err := compute.NewNetwork(ctx, "net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		backend, err := compute.NewSubnetwork(ctx, "backend", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("backend-subnet"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     net.ID().ToIDOutput().ToStringOutput(),
/// 			IpCidrRange: pulumi.String("10.10.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		proxy, err := compute.NewSubnetwork(ctx, "proxy", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("proxy-subnet"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     net.ID().ToIDOutput().ToStringOutput(),
/// 			IpCidrRange: pulumi.String("10.20.0.0/24"),
/// 			Purpose:     pulumi.String("REGIONAL_MANAGED_PROXY"),
/// 			Role:        pulumi.String("ACTIVE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Name:   pulumi.String("health-check"),
/// 			Region: pulumi.String("us-central1"),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegionBackendService, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Name:                pulumi.String("backend-service"),
/// 			Region:              pulumi.String("us-central1"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegionUrlMap, err := compute.NewRegionUrlMap(ctx, "default", &compute.RegionUrlMapArgs{
/// 			Name:           pulumi.String("url-map"),
/// 			Region:         pulumi.String("us-central1"),
/// 			DefaultService: defaultRegionBackendService.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegionTargetHttpProxy, err := compute.NewRegionTargetHttpProxy(ctx, "default", &compute.RegionTargetHttpProxyArgs{
/// 			Name:   pulumi.String("target-http-proxy"),
/// 			Region: pulumi.String("us-central1"),
/// 			UrlMap: defaultRegionUrlMap.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ilb, err := compute.NewForwardingRule(ctx, "ilb", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("forwarding-rule"),
/// 			Region:              pulumi.String("us-central1"),
/// 			Network:             net.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:          backend.ID().ToIDOutput().ToStringOutput(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			Target:              defaultRegionTargetHttpProxy.ID().ToIDOutput().ToStringOutput(),
/// 			IpProtocol:          pulumi.String("TCP"),
/// 			PortRange:           pulumi.String("80"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			proxy,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fwPolicy, err := compute.NewNetworkFirewallPolicy(ctx, "fw_policy", &compute.NetworkFirewallPolicyArgs{
/// 			Name:    pulumi.String("fw-policy"),
/// 			Project: pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkFirewallPolicyRule(ctx, "primary", &compute.NetworkFirewallPolicyRuleArgs{
/// 			FirewallPolicy: fwPolicy.Name,
/// 			Priority:       pulumi.Int(1000),
/// 			Action:         pulumi.String("allow"),
/// 			Direction:      pulumi.String("INGRESS"),
/// 			TargetType:     pulumi.String("INTERNAL_MANAGED_LB"),
/// 			TargetForwardingRules: pulumi.StringArray{
/// 				ilb.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			Match: &compute.NetworkFirewallPolicyRuleMatchArgs{
/// 				SrcIpRanges: pulumi.StringArray{
/// 					pulumi.String("10.0.0.0/8"),
/// 				},
/// 				Layer4Configs: compute.NetworkFirewallPolicyRuleMatchLayer4ConfigArray{
/// 					&compute.NetworkFirewallPolicyRuleMatchLayer4ConfigArgs{
/// 						IpProtocol: pulumi.String("tcp"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkFirewallPolicyAssociation(ctx, "global_assoc", &compute.NetworkFirewallPolicyAssociationArgs{
/// 			Name:             pulumi.String("global-policy-assoc-_27169"),
/// 			FirewallPolicy:   fwPolicy.ID().ToIDOutput().ToStringOutput(),
/// 			AttachmentTarget: net.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_network" "net" {
///   name                    = "network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "backend" {
///   name          = "backend-subnet"
///   region        = "us-central1"
///   network       = gcp_compute_network.net.id
///   ip_cidr_range = "10.10.0.0/24"
/// }
/// resource "gcp_compute_subnetwork" "proxy" {
///   name          = "proxy-subnet"
///   region        = "us-central1"
///   network       = gcp_compute_network.net.id
///   ip_cidr_range = "10.20.0.0/24"
///   purpose       = "REGIONAL_MANAGED_PROXY"
///   role          = "ACTIVE"
/// }
/// resource "gcp_compute_regionhealthcheck" "default" {
///   name   = "health-check"
///   region = "us-central1"
///   http_health_check = {
///     port = 80
///   }
/// }
/// resource "gcp_compute_regionbackendservice" "default" {
///   name                  = "backend-service"
///   region                = "us-central1"
///   protocol              = "HTTP"
///   load_balancing_scheme = "INTERNAL_MANAGED"
///   health_checks         = gcp_compute_regionhealthcheck.default.id
/// }
/// resource "gcp_compute_regionurlmap" "default" {
///   name            = "url-map"
///   region          = "us-central1"
///   default_service = gcp_compute_regionbackendservice.default.id
/// }
/// resource "gcp_compute_regiontargethttpproxy" "default" {
///   name    = "target-http-proxy"
///   region  = "us-central1"
///   url_map = gcp_compute_regionurlmap.default.id
/// }
/// resource "gcp_compute_forwardingrule" "ilb" {
///   depends_on            = [gcp_compute_subnetwork.proxy]
///   name                  = "forwarding-rule"
///   region                = "us-central1"
///   network               = gcp_compute_network.net.id
///   subnetwork            = gcp_compute_subnetwork.backend.id
///   load_balancing_scheme = "INTERNAL_MANAGED"
///   target                = gcp_compute_regiontargethttpproxy.default.id
///   ip_protocol           = "TCP"
///   port_range            = "80"
/// }
/// resource "gcp_compute_networkfirewallpolicy" "fw_policy" {
///   name    = "fw-policy"
///   project = "my-project-name"
/// }
/// resource "gcp_compute_networkfirewallpolicyrule" "primary" {
///   firewall_policy         = gcp_compute_networkfirewallpolicy.fw_policy.name
///   priority                = 1000
///   action                  = "allow"
///   direction               = "INGRESS"
///   target_type             = "INTERNAL_MANAGED_LB"
///   target_forwarding_rules = [gcp_compute_forwardingrule.ilb.id]
///   match = {
///     src_ip_ranges = ["10.0.0.0/8"]
///     layer4_configs = [{
///       "ipProtocol" = "tcp"
///     }]
///   }
/// }
/// resource "gcp_compute_networkfirewallpolicyassociation" "global_assoc" {
///   name              = "global-policy-assoc-_27169"
///   firewall_policy   = gcp_compute_networkfirewallpolicy.fw_policy.id
///   attachment_target = gcp_compute_network.net.id
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
/// import com.pulumi.gcp.compute.RegionUrlMap;
/// import com.pulumi.gcp.compute.RegionUrlMapArgs;
/// import com.pulumi.gcp.compute.RegionTargetHttpProxy;
/// import com.pulumi.gcp.compute.RegionTargetHttpProxyArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicy;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyArgs;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyRule;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.NetworkFirewallPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.NetworkFirewallPolicyRuleMatchLayer4ConfigArgs;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyAssociation;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyAssociationArgs;
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
///         var net = new Network("net", NetworkArgs.builder()
///             .name("network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var backend = new Subnetwork("backend", SubnetworkArgs.builder()
///             .name("backend-subnet")
///             .region("us-central1")
///             .network(net.id())
///             .ipCidrRange("10.10.0.0/24")
///             .build());
///
///         var proxy = new Subnetwork("proxy", SubnetworkArgs.builder()
///             .name("proxy-subnet")
///             .region("us-central1")
///             .network(net.id())
///             .ipCidrRange("10.20.0.0/24")
///             .purpose("REGIONAL_MANAGED_PROXY")
///             .role("ACTIVE")
///             .build());
///
///         var default_ = new RegionHealthCheck("default", RegionHealthCheckArgs.builder()
///             .name("health-check")
///             .region("us-central1")
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
///             .name("backend-service")
///             .region("us-central1")
///             .protocol("HTTP")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var defaultRegionUrlMap = new RegionUrlMap("defaultRegionUrlMap", RegionUrlMapArgs.builder()
///             .name("url-map")
///             .region("us-central1")
///             .defaultService(defaultRegionBackendService.id())
///             .build());
///
///         var defaultRegionTargetHttpProxy = new RegionTargetHttpProxy("defaultRegionTargetHttpProxy", RegionTargetHttpProxyArgs.builder()
///             .name("target-http-proxy")
///             .region("us-central1")
///             .urlMap(defaultRegionUrlMap.id())
///             .build());
///
///         var ilb = new ForwardingRule("ilb", ForwardingRuleArgs.builder()
///             .name("forwarding-rule")
///             .region("us-central1")
///             .network(net.id())
///             .subnetwork(backend.id())
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .target(defaultRegionTargetHttpProxy.id())
///             .ipProtocol("TCP")
///             .portRange("80")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(proxy)
///                 .build());
///
///         var fwPolicy = new NetworkFirewallPolicy("fwPolicy", NetworkFirewallPolicyArgs.builder()
///             .name("fw-policy")
///             .project("my-project-name")
///             .build());
///
///         var primary = new NetworkFirewallPolicyRule("primary", NetworkFirewallPolicyRuleArgs.builder()
///             .firewallPolicy(fwPolicy.name())
///             .priority(1000)
///             .action("allow")
///             .direction("INGRESS")
///             .targetType("INTERNAL_MANAGED_LB")
///             .targetForwardingRules(ilb.id())
///             .match(NetworkFirewallPolicyRuleMatchArgs.builder()
///                 .srcIpRanges("10.0.0.0/8")
///                 .layer4Configs(NetworkFirewallPolicyRuleMatchLayer4ConfigArgs.builder()
///                     .ipProtocol("tcp")
///                     .build())
///                 .build())
///             .build());
///
///         var globalAssoc = new NetworkFirewallPolicyAssociation("globalAssoc", NetworkFirewallPolicyAssociationArgs.builder()
///             .name("global-policy-assoc-_27169")
///             .firewallPolicy(fwPolicy.id())
///             .attachmentTarget(net.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   net:
///     type: gcp:compute:Network
///     properties:
///       name: network
///       autoCreateSubnetworks: false
///   backend:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: backend-subnet
///       region: us-central1
///       network: ${net.id}
///       ipCidrRange: 10.10.0.0/24
///   proxy:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: proxy-subnet
///       region: us-central1
///       network: ${net.id}
///       ipCidrRange: 10.20.0.0/24
///       purpose: REGIONAL_MANAGED_PROXY
///       role: ACTIVE
///   default:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: health-check
///       region: us-central1
///       httpHealthCheck:
///         port: 80
///   defaultRegionBackendService:
///     type: gcp:compute:RegionBackendService
///     name: default
///     properties:
///       name: backend-service
///       region: us-central1
///       protocol: HTTP
///       loadBalancingScheme: INTERNAL_MANAGED
///       healthChecks: ${default.id}
///   defaultRegionUrlMap:
///     type: gcp:compute:RegionUrlMap
///     name: default
///     properties:
///       name: url-map
///       region: us-central1
///       defaultService: ${defaultRegionBackendService.id}
///   defaultRegionTargetHttpProxy:
///     type: gcp:compute:RegionTargetHttpProxy
///     name: default
///     properties:
///       name: target-http-proxy
///       region: us-central1
///       urlMap: ${defaultRegionUrlMap.id}
///   ilb:
///     type: gcp:compute:ForwardingRule
///     properties:
///       name: forwarding-rule
///       region: us-central1
///       network: ${net.id}
///       subnetwork: ${backend.id}
///       loadBalancingScheme: INTERNAL_MANAGED
///       target: ${defaultRegionTargetHttpProxy.id}
///       ipProtocol: TCP
///       portRange: '80'
///     options:
///       dependsOn:
///         - ${proxy}
///   fwPolicy:
///     type: gcp:compute:NetworkFirewallPolicy
///     name: fw_policy
///     properties:
///       name: fw-policy
///       project: my-project-name
///   primary:
///     type: gcp:compute:NetworkFirewallPolicyRule
///     properties:
///       firewallPolicy: ${fwPolicy.name}
///       priority: 1000
///       action: allow
///       direction: INGRESS
///       targetType: INTERNAL_MANAGED_LB
///       targetForwardingRules:
///         - ${ilb.id}
///       match:
///         srcIpRanges:
///           - 10.0.0.0/8
///         layer4Configs:
///           - ipProtocol: tcp
///   globalAssoc:
///     type: gcp:compute:NetworkFirewallPolicyAssociation
///     name: global_assoc
///     properties:
///       name: global-policy-assoc-_27169
///       firewallPolicy: ${fwPolicy.id}
///       attachmentTarget: ${net.id}
/// ```
///
///
/// ## Import
///
/// NetworkFirewallPolicyRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/firewallPolicies/{{firewall_policy}}/rules/{{priority}}`
/// * `{{project}}/{{firewall_policy}}/{{priority}}`
/// * `{{firewall_policy}}/{{priority}}`
///
///
/// When using the `pulumi import` command, NetworkFirewallPolicyRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyRule:NetworkFirewallPolicyRule default projects/{{project}}/global/firewallPolicies/{{firewall_policy}}/rules/{{priority}}
/// $ pulumi import gcp:compute/networkFirewallPolicyRule:NetworkFirewallPolicyRule default {{project}}/{{firewall_policy}}/{{priority}}
/// $ pulumi import gcp:compute/networkFirewallPolicyRule:NetworkFirewallPolicyRule default {{firewall_policy}}/{{priority}}
/// ```
class NetworkFirewallPolicyRule extends pulumi.CustomResource {
  /// The Action to perform when the client connection triggers the rule. Valid actions are "allow", "deny", "gotoNext" and "applySecurityProfileGroup".
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
  /// Denotes whether to enable logging for a particular rule.
  /// If logging is enabled, logs will be exported to the configured export destination in Stackdriver.
  /// Logs may be exported to BigQuery or Pub/Sub.
  /// Note: you cannot enable logging on "gotoNext" rules.
  late final pulumi.Output<bool?> enableLogging;
  /// The firewall policy of the resource.
  late final pulumi.Output<String> firewallPolicy;
  /// Type of the resource. Always `compute#firewallPolicyRule` for firewall policy rules
  late final pulumi.Output<String> kind;
  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  late final pulumi.Output<NetworkFirewallPolicyRuleMatch> match;
  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.
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
  /// Must be specified if action = 'apply_security_profile_group' and cannot be specified for other actions.
  late final pulumi.Output<String?> securityProfileGroup;
  /// A list of forwarding rules to which this rule applies.
  /// This field allows you to control which load balancers get this rule.
  /// For example, the following are valid values:
  /// - https://www.googleapis.com/compute/v1/projects/project/global/forwardingRules/forwardingRule
  /// - https://www.googleapis.com/compute/v1/projects/project/regions/region/forwardingRules/forwardingRule
  /// - projects/project/global/forwardingRules/forwardingRule
  /// - projects/project/regions/region/forwardingRules/forwardingRule
  late final pulumi.Output<List<String>?> targetForwardingRules;
  /// A list of secure tags that controls which instances the firewall rule applies to.
  /// If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the targetSecureTag are in INEFFECTIVE state, then this rule will be ignored.
  /// targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  /// Structure is documented below.
  late final pulumi.Output<List<NetworkFirewallPolicyRuleTargetSecureTag>?> targetSecureTags;
  /// A list of service accounts indicating the sets of instances that are applied with this rule.
  late final pulumi.Output<List<String>?> targetServiceAccounts;
  /// Target types of the firewall policy rule.
  /// Default value is INSTANCES.
  /// When targetType is INTERNAL_MANAGED_LB, targetForwardingRules must be set
  /// Possible values are: `INSTANCES`, `INTERNAL_MANAGED_LB`.
  late final pulumi.Output<String> targetType;
  /// Boolean flag indicating if the traffic should be TLS decrypted.
  /// Can be set only if action = 'apply_security_profile_group' and cannot be set for other actions.
  late final pulumi.Output<bool?> tlsInspect;

  /// Creates a new [NetworkFirewallPolicyRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkFirewallPolicyRule]. {@macro pulumi_compute_network_firewall_policy_rule_network_firewall_policy_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkFirewallPolicyRule(
    String name, {
    NetworkFirewallPolicyRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkFirewallPolicyRule:NetworkFirewallPolicyRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    action = registerOutput<String>('action');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    direction = registerOutput<String>('direction');
    disabled = registerOutput<bool?>('disabled');
    enableLogging = registerOutput<bool?>('enableLogging');
    firewallPolicy = registerOutput<String>('firewallPolicy');
    kind = registerOutput<String>('kind');
    match = registerOutput<NetworkFirewallPolicyRuleMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkFirewallPolicyRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    ruleName = registerOutput<String?>('ruleName');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    securityProfileGroup = registerOutput<String?>('securityProfileGroup');
    targetForwardingRules = registerOutput<List<String>?>('targetForwardingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    targetSecureTags = registerOutput<List<NetworkFirewallPolicyRuleTargetSecureTag>?>('targetSecureTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkFirewallPolicyRuleTargetSecureTag>(guardedValue, (value) => NetworkFirewallPolicyRuleTargetSecureTag.fromMap((value as Map).cast<String, dynamic>())); });
    targetServiceAccounts = registerOutput<List<String>?>('targetServiceAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    targetType = registerOutput<String>('targetType');
    tlsInspect = registerOutput<bool?>('tlsInspect');
  }

  /// Gets an existing [NetworkFirewallPolicyRule] resource's state with the given [name] and [id].
  static NetworkFirewallPolicyRule get(
    String name,
    pulumi.Input<String> id, {
    NetworkFirewallPolicyRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NetworkFirewallPolicyRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NetworkFirewallPolicyRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkFirewallPolicyRule:NetworkFirewallPolicyRule',
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
    enableLogging = registerOutput<bool?>('enableLogging');
    firewallPolicy = registerOutput<String>('firewallPolicy');
    kind = registerOutput<String>('kind');
    match = registerOutput<NetworkFirewallPolicyRuleMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkFirewallPolicyRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    ruleName = registerOutput<String?>('ruleName');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    securityProfileGroup = registerOutput<String?>('securityProfileGroup');
    targetForwardingRules = registerOutput<List<String>?>('targetForwardingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    targetSecureTags = registerOutput<List<NetworkFirewallPolicyRuleTargetSecureTag>?>('targetSecureTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkFirewallPolicyRuleTargetSecureTag>(guardedValue, (value) => NetworkFirewallPolicyRuleTargetSecureTag.fromMap((value as Map).cast<String, dynamic>())); });
    targetServiceAccounts = registerOutput<List<String>?>('targetServiceAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    targetType = registerOutput<String>('targetType');
    tlsInspect = registerOutput<bool?>('tlsInspect');
  }

  /// Creates a typed reference to an existing [NetworkFirewallPolicyRule] resource.
  NetworkFirewallPolicyRule.reference(String urn)
    : super(
        'gcp:compute/networkFirewallPolicyRule:NetworkFirewallPolicyRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    action = registerOutput<String>('action');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    direction = registerOutput<String>('direction');
    disabled = registerOutput<bool?>('disabled');
    enableLogging = registerOutput<bool?>('enableLogging');
    firewallPolicy = registerOutput<String>('firewallPolicy');
    kind = registerOutput<String>('kind');
    match = registerOutput<NetworkFirewallPolicyRuleMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkFirewallPolicyRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    ruleName = registerOutput<String?>('ruleName');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    securityProfileGroup = registerOutput<String?>('securityProfileGroup');
    targetForwardingRules = registerOutput<List<String>?>('targetForwardingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    targetSecureTags = registerOutput<List<NetworkFirewallPolicyRuleTargetSecureTag>?>('targetSecureTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkFirewallPolicyRuleTargetSecureTag>(guardedValue, (value) => NetworkFirewallPolicyRuleTargetSecureTag.fromMap((value as Map).cast<String, dynamic>())); });
    targetServiceAccounts = registerOutput<List<String>?>('targetServiceAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    targetType = registerOutput<String>('targetType');
    tlsInspect = registerOutput<bool?>('tlsInspect');
  }
}
