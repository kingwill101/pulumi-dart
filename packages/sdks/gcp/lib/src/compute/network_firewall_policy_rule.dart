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
/// 			Parent:      basicKey.ID(),
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
/// 					basicGlobalNetworksecurityAddressGroup.ID(),
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
/// 						Name: basicValue.ID(),
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
/// 					network.ID(),
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
///
/// ## Import
///
/// NetworkFirewallPolicyRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/firewallPolicies/{{firewall_policy}}/rules/{{priority}}`
///
/// * `{{project}}/{{firewall_policy}}/{{priority}}`
///
/// * `{{firewall_policy}}/{{priority}}`
///
/// When using the `pulumi import` command, NetworkFirewallPolicyRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyRule:NetworkFirewallPolicyRule default projects/{{project}}/global/firewallPolicies/{{firewall_policy}}/rules/{{priority}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyRule:NetworkFirewallPolicyRule default {{project}}/{{firewall_policy}}/{{priority}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyRule:NetworkFirewallPolicyRule default {{firewall_policy}}/{{priority}}
/// ```
class NetworkFirewallPolicyRule extends pulumi.CustomResource {
  /// The Action to perform when the client connection triggers the rule. Valid actions are "allow", "deny", "goto_next" and "apply_security_profile_group".
  late final pulumi.Output<String> action;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
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
  /// Note: you cannot enable logging on "goto_next" rules.
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
  /// A list of secure tags that controls which instances the firewall rule applies to.
  /// If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the targetSecureTag are in INEFFECTIVE state, then this rule will be ignored.
  /// targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  /// Structure is documented below.
  late final pulumi.Output<List<NetworkFirewallPolicyRuleTargetSecureTag>?> targetSecureTags;
  /// A list of service accounts indicating the sets of instances that are applied with this rule.
  late final pulumi.Output<List<String>?> targetServiceAccounts;
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.direction = registerOutput<String>('direction');
    this.disabled = registerOutput<bool?>('disabled');
    this.enableLogging = registerOutput<bool?>('enableLogging');
    this.firewallPolicy = registerOutput<String>('firewallPolicy');
    this.kind = registerOutput<String>('kind');
    this.match = registerOutput<NetworkFirewallPolicyRuleMatch>('match');
    this.priority = registerOutput<int>('priority');
    this.project = registerOutput<String>('project');
    this.ruleName = registerOutput<String?>('ruleName');
    this.ruleTupleCount = registerOutput<int>('ruleTupleCount');
    this.securityProfileGroup = registerOutput<String?>('securityProfileGroup');
    this.targetSecureTags = registerOutput<List<NetworkFirewallPolicyRuleTargetSecureTag>?>('targetSecureTags');
    this.targetServiceAccounts = registerOutput<List<String>?>('targetServiceAccounts');
    this.tlsInspect = registerOutput<bool?>('tlsInspect');
  }

  /// Gets an existing [NetworkFirewallPolicyRule] resource's state with the given [name] and [id].
  static NetworkFirewallPolicyRule get(
    String name,
    pulumi.Input<String> id, {
    NetworkFirewallPolicyRuleState? state,
  }) {
    return NetworkFirewallPolicyRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    this.action = registerOutput<String>('action');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.direction = registerOutput<String>('direction');
    this.disabled = registerOutput<bool?>('disabled');
    this.enableLogging = registerOutput<bool?>('enableLogging');
    this.firewallPolicy = registerOutput<String>('firewallPolicy');
    this.kind = registerOutput<String>('kind');
    this.match = registerOutput<NetworkFirewallPolicyRuleMatch>('match');
    this.priority = registerOutput<int>('priority');
    this.project = registerOutput<String>('project');
    this.ruleName = registerOutput<String?>('ruleName');
    this.ruleTupleCount = registerOutput<int>('ruleTupleCount');
    this.securityProfileGroup = registerOutput<String?>('securityProfileGroup');
    this.targetSecureTags = registerOutput<List<NetworkFirewallPolicyRuleTargetSecureTag>?>('targetSecureTags');
    this.targetServiceAccounts = registerOutput<List<String>?>('targetServiceAccounts');
    this.tlsInspect = registerOutput<bool?>('tlsInspect');
  }
}
