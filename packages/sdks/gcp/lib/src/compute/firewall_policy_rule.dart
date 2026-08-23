import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_args.dart';
import 'firewall_policy_rule_match.dart';
import 'firewall_policy_rule_state.dart';

/// Represents a rule that describes one or more match conditions along with the action to be taken when traffic matches this condition (allow or deny).
///
///
/// To get more information about FirewallPolicyRule, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/addRule)
///
/// ## Example Usage
///
/// ### Firewall Policy Rule
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicGlobalNetworksecurityAddressGroup = new gcp.networksecurity.AddressGroup("basic_global_networksecurity_address_group", {
///     name: "address-group",
///     parent: "organizations/123456789",
///     description: "Sample global networksecurity_address_group",
///     location: "global",
///     items: ["208.80.154.224/32"],
///     type: "IPV4",
///     capacity: 100,
/// });
/// const folder = new gcp.organizations.Folder("folder", {
///     displayName: "folder",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// const _default = new gcp.compute.FirewallPolicy("default", {
///     parent: folder.id,
///     shortName: "fw-policy",
///     description: "Resource created for Terraform acceptance testing",
/// });
/// const primary = new gcp.compute.FirewallPolicyRule("primary", {
///     firewallPolicy: _default.name,
///     description: "Resource created for Terraform acceptance testing",
///     priority: 9000,
///     enableLogging: true,
///     action: "allow",
///     direction: "EGRESS",
///     disabled: false,
///     targetServiceAccounts: ["my@service-account.com"],
///     match: {
///         destIpRanges: ["11.100.0.1/32"],
///         destFqdns: [],
///         destRegionCodes: ["US"],
///         destThreatIntelligences: ["iplist-known-malicious-ips"],
///         srcAddressGroups: [],
///         destAddressGroups: [basicGlobalNetworksecurityAddressGroup.id],
///         layer4Configs: [
///             {
///                 ipProtocol: "tcp",
///                 ports: ["8080"],
///             },
///             {
///                 ipProtocol: "udp",
///                 ports: ["22"],
///             },
///         ],
///     },
/// });
/// const basicKey = new gcp.tags.TagKey("basic_key", {
///     description: "For keyname resources.",
///     parent: "organizations/123456789",
///     purpose: "GCE_FIREWALL",
///     shortName: "tag-key",
///     purposeData: {
///         organization: "auto",
///     },
/// });
/// const basicValue = new gcp.tags.TagValue("basic_value", {
///     description: "For valuename resources.",
///     parent: basicKey.id,
///     shortName: "tag-value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_global_networksecurity_address_group = gcp.networksecurity.AddressGroup("basic_global_networksecurity_address_group",
///     name="address-group",
///     parent="organizations/123456789",
///     description="Sample global networksecurity_address_group",
///     location="global",
///     items=["208.80.154.224/32"],
///     type="IPV4",
///     capacity=100)
/// folder = gcp.organizations.Folder("folder",
///     display_name="folder",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// default = gcp.compute.FirewallPolicy("default",
///     parent=folder.id,
///     short_name="fw-policy",
///     description="Resource created for Terraform acceptance testing")
/// primary = gcp.compute.FirewallPolicyRule("primary",
///     firewall_policy=default.name,
///     description="Resource created for Terraform acceptance testing",
///     priority=9000,
///     enable_logging=True,
///     action="allow",
///     direction="EGRESS",
///     disabled=False,
///     target_service_accounts=["my@service-account.com"],
///     match={
///         "dest_ip_ranges": ["11.100.0.1/32"],
///         "dest_fqdns": [],
///         "dest_region_codes": ["US"],
///         "dest_threat_intelligences": ["iplist-known-malicious-ips"],
///         "src_address_groups": [],
///         "dest_address_groups": [basic_global_networksecurity_address_group.id],
///         "layer4_configs": [
///             {
///                 "ip_protocol": "tcp",
///                 "ports": ["8080"],
///             },
///             {
///                 "ip_protocol": "udp",
///                 "ports": ["22"],
///             },
///         ],
///     })
/// basic_key = gcp.tags.TagKey("basic_key",
///     description="For keyname resources.",
///     parent="organizations/123456789",
///     purpose="GCE_FIREWALL",
///     short_name="tag-key",
///     purpose_data={
///         "organization": "auto",
///     })
/// basic_value = gcp.tags.TagValue("basic_value",
///     description="For valuename resources.",
///     parent=basic_key.id,
///     short_name="tag-value")
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
///         Parent = "organizations/123456789",
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
///     var folder = new Gcp.Organizations.Folder("folder", new()
///     {
///         DisplayName = "folder",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     var @default = new Gcp.Compute.FirewallPolicy("default", new()
///     {
///         Parent = folder.Id,
///         ShortName = "fw-policy",
///         Description = "Resource created for Terraform acceptance testing",
///     });
///
///     var primary = new Gcp.Compute.FirewallPolicyRule("primary", new()
///     {
///         FirewallPolicy = @default.Name,
///         Description = "Resource created for Terraform acceptance testing",
///         Priority = 9000,
///         EnableLogging = true,
///         Action = "allow",
///         Direction = "EGRESS",
///         Disabled = false,
///         TargetServiceAccounts = new[]
///         {
///             "my@service-account.com",
///         },
///         Match = new Gcp.Compute.Inputs.FirewallPolicyRuleMatchArgs
///         {
///             DestIpRanges = new[]
///             {
///                 "11.100.0.1/32",
///             },
///             DestFqdns = new() { },
///             DestRegionCodes = new[]
///             {
///                 "US",
///             },
///             DestThreatIntelligences = new[]
///             {
///                 "iplist-known-malicious-ips",
///             },
///             SrcAddressGroups = new() { },
///             DestAddressGroups = new[]
///             {
///                 basicGlobalNetworksecurityAddressGroup.Id,
///             },
///             Layer4Configs = new[]
///             {
///                 new Gcp.Compute.Inputs.FirewallPolicyRuleMatchLayer4ConfigArgs
///                 {
///                     IpProtocol = "tcp",
///                     Ports = new[]
///                     {
///                         "8080",
///                     },
///                 },
///                 new Gcp.Compute.Inputs.FirewallPolicyRuleMatchLayer4ConfigArgs
///                 {
///                     IpProtocol = "udp",
///                     Ports = new[]
///                     {
///                         "22",
///                     },
///                 },
///             },
///         },
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
///             { "organization", "auto" },
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basicGlobalNetworksecurityAddressGroup, err := networksecurity.NewAddressGroup(ctx, "basic_global_networksecurity_address_group", &networksecurity.AddressGroupArgs{
/// 			Name:        pulumi.String("address-group"),
/// 			Parent:      pulumi.String("organizations/123456789"),
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
/// 		folder, err := organizations.NewFolder(ctx, "folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("folder"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewFirewallPolicy(ctx, "default", &compute.FirewallPolicyArgs{
/// 			Parent:      folder.ID().ToIDOutput().ToStringOutput(),
/// 			ShortName:   pulumi.String("fw-policy"),
/// 			Description: pulumi.String("Resource created for Terraform acceptance testing"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewFirewallPolicyRule(ctx, "primary", &compute.FirewallPolicyRuleArgs{
/// 			FirewallPolicy: _default.Name,
/// 			Description:    pulumi.String("Resource created for Terraform acceptance testing"),
/// 			Priority:       pulumi.Int(9000),
/// 			EnableLogging:  pulumi.Bool(true),
/// 			Action:         pulumi.String("allow"),
/// 			Direction:      pulumi.String("EGRESS"),
/// 			Disabled:       pulumi.Bool(false),
/// 			TargetServiceAccounts: pulumi.StringArray{
/// 				pulumi.String("my@service-account.com"),
/// 			},
/// 			Match: &compute.FirewallPolicyRuleMatchArgs{
/// 				DestIpRanges: pulumi.StringArray{
/// 					pulumi.String("11.100.0.1/32"),
/// 				},
/// 				DestFqdns: pulumi.StringArray{},
/// 				DestRegionCodes: pulumi.StringArray{
/// 					pulumi.String("US"),
/// 				},
/// 				DestThreatIntelligences: pulumi.StringArray{
/// 					pulumi.String("iplist-known-malicious-ips"),
/// 				},
/// 				SrcAddressGroups: pulumi.StringArray{},
/// 				DestAddressGroups: pulumi.StringArray{
/// 					basicGlobalNetworksecurityAddressGroup.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 				Layer4Configs: compute.FirewallPolicyRuleMatchLayer4ConfigArray{
/// 					&compute.FirewallPolicyRuleMatchLayer4ConfigArgs{
/// 						IpProtocol: pulumi.String("tcp"),
/// 						Ports: pulumi.StringArray{
/// 							pulumi.String("8080"),
/// 						},
/// 					},
/// 					&compute.FirewallPolicyRuleMatchLayer4ConfigArgs{
/// 						IpProtocol: pulumi.String("udp"),
/// 						Ports: pulumi.StringArray{
/// 							pulumi.String("22"),
/// 						},
/// 					},
/// 				},
/// 			},
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
/// 				"organization": pulumi.String("auto"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = tags.NewTagValue(ctx, "basic_value", &tags.TagValueArgs{
/// 			Description: pulumi.String("For valuename resources."),
/// 			Parent:      basicKey.ID().ToIDOutput().ToStringOutput(),
/// 			ShortName:   pulumi.String("tag-value"),
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
///   parent      = "organizations/123456789"
///   description = "Sample global networksecurity_address_group"
///   location    = "global"
///   items       = ["208.80.154.224/32"]
///   type        = "IPV4"
///   capacity    = 100
/// }
/// resource "gcp_organizations_folder" "folder" {
///   display_name        = "folder"
///   parent              = "organizations/123456789"
///   deletion_protection = false
/// }
/// resource "gcp_compute_firewallpolicy" "default" {
///   parent      = gcp_organizations_folder.folder.id
///   short_name  = "fw-policy"
///   description = "Resource created for Terraform acceptance testing"
/// }
/// resource "gcp_compute_firewallpolicyrule" "primary" {
///   firewall_policy         = gcp_compute_firewallpolicy.default.name
///   description             = "Resource created for Terraform acceptance testing"
///   priority                = 9000
///   enable_logging          = true
///   action                  = "allow"
///   direction               = "EGRESS"
///   disabled                = false
///   target_service_accounts = ["my@service-account.com"]
///   match = {
///     dest_ip_ranges            = ["11.100.0.1/32"]
///     dest_fqdns                = []
///     dest_region_codes         = ["US"]
///     dest_threat_intelligences = ["iplist-known-malicious-ips"]
///     src_address_groups        = []
///     dest_address_groups       = [gcp_networksecurity_addressgroup.basic_global_networksecurity_address_group.id]
///     layer4_configs = [{
///       "ipProtocol" = "tcp"
///       "ports"      = [8080]
///       }, {
///       "ipProtocol" = "udp"
///       "ports"      = [22]
///     }]
///   }
/// }
/// resource "gcp_tags_tagkey" "basic_key" {
///   description = "For keyname resources."
///   parent      = "organizations/123456789"
///   purpose     = "GCE_FIREWALL"
///   short_name  = "tag-key"
///   purpose_data = {
///     "organization" = "auto"
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
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.compute.FirewallPolicy;
/// import com.pulumi.gcp.compute.FirewallPolicyArgs;
/// import com.pulumi.gcp.compute.FirewallPolicyRule;
/// import com.pulumi.gcp.compute.FirewallPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallPolicyRuleMatchLayer4ConfigArgs;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
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
///             .parent("organizations/123456789")
///             .description("Sample global networksecurity_address_group")
///             .location("global")
///             .items("208.80.154.224/32")
///             .type("IPV4")
///             .capacity(100)
///             .build());
///
///         var folder = new Folder("folder", FolderArgs.builder()
///             .displayName("folder")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         var default_ = new FirewallPolicy("default", FirewallPolicyArgs.builder()
///             .parent(folder.id())
///             .shortName("fw-policy")
///             .description("Resource created for Terraform acceptance testing")
///             .build());
///
///         var primary = new FirewallPolicyRule("primary", FirewallPolicyRuleArgs.builder()
///             .firewallPolicy(default_.name())
///             .description("Resource created for Terraform acceptance testing")
///             .priority(9000)
///             .enableLogging(true)
///             .action("allow")
///             .direction("EGRESS")
///             .disabled(false)
///             .targetServiceAccounts("my@service-account.com")
///             .match(FirewallPolicyRuleMatchArgs.builder()
///                 .destIpRanges("11.100.0.1/32")
///                 .destFqdns()
///                 .destRegionCodes("US")
///                 .destThreatIntelligences("iplist-known-malicious-ips")
///                 .srcAddressGroups()
///                 .destAddressGroups(basicGlobalNetworksecurityAddressGroup.id())
///                 .layer4Configs(
///                     FirewallPolicyRuleMatchLayer4ConfigArgs.builder()
///                         .ipProtocol("tcp")
///                         .ports("8080")
///                         .build(),
///                     FirewallPolicyRuleMatchLayer4ConfigArgs.builder()
///                         .ipProtocol("udp")
///                         .ports("22")
///                         .build())
///                 .build())
///             .build());
///
///         var basicKey = new TagKey("basicKey", TagKeyArgs.builder()
///             .description("For keyname resources.")
///             .parent("organizations/123456789")
///             .purpose("GCE_FIREWALL")
///             .shortName("tag-key")
///             .purposeData(Map.of("organization", "auto"))
///             .build());
///
///         var basicValue = new TagValue("basicValue", TagValueArgs.builder()
///             .description("For valuename resources.")
///             .parent(basicKey.id())
///             .shortName("tag-value")
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
///       parent: organizations/123456789
///       description: Sample global networksecurity_address_group
///       location: global
///       items:
///         - 208.80.154.224/32
///       type: IPV4
///       capacity: 100
///   folder:
///     type: gcp:organizations:Folder
///     properties:
///       displayName: folder
///       parent: organizations/123456789
///       deletionProtection: false
///   default:
///     type: gcp:compute:FirewallPolicy
///     properties:
///       parent: ${folder.id}
///       shortName: fw-policy
///       description: Resource created for Terraform acceptance testing
///   primary:
///     type: gcp:compute:FirewallPolicyRule
///     properties:
///       firewallPolicy: ${default.name}
///       description: Resource created for Terraform acceptance testing
///       priority: 9000
///       enableLogging: true
///       action: allow
///       direction: EGRESS
///       disabled: false
///       targetServiceAccounts:
///         - my@service-account.com
///       match:
///         destIpRanges:
///           - 11.100.0.1/32
///         destFqdns: []
///         destRegionCodes:
///           - US
///         destThreatIntelligences:
///           - iplist-known-malicious-ips
///         srcAddressGroups: []
///         destAddressGroups:
///           - ${basicGlobalNetworksecurityAddressGroup.id}
///         layer4Configs:
///           - ipProtocol: tcp
///             ports:
///               - 8080
///           - ipProtocol: udp
///             ports:
///               - 22
///   basicKey:
///     type: gcp:tags:TagKey
///     name: basic_key
///     properties:
///       description: For keyname resources.
///       parent: organizations/123456789
///       purpose: GCE_FIREWALL
///       shortName: tag-key
///       purposeData:
///         organization: auto
///   basicValue:
///     type: gcp:tags:TagValue
///     name: basic_value
///     properties:
///       description: For valuename resources.
///       parent: ${basicKey.id}
///       shortName: tag-value
/// ```
///
/// ### Firewall Policy Rule Network Scope
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.organizations.Folder("folder", {
///     displayName: "folder",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// const _default = new gcp.compute.FirewallPolicy("default", {
///     parent: folder.id,
///     shortName: "fw-policy",
///     description: "Firewall policy",
/// });
/// const network = new gcp.compute.Network("network", {
///     name: "network",
///     autoCreateSubnetworks: false,
/// });
/// const primary = new gcp.compute.FirewallPolicyRule("primary", {
///     firewallPolicy: _default.name,
///     description: "Firewall policy rule with network scope",
///     priority: 9000,
///     action: "allow",
///     direction: "INGRESS",
///     disabled: false,
///     match: {
///         srcIpRanges: ["11.100.0.1/32"],
///         srcNetworkScope: "VPC_NETWORKS",
///         srcNetworks: [network.id],
///         layer4Configs: [
///             {
///                 ipProtocol: "tcp",
///                 ports: ["8080"],
///             },
///             {
///                 ipProtocol: "udp",
///                 ports: ["22"],
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.organizations.Folder("folder",
///     display_name="folder",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// default = gcp.compute.FirewallPolicy("default",
///     parent=folder.id,
///     short_name="fw-policy",
///     description="Firewall policy")
/// network = gcp.compute.Network("network",
///     name="network",
///     auto_create_subnetworks=False)
/// primary = gcp.compute.FirewallPolicyRule("primary",
///     firewall_policy=default.name,
///     description="Firewall policy rule with network scope",
///     priority=9000,
///     action="allow",
///     direction="INGRESS",
///     disabled=False,
///     match={
///         "src_ip_ranges": ["11.100.0.1/32"],
///         "src_network_scope": "VPC_NETWORKS",
///         "src_networks": [network.id],
///         "layer4_configs": [
///             {
///                 "ip_protocol": "tcp",
///                 "ports": ["8080"],
///             },
///             {
///                 "ip_protocol": "udp",
///                 "ports": ["22"],
///             },
///         ],
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
///     var folder = new Gcp.Organizations.Folder("folder", new()
///     {
///         DisplayName = "folder",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     var @default = new Gcp.Compute.FirewallPolicy("default", new()
///     {
///         Parent = folder.Id,
///         ShortName = "fw-policy",
///         Description = "Firewall policy",
///     });
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var primary = new Gcp.Compute.FirewallPolicyRule("primary", new()
///     {
///         FirewallPolicy = @default.Name,
///         Description = "Firewall policy rule with network scope",
///         Priority = 9000,
///         Action = "allow",
///         Direction = "INGRESS",
///         Disabled = false,
///         Match = new Gcp.Compute.Inputs.FirewallPolicyRuleMatchArgs
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
///                 new Gcp.Compute.Inputs.FirewallPolicyRuleMatchLayer4ConfigArgs
///                 {
///                     IpProtocol = "tcp",
///                     Ports = new[]
///                     {
///                         "8080",
///                     },
///                 },
///                 new Gcp.Compute.Inputs.FirewallPolicyRuleMatchLayer4ConfigArgs
///                 {
///                     IpProtocol = "udp",
///                     Ports = new[]
///                     {
///                         "22",
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		folder, err := organizations.NewFolder(ctx, "folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("folder"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewFirewallPolicy(ctx, "default", &compute.FirewallPolicyArgs{
/// 			Parent:      folder.ID().ToIDOutput().ToStringOutput(),
/// 			ShortName:   pulumi.String("fw-policy"),
/// 			Description: pulumi.String("Firewall policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewFirewallPolicyRule(ctx, "primary", &compute.FirewallPolicyRuleArgs{
/// 			FirewallPolicy: _default.Name,
/// 			Description:    pulumi.String("Firewall policy rule with network scope"),
/// 			Priority:       pulumi.Int(9000),
/// 			Action:         pulumi.String("allow"),
/// 			Direction:      pulumi.String("INGRESS"),
/// 			Disabled:       pulumi.Bool(false),
/// 			Match: &compute.FirewallPolicyRuleMatchArgs{
/// 				SrcIpRanges: pulumi.StringArray{
/// 					pulumi.String("11.100.0.1/32"),
/// 				},
/// 				SrcNetworkScope: pulumi.String("VPC_NETWORKS"),
/// 				SrcNetworks: pulumi.StringArray{
/// 					network.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 				Layer4Configs: compute.FirewallPolicyRuleMatchLayer4ConfigArray{
/// 					&compute.FirewallPolicyRuleMatchLayer4ConfigArgs{
/// 						IpProtocol: pulumi.String("tcp"),
/// 						Ports: pulumi.StringArray{
/// 							pulumi.String("8080"),
/// 						},
/// 					},
/// 					&compute.FirewallPolicyRuleMatchLayer4ConfigArgs{
/// 						IpProtocol: pulumi.String("udp"),
/// 						Ports: pulumi.StringArray{
/// 							pulumi.String("22"),
/// 						},
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
/// resource "gcp_organizations_folder" "folder" {
///   display_name        = "folder"
///   parent              = "organizations/123456789"
///   deletion_protection = false
/// }
/// resource "gcp_compute_firewallpolicy" "default" {
///   parent      = gcp_organizations_folder.folder.id
///   short_name  = "fw-policy"
///   description = "Firewall policy"
/// }
/// resource "gcp_compute_firewallpolicyrule" "primary" {
///   firewall_policy = gcp_compute_firewallpolicy.default.name
///   description     = "Firewall policy rule with network scope"
///   priority        = 9000
///   action          = "allow"
///   direction       = "INGRESS"
///   disabled        = false
///   match = {
///     src_ip_ranges     = ["11.100.0.1/32"]
///     src_network_scope = "VPC_NETWORKS"
///     src_networks      = [gcp_compute_network.network.id]
///     layer4_configs = [{
///       "ipProtocol" = "tcp"
///       "ports"      = [8080]
///       }, {
///       "ipProtocol" = "udp"
///       "ports"      = [22]
///     }]
///   }
/// }
/// resource "gcp_compute_network" "network" {
///   name                    = "network"
///   auto_create_subnetworks = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.compute.FirewallPolicy;
/// import com.pulumi.gcp.compute.FirewallPolicyArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.FirewallPolicyRule;
/// import com.pulumi.gcp.compute.FirewallPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallPolicyRuleMatchLayer4ConfigArgs;
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
///         var folder = new Folder("folder", FolderArgs.builder()
///             .displayName("folder")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         var default_ = new FirewallPolicy("default", FirewallPolicyArgs.builder()
///             .parent(folder.id())
///             .shortName("fw-policy")
///             .description("Firewall policy")
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var primary = new FirewallPolicyRule("primary", FirewallPolicyRuleArgs.builder()
///             .firewallPolicy(default_.name())
///             .description("Firewall policy rule with network scope")
///             .priority(9000)
///             .action("allow")
///             .direction("INGRESS")
///             .disabled(false)
///             .match(FirewallPolicyRuleMatchArgs.builder()
///                 .srcIpRanges("11.100.0.1/32")
///                 .srcNetworkScope("VPC_NETWORKS")
///                 .srcNetworks(network.id())
///                 .layer4Configs(
///                     FirewallPolicyRuleMatchLayer4ConfigArgs.builder()
///                         .ipProtocol("tcp")
///                         .ports("8080")
///                         .build(),
///                     FirewallPolicyRuleMatchLayer4ConfigArgs.builder()
///                         .ipProtocol("udp")
///                         .ports("22")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:organizations:Folder
///     properties:
///       displayName: folder
///       parent: organizations/123456789
///       deletionProtection: false
///   default:
///     type: gcp:compute:FirewallPolicy
///     properties:
///       parent: ${folder.id}
///       shortName: fw-policy
///       description: Firewall policy
///   primary:
///     type: gcp:compute:FirewallPolicyRule
///     properties:
///       firewallPolicy: ${default.name}
///       description: Firewall policy rule with network scope
///       priority: 9000
///       action: allow
///       direction: INGRESS
///       disabled: false
///       match:
///         srcIpRanges:
///           - 11.100.0.1/32
///         srcNetworkScope: VPC_NETWORKS
///         srcNetworks:
///           - ${network.id}
///         layer4Configs:
///           - ipProtocol: tcp
///             ports:
///               - 8080
///           - ipProtocol: udp
///             ports:
///               - 22
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Firewall Policy Rule Network Context
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.organizations.Folder("folder", {
///     displayName: "folder",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// const _default = new gcp.compute.FirewallPolicy("default", {
///     parent: folder.id,
///     shortName: "fw-policy",
///     description: "Firewall policy",
/// });
/// const primary = new gcp.compute.FirewallPolicyRule("primary", {
///     firewallPolicy: _default.name,
///     description: "Firewall policy rule with network context",
///     priority: 8000,
///     action: "allow",
///     direction: "INGRESS",
///     disabled: false,
///     match: {
///         srcIpRanges: ["11.100.0.1/32"],
///         srcNetworkContext: "INTERNET",
///         layer4Configs: [
///             {
///                 ipProtocol: "tcp",
///                 ports: ["8080"],
///             },
///             {
///                 ipProtocol: "udp",
///                 ports: ["22"],
///             },
///         ],
///     },
/// });
/// const egress_primary = new gcp.compute.FirewallPolicyRule("egress-primary", {
///     firewallPolicy: _default.name,
///     description: "Firewall policy rule with network context",
///     priority: 9000,
///     action: "allow",
///     direction: "EGRESS",
///     disabled: false,
///     match: {
///         destIpRanges: ["11.100.0.1/32"],
///         destNetworkContext: "NON_INTERNET",
///         layer4Configs: [{
///             ipProtocol: "tcp",
///         }],
///     },
/// });
/// const unset_primary = new gcp.compute.FirewallPolicyRule("unset-primary", {
///     firewallPolicy: _default.name,
///     description: "Firewall policy rule with network context",
///     priority: 10000,
///     action: "allow",
///     direction: "EGRESS",
///     disabled: false,
///     match: {
///         destIpRanges: ["11.100.0.1/32"],
///         destNetworkContext: "UNSPECIFIED",
///         layer4Configs: [{
///             ipProtocol: "tcp",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.organizations.Folder("folder",
///     display_name="folder",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// default = gcp.compute.FirewallPolicy("default",
///     parent=folder.id,
///     short_name="fw-policy",
///     description="Firewall policy")
/// primary = gcp.compute.FirewallPolicyRule("primary",
///     firewall_policy=default.name,
///     description="Firewall policy rule with network context",
///     priority=8000,
///     action="allow",
///     direction="INGRESS",
///     disabled=False,
///     match={
///         "src_ip_ranges": ["11.100.0.1/32"],
///         "src_network_context": "INTERNET",
///         "layer4_configs": [
///             {
///                 "ip_protocol": "tcp",
///                 "ports": ["8080"],
///             },
///             {
///                 "ip_protocol": "udp",
///                 "ports": ["22"],
///             },
///         ],
///     })
/// egress_primary = gcp.compute.FirewallPolicyRule("egress-primary",
///     firewall_policy=default.name,
///     description="Firewall policy rule with network context",
///     priority=9000,
///     action="allow",
///     direction="EGRESS",
///     disabled=False,
///     match={
///         "dest_ip_ranges": ["11.100.0.1/32"],
///         "dest_network_context": "NON_INTERNET",
///         "layer4_configs": [{
///             "ip_protocol": "tcp",
///         }],
///     })
/// unset_primary = gcp.compute.FirewallPolicyRule("unset-primary",
///     firewall_policy=default.name,
///     description="Firewall policy rule with network context",
///     priority=10000,
///     action="allow",
///     direction="EGRESS",
///     disabled=False,
///     match={
///         "dest_ip_ranges": ["11.100.0.1/32"],
///         "dest_network_context": "UNSPECIFIED",
///         "layer4_configs": [{
///             "ip_protocol": "tcp",
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
///     var folder = new Gcp.Organizations.Folder("folder", new()
///     {
///         DisplayName = "folder",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     var @default = new Gcp.Compute.FirewallPolicy("default", new()
///     {
///         Parent = folder.Id,
///         ShortName = "fw-policy",
///         Description = "Firewall policy",
///     });
///
///     var primary = new Gcp.Compute.FirewallPolicyRule("primary", new()
///     {
///         FirewallPolicy = @default.Name,
///         Description = "Firewall policy rule with network context",
///         Priority = 8000,
///         Action = "allow",
///         Direction = "INGRESS",
///         Disabled = false,
///         Match = new Gcp.Compute.Inputs.FirewallPolicyRuleMatchArgs
///         {
///             SrcIpRanges = new[]
///             {
///                 "11.100.0.1/32",
///             },
///             SrcNetworkContext = "INTERNET",
///             Layer4Configs = new[]
///             {
///                 new Gcp.Compute.Inputs.FirewallPolicyRuleMatchLayer4ConfigArgs
///                 {
///                     IpProtocol = "tcp",
///                     Ports = new[]
///                     {
///                         "8080",
///                     },
///                 },
///                 new Gcp.Compute.Inputs.FirewallPolicyRuleMatchLayer4ConfigArgs
///                 {
///                     IpProtocol = "udp",
///                     Ports = new[]
///                     {
///                         "22",
///                     },
///                 },
///             },
///         },
///     });
///
///     var egress_primary = new Gcp.Compute.FirewallPolicyRule("egress-primary", new()
///     {
///         FirewallPolicy = @default.Name,
///         Description = "Firewall policy rule with network context",
///         Priority = 9000,
///         Action = "allow",
///         Direction = "EGRESS",
///         Disabled = false,
///         Match = new Gcp.Compute.Inputs.FirewallPolicyRuleMatchArgs
///         {
///             DestIpRanges = new[]
///             {
///                 "11.100.0.1/32",
///             },
///             DestNetworkContext = "NON_INTERNET",
///             Layer4Configs = new[]
///             {
///                 new Gcp.Compute.Inputs.FirewallPolicyRuleMatchLayer4ConfigArgs
///                 {
///                     IpProtocol = "tcp",
///                 },
///             },
///         },
///     });
///
///     var unset_primary = new Gcp.Compute.FirewallPolicyRule("unset-primary", new()
///     {
///         FirewallPolicy = @default.Name,
///         Description = "Firewall policy rule with network context",
///         Priority = 10000,
///         Action = "allow",
///         Direction = "EGRESS",
///         Disabled = false,
///         Match = new Gcp.Compute.Inputs.FirewallPolicyRuleMatchArgs
///         {
///             DestIpRanges = new[]
///             {
///                 "11.100.0.1/32",
///             },
///             DestNetworkContext = "UNSPECIFIED",
///             Layer4Configs = new[]
///             {
///                 new Gcp.Compute.Inputs.FirewallPolicyRuleMatchLayer4ConfigArgs
///                 {
///                     IpProtocol = "tcp",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		folder, err := organizations.NewFolder(ctx, "folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("folder"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewFirewallPolicy(ctx, "default", &compute.FirewallPolicyArgs{
/// 			Parent:      folder.ID().ToIDOutput().ToStringOutput(),
/// 			ShortName:   pulumi.String("fw-policy"),
/// 			Description: pulumi.String("Firewall policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewFirewallPolicyRule(ctx, "primary", &compute.FirewallPolicyRuleArgs{
/// 			FirewallPolicy: _default.Name,
/// 			Description:    pulumi.String("Firewall policy rule with network context"),
/// 			Priority:       pulumi.Int(8000),
/// 			Action:         pulumi.String("allow"),
/// 			Direction:      pulumi.String("INGRESS"),
/// 			Disabled:       pulumi.Bool(false),
/// 			Match: &compute.FirewallPolicyRuleMatchArgs{
/// 				SrcIpRanges: pulumi.StringArray{
/// 					pulumi.String("11.100.0.1/32"),
/// 				},
/// 				SrcNetworkContext: pulumi.String("INTERNET"),
/// 				Layer4Configs: compute.FirewallPolicyRuleMatchLayer4ConfigArray{
/// 					&compute.FirewallPolicyRuleMatchLayer4ConfigArgs{
/// 						IpProtocol: pulumi.String("tcp"),
/// 						Ports: pulumi.StringArray{
/// 							pulumi.String("8080"),
/// 						},
/// 					},
/// 					&compute.FirewallPolicyRuleMatchLayer4ConfigArgs{
/// 						IpProtocol: pulumi.String("udp"),
/// 						Ports: pulumi.StringArray{
/// 							pulumi.String("22"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewFirewallPolicyRule(ctx, "egress-primary", &compute.FirewallPolicyRuleArgs{
/// 			FirewallPolicy: _default.Name,
/// 			Description:    pulumi.String("Firewall policy rule with network context"),
/// 			Priority:       pulumi.Int(9000),
/// 			Action:         pulumi.String("allow"),
/// 			Direction:      pulumi.String("EGRESS"),
/// 			Disabled:       pulumi.Bool(false),
/// 			Match: &compute.FirewallPolicyRuleMatchArgs{
/// 				DestIpRanges: pulumi.StringArray{
/// 					pulumi.String("11.100.0.1/32"),
/// 				},
/// 				DestNetworkContext: pulumi.String("NON_INTERNET"),
/// 				Layer4Configs: compute.FirewallPolicyRuleMatchLayer4ConfigArray{
/// 					&compute.FirewallPolicyRuleMatchLayer4ConfigArgs{
/// 						IpProtocol: pulumi.String("tcp"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewFirewallPolicyRule(ctx, "unset-primary", &compute.FirewallPolicyRuleArgs{
/// 			FirewallPolicy: _default.Name,
/// 			Description:    pulumi.String("Firewall policy rule with network context"),
/// 			Priority:       pulumi.Int(10000),
/// 			Action:         pulumi.String("allow"),
/// 			Direction:      pulumi.String("EGRESS"),
/// 			Disabled:       pulumi.Bool(false),
/// 			Match: &compute.FirewallPolicyRuleMatchArgs{
/// 				DestIpRanges: pulumi.StringArray{
/// 					pulumi.String("11.100.0.1/32"),
/// 				},
/// 				DestNetworkContext: pulumi.String("UNSPECIFIED"),
/// 				Layer4Configs: compute.FirewallPolicyRuleMatchLayer4ConfigArray{
/// 					&compute.FirewallPolicyRuleMatchLayer4ConfigArgs{
/// 						IpProtocol: pulumi.String("tcp"),
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
/// resource "gcp_organizations_folder" "folder" {
///   display_name        = "folder"
///   parent              = "organizations/123456789"
///   deletion_protection = false
/// }
/// resource "gcp_compute_firewallpolicy" "default" {
///   parent      = gcp_organizations_folder.folder.id
///   short_name  = "fw-policy"
///   description = "Firewall policy"
/// }
/// resource "gcp_compute_firewallpolicyrule" "primary" {
///   firewall_policy = gcp_compute_firewallpolicy.default.name
///   description     = "Firewall policy rule with network context"
///   priority        = 8000
///   action          = "allow"
///   direction       = "INGRESS"
///   disabled        = false
///   match = {
///     src_ip_ranges       = ["11.100.0.1/32"]
///     src_network_context = "INTERNET"
///     layer4_configs = [{
///       "ipProtocol" = "tcp"
///       "ports"      = [8080]
///       }, {
///       "ipProtocol" = "udp"
///       "ports"      = [22]
///     }]
///   }
/// }
/// resource "gcp_compute_firewallpolicyrule" "egress-primary" {
///   firewall_policy = gcp_compute_firewallpolicy.default.name
///   description     = "Firewall policy rule with network context"
///   priority        = 9000
///   action          = "allow"
///   direction       = "EGRESS"
///   disabled        = false
///   match = {
///     dest_ip_ranges       = ["11.100.0.1/32"]
///     dest_network_context = "NON_INTERNET"
///     layer4_configs = [{
///       "ipProtocol" = "tcp"
///     }]
///   }
/// }
/// resource "gcp_compute_firewallpolicyrule" "unset-primary" {
///   firewall_policy = gcp_compute_firewallpolicy.default.name
///   description     = "Firewall policy rule with network context"
///   priority        = 10000
///   action          = "allow"
///   direction       = "EGRESS"
///   disabled        = false
///   match = {
///     dest_ip_ranges       = ["11.100.0.1/32"]
///     dest_network_context = "UNSPECIFIED"
///     layer4_configs = [{
///       "ipProtocol" = "tcp"
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
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.compute.FirewallPolicy;
/// import com.pulumi.gcp.compute.FirewallPolicyArgs;
/// import com.pulumi.gcp.compute.FirewallPolicyRule;
/// import com.pulumi.gcp.compute.FirewallPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallPolicyRuleMatchLayer4ConfigArgs;
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
///         var folder = new Folder("folder", FolderArgs.builder()
///             .displayName("folder")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         var default_ = new FirewallPolicy("default", FirewallPolicyArgs.builder()
///             .parent(folder.id())
///             .shortName("fw-policy")
///             .description("Firewall policy")
///             .build());
///
///         var primary = new FirewallPolicyRule("primary", FirewallPolicyRuleArgs.builder()
///             .firewallPolicy(default_.name())
///             .description("Firewall policy rule with network context")
///             .priority(8000)
///             .action("allow")
///             .direction("INGRESS")
///             .disabled(false)
///             .match(FirewallPolicyRuleMatchArgs.builder()
///                 .srcIpRanges("11.100.0.1/32")
///                 .srcNetworkContext("INTERNET")
///                 .layer4Configs(
///                     FirewallPolicyRuleMatchLayer4ConfigArgs.builder()
///                         .ipProtocol("tcp")
///                         .ports("8080")
///                         .build(),
///                     FirewallPolicyRuleMatchLayer4ConfigArgs.builder()
///                         .ipProtocol("udp")
///                         .ports("22")
///                         .build())
///                 .build())
///             .build());
///
///         var egress_primary = new FirewallPolicyRule("egress-primary", FirewallPolicyRuleArgs.builder()
///             .firewallPolicy(default_.name())
///             .description("Firewall policy rule with network context")
///             .priority(9000)
///             .action("allow")
///             .direction("EGRESS")
///             .disabled(false)
///             .match(FirewallPolicyRuleMatchArgs.builder()
///                 .destIpRanges("11.100.0.1/32")
///                 .destNetworkContext("NON_INTERNET")
///                 .layer4Configs(FirewallPolicyRuleMatchLayer4ConfigArgs.builder()
///                     .ipProtocol("tcp")
///                     .build())
///                 .build())
///             .build());
///
///         var unset_primary = new FirewallPolicyRule("unset-primary", FirewallPolicyRuleArgs.builder()
///             .firewallPolicy(default_.name())
///             .description("Firewall policy rule with network context")
///             .priority(10000)
///             .action("allow")
///             .direction("EGRESS")
///             .disabled(false)
///             .match(FirewallPolicyRuleMatchArgs.builder()
///                 .destIpRanges("11.100.0.1/32")
///                 .destNetworkContext("UNSPECIFIED")
///                 .layer4Configs(FirewallPolicyRuleMatchLayer4ConfigArgs.builder()
///                     .ipProtocol("tcp")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:organizations:Folder
///     properties:
///       displayName: folder
///       parent: organizations/123456789
///       deletionProtection: false
///   default:
///     type: gcp:compute:FirewallPolicy
///     properties:
///       parent: ${folder.id}
///       shortName: fw-policy
///       description: Firewall policy
///   primary:
///     type: gcp:compute:FirewallPolicyRule
///     properties:
///       firewallPolicy: ${default.name}
///       description: Firewall policy rule with network context
///       priority: 8000
///       action: allow
///       direction: INGRESS
///       disabled: false
///       match:
///         srcIpRanges:
///           - 11.100.0.1/32
///         srcNetworkContext: INTERNET
///         layer4Configs:
///           - ipProtocol: tcp
///             ports:
///               - 8080
///           - ipProtocol: udp
///             ports:
///               - 22
///   egress-primary:
///     type: gcp:compute:FirewallPolicyRule
///     properties:
///       firewallPolicy: ${default.name}
///       description: Firewall policy rule with network context
///       priority: 9000
///       action: allow
///       direction: EGRESS
///       disabled: false
///       match:
///         destIpRanges:
///           - 11.100.0.1/32
///         destNetworkContext: NON_INTERNET
///         layer4Configs:
///           - ipProtocol: tcp
///   unset-primary:
///     type: gcp:compute:FirewallPolicyRule
///     properties:
///       firewallPolicy: ${default.name}
///       description: Firewall policy rule with network context
///       priority: 10000
///       action: allow
///       direction: EGRESS
///       disabled: false
///       match:
///         destIpRanges:
///           - 11.100.0.1/32
///         destNetworkContext: UNSPECIFIED
///         layer4Configs:
///           - ipProtocol: tcp
/// ```
///
/// ### Firewall Policy Rule Secure Tags
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.organizations.Folder("folder", {
///     displayName: "folder",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// const _default = new gcp.compute.FirewallPolicy("default", {
///     parent: folder.id,
///     shortName: "fw-policy",
///     description: "Resource created for Terraform acceptance testing",
/// });
/// const basicKey = new gcp.tags.TagKey("basic_key", {
///     description: "For keyname resources.",
///     parent: "organizations/123456789",
///     purpose: "GCE_FIREWALL",
///     shortName: "tag-key",
///     purposeData: {
///         organization: "auto",
///     },
/// });
/// const basicValue = new gcp.tags.TagValue("basic_value", {
///     description: "For valuename resources.",
///     parent: basicKey.id,
///     shortName: "tag-value",
/// });
/// const primary = new gcp.compute.FirewallPolicyRule("primary", {
///     firewallPolicy: _default.name,
///     description: "Resource created for Terraform acceptance testing",
///     priority: 9000,
///     enableLogging: true,
///     action: "allow",
///     direction: "INGRESS",
///     disabled: false,
///     targetSecureTags: [{
///         name: basicValue.id,
///     }],
///     match: {
///         srcIpRanges: ["11.100.0.1/32"],
///         srcSecureTags: [{
///             name: basicValue.id,
///         }],
///         layer4Configs: [
///             {
///                 ipProtocol: "tcp",
///                 ports: ["8080"],
///             },
///             {
///                 ipProtocol: "udp",
///                 ports: ["22"],
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.organizations.Folder("folder",
///     display_name="folder",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// default = gcp.compute.FirewallPolicy("default",
///     parent=folder.id,
///     short_name="fw-policy",
///     description="Resource created for Terraform acceptance testing")
/// basic_key = gcp.tags.TagKey("basic_key",
///     description="For keyname resources.",
///     parent="organizations/123456789",
///     purpose="GCE_FIREWALL",
///     short_name="tag-key",
///     purpose_data={
///         "organization": "auto",
///     })
/// basic_value = gcp.tags.TagValue("basic_value",
///     description="For valuename resources.",
///     parent=basic_key.id,
///     short_name="tag-value")
/// primary = gcp.compute.FirewallPolicyRule("primary",
///     firewall_policy=default.name,
///     description="Resource created for Terraform acceptance testing",
///     priority=9000,
///     enable_logging=True,
///     action="allow",
///     direction="INGRESS",
///     disabled=False,
///     target_secure_tags=[{
///         "name": basic_value.id,
///     }],
///     match={
///         "src_ip_ranges": ["11.100.0.1/32"],
///         "src_secure_tags": [{
///             "name": basic_value.id,
///         }],
///         "layer4_configs": [
///             {
///                 "ip_protocol": "tcp",
///                 "ports": ["8080"],
///             },
///             {
///                 "ip_protocol": "udp",
///                 "ports": ["22"],
///             },
///         ],
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
///     var folder = new Gcp.Organizations.Folder("folder", new()
///     {
///         DisplayName = "folder",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     var @default = new Gcp.Compute.FirewallPolicy("default", new()
///     {
///         Parent = folder.Id,
///         ShortName = "fw-policy",
///         Description = "Resource created for Terraform acceptance testing",
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
///             { "organization", "auto" },
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
///     var primary = new Gcp.Compute.FirewallPolicyRule("primary", new()
///     {
///         FirewallPolicy = @default.Name,
///         Description = "Resource created for Terraform acceptance testing",
///         Priority = 9000,
///         EnableLogging = true,
///         Action = "allow",
///         Direction = "INGRESS",
///         Disabled = false,
///         TargetSecureTags = new[]
///         {
///             new Gcp.Compute.Inputs.FirewallPolicyRuleTargetSecureTagArgs
///             {
///                 Name = basicValue.Id,
///             },
///         },
///         Match = new Gcp.Compute.Inputs.FirewallPolicyRuleMatchArgs
///         {
///             SrcIpRanges = new[]
///             {
///                 "11.100.0.1/32",
///             },
///             SrcSecureTags = new[]
///             {
///                 new Gcp.Compute.Inputs.FirewallPolicyRuleMatchSrcSecureTagArgs
///                 {
///                     Name = basicValue.Id,
///                 },
///             },
///             Layer4Configs = new[]
///             {
///                 new Gcp.Compute.Inputs.FirewallPolicyRuleMatchLayer4ConfigArgs
///                 {
///                     IpProtocol = "tcp",
///                     Ports = new[]
///                     {
///                         "8080",
///                     },
///                 },
///                 new Gcp.Compute.Inputs.FirewallPolicyRuleMatchLayer4ConfigArgs
///                 {
///                     IpProtocol = "udp",
///                     Ports = new[]
///                     {
///                         "22",
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		folder, err := organizations.NewFolder(ctx, "folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("folder"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewFirewallPolicy(ctx, "default", &compute.FirewallPolicyArgs{
/// 			Parent:      folder.ID().ToIDOutput().ToStringOutput(),
/// 			ShortName:   pulumi.String("fw-policy"),
/// 			Description: pulumi.String("Resource created for Terraform acceptance testing"),
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
/// 				"organization": pulumi.String("auto"),
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
/// 		_, err = compute.NewFirewallPolicyRule(ctx, "primary", &compute.FirewallPolicyRuleArgs{
/// 			FirewallPolicy: _default.Name,
/// 			Description:    pulumi.String("Resource created for Terraform acceptance testing"),
/// 			Priority:       pulumi.Int(9000),
/// 			EnableLogging:  pulumi.Bool(true),
/// 			Action:         pulumi.String("allow"),
/// 			Direction:      pulumi.String("INGRESS"),
/// 			Disabled:       pulumi.Bool(false),
/// 			TargetSecureTags: compute.FirewallPolicyRuleTargetSecureTagArray{
/// 				&compute.FirewallPolicyRuleTargetSecureTagArgs{
/// 					Name: basicValue.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			Match: &compute.FirewallPolicyRuleMatchArgs{
/// 				SrcIpRanges: pulumi.StringArray{
/// 					pulumi.String("11.100.0.1/32"),
/// 				},
/// 				SrcSecureTags: compute.FirewallPolicyRuleMatchSrcSecureTagArray{
/// 					&compute.FirewallPolicyRuleMatchSrcSecureTagArgs{
/// 						Name: basicValue.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 				},
/// 				Layer4Configs: compute.FirewallPolicyRuleMatchLayer4ConfigArray{
/// 					&compute.FirewallPolicyRuleMatchLayer4ConfigArgs{
/// 						IpProtocol: pulumi.String("tcp"),
/// 						Ports: pulumi.StringArray{
/// 							pulumi.String("8080"),
/// 						},
/// 					},
/// 					&compute.FirewallPolicyRuleMatchLayer4ConfigArgs{
/// 						IpProtocol: pulumi.String("udp"),
/// 						Ports: pulumi.StringArray{
/// 							pulumi.String("22"),
/// 						},
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
/// resource "gcp_organizations_folder" "folder" {
///   display_name        = "folder"
///   parent              = "organizations/123456789"
///   deletion_protection = false
/// }
/// resource "gcp_compute_firewallpolicy" "default" {
///   parent      = gcp_organizations_folder.folder.id
///   short_name  = "fw-policy"
///   description = "Resource created for Terraform acceptance testing"
/// }
/// resource "gcp_compute_firewallpolicyrule" "primary" {
///   firewall_policy = gcp_compute_firewallpolicy.default.name
///   description     = "Resource created for Terraform acceptance testing"
///   priority        = 9000
///   enable_logging  = true
///   action          = "allow"
///   direction       = "INGRESS"
///   disabled        = false
///   target_secure_tags {
///     name = gcp_tags_tagvalue.basic_value.id
///   }
///   match = {
///     src_ip_ranges = ["11.100.0.1/32"]
///     src_secure_tags = [{
///       "name" = gcp_tags_tagvalue.basic_value.id
///     }]
///     layer4_configs = [{
///       "ipProtocol" = "tcp"
///       "ports"      = [8080]
///       }, {
///       "ipProtocol" = "udp"
///       "ports"      = [22]
///     }]
///   }
/// }
/// resource "gcp_tags_tagkey" "basic_key" {
///   description = "For keyname resources."
///   parent      = "organizations/123456789"
///   purpose     = "GCE_FIREWALL"
///   short_name  = "tag-key"
///   purpose_data = {
///     "organization" = "auto"
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
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.compute.FirewallPolicy;
/// import com.pulumi.gcp.compute.FirewallPolicyArgs;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.compute.FirewallPolicyRule;
/// import com.pulumi.gcp.compute.FirewallPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallPolicyRuleTargetSecureTagArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallPolicyRuleMatchSrcSecureTagArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallPolicyRuleMatchLayer4ConfigArgs;
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
///         var folder = new Folder("folder", FolderArgs.builder()
///             .displayName("folder")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         var default_ = new FirewallPolicy("default", FirewallPolicyArgs.builder()
///             .parent(folder.id())
///             .shortName("fw-policy")
///             .description("Resource created for Terraform acceptance testing")
///             .build());
///
///         var basicKey = new TagKey("basicKey", TagKeyArgs.builder()
///             .description("For keyname resources.")
///             .parent("organizations/123456789")
///             .purpose("GCE_FIREWALL")
///             .shortName("tag-key")
///             .purposeData(Map.of("organization", "auto"))
///             .build());
///
///         var basicValue = new TagValue("basicValue", TagValueArgs.builder()
///             .description("For valuename resources.")
///             .parent(basicKey.id())
///             .shortName("tag-value")
///             .build());
///
///         var primary = new FirewallPolicyRule("primary", FirewallPolicyRuleArgs.builder()
///             .firewallPolicy(default_.name())
///             .description("Resource created for Terraform acceptance testing")
///             .priority(9000)
///             .enableLogging(true)
///             .action("allow")
///             .direction("INGRESS")
///             .disabled(false)
///             .targetSecureTags(FirewallPolicyRuleTargetSecureTagArgs.builder()
///                 .name(basicValue.id())
///                 .build())
///             .match(FirewallPolicyRuleMatchArgs.builder()
///                 .srcIpRanges("11.100.0.1/32")
///                 .srcSecureTags(FirewallPolicyRuleMatchSrcSecureTagArgs.builder()
///                     .name(basicValue.id())
///                     .build())
///                 .layer4Configs(
///                     FirewallPolicyRuleMatchLayer4ConfigArgs.builder()
///                         .ipProtocol("tcp")
///                         .ports("8080")
///                         .build(),
///                     FirewallPolicyRuleMatchLayer4ConfigArgs.builder()
///                         .ipProtocol("udp")
///                         .ports("22")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:organizations:Folder
///     properties:
///       displayName: folder
///       parent: organizations/123456789
///       deletionProtection: false
///   default:
///     type: gcp:compute:FirewallPolicy
///     properties:
///       parent: ${folder.id}
///       shortName: fw-policy
///       description: Resource created for Terraform acceptance testing
///   primary:
///     type: gcp:compute:FirewallPolicyRule
///     properties:
///       firewallPolicy: ${default.name}
///       description: Resource created for Terraform acceptance testing
///       priority: 9000
///       enableLogging: true
///       action: allow
///       direction: INGRESS
///       disabled: false
///       targetSecureTags:
///         - name: ${basicValue.id}
///       match:
///         srcIpRanges:
///           - 11.100.0.1/32
///         srcSecureTags:
///           - name: ${basicValue.id}
///         layer4Configs:
///           - ipProtocol: tcp
///             ports:
///               - 8080
///           - ipProtocol: udp
///             ports:
///               - 22
///   basicKey:
///     type: gcp:tags:TagKey
///     name: basic_key
///     properties:
///       description: For keyname resources.
///       parent: organizations/123456789
///       purpose: GCE_FIREWALL
///       shortName: tag-key
///       purposeData:
///         organization: auto
///   basicValue:
///     type: gcp:tags:TagValue
///     name: basic_value
///     properties:
///       description: For valuename resources.
///       parent: ${basicKey.id}
///       shortName: tag-value
/// ```
///
///
/// ## Import
///
/// FirewallPolicyRule can be imported using any of these accepted formats:
///
/// * `locations/global/firewallPolicies/{{firewall_policy}}/rules/{{priority}}`
/// * `{{firewall_policy}}/{{priority}}`
///
///
/// When using the `pulumi import` command, FirewallPolicyRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/firewallPolicyRule:FirewallPolicyRule default locations/global/firewallPolicies/{{firewall_policy}}/rules/{{priority}}
/// $ pulumi import gcp:compute/firewallPolicyRule:FirewallPolicyRule default {{firewall_policy}}/{{priority}}
/// ```
class FirewallPolicyRule extends pulumi.CustomResource {
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
  late final pulumi.Output<FirewallPolicyRuleMatch> match;
  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.
  late final pulumi.Output<int> priority;
  /// Calculation of the complexity of a single firewall policy rule.
  late final pulumi.Output<int> ruleTupleCount;
  /// A fully-qualified URL of a SecurityProfile resource instance.
  /// Example: https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group
  /// Must be specified if action = 'apply_security_profile_group' and cannot be specified for other actions.
  late final pulumi.Output<String?> securityProfileGroup;
  /// A list of network resource URLs to which this rule applies.
  /// This field allows you to control which network's VMs get this rule.
  /// If this field is left blank, all VMs within the organization will receive the rule.
  late final pulumi.Output<List<String>?> targetResources;
  /// A list of secure tags that controls which instances the firewall rule applies to.
  /// If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the targetSecureTag are in INEFFECTIVE state, then this rule will be ignored.
  /// targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target secure tags allowed is 256.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> targetSecureTags;
  /// A list of service accounts indicating the sets of instances that are applied with this rule.
  late final pulumi.Output<List<String>?> targetServiceAccounts;
  /// Boolean flag indicating if the traffic should be TLS decrypted.
  /// Can be set only if action = 'apply_security_profile_group' and cannot be set for other actions.
  late final pulumi.Output<bool?> tlsInspect;

  /// Creates a new [FirewallPolicyRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallPolicyRule]. {@macro pulumi_compute_firewall_policy_rule_firewall_policy_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallPolicyRule(
    String name, {
    FirewallPolicyRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/firewallPolicyRule:FirewallPolicyRule',
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
    enableLogging = registerOutput<bool?>('enableLogging');
    firewallPolicy = registerOutput<String>('firewallPolicy');
    kind = registerOutput<String>('kind');
    match = registerOutput<FirewallPolicyRuleMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicyRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<int>('priority');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    securityProfileGroup = registerOutput<String?>('securityProfileGroup');
    targetResources = registerOutput<List<String>?>('targetResources');
    targetSecureTags = registerOutput<List<Map<String, dynamic>>?>('targetSecureTags');
    targetServiceAccounts = registerOutput<List<String>?>('targetServiceAccounts');
    tlsInspect = registerOutput<bool?>('tlsInspect');
  }

  /// Gets an existing [FirewallPolicyRule] resource's state with the given [name] and [id].
  static FirewallPolicyRule get(
    String name,
    pulumi.Input<String> id, {
    FirewallPolicyRuleState? state,
  }) {
    return FirewallPolicyRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FirewallPolicyRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/firewallPolicyRule:FirewallPolicyRule',
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
    match = registerOutput<FirewallPolicyRuleMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicyRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<int>('priority');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    securityProfileGroup = registerOutput<String?>('securityProfileGroup');
    targetResources = registerOutput<List<String>?>('targetResources');
    targetSecureTags = registerOutput<List<Map<String, dynamic>>?>('targetSecureTags');
    targetServiceAccounts = registerOutput<List<String>?>('targetServiceAccounts');
    tlsInspect = registerOutput<bool?>('tlsInspect');
  }
}
