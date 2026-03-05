import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_settings_response.dart';
import 'explicit_proxy_response.dart';
import 'firewall_policy_draft_args.dart';
import 'firewall_policy_insights_response.dart';
import 'firewall_policy_intrusion_detection_response.dart';
import 'firewall_policy_snatresponse.dart';
import 'firewall_policy_sqlresponse.dart';
import 'firewall_policy_threat_intel_whitelist_response.dart';
import 'sub_resource_response.dart';

/// FirewallPolicy Resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-11-01.
///
/// Other available API versions: 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### create or update firewall policy draft
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firewallPolicyDraft = new AzureNative.Network.FirewallPolicyDraft("firewallPolicyDraft", new()
///     {
///         DnsSettings = new AzureNative.Network.Inputs.DnsSettingsArgs
///         {
///             EnableProxy = true,
///             RequireProxyForNetworkRules = false,
///             Servers = new[]
///             {
///                 "30.3.4.5",
///             },
///         },
///         ExplicitProxy = new AzureNative.Network.Inputs.ExplicitProxyArgs
///         {
///             EnableExplicitProxy = true,
///             EnablePacFile = true,
///             HttpPort = 8087,
///             HttpsPort = 8087,
///             PacFile = "https://tinawstorage.file.core.windows.net/?sv=2020-02-10&ss=bfqt&srt=sco&sp=rwdlacuptfx&se=2021-06-04T07:01:12Z&st=2021-06-03T23:01:12Z&sip=68.65.171.11&spr=https&sig=Plsa0RRVpGbY0IETZZOT6znOHcSro71LLTTbzquYPgs%3D",
///             PacFilePort = 8087,
///         },
///         FirewallPolicyName = "firewallPolicy",
///         Insights = new AzureNative.Network.Inputs.FirewallPolicyInsightsArgs
///         {
///             IsEnabled = true,
///             LogAnalyticsResources = new AzureNative.Network.Inputs.FirewallPolicyLogAnalyticsResourcesArgs
///             {
///                 DefaultWorkspaceId = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourcegroups/rg1/providers/microsoft.operationalinsights/workspaces/defaultWorkspace",
///                 },
///                 Workspaces = new[]
///                 {
///                     new AzureNative.Network.Inputs.FirewallPolicyLogAnalyticsWorkspaceArgs
///                     {
///                         Region = "westus",
///                         WorkspaceId = new AzureNative.Network.Inputs.SubResourceArgs
///                         {
///                             Id = "/subscriptions/subid/resourcegroups/rg1/providers/microsoft.operationalinsights/workspaces/workspace1",
///                         },
///                     },
///                     new AzureNative.Network.Inputs.FirewallPolicyLogAnalyticsWorkspaceArgs
///                     {
///                         Region = "eastus",
///                         WorkspaceId = new AzureNative.Network.Inputs.SubResourceArgs
///                         {
///                             Id = "/subscriptions/subid/resourcegroups/rg1/providers/microsoft.operationalinsights/workspaces/workspace2",
///                         },
///                     },
///                 },
///             },
///             RetentionDays = 100,
///         },
///         IntrusionDetection = new AzureNative.Network.Inputs.FirewallPolicyIntrusionDetectionArgs
///         {
///             Configuration = new AzureNative.Network.Inputs.FirewallPolicyIntrusionDetectionConfigurationArgs
///             {
///                 BypassTrafficSettings = new[]
///                 {
///                     new AzureNative.Network.Inputs.FirewallPolicyIntrusionDetectionBypassTrafficSpecificationsArgs
///                     {
///                         Description = "Rule 1",
///                         DestinationAddresses = new[]
///                         {
///                             "5.6.7.8",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "*",
///                         },
///                         Name = "bypassRule1",
///                         Protocol = AzureNative.Network.FirewallPolicyIntrusionDetectionProtocol.TCP,
///                         SourceAddresses = new[]
///                         {
///                             "1.2.3.4",
///                         },
///                     },
///                 },
///                 SignatureOverrides = new[]
///                 {
///                     new AzureNative.Network.Inputs.FirewallPolicyIntrusionDetectionSignatureSpecificationArgs
///                     {
///                         Id = "2525004",
///                         Mode = AzureNative.Network.FirewallPolicyIntrusionDetectionStateType.Deny,
///                     },
///                 },
///             },
///             Mode = AzureNative.Network.FirewallPolicyIntrusionDetectionStateType.Alert,
///             Profile = "Balanced",
///         },
///         ResourceGroupName = "rg1",
///         Snat = new AzureNative.Network.Inputs.FirewallPolicySNATArgs
///         {
///             PrivateRanges = new[]
///             {
///                 "IANAPrivateRanges",
///             },
///         },
///         Sql = new AzureNative.Network.Inputs.FirewallPolicySQLArgs
///         {
///             AllowSqlRedirect = true,
///         },
///         ThreatIntelMode = AzureNative.Network.AzureFirewallThreatIntelMode.Alert,
///         ThreatIntelWhitelist = new AzureNative.Network.Inputs.FirewallPolicyThreatIntelWhitelistArgs
///         {
///             Fqdns = new[]
///             {
///                 "*.microsoft.com",
///             },
///             IpAddresses = new[]
///             {
///                 "20.3.4.5",
///             },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewFirewallPolicyDraft(ctx, "firewallPolicyDraft", &network.FirewallPolicyDraftArgs{
/// 			DnsSettings: &network.DnsSettingsArgs{
/// 				EnableProxy:                 pulumi.Bool(true),
/// 				RequireProxyForNetworkRules: pulumi.Bool(false),
/// 				Servers: pulumi.StringArray{
/// 					pulumi.String("30.3.4.5"),
/// 				},
/// 			},
/// 			ExplicitProxy: &network.ExplicitProxyArgs{
/// 				EnableExplicitProxy: pulumi.Bool(true),
/// 				EnablePacFile:       pulumi.Bool(true),
/// 				HttpPort:            pulumi.Int(8087),
/// 				HttpsPort:           pulumi.Int(8087),
/// 				PacFile:             pulumi.String("https://tinawstorage.file.core.windows.net/?sv=2020-02-10&ss=bfqt&srt=sco&sp=rwdlacuptfx&se=2021-06-04T07:01:12Z&st=2021-06-03T23:01:12Z&sip=68.65.171.11&spr=https&sig=Plsa0RRVpGbY0IETZZOT6znOHcSro71LLTTbzquYPgs%3D"),
/// 				PacFilePort:         pulumi.Int(8087),
/// 			},
/// 			FirewallPolicyName: pulumi.String("firewallPolicy"),
/// 			Insights: &network.FirewallPolicyInsightsArgs{
/// 				IsEnabled: pulumi.Bool(true),
/// 				LogAnalyticsResources: &network.FirewallPolicyLogAnalyticsResourcesArgs{
/// 					DefaultWorkspaceId: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourcegroups/rg1/providers/microsoft.operationalinsights/workspaces/defaultWorkspace"),
/// 					},
/// 					Workspaces: network.FirewallPolicyLogAnalyticsWorkspaceArray{
/// 						&network.FirewallPolicyLogAnalyticsWorkspaceArgs{
/// 							Region: pulumi.String("westus"),
/// 							WorkspaceId: &network.SubResourceArgs{
/// 								Id: pulumi.String("/subscriptions/subid/resourcegroups/rg1/providers/microsoft.operationalinsights/workspaces/workspace1"),
/// 							},
/// 						},
/// 						&network.FirewallPolicyLogAnalyticsWorkspaceArgs{
/// 							Region: pulumi.String("eastus"),
/// 							WorkspaceId: &network.SubResourceArgs{
/// 								Id: pulumi.String("/subscriptions/subid/resourcegroups/rg1/providers/microsoft.operationalinsights/workspaces/workspace2"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				RetentionDays: pulumi.Int(100),
/// 			},
/// 			IntrusionDetection: &network.FirewallPolicyIntrusionDetectionArgs{
/// 				Configuration: &network.FirewallPolicyIntrusionDetectionConfigurationArgs{
/// 					BypassTrafficSettings: network.FirewallPolicyIntrusionDetectionBypassTrafficSpecificationsArray{
/// 						&network.FirewallPolicyIntrusionDetectionBypassTrafficSpecificationsArgs{
/// 							Description: pulumi.String("Rule 1"),
/// 							DestinationAddresses: pulumi.StringArray{
/// 								pulumi.String("5.6.7.8"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 							Name:     pulumi.String("bypassRule1"),
/// 							Protocol: pulumi.String(network.FirewallPolicyIntrusionDetectionProtocolTCP),
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("1.2.3.4"),
/// 							},
/// 						},
/// 					},
/// 					SignatureOverrides: network.FirewallPolicyIntrusionDetectionSignatureSpecificationArray{
/// 						&network.FirewallPolicyIntrusionDetectionSignatureSpecificationArgs{
/// 							Id:   pulumi.String("2525004"),
/// 							Mode: pulumi.String(network.FirewallPolicyIntrusionDetectionStateTypeDeny),
/// 						},
/// 					},
/// 				},
/// 				Mode:    pulumi.String(network.FirewallPolicyIntrusionDetectionStateTypeAlert),
/// 				Profile: pulumi.String("Balanced"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Snat: &network.FirewallPolicySNATArgs{
/// 				PrivateRanges: pulumi.StringArray{
/// 					pulumi.String("IANAPrivateRanges"),
/// 				},
/// 			},
/// 			Sql: &network.FirewallPolicySQLArgs{
/// 				AllowSqlRedirect: pulumi.Bool(true),
/// 			},
/// 			ThreatIntelMode: pulumi.String(network.AzureFirewallThreatIntelModeAlert),
/// 			ThreatIntelWhitelist: &network.FirewallPolicyThreatIntelWhitelistArgs{
/// 				Fqdns: pulumi.StringArray{
/// 					pulumi.String("*.microsoft.com"),
/// 				},
/// 				IpAddresses: pulumi.StringArray{
/// 					pulumi.String("20.3.4.5"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.FirewallPolicyDraft;
/// import com.pulumi.azurenative.network.FirewallPolicyDraftArgs;
/// import com.pulumi.azurenative.network.inputs.DnsSettingsArgs;
/// import com.pulumi.azurenative.network.inputs.ExplicitProxyArgs;
/// import com.pulumi.azurenative.network.inputs.FirewallPolicyInsightsArgs;
/// import com.pulumi.azurenative.network.inputs.FirewallPolicyLogAnalyticsResourcesArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.FirewallPolicyIntrusionDetectionArgs;
/// import com.pulumi.azurenative.network.inputs.FirewallPolicyIntrusionDetectionConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.FirewallPolicySNATArgs;
/// import com.pulumi.azurenative.network.inputs.FirewallPolicySQLArgs;
/// import com.pulumi.azurenative.network.inputs.FirewallPolicyThreatIntelWhitelistArgs;
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
///         var firewallPolicyDraft = new FirewallPolicyDraft("firewallPolicyDraft", FirewallPolicyDraftArgs.builder()
///             .dnsSettings(DnsSettingsArgs.builder()
///                 .enableProxy(true)
///                 .requireProxyForNetworkRules(false)
///                 .servers("30.3.4.5")
///                 .build())
///             .explicitProxy(ExplicitProxyArgs.builder()
///                 .enableExplicitProxy(true)
///                 .enablePacFile(true)
///                 .httpPort(8087)
///                 .httpsPort(8087)
///                 .pacFile("https://tinawstorage.file.core.windows.net/?sv=2020-02-10&ss=bfqt&srt=sco&sp=rwdlacuptfx&se=2021-06-04T07:01:12Z&st=2021-06-03T23:01:12Z&sip=68.65.171.11&spr=https&sig=Plsa0RRVpGbY0IETZZOT6znOHcSro71LLTTbzquYPgs%3D")
///                 .pacFilePort(8087)
///                 .build())
///             .firewallPolicyName("firewallPolicy")
///             .insights(FirewallPolicyInsightsArgs.builder()
///                 .isEnabled(true)
///                 .logAnalyticsResources(FirewallPolicyLogAnalyticsResourcesArgs.builder()
///                     .defaultWorkspaceId(SubResourceArgs.builder()
///                         .id("/subscriptions/subid/resourcegroups/rg1/providers/microsoft.operationalinsights/workspaces/defaultWorkspace")
///                         .build())
///                     .workspaces(
///                         FirewallPolicyLogAnalyticsWorkspaceArgs.builder()
///                             .region("westus")
///                             .workspaceId(SubResourceArgs.builder()
///                                 .id("/subscriptions/subid/resourcegroups/rg1/providers/microsoft.operationalinsights/workspaces/workspace1")
///                                 .build())
///                             .build(),
///                         FirewallPolicyLogAnalyticsWorkspaceArgs.builder()
///                             .region("eastus")
///                             .workspaceId(SubResourceArgs.builder()
///                                 .id("/subscriptions/subid/resourcegroups/rg1/providers/microsoft.operationalinsights/workspaces/workspace2")
///                                 .build())
///                             .build())
///                     .build())
///                 .retentionDays(100)
///                 .build())
///             .intrusionDetection(FirewallPolicyIntrusionDetectionArgs.builder()
///                 .configuration(FirewallPolicyIntrusionDetectionConfigurationArgs.builder()
///                     .bypassTrafficSettings(FirewallPolicyIntrusionDetectionBypassTrafficSpecificationsArgs.builder()
///                         .description("Rule 1")
///                         .destinationAddresses("5.6.7.8")
///                         .destinationPorts("*")
///                         .name("bypassRule1")
///                         .protocol("TCP")
///                         .sourceAddresses("1.2.3.4")
///                         .build())
///                     .signatureOverrides(FirewallPolicyIntrusionDetectionSignatureSpecificationArgs.builder()
///                         .id("2525004")
///                         .mode("Deny")
///                         .build())
///                     .build())
///                 .mode("Alert")
///                 .profile("Balanced")
///                 .build())
///             .resourceGroupName("rg1")
///             .snat(FirewallPolicySNATArgs.builder()
///                 .privateRanges("IANAPrivateRanges")
///                 .build())
///             .sql(FirewallPolicySQLArgs.builder()
///                 .allowSqlRedirect(true)
///                 .build())
///             .threatIntelMode("Alert")
///             .threatIntelWhitelist(FirewallPolicyThreatIntelWhitelistArgs.builder()
///                 .fqdns("*.microsoft.com")
///                 .ipAddresses("20.3.4.5")
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const firewallPolicyDraft = new azure_native.network.FirewallPolicyDraft("firewallPolicyDraft", {
///     dnsSettings: {
///         enableProxy: true,
///         requireProxyForNetworkRules: false,
///         servers: ["30.3.4.5"],
///     },
///     explicitProxy: {
///         enableExplicitProxy: true,
///         enablePacFile: true,
///         httpPort: 8087,
///         httpsPort: 8087,
///         pacFile: "https://tinawstorage.file.core.windows.net/?sv=2020-02-10&ss=bfqt&srt=sco&sp=rwdlacuptfx&se=2021-06-04T07:01:12Z&st=2021-06-03T23:01:12Z&sip=68.65.171.11&spr=https&sig=Plsa0RRVpGbY0IETZZOT6znOHcSro71LLTTbzquYPgs%3D",
///         pacFilePort: 8087,
///     },
///     firewallPolicyName: "firewallPolicy",
///     insights: {
///         isEnabled: true,
///         logAnalyticsResources: {
///             defaultWorkspaceId: {
///                 id: "/subscriptions/subid/resourcegroups/rg1/providers/microsoft.operationalinsights/workspaces/defaultWorkspace",
///             },
///             workspaces: [
///                 {
///                     region: "westus",
///                     workspaceId: {
///                         id: "/subscriptions/subid/resourcegroups/rg1/providers/microsoft.operationalinsights/workspaces/workspace1",
///                     },
///                 },
///                 {
///                     region: "eastus",
///                     workspaceId: {
///                         id: "/subscriptions/subid/resourcegroups/rg1/providers/microsoft.operationalinsights/workspaces/workspace2",
///                     },
///                 },
///             ],
///         },
///         retentionDays: 100,
///     },
///     intrusionDetection: {
///         configuration: {
///             bypassTrafficSettings: [{
///                 description: "Rule 1",
///                 destinationAddresses: ["5.6.7.8"],
///                 destinationPorts: ["*"],
///                 name: "bypassRule1",
///                 protocol: azure_native.network.FirewallPolicyIntrusionDetectionProtocol.TCP,
///                 sourceAddresses: ["1.2.3.4"],
///             }],
///             signatureOverrides: [{
///                 id: "2525004",
///                 mode: azure_native.network.FirewallPolicyIntrusionDetectionStateType.Deny,
///             }],
///         },
///         mode: azure_native.network.FirewallPolicyIntrusionDetectionStateType.Alert,
///         profile: "Balanced",
///     },
///     resourceGroupName: "rg1",
///     snat: {
///         privateRanges: ["IANAPrivateRanges"],
///     },
///     sql: {
///         allowSqlRedirect: true,
///     },
///     threatIntelMode: azure_native.network.AzureFirewallThreatIntelMode.Alert,
///     threatIntelWhitelist: {
///         fqdns: ["*.microsoft.com"],
///         ipAddresses: ["20.3.4.5"],
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// firewall_policy_draft = azure_native.network.FirewallPolicyDraft("firewallPolicyDraft",
///     dns_settings={
///         "enable_proxy": True,
///         "require_proxy_for_network_rules": False,
///         "servers": ["30.3.4.5"],
///     },
///     explicit_proxy={
///         "enable_explicit_proxy": True,
///         "enable_pac_file": True,
///         "http_port": 8087,
///         "https_port": 8087,
///         "pac_file": "https://tinawstorage.file.core.windows.net/?sv=2020-02-10&ss=bfqt&srt=sco&sp=rwdlacuptfx&se=2021-06-04T07:01:12Z&st=2021-06-03T23:01:12Z&sip=68.65.171.11&spr=https&sig=Plsa0RRVpGbY0IETZZOT6znOHcSro71LLTTbzquYPgs%3D",
///         "pac_file_port": 8087,
///     },
///     firewall_policy_name="firewallPolicy",
///     insights={
///         "is_enabled": True,
///         "log_analytics_resources": {
///             "default_workspace_id": {
///                 "id": "/subscriptions/subid/resourcegroups/rg1/providers/microsoft.operationalinsights/workspaces/defaultWorkspace",
///             },
///             "workspaces": [
///                 {
///                     "region": "westus",
///                     "workspace_id": {
///                         "id": "/subscriptions/subid/resourcegroups/rg1/providers/microsoft.operationalinsights/workspaces/workspace1",
///                     },
///                 },
///                 {
///                     "region": "eastus",
///                     "workspace_id": {
///                         "id": "/subscriptions/subid/resourcegroups/rg1/providers/microsoft.operationalinsights/workspaces/workspace2",
///                     },
///                 },
///             ],
///         },
///         "retention_days": 100,
///     },
///     intrusion_detection={
///         "configuration": {
///             "bypass_traffic_settings": [{
///                 "description": "Rule 1",
///                 "destination_addresses": ["5.6.7.8"],
///                 "destination_ports": ["*"],
///                 "name": "bypassRule1",
///                 "protocol": azure_native.network.FirewallPolicyIntrusionDetectionProtocol.TCP,
///                 "source_addresses": ["1.2.3.4"],
///             }],
///             "signature_overrides": [{
///                 "id": "2525004",
///                 "mode": azure_native.network.FirewallPolicyIntrusionDetectionStateType.DENY,
///             }],
///         },
///         "mode": azure_native.network.FirewallPolicyIntrusionDetectionStateType.ALERT,
///         "profile": "Balanced",
///     },
///     resource_group_name="rg1",
///     snat={
///         "private_ranges": ["IANAPrivateRanges"],
///     },
///     sql={
///         "allow_sql_redirect": True,
///     },
///     threat_intel_mode=azure_native.network.AzureFirewallThreatIntelMode.ALERT,
///     threat_intel_whitelist={
///         "fqdns": ["*.microsoft.com"],
///         "ip_addresses": ["20.3.4.5"],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   firewallPolicyDraft:
///     type: azure-native:network:FirewallPolicyDraft
///     properties:
///       dnsSettings:
///         enableProxy: true
///         requireProxyForNetworkRules: false
///         servers:
///           - 30.3.4.5
///       explicitProxy:
///         enableExplicitProxy: true
///         enablePacFile: true
///         httpPort: 8087
///         httpsPort: 8087
///         pacFile: https://tinawstorage.file.core.windows.net/?sv=2020-02-10&ss=bfqt&srt=sco&sp=rwdlacuptfx&se=2021-06-04T07:01:12Z&st=2021-06-03T23:01:12Z&sip=68.65.171.11&spr=https&sig=Plsa0RRVpGbY0IETZZOT6znOHcSro71LLTTbzquYPgs%3D
///         pacFilePort: 8087
///       firewallPolicyName: firewallPolicy
///       insights:
///         isEnabled: true
///         logAnalyticsResources:
///           defaultWorkspaceId:
///             id: /subscriptions/subid/resourcegroups/rg1/providers/microsoft.operationalinsights/workspaces/defaultWorkspace
///           workspaces:
///             - region: westus
///               workspaceId:
///                 id: /subscriptions/subid/resourcegroups/rg1/providers/microsoft.operationalinsights/workspaces/workspace1
///             - region: eastus
///               workspaceId:
///                 id: /subscriptions/subid/resourcegroups/rg1/providers/microsoft.operationalinsights/workspaces/workspace2
///         retentionDays: 100
///       intrusionDetection:
///         configuration:
///           bypassTrafficSettings:
///             - description: Rule 1
///               destinationAddresses:
///                 - 5.6.7.8
///               destinationPorts:
///                 - '*'
///               name: bypassRule1
///               protocol: TCP
///               sourceAddresses:
///                 - 1.2.3.4
///           signatureOverrides:
///             - id: '2525004'
///               mode: Deny
///         mode: Alert
///         profile: Balanced
///       resourceGroupName: rg1
///       snat:
///         privateRanges:
///           - IANAPrivateRanges
///       sql:
///         allowSqlRedirect: true
///       threatIntelMode: Alert
///       threatIntelWhitelist:
///         fqdns:
///           - '*.microsoft.com'
///         ipAddresses:
///           - 20.3.4.5
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:network:FirewallPolicyDraft firewallPolicy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/firewallPolicies/{firewallPolicyName}/firewallPolicyDrafts/default
/// ```
class FirewallPolicyDraft extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The parent firewall policy from which rules are inherited.
  late final pulumi.Output<SubResourceResponse?> basePolicy;
  /// DNS Proxy Settings definition.
  late final pulumi.Output<DnsSettingsResponse?> dnsSettings;
  /// Explicit Proxy Settings definition.
  late final pulumi.Output<ExplicitProxyResponse?> explicitProxy;
  /// Insights on Firewall Policy.
  late final pulumi.Output<FirewallPolicyInsightsResponse?> insights;
  /// The configuration for Intrusion detection.
  late final pulumi.Output<FirewallPolicyIntrusionDetectionResponse?> intrusionDetection;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The private IP addresses/IP ranges to which traffic will not be SNAT.
  late final pulumi.Output<FirewallPolicySNATResponse?> snat;
  /// SQL Settings definition.
  late final pulumi.Output<FirewallPolicySQLResponse?> sql;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The operation mode for Threat Intelligence.
  late final pulumi.Output<String?> threatIntelMode;
  /// ThreatIntel Whitelist for Firewall Policy.
  late final pulumi.Output<FirewallPolicyThreatIntelWhitelistResponse?> threatIntelWhitelist;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [FirewallPolicyDraft].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallPolicyDraft]. {@macro pulumi_network_firewall_policy_draft_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallPolicyDraft(
    String name, {
    FirewallPolicyDraftArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:FirewallPolicyDraft',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    basePolicy = registerOutput<SubResourceResponse?>('basePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dnsSettings = registerOutput<DnsSettingsResponse?>('dnsSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DnsSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    explicitProxy = registerOutput<ExplicitProxyResponse?>('explicitProxy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExplicitProxyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    insights = registerOutput<FirewallPolicyInsightsResponse?>('insights', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicyInsightsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    intrusionDetection = registerOutput<FirewallPolicyIntrusionDetectionResponse?>('intrusionDetection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicyIntrusionDetectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    snat = registerOutput<FirewallPolicySNATResponse?>('snat', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicySNATResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sql = registerOutput<FirewallPolicySQLResponse?>('sql', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicySQLResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    threatIntelMode = registerOutput<String?>('threatIntelMode');
    threatIntelWhitelist = registerOutput<FirewallPolicyThreatIntelWhitelistResponse?>('threatIntelWhitelist', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicyThreatIntelWhitelistResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
