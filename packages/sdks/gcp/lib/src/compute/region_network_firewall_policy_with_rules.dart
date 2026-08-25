import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_firewall_policy_with_rules_args.dart';
import 'region_network_firewall_policy_with_rules_predefined_rule.dart';
import 'region_network_firewall_policy_with_rules_rule.dart';
import 'region_network_firewall_policy_with_rules_state.dart';

/// The Compute NetworkFirewallPolicy with rules resource
///
///
///
/// ## Example Usage
///
/// ### Compute Region Network Firewall Policy With Rules Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const targetForwardingRule = new gcp.compute.Network("target_forwarding_rule", {
///     name: "tf-test-network-_87786",
///     autoCreateSubnetworks: false,
/// });
/// const targetForwardingRuleProxySubnetwork = new gcp.compute.Subnetwork("target_forwarding_rule_proxy_subnetwork", {
///     name: "tf-test-proxy-subnetwork-_2067",
///     region: "us-west2",
///     network: targetForwardingRule.id,
///     ipCidrRange: "10.20.0.0/24",
///     purpose: "REGIONAL_MANAGED_PROXY",
///     role: "ACTIVE",
/// });
/// const targetForwardingRuleDefaultSubnetwork = new gcp.compute.Subnetwork("target_forwarding_rule_default_subnetwork", {
///     name: "tf-test-default-subnetwork-_40785",
///     region: "us-west2",
///     network: targetForwardingRule.id,
///     ipCidrRange: "10.10.0.0/24",
/// });
/// const targetForwardingRuleRegionHealthCheck = new gcp.compute.RegionHealthCheck("target_forwarding_rule", {
///     name: "tf-test-health-check-_79169",
///     region: "us-west2",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const targetForwardingRuleRegionBackendService = new gcp.compute.RegionBackendService("target_forwarding_rule", {
///     name: "tf-test-backend-service-_56529",
///     region: "us-west2",
///     protocol: "HTTP",
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     healthChecks: targetForwardingRuleRegionHealthCheck.id,
/// });
/// const targetForwardingRuleRegionUrlMap = new gcp.compute.RegionUrlMap("target_forwarding_rule", {
///     name: "tf-test-url-map-_75413",
///     region: "us-west2",
///     defaultService: targetForwardingRuleRegionBackendService.id,
/// });
/// const targetForwardingRuleRegionTargetHttpProxy = new gcp.compute.RegionTargetHttpProxy("target_forwarding_rule", {
///     name: "tf-test-target-http-proxy-_55138",
///     region: "us-west2",
///     urlMap: targetForwardingRuleRegionUrlMap.id,
/// });
/// const targetForwardingRuleForwardingRule = new gcp.compute.ForwardingRule("target_forwarding_rule", {
///     name: "tf-test-forwarding-rule-_37559",
///     region: "us-west2",
///     network: targetForwardingRule.id,
///     subnetwork: targetForwardingRuleDefaultSubnetwork.id,
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     target: targetForwardingRuleRegionTargetHttpProxy.id,
///     ipProtocol: "TCP",
///     portRange: "80",
/// }, {
///     dependsOn: [targetForwardingRuleProxySubnetwork],
/// });
/// const addressGroup1 = new gcp.networksecurity.AddressGroup("address_group_1", {
///     name: "address-group",
///     parent: project.then(project => project.id),
///     description: "Regional address group",
///     location: "us-west2",
///     items: ["208.80.154.224/32"],
///     type: "IPV4",
///     capacity: 100,
/// });
/// const secureTagKey1 = new gcp.tags.TagKey("secure_tag_key_1", {
///     description: "Tag key",
///     parent: project.then(project => project.id),
///     purpose: "GCE_FIREWALL",
///     shortName: "tag-key",
///     purposeData: {
///         network: project.then(project => `${project.name}/default`),
///     },
/// });
/// const secureTagValue1 = new gcp.tags.TagValue("secure_tag_value_1", {
///     description: "Tag value",
///     parent: secureTagKey1.id,
///     shortName: "tag-value",
/// });
/// const primary = new gcp.compute.RegionNetworkFirewallPolicyWithRules("primary", {
///     name: "fw-policy",
///     region: "us-west2",
///     description: "Terraform test",
///     rules: [
///         {
///             description: "tcp rule",
///             priority: 1000,
///             enableLogging: true,
///             action: "allow",
///             direction: "EGRESS",
///             match: {
///                 destIpRanges: ["11.100.0.1/32"],
///                 destFqdns: [
///                     "www.yyy.com",
///                     "www.zzz.com",
///                 ],
///                 destRegionCodes: [
///                     "HK",
///                     "IN",
///                 ],
///                 destThreatIntelligences: [
///                     "iplist-search-engines-crawlers",
///                     "iplist-tor-exit-nodes",
///                 ],
///                 destAddressGroups: [addressGroup1.id],
///                 layer4Configs: [{
///                     ipProtocol: "tcp",
///                     ports: [
///                         "8080",
///                         "7070",
///                     ],
///                 }],
///             },
///             targetSecureTags: [{
///                 name: secureTagValue1.id,
///             }],
///         },
///         {
///             description: "udp rule",
///             ruleName: "test-rule",
///             priority: 2000,
///             enableLogging: false,
///             action: "deny",
///             direction: "INGRESS",
///             disabled: true,
///             match: {
///                 srcIpRanges: ["0.0.0.0/0"],
///                 srcFqdns: [
///                     "www.abc.com",
///                     "www.def.com",
///                 ],
///                 srcRegionCodes: [
///                     "US",
///                     "CA",
///                 ],
///                 srcThreatIntelligences: [
///                     "iplist-known-malicious-ips",
///                     "iplist-public-clouds",
///                 ],
///                 srcAddressGroups: [addressGroup1.id],
///                 srcSecureTags: [{
///                     name: secureTagValue1.id,
///                 }],
///                 layer4Configs: [{
///                     ipProtocol: "udp",
///                 }],
///             },
///         },
///         {
///             description: "internal managed lb rule",
///             priority: 3000,
///             action: "allow",
///             direction: "INGRESS",
///             targetType: "INTERNAL_MANAGED_LB",
///             targetForwardingRules: [targetForwardingRuleForwardingRule.selfLink],
///             match: {
///                 srcIpRanges: ["10.0.0.0/8"],
///                 layer4Configs: [{
///                     ipProtocol: "tcp",
///                 }],
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// target_forwarding_rule = gcp.compute.Network("target_forwarding_rule",
///     name="tf-test-network-_87786",
///     auto_create_subnetworks=False)
/// target_forwarding_rule_proxy_subnetwork = gcp.compute.Subnetwork("target_forwarding_rule_proxy_subnetwork",
///     name="tf-test-proxy-subnetwork-_2067",
///     region="us-west2",
///     network=target_forwarding_rule.id,
///     ip_cidr_range="10.20.0.0/24",
///     purpose="REGIONAL_MANAGED_PROXY",
///     role="ACTIVE")
/// target_forwarding_rule_default_subnetwork = gcp.compute.Subnetwork("target_forwarding_rule_default_subnetwork",
///     name="tf-test-default-subnetwork-_40785",
///     region="us-west2",
///     network=target_forwarding_rule.id,
///     ip_cidr_range="10.10.0.0/24")
/// target_forwarding_rule_region_health_check = gcp.compute.RegionHealthCheck("target_forwarding_rule",
///     name="tf-test-health-check-_79169",
///     region="us-west2",
///     http_health_check={
///         "port": 80,
///     })
/// target_forwarding_rule_region_backend_service = gcp.compute.RegionBackendService("target_forwarding_rule",
///     name="tf-test-backend-service-_56529",
///     region="us-west2",
///     protocol="HTTP",
///     load_balancing_scheme="INTERNAL_MANAGED",
///     health_checks=target_forwarding_rule_region_health_check.id)
/// target_forwarding_rule_region_url_map = gcp.compute.RegionUrlMap("target_forwarding_rule",
///     name="tf-test-url-map-_75413",
///     region="us-west2",
///     default_service=target_forwarding_rule_region_backend_service.id)
/// target_forwarding_rule_region_target_http_proxy = gcp.compute.RegionTargetHttpProxy("target_forwarding_rule",
///     name="tf-test-target-http-proxy-_55138",
///     region="us-west2",
///     url_map=target_forwarding_rule_region_url_map.id)
/// target_forwarding_rule_forwarding_rule = gcp.compute.ForwardingRule("target_forwarding_rule",
///     name="tf-test-forwarding-rule-_37559",
///     region="us-west2",
///     network=target_forwarding_rule.id,
///     subnetwork=target_forwarding_rule_default_subnetwork.id,
///     load_balancing_scheme="INTERNAL_MANAGED",
///     target=target_forwarding_rule_region_target_http_proxy.id,
///     ip_protocol="TCP",
///     port_range="80",
///     opts = pulumi.ResourceOptions(depends_on=[target_forwarding_rule_proxy_subnetwork]))
/// address_group1 = gcp.networksecurity.AddressGroup("address_group_1",
///     name="address-group",
///     parent=project.id,
///     description="Regional address group",
///     location="us-west2",
///     items=["208.80.154.224/32"],
///     type="IPV4",
///     capacity=100)
/// secure_tag_key1 = gcp.tags.TagKey("secure_tag_key_1",
///     description="Tag key",
///     parent=project.id,
///     purpose="GCE_FIREWALL",
///     short_name="tag-key",
///     purpose_data={
///         "network": f"{project.name}/default",
///     })
/// secure_tag_value1 = gcp.tags.TagValue("secure_tag_value_1",
///     description="Tag value",
///     parent=secure_tag_key1.id,
///     short_name="tag-value")
/// primary = gcp.compute.RegionNetworkFirewallPolicyWithRules("primary",
///     name="fw-policy",
///     region="us-west2",
///     description="Terraform test",
///     rules=[
///         {
///             "description": "tcp rule",
///             "priority": 1000,
///             "enable_logging": True,
///             "action": "allow",
///             "direction": "EGRESS",
///             "match": {
///                 "dest_ip_ranges": ["11.100.0.1/32"],
///                 "dest_fqdns": [
///                     "www.yyy.com",
///                     "www.zzz.com",
///                 ],
///                 "dest_region_codes": [
///                     "HK",
///                     "IN",
///                 ],
///                 "dest_threat_intelligences": [
///                     "iplist-search-engines-crawlers",
///                     "iplist-tor-exit-nodes",
///                 ],
///                 "dest_address_groups": [address_group1.id],
///                 "layer4_configs": [{
///                     "ip_protocol": "tcp",
///                     "ports": [
///                         "8080",
///                         "7070",
///                     ],
///                 }],
///             },
///             "target_secure_tags": [{
///                 "name": secure_tag_value1.id,
///             }],
///         },
///         {
///             "description": "udp rule",
///             "rule_name": "test-rule",
///             "priority": 2000,
///             "enable_logging": False,
///             "action": "deny",
///             "direction": "INGRESS",
///             "disabled": True,
///             "match": {
///                 "src_ip_ranges": ["0.0.0.0/0"],
///                 "src_fqdns": [
///                     "www.abc.com",
///                     "www.def.com",
///                 ],
///                 "src_region_codes": [
///                     "US",
///                     "CA",
///                 ],
///                 "src_threat_intelligences": [
///                     "iplist-known-malicious-ips",
///                     "iplist-public-clouds",
///                 ],
///                 "src_address_groups": [address_group1.id],
///                 "src_secure_tags": [{
///                     "name": secure_tag_value1.id,
///                 }],
///                 "layer4_configs": [{
///                     "ip_protocol": "udp",
///                 }],
///             },
///         },
///         {
///             "description": "internal managed lb rule",
///             "priority": 3000,
///             "action": "allow",
///             "direction": "INGRESS",
///             "target_type": "INTERNAL_MANAGED_LB",
///             "target_forwarding_rules": [target_forwarding_rule_forwarding_rule.self_link],
///             "match": {
///                 "src_ip_ranges": ["10.0.0.0/8"],
///                 "layer4_configs": [{
///                     "ip_protocol": "tcp",
///                 }],
///             },
///         },
///     ])
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
///     var targetForwardingRule = new Gcp.Compute.Network("target_forwarding_rule", new()
///     {
///         Name = "tf-test-network-_87786",
///         AutoCreateSubnetworks = false,
///     });
///
///     var targetForwardingRuleProxySubnetwork = new Gcp.Compute.Subnetwork("target_forwarding_rule_proxy_subnetwork", new()
///     {
///         Name = "tf-test-proxy-subnetwork-_2067",
///         Region = "us-west2",
///         Network = targetForwardingRule.Id,
///         IpCidrRange = "10.20.0.0/24",
///         Purpose = "REGIONAL_MANAGED_PROXY",
///         Role = "ACTIVE",
///     });
///
///     var targetForwardingRuleDefaultSubnetwork = new Gcp.Compute.Subnetwork("target_forwarding_rule_default_subnetwork", new()
///     {
///         Name = "tf-test-default-subnetwork-_40785",
///         Region = "us-west2",
///         Network = targetForwardingRule.Id,
///         IpCidrRange = "10.10.0.0/24",
///     });
///
///     var targetForwardingRuleRegionHealthCheck = new Gcp.Compute.RegionHealthCheck("target_forwarding_rule", new()
///     {
///         Name = "tf-test-health-check-_79169",
///         Region = "us-west2",
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var targetForwardingRuleRegionBackendService = new Gcp.Compute.RegionBackendService("target_forwarding_rule", new()
///     {
///         Name = "tf-test-backend-service-_56529",
///         Region = "us-west2",
///         Protocol = "HTTP",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         HealthChecks = targetForwardingRuleRegionHealthCheck.Id,
///     });
///
///     var targetForwardingRuleRegionUrlMap = new Gcp.Compute.RegionUrlMap("target_forwarding_rule", new()
///     {
///         Name = "tf-test-url-map-_75413",
///         Region = "us-west2",
///         DefaultService = targetForwardingRuleRegionBackendService.Id,
///     });
///
///     var targetForwardingRuleRegionTargetHttpProxy = new Gcp.Compute.RegionTargetHttpProxy("target_forwarding_rule", new()
///     {
///         Name = "tf-test-target-http-proxy-_55138",
///         Region = "us-west2",
///         UrlMap = targetForwardingRuleRegionUrlMap.Id,
///     });
///
///     var targetForwardingRuleForwardingRule = new Gcp.Compute.ForwardingRule("target_forwarding_rule", new()
///     {
///         Name = "tf-test-forwarding-rule-_37559",
///         Region = "us-west2",
///         Network = targetForwardingRule.Id,
///         Subnetwork = targetForwardingRuleDefaultSubnetwork.Id,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         Target = targetForwardingRuleRegionTargetHttpProxy.Id,
///         IpProtocol = "TCP",
///         PortRange = "80",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             targetForwardingRuleProxySubnetwork,
///         },
///     });
///
///     var addressGroup1 = new Gcp.NetworkSecurity.AddressGroup("address_group_1", new()
///     {
///         Name = "address-group",
///         Parent = project.Apply(getProjectResult => getProjectResult.Id),
///         Description = "Regional address group",
///         Location = "us-west2",
///         Items = new[]
///         {
///             "208.80.154.224/32",
///         },
///         Type = "IPV4",
///         Capacity = 100,
///     });
///
///     var secureTagKey1 = new Gcp.Tags.TagKey("secure_tag_key_1", new()
///     {
///         Description = "Tag key",
///         Parent = project.Apply(getProjectResult => getProjectResult.Id),
///         Purpose = "GCE_FIREWALL",
///         ShortName = "tag-key",
///         PurposeData =
///         {
///             { "network", $"{project.Apply(getProjectResult => getProjectResult.Name)}/default" },
///         },
///     });
///
///     var secureTagValue1 = new Gcp.Tags.TagValue("secure_tag_value_1", new()
///     {
///         Description = "Tag value",
///         Parent = secureTagKey1.Id,
///         ShortName = "tag-value",
///     });
///
///     var primary = new Gcp.Compute.RegionNetworkFirewallPolicyWithRules("primary", new()
///     {
///         Name = "fw-policy",
///         Region = "us-west2",
///         Description = "Terraform test",
///         Rules = new[]
///         {
///             new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleArgs
///             {
///                 Description = "tcp rule",
///                 Priority = 1000,
///                 EnableLogging = true,
///                 Action = "allow",
///                 Direction = "EGRESS",
///                 Match = new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchArgs
///                 {
///                     DestIpRanges = new[]
///                     {
///                         "11.100.0.1/32",
///                     },
///                     DestFqdns = new[]
///                     {
///                         "www.yyy.com",
///                         "www.zzz.com",
///                     },
///                     DestRegionCodes = new[]
///                     {
///                         "HK",
///                         "IN",
///                     },
///                     DestThreatIntelligences = new[]
///                     {
///                         "iplist-search-engines-crawlers",
///                         "iplist-tor-exit-nodes",
///                     },
///                     DestAddressGroups = new[]
///                     {
///                         addressGroup1.Id,
///                     },
///                     Layer4Configs = new[]
///                     {
///                         new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs
///                         {
///                             IpProtocol = "tcp",
///                             Ports = new[]
///                             {
///                                 "8080",
///                                 "7070",
///                             },
///                         },
///                     },
///                 },
///                 TargetSecureTags = new[]
///                 {
///                     new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleTargetSecureTagArgs
///                     {
///                         Name = secureTagValue1.Id,
///                     },
///                 },
///             },
///             new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleArgs
///             {
///                 Description = "udp rule",
///                 RuleName = "test-rule",
///                 Priority = 2000,
///                 EnableLogging = false,
///                 Action = "deny",
///                 Direction = "INGRESS",
///                 Disabled = true,
///                 Match = new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchArgs
///                 {
///                     SrcIpRanges = new[]
///                     {
///                         "0.0.0.0/0",
///                     },
///                     SrcFqdns = new[]
///                     {
///                         "www.abc.com",
///                         "www.def.com",
///                     },
///                     SrcRegionCodes = new[]
///                     {
///                         "US",
///                         "CA",
///                     },
///                     SrcThreatIntelligences = new[]
///                     {
///                         "iplist-known-malicious-ips",
///                         "iplist-public-clouds",
///                     },
///                     SrcAddressGroups = new[]
///                     {
///                         addressGroup1.Id,
///                     },
///                     SrcSecureTags = new[]
///                     {
///                         new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchSrcSecureTagArgs
///                         {
///                             Name = secureTagValue1.Id,
///                         },
///                     },
///                     Layer4Configs = new[]
///                     {
///                         new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs
///                         {
///                             IpProtocol = "udp",
///                         },
///                     },
///                 },
///             },
///             new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleArgs
///             {
///                 Description = "internal managed lb rule",
///                 Priority = 3000,
///                 Action = "allow",
///                 Direction = "INGRESS",
///                 TargetType = "INTERNAL_MANAGED_LB",
///                 TargetForwardingRules = new[]
///                 {
///                     targetForwardingRuleForwardingRule.SelfLink,
///                 },
///                 Match = new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchArgs
///                 {
///                     SrcIpRanges = new[]
///                     {
///                         "10.0.0.0/8",
///                     },
///                     Layer4Configs = new[]
///                     {
///                         new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs
///                         {
///                             IpProtocol = "tcp",
///                         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		targetForwardingRule, err := compute.NewNetwork(ctx, "target_forwarding_rule", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("tf-test-network-_87786"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		targetForwardingRuleProxySubnetwork, err := compute.NewSubnetwork(ctx, "target_forwarding_rule_proxy_subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("tf-test-proxy-subnetwork-_2067"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Network:     targetForwardingRule.ID().ToIDOutput().ToStringOutput(),
/// 			IpCidrRange: pulumi.String("10.20.0.0/24"),
/// 			Purpose:     pulumi.String("REGIONAL_MANAGED_PROXY"),
/// 			Role:        pulumi.String("ACTIVE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		targetForwardingRuleDefaultSubnetwork, err := compute.NewSubnetwork(ctx, "target_forwarding_rule_default_subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("tf-test-default-subnetwork-_40785"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Network:     targetForwardingRule.ID().ToIDOutput().ToStringOutput(),
/// 			IpCidrRange: pulumi.String("10.10.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		targetForwardingRuleRegionHealthCheck, err := compute.NewRegionHealthCheck(ctx, "target_forwarding_rule", &compute.RegionHealthCheckArgs{
/// 			Name:   pulumi.String("tf-test-health-check-_79169"),
/// 			Region: pulumi.String("us-west2"),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		targetForwardingRuleRegionBackendService, err := compute.NewRegionBackendService(ctx, "target_forwarding_rule", &compute.RegionBackendServiceArgs{
/// 			Name:                pulumi.String("tf-test-backend-service-_56529"),
/// 			Region:              pulumi.String("us-west2"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			HealthChecks:        targetForwardingRuleRegionHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		targetForwardingRuleRegionUrlMap, err := compute.NewRegionUrlMap(ctx, "target_forwarding_rule", &compute.RegionUrlMapArgs{
/// 			Name:           pulumi.String("tf-test-url-map-_75413"),
/// 			Region:         pulumi.String("us-west2"),
/// 			DefaultService: targetForwardingRuleRegionBackendService.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		targetForwardingRuleRegionTargetHttpProxy, err := compute.NewRegionTargetHttpProxy(ctx, "target_forwarding_rule", &compute.RegionTargetHttpProxyArgs{
/// 			Name:   pulumi.String("tf-test-target-http-proxy-_55138"),
/// 			Region: pulumi.String("us-west2"),
/// 			UrlMap: targetForwardingRuleRegionUrlMap.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		targetForwardingRuleForwardingRule, err := compute.NewForwardingRule(ctx, "target_forwarding_rule", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("tf-test-forwarding-rule-_37559"),
/// 			Region:              pulumi.String("us-west2"),
/// 			Network:             targetForwardingRule.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:          targetForwardingRuleDefaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			Target:              targetForwardingRuleRegionTargetHttpProxy.ID().ToIDOutput().ToStringOutput(),
/// 			IpProtocol:          pulumi.String("TCP"),
/// 			PortRange:           pulumi.String("80"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			targetForwardingRuleProxySubnetwork,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		addressGroup1, err := networksecurity.NewAddressGroup(ctx, "address_group_1", &networksecurity.AddressGroupArgs{
/// 			Name:        pulumi.String("address-group"),
/// 			Parent:      pulumi.String(project.Id),
/// 			Description: pulumi.String("Regional address group"),
/// 			Location:    pulumi.String("us-west2"),
/// 			Items: pulumi.StringArray{
/// 				pulumi.String("208.80.154.224/32"),
/// 			},
/// 			Type:     pulumi.String("IPV4"),
/// 			Capacity: pulumi.Int(100),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secureTagKey1, err := tags.NewTagKey(ctx, "secure_tag_key_1", &tags.TagKeyArgs{
/// 			Description: pulumi.String("Tag key"),
/// 			Parent:      pulumi.String(project.Id),
/// 			Purpose:     pulumi.String("GCE_FIREWALL"),
/// 			ShortName:   pulumi.String("tag-key"),
/// 			PurposeData: pulumi.StringMap{
/// 				"network": pulumi.Sprintf("%v/default", project.Name),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secureTagValue1, err := tags.NewTagValue(ctx, "secure_tag_value_1", &tags.TagValueArgs{
/// 			Description: pulumi.String("Tag value"),
/// 			Parent:      secureTagKey1.ID().ToIDOutput().ToStringOutput(),
/// 			ShortName:   pulumi.String("tag-value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionNetworkFirewallPolicyWithRules(ctx, "primary", &compute.RegionNetworkFirewallPolicyWithRulesArgs{
/// 			Name:        pulumi.String("fw-policy"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Description: pulumi.String("Terraform test"),
/// 			Rules: compute.RegionNetworkFirewallPolicyWithRulesRuleArray{
/// 				&compute.RegionNetworkFirewallPolicyWithRulesRuleArgs{
/// 					Description:   pulumi.String("tcp rule"),
/// 					Priority:      pulumi.Int(1000),
/// 					EnableLogging: pulumi.Bool(true),
/// 					Action:        pulumi.String("allow"),
/// 					Direction:     pulumi.String("EGRESS"),
/// 					Match: &compute.RegionNetworkFirewallPolicyWithRulesRuleMatchArgs{
/// 						DestIpRanges: pulumi.StringArray{
/// 							pulumi.String("11.100.0.1/32"),
/// 						},
/// 						DestFqdns: pulumi.StringArray{
/// 							pulumi.String("www.yyy.com"),
/// 							pulumi.String("www.zzz.com"),
/// 						},
/// 						DestRegionCodes: pulumi.StringArray{
/// 							pulumi.String("HK"),
/// 							pulumi.String("IN"),
/// 						},
/// 						DestThreatIntelligences: pulumi.StringArray{
/// 							pulumi.String("iplist-search-engines-crawlers"),
/// 							pulumi.String("iplist-tor-exit-nodes"),
/// 						},
/// 						DestAddressGroups: pulumi.StringArray{
/// 							addressGroup1.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 						Layer4Configs: compute.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArray{
/// 							&compute.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs{
/// 								IpProtocol: pulumi.String("tcp"),
/// 								Ports: pulumi.StringArray{
/// 									pulumi.String("8080"),
/// 									pulumi.String("7070"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					TargetSecureTags: compute.RegionNetworkFirewallPolicyWithRulesRuleTargetSecureTagArray{
/// 						&compute.RegionNetworkFirewallPolicyWithRulesRuleTargetSecureTagArgs{
/// 							Name: secureTagValue1.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 					},
/// 				},
/// 				&compute.RegionNetworkFirewallPolicyWithRulesRuleArgs{
/// 					Description:   pulumi.String("udp rule"),
/// 					RuleName:      pulumi.String("test-rule"),
/// 					Priority:      pulumi.Int(2000),
/// 					EnableLogging: pulumi.Bool(false),
/// 					Action:        pulumi.String("deny"),
/// 					Direction:     pulumi.String("INGRESS"),
/// 					Disabled:      pulumi.Bool(true),
/// 					Match: &compute.RegionNetworkFirewallPolicyWithRulesRuleMatchArgs{
/// 						SrcIpRanges: pulumi.StringArray{
/// 							pulumi.String("0.0.0.0/0"),
/// 						},
/// 						SrcFqdns: pulumi.StringArray{
/// 							pulumi.String("www.abc.com"),
/// 							pulumi.String("www.def.com"),
/// 						},
/// 						SrcRegionCodes: pulumi.StringArray{
/// 							pulumi.String("US"),
/// 							pulumi.String("CA"),
/// 						},
/// 						SrcThreatIntelligences: pulumi.StringArray{
/// 							pulumi.String("iplist-known-malicious-ips"),
/// 							pulumi.String("iplist-public-clouds"),
/// 						},
/// 						SrcAddressGroups: pulumi.StringArray{
/// 							addressGroup1.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 						SrcSecureTags: compute.RegionNetworkFirewallPolicyWithRulesRuleMatchSrcSecureTagArray{
/// 							&compute.RegionNetworkFirewallPolicyWithRulesRuleMatchSrcSecureTagArgs{
/// 								Name: secureTagValue1.ID().ToIDOutput().ToStringOutput(),
/// 							},
/// 						},
/// 						Layer4Configs: compute.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArray{
/// 							&compute.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs{
/// 								IpProtocol: pulumi.String("udp"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&compute.RegionNetworkFirewallPolicyWithRulesRuleArgs{
/// 					Description: pulumi.String("internal managed lb rule"),
/// 					Priority:    pulumi.Int(3000),
/// 					Action:      pulumi.String("allow"),
/// 					Direction:   pulumi.String("INGRESS"),
/// 					TargetType:  pulumi.String("INTERNAL_MANAGED_LB"),
/// 					TargetForwardingRules: pulumi.StringArray{
/// 						targetForwardingRuleForwardingRule.SelfLink,
/// 					},
/// 					Match: &compute.RegionNetworkFirewallPolicyWithRulesRuleMatchArgs{
/// 						SrcIpRanges: pulumi.StringArray{
/// 							pulumi.String("10.0.0.0/8"),
/// 						},
/// 						Layer4Configs: compute.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArray{
/// 							&compute.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs{
/// 								IpProtocol: pulumi.String("tcp"),
/// 							},
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_compute_network" "target_forwarding_rule" {
///   name                    = "tf-test-network-_87786"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "target_forwarding_rule_proxy_subnetwork" {
///   name          = "tf-test-proxy-subnetwork-_2067"
///   region        = "us-west2"
///   network       = gcp_compute_network.target_forwarding_rule.id
///   ip_cidr_range = "10.20.0.0/24"
///   purpose       = "REGIONAL_MANAGED_PROXY"
///   role          = "ACTIVE"
/// }
/// resource "gcp_compute_subnetwork" "target_forwarding_rule_default_subnetwork" {
///   name          = "tf-test-default-subnetwork-_40785"
///   region        = "us-west2"
///   network       = gcp_compute_network.target_forwarding_rule.id
///   ip_cidr_range = "10.10.0.0/24"
/// }
/// resource "gcp_compute_regionhealthcheck" "target_forwarding_rule" {
///   name   = "tf-test-health-check-_79169"
///   region = "us-west2"
///   http_health_check = {
///     port = 80
///   }
/// }
/// resource "gcp_compute_regionbackendservice" "target_forwarding_rule" {
///   name                  = "tf-test-backend-service-_56529"
///   region                = "us-west2"
///   protocol              = "HTTP"
///   load_balancing_scheme = "INTERNAL_MANAGED"
///   health_checks         = gcp_compute_regionhealthcheck.target_forwarding_rule.id
/// }
/// resource "gcp_compute_regionurlmap" "target_forwarding_rule" {
///   name            = "tf-test-url-map-_75413"
///   region          = "us-west2"
///   default_service = gcp_compute_regionbackendservice.target_forwarding_rule.id
/// }
/// resource "gcp_compute_regiontargethttpproxy" "target_forwarding_rule" {
///   name    = "tf-test-target-http-proxy-_55138"
///   region  = "us-west2"
///   url_map = gcp_compute_regionurlmap.target_forwarding_rule.id
/// }
/// resource "gcp_compute_forwardingrule" "target_forwarding_rule" {
///   depends_on            = [gcp_compute_subnetwork.target_forwarding_rule_proxy_subnetwork]
///   name                  = "tf-test-forwarding-rule-_37559"
///   region                = "us-west2"
///   network               = gcp_compute_network.target_forwarding_rule.id
///   subnetwork            = gcp_compute_subnetwork.target_forwarding_rule_default_subnetwork.id
///   load_balancing_scheme = "INTERNAL_MANAGED"
///   target                = gcp_compute_regiontargethttpproxy.target_forwarding_rule.id
///   ip_protocol           = "TCP"
///   port_range            = "80"
/// }
/// resource "gcp_compute_regionnetworkfirewallpolicywithrules" "primary" {
///   name        = "fw-policy"
///   region      = "us-west2"
///   description = "Terraform test"
///   rules {
///     description    = "tcp rule"
///     priority       = 1000
///     enable_logging = true
///     action         = "allow"
///     direction      = "EGRESS"
///     match = {
///       dest_ip_ranges            = ["11.100.0.1/32"]
///       dest_fqdns                = ["www.yyy.com", "www.zzz.com"]
///       dest_region_codes         = ["HK", "IN"]
///       dest_threat_intelligences = ["iplist-search-engines-crawlers", "iplist-tor-exit-nodes"]
///       dest_address_groups       = [gcp_networksecurity_addressgroup.address_group_1.id]
///       layer4_configs = [{
///         "ipProtocol" = "tcp"
///         "ports"      = [8080, 7070]
///       }]
///     }
///     target_secure_tags {
///       name = gcp_tags_tagvalue.secure_tag_value_1.id
///     }
///   }
///   rules {
///     description    = "udp rule"
///     rule_name      = "test-rule"
///     priority       = 2000
///     enable_logging = false
///     action         = "deny"
///     direction      = "INGRESS"
///     disabled       = true
///     match = {
///       src_ip_ranges            = ["0.0.0.0/0"]
///       src_fqdns                = ["www.abc.com", "www.def.com"]
///       src_region_codes         = ["US", "CA"]
///       src_threat_intelligences = ["iplist-known-malicious-ips", "iplist-public-clouds"]
///       src_address_groups       = [gcp_networksecurity_addressgroup.address_group_1.id]
///       src_secure_tags = [{
///         "name" = gcp_tags_tagvalue.secure_tag_value_1.id
///       }]
///       layer4_configs = [{
///         "ipProtocol" = "udp"
///       }]
///     }
///   }
///   rules {
///     description             = "internal managed lb rule"
///     priority                = 3000
///     action                  = "allow"
///     direction               = "INGRESS"
///     target_type             = "INTERNAL_MANAGED_LB"
///     target_forwarding_rules = [gcp_compute_forwardingrule.target_forwarding_rule.self_link]
///     match = {
///       src_ip_ranges = ["10.0.0.0/8"]
///       layer4_configs = [{
///         "ipProtocol" = "tcp"
///       }]
///     }
///   }
/// }
/// resource "gcp_networksecurity_addressgroup" "address_group_1" {
///   name        = "address-group"
///   parent      = data.gcp_organizations_getproject.project.id
///   description = "Regional address group"
///   location    = "us-west2"
///   items       = ["208.80.154.224/32"]
///   type        = "IPV4"
///   capacity    = 100
/// }
/// resource "gcp_tags_tagkey" "secure_tag_key_1" {
///   description = "Tag key"
///   parent      = data.gcp_organizations_getproject.project.id
///   purpose     = "GCE_FIREWALL"
///   short_name  = "tag-key"
///   purpose_data = {
///     "network" ="${data.gcp_organizations_getproject.project.name}/default"
///   }
/// }
/// resource "gcp_tags_tagvalue" "secure_tag_value_1" {
///   description = "Tag value"
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
/// import com.pulumi.gcp.networksecurity.AddressGroup;
/// import com.pulumi.gcp.networksecurity.AddressGroupArgs;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyWithRules;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyWithRulesArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkFirewallPolicyWithRulesRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkFirewallPolicyWithRulesRuleTargetSecureTagArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchSrcSecureTagArgs;
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
///         var targetForwardingRule = new Network("targetForwardingRule", NetworkArgs.builder()
///             .name("tf-test-network-_87786")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var targetForwardingRuleProxySubnetwork = new Subnetwork("targetForwardingRuleProxySubnetwork", SubnetworkArgs.builder()
///             .name("tf-test-proxy-subnetwork-_2067")
///             .region("us-west2")
///             .network(targetForwardingRule.id())
///             .ipCidrRange("10.20.0.0/24")
///             .purpose("REGIONAL_MANAGED_PROXY")
///             .role("ACTIVE")
///             .build());
///
///         var targetForwardingRuleDefaultSubnetwork = new Subnetwork("targetForwardingRuleDefaultSubnetwork", SubnetworkArgs.builder()
///             .name("tf-test-default-subnetwork-_40785")
///             .region("us-west2")
///             .network(targetForwardingRule.id())
///             .ipCidrRange("10.10.0.0/24")
///             .build());
///
///         var targetForwardingRuleRegionHealthCheck = new RegionHealthCheck("targetForwardingRuleRegionHealthCheck", RegionHealthCheckArgs.builder()
///             .name("tf-test-health-check-_79169")
///             .region("us-west2")
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var targetForwardingRuleRegionBackendService = new RegionBackendService("targetForwardingRuleRegionBackendService", RegionBackendServiceArgs.builder()
///             .name("tf-test-backend-service-_56529")
///             .region("us-west2")
///             .protocol("HTTP")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .healthChecks(targetForwardingRuleRegionHealthCheck.id())
///             .build());
///
///         var targetForwardingRuleRegionUrlMap = new RegionUrlMap("targetForwardingRuleRegionUrlMap", RegionUrlMapArgs.builder()
///             .name("tf-test-url-map-_75413")
///             .region("us-west2")
///             .defaultService(targetForwardingRuleRegionBackendService.id())
///             .build());
///
///         var targetForwardingRuleRegionTargetHttpProxy = new RegionTargetHttpProxy("targetForwardingRuleRegionTargetHttpProxy", RegionTargetHttpProxyArgs.builder()
///             .name("tf-test-target-http-proxy-_55138")
///             .region("us-west2")
///             .urlMap(targetForwardingRuleRegionUrlMap.id())
///             .build());
///
///         var targetForwardingRuleForwardingRule = new ForwardingRule("targetForwardingRuleForwardingRule", ForwardingRuleArgs.builder()
///             .name("tf-test-forwarding-rule-_37559")
///             .region("us-west2")
///             .network(targetForwardingRule.id())
///             .subnetwork(targetForwardingRuleDefaultSubnetwork.id())
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .target(targetForwardingRuleRegionTargetHttpProxy.id())
///             .ipProtocol("TCP")
///             .portRange("80")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(targetForwardingRuleProxySubnetwork)
///                 .build());
///
///         var addressGroup1 = new AddressGroup("addressGroup1", AddressGroupArgs.builder()
///             .name("address-group")
///             .parent(project.id())
///             .description("Regional address group")
///             .location("us-west2")
///             .items("208.80.154.224/32")
///             .type("IPV4")
///             .capacity(100)
///             .build());
///
///         var secureTagKey1 = new TagKey("secureTagKey1", TagKeyArgs.builder()
///             .description("Tag key")
///             .parent(project.id())
///             .purpose("GCE_FIREWALL")
///             .shortName("tag-key")
///             .purposeData(Map.of("network", String.format("%s/default", project.name())))
///             .build());
///
///         var secureTagValue1 = new TagValue("secureTagValue1", TagValueArgs.builder()
///             .description("Tag value")
///             .parent(secureTagKey1.id())
///             .shortName("tag-value")
///             .build());
///
///         var primary = new RegionNetworkFirewallPolicyWithRules("primary", RegionNetworkFirewallPolicyWithRulesArgs.builder()
///             .name("fw-policy")
///             .region("us-west2")
///             .description("Terraform test")
///             .rules(
///                 RegionNetworkFirewallPolicyWithRulesRuleArgs.builder()
///                     .description("tcp rule")
///                     .priority(1000)
///                     .enableLogging(true)
///                     .action("allow")
///                     .direction("EGRESS")
///                     .match(RegionNetworkFirewallPolicyWithRulesRuleMatchArgs.builder()
///                         .destIpRanges("11.100.0.1/32")
///                         .destFqdns(
///                             "www.yyy.com",
///                             "www.zzz.com")
///                         .destRegionCodes(
///                             "HK",
///                             "IN")
///                         .destThreatIntelligences(
///                             "iplist-search-engines-crawlers",
///                             "iplist-tor-exit-nodes")
///                         .destAddressGroups(addressGroup1.id())
///                         .layer4Configs(RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs.builder()
///                             .ipProtocol("tcp")
///                             .ports(
///                                 "8080",
///                                 "7070")
///                             .build())
///                         .build())
///                     .targetSecureTags(RegionNetworkFirewallPolicyWithRulesRuleTargetSecureTagArgs.builder()
///                         .name(secureTagValue1.id())
///                         .build())
///                     .build(),
///                 RegionNetworkFirewallPolicyWithRulesRuleArgs.builder()
///                     .description("udp rule")
///                     .ruleName("test-rule")
///                     .priority(2000)
///                     .enableLogging(false)
///                     .action("deny")
///                     .direction("INGRESS")
///                     .disabled(true)
///                     .match(RegionNetworkFirewallPolicyWithRulesRuleMatchArgs.builder()
///                         .srcIpRanges("0.0.0.0/0")
///                         .srcFqdns(
///                             "www.abc.com",
///                             "www.def.com")
///                         .srcRegionCodes(
///                             "US",
///                             "CA")
///                         .srcThreatIntelligences(
///                             "iplist-known-malicious-ips",
///                             "iplist-public-clouds")
///                         .srcAddressGroups(addressGroup1.id())
///                         .srcSecureTags(RegionNetworkFirewallPolicyWithRulesRuleMatchSrcSecureTagArgs.builder()
///                             .name(secureTagValue1.id())
///                             .build())
///                         .layer4Configs(RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs.builder()
///                             .ipProtocol("udp")
///                             .build())
///                         .build())
///                     .build(),
///                 RegionNetworkFirewallPolicyWithRulesRuleArgs.builder()
///                     .description("internal managed lb rule")
///                     .priority(3000)
///                     .action("allow")
///                     .direction("INGRESS")
///                     .targetType("INTERNAL_MANAGED_LB")
///                     .targetForwardingRules(targetForwardingRuleForwardingRule.selfLink())
///                     .match(RegionNetworkFirewallPolicyWithRulesRuleMatchArgs.builder()
///                         .srcIpRanges("10.0.0.0/8")
///                         .layer4Configs(RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs.builder()
///                             .ipProtocol("tcp")
///                             .build())
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   targetForwardingRule:
///     type: gcp:compute:Network
///     name: target_forwarding_rule
///     properties:
///       name: tf-test-network-_87786
///       autoCreateSubnetworks: false
///   targetForwardingRuleProxySubnetwork:
///     type: gcp:compute:Subnetwork
///     name: target_forwarding_rule_proxy_subnetwork
///     properties:
///       name: tf-test-proxy-subnetwork-_2067
///       region: us-west2
///       network: ${targetForwardingRule.id}
///       ipCidrRange: 10.20.0.0/24
///       purpose: REGIONAL_MANAGED_PROXY
///       role: ACTIVE
///   targetForwardingRuleDefaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: target_forwarding_rule_default_subnetwork
///     properties:
///       name: tf-test-default-subnetwork-_40785
///       region: us-west2
///       network: ${targetForwardingRule.id}
///       ipCidrRange: 10.10.0.0/24
///   targetForwardingRuleRegionHealthCheck:
///     type: gcp:compute:RegionHealthCheck
///     name: target_forwarding_rule
///     properties:
///       name: tf-test-health-check-_79169
///       region: us-west2
///       httpHealthCheck:
///         port: 80
///   targetForwardingRuleRegionBackendService:
///     type: gcp:compute:RegionBackendService
///     name: target_forwarding_rule
///     properties:
///       name: tf-test-backend-service-_56529
///       region: us-west2
///       protocol: HTTP
///       loadBalancingScheme: INTERNAL_MANAGED
///       healthChecks: ${targetForwardingRuleRegionHealthCheck.id}
///   targetForwardingRuleRegionUrlMap:
///     type: gcp:compute:RegionUrlMap
///     name: target_forwarding_rule
///     properties:
///       name: tf-test-url-map-_75413
///       region: us-west2
///       defaultService: ${targetForwardingRuleRegionBackendService.id}
///   targetForwardingRuleRegionTargetHttpProxy:
///     type: gcp:compute:RegionTargetHttpProxy
///     name: target_forwarding_rule
///     properties:
///       name: tf-test-target-http-proxy-_55138
///       region: us-west2
///       urlMap: ${targetForwardingRuleRegionUrlMap.id}
///   targetForwardingRuleForwardingRule:
///     type: gcp:compute:ForwardingRule
///     name: target_forwarding_rule
///     properties:
///       name: tf-test-forwarding-rule-_37559
///       region: us-west2
///       network: ${targetForwardingRule.id}
///       subnetwork: ${targetForwardingRuleDefaultSubnetwork.id}
///       loadBalancingScheme: INTERNAL_MANAGED
///       target: ${targetForwardingRuleRegionTargetHttpProxy.id}
///       ipProtocol: TCP
///       portRange: '80'
///     options:
///       dependsOn:
///         - ${targetForwardingRuleProxySubnetwork}
///   primary:
///     type: gcp:compute:RegionNetworkFirewallPolicyWithRules
///     properties:
///       name: fw-policy
///       region: us-west2
///       description: Terraform test
///       rules:
///         - description: tcp rule
///           priority: 1000
///           enableLogging: true
///           action: allow
///           direction: EGRESS
///           match:
///             destIpRanges:
///               - 11.100.0.1/32
///             destFqdns:
///               - www.yyy.com
///               - www.zzz.com
///             destRegionCodes:
///               - HK
///               - IN
///             destThreatIntelligences:
///               - iplist-search-engines-crawlers
///               - iplist-tor-exit-nodes
///             destAddressGroups:
///               - ${addressGroup1.id}
///             layer4Configs:
///               - ipProtocol: tcp
///                 ports:
///                   - 8080
///                   - 7070
///           targetSecureTags:
///             - name: ${secureTagValue1.id}
///         - description: udp rule
///           ruleName: test-rule
///           priority: 2000
///           enableLogging: false
///           action: deny
///           direction: INGRESS
///           disabled: true
///           match:
///             srcIpRanges:
///               - 0.0.0.0/0
///             srcFqdns:
///               - www.abc.com
///               - www.def.com
///             srcRegionCodes:
///               - US
///               - CA
///             srcThreatIntelligences:
///               - iplist-known-malicious-ips
///               - iplist-public-clouds
///             srcAddressGroups:
///               - ${addressGroup1.id}
///             srcSecureTags:
///               - name: ${secureTagValue1.id}
///             layer4Configs:
///               - ipProtocol: udp
///         - description: internal managed lb rule
///           priority: 3000
///           action: allow
///           direction: INGRESS
///           targetType: INTERNAL_MANAGED_LB
///           targetForwardingRules:
///             - ${targetForwardingRuleForwardingRule.selfLink}
///           match:
///             srcIpRanges:
///               - 10.0.0.0/8
///             layer4Configs:
///               - ipProtocol: tcp
///   addressGroup1:
///     type: gcp:networksecurity:AddressGroup
///     name: address_group_1
///     properties:
///       name: address-group
///       parent: ${project.id}
///       description: Regional address group
///       location: us-west2
///       items:
///         - 208.80.154.224/32
///       type: IPV4
///       capacity: 100
///   secureTagKey1:
///     type: gcp:tags:TagKey
///     name: secure_tag_key_1
///     properties:
///       description: Tag key
///       parent: ${project.id}
///       purpose: GCE_FIREWALL
///       shortName: tag-key
///       purposeData:
///         network: ${project.name}/default
///   secureTagValue1:
///     type: gcp:tags:TagValue
///     name: secure_tag_value_1
///     properties:
///       description: Tag value
///       parent: ${secureTagKey1.id}
///       shortName: tag-value
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Compute Region Network Firewall Policy With Rules Roce
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.RegionNetworkFirewallPolicyWithRules("policy", {
///     name: "rnf-policy",
///     description: "Terraform test",
///     policyType: "RDMA_ROCE_POLICY",
///     rules: [{
///         description: "deny all rule",
///         priority: 1000,
///         enableLogging: true,
///         action: "deny",
///         direction: "INGRESS",
///         match: {
///             srcIpRanges: ["0.0.0.0/0"],
///             layer4Configs: [{
///                 ipProtocol: "all",
///             }],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.RegionNetworkFirewallPolicyWithRules("policy",
///     name="rnf-policy",
///     description="Terraform test",
///     policy_type="RDMA_ROCE_POLICY",
///     rules=[{
///         "description": "deny all rule",
///         "priority": 1000,
///         "enable_logging": True,
///         "action": "deny",
///         "direction": "INGRESS",
///         "match": {
///             "src_ip_ranges": ["0.0.0.0/0"],
///             "layer4_configs": [{
///                 "ip_protocol": "all",
///             }],
///         },
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
///     var policy = new Gcp.Compute.RegionNetworkFirewallPolicyWithRules("policy", new()
///     {
///         Name = "rnf-policy",
///         Description = "Terraform test",
///         PolicyType = "RDMA_ROCE_POLICY",
///         Rules = new[]
///         {
///             new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleArgs
///             {
///                 Description = "deny all rule",
///                 Priority = 1000,
///                 EnableLogging = true,
///                 Action = "deny",
///                 Direction = "INGRESS",
///                 Match = new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchArgs
///                 {
///                     SrcIpRanges = new[]
///                     {
///                         "0.0.0.0/0",
///                     },
///                     Layer4Configs = new[]
///                     {
///                         new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs
///                         {
///                             IpProtocol = "all",
///                         },
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewRegionNetworkFirewallPolicyWithRules(ctx, "policy", &compute.RegionNetworkFirewallPolicyWithRulesArgs{
/// 			Name:        pulumi.String("rnf-policy"),
/// 			Description: pulumi.String("Terraform test"),
/// 			PolicyType:  pulumi.String("RDMA_ROCE_POLICY"),
/// 			Rules: compute.RegionNetworkFirewallPolicyWithRulesRuleArray{
/// 				&compute.RegionNetworkFirewallPolicyWithRulesRuleArgs{
/// 					Description:   pulumi.String("deny all rule"),
/// 					Priority:      pulumi.Int(1000),
/// 					EnableLogging: pulumi.Bool(true),
/// 					Action:        pulumi.String("deny"),
/// 					Direction:     pulumi.String("INGRESS"),
/// 					Match: &compute.RegionNetworkFirewallPolicyWithRulesRuleMatchArgs{
/// 						SrcIpRanges: pulumi.StringArray{
/// 							pulumi.String("0.0.0.0/0"),
/// 						},
/// 						Layer4Configs: compute.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArray{
/// 							&compute.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs{
/// 								IpProtocol: pulumi.String("all"),
/// 							},
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
/// resource "gcp_compute_regionnetworkfirewallpolicywithrules" "policy" {
///   name        = "rnf-policy"
///   description = "Terraform test"
///   policy_type = "RDMA_ROCE_POLICY"
///   rules {
///     description    = "deny all rule"
///     priority       = 1000
///     enable_logging = true
///     action         = "deny"
///     direction      = "INGRESS"
///     match = {
///       src_ip_ranges = ["0.0.0.0/0"]
///       layer4_configs = [{
///         "ipProtocol" = "all"
///       }]
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
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyWithRules;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyWithRulesArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkFirewallPolicyWithRulesRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs;
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
///         var policy = new RegionNetworkFirewallPolicyWithRules("policy", RegionNetworkFirewallPolicyWithRulesArgs.builder()
///             .name("rnf-policy")
///             .description("Terraform test")
///             .policyType("RDMA_ROCE_POLICY")
///             .rules(RegionNetworkFirewallPolicyWithRulesRuleArgs.builder()
///                 .description("deny all rule")
///                 .priority(1000)
///                 .enableLogging(true)
///                 .action("deny")
///                 .direction("INGRESS")
///                 .match(RegionNetworkFirewallPolicyWithRulesRuleMatchArgs.builder()
///                     .srcIpRanges("0.0.0.0/0")
///                     .layer4Configs(RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs.builder()
///                         .ipProtocol("all")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:RegionNetworkFirewallPolicyWithRules
///     properties:
///       name: rnf-policy
///       description: Terraform test
///       policyType: RDMA_ROCE_POLICY
///       rules:
///         - description: deny all rule
///           priority: 1000
///           enableLogging: true
///           action: deny
///           direction: INGRESS
///           match:
///             srcIpRanges:
///               - 0.0.0.0/0
///             layer4Configs:
///               - ipProtocol: all
/// ```
///
///
/// ## Import
///
/// RegionNetworkFirewallPolicyWithRules can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/firewallPolicies/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, RegionNetworkFirewallPolicyWithRules can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyWithRules:RegionNetworkFirewallPolicyWithRules default projects/{{project}}/regions/{{region}}/firewallPolicies/{{name}}
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyWithRules:RegionNetworkFirewallPolicyWithRules default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyWithRules:RegionNetworkFirewallPolicyWithRules default {{region}}/{{name}}
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyWithRules:RegionNetworkFirewallPolicyWithRules default {{name}}
/// ```
class RegionNetworkFirewallPolicyWithRules extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// Fingerprint of the resource. This field is used internally during updates of this resource.
  late final pulumi.Output<String> fingerprint;
  /// User-provided name of the Network firewall policy.
  /// The name should be unique in the project in which the firewall policy is created.
  /// The name must be 1-63 characters long, and comply with RFC1035. Specifically,
  /// the name must be 1-63 characters long and match the regular expression a-z?
  /// which means the first character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<String> networkFirewallPolicyId;
  /// Policy type is used to determine which resources (networks) the policy can be associated with.
  /// A policy can be associated with a network only if the network has the matching policyType in its network profile.
  /// Different policy types may support some of the Firewall Rules features.
  /// Possible values are: `VPC_POLICY`, `RDMA_ROCE_POLICY`, `RDMA_FALCON_POLICY`, `ULL_POLICY`.
  late final pulumi.Output<String> policyType;
  /// A list of firewall policy pre-defined rules.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionNetworkFirewallPolicyWithRulesPredefinedRule>> predefinedRules;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The region of this resource.
  late final pulumi.Output<String> region;
  /// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  late final pulumi.Output<int> ruleTupleCount;
  /// A list of firewall policy rules.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionNetworkFirewallPolicyWithRulesRule>> rules;
  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;
  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;

  /// Creates a new [RegionNetworkFirewallPolicyWithRules].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionNetworkFirewallPolicyWithRules]. {@macro pulumi_compute_region_network_firewall_policy_with_rules_region_network_firewall_policy_with_rules_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionNetworkFirewallPolicyWithRules(
    String name, {
    RegionNetworkFirewallPolicyWithRulesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkFirewallPolicyWithRules:RegionNetworkFirewallPolicyWithRules',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    networkFirewallPolicyId = registerOutput<String>('networkFirewallPolicyId');
    policyType = registerOutput<String>('policyType');
    predefinedRules = registerOutput<List<RegionNetworkFirewallPolicyWithRulesPredefinedRule>>('predefinedRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionNetworkFirewallPolicyWithRulesPredefinedRule>(guardedValue, (value) => RegionNetworkFirewallPolicyWithRulesPredefinedRule.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    rules = registerOutput<List<RegionNetworkFirewallPolicyWithRulesRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionNetworkFirewallPolicyWithRulesRule>(guardedValue, (value) => RegionNetworkFirewallPolicyWithRulesRule.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithId = registerOutput<String>('selfLinkWithId');
  }

  /// Gets an existing [RegionNetworkFirewallPolicyWithRules] resource's state with the given [name] and [id].
  static RegionNetworkFirewallPolicyWithRules get(
    String name,
    pulumi.Input<String> id, {
    RegionNetworkFirewallPolicyWithRulesState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegionNetworkFirewallPolicyWithRules._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegionNetworkFirewallPolicyWithRules._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkFirewallPolicyWithRules:RegionNetworkFirewallPolicyWithRules',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    networkFirewallPolicyId = registerOutput<String>('networkFirewallPolicyId');
    policyType = registerOutput<String>('policyType');
    predefinedRules = registerOutput<List<RegionNetworkFirewallPolicyWithRulesPredefinedRule>>('predefinedRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionNetworkFirewallPolicyWithRulesPredefinedRule>(guardedValue, (value) => RegionNetworkFirewallPolicyWithRulesPredefinedRule.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    rules = registerOutput<List<RegionNetworkFirewallPolicyWithRulesRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionNetworkFirewallPolicyWithRulesRule>(guardedValue, (value) => RegionNetworkFirewallPolicyWithRulesRule.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithId = registerOutput<String>('selfLinkWithId');
  }

  /// Creates a typed reference to an existing [RegionNetworkFirewallPolicyWithRules] resource.
  RegionNetworkFirewallPolicyWithRules.reference(String urn)
    : super(
        'gcp:compute/regionNetworkFirewallPolicyWithRules:RegionNetworkFirewallPolicyWithRules',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    networkFirewallPolicyId = registerOutput<String>('networkFirewallPolicyId');
    policyType = registerOutput<String>('policyType');
    predefinedRules = registerOutput<List<RegionNetworkFirewallPolicyWithRulesPredefinedRule>>('predefinedRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionNetworkFirewallPolicyWithRulesPredefinedRule>(guardedValue, (value) => RegionNetworkFirewallPolicyWithRulesPredefinedRule.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    rules = registerOutput<List<RegionNetworkFirewallPolicyWithRulesRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionNetworkFirewallPolicyWithRulesRule>(guardedValue, (value) => RegionNetworkFirewallPolicyWithRulesRule.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithId = registerOutput<String>('selfLinkWithId');
  }
}
