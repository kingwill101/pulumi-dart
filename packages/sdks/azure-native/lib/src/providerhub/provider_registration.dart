import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_registration_args.dart';
import 'provider_registration_properties_response.dart';
import 'system_data_response.dart';

/// Concrete proxy resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2021-09-01-preview.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DirectProviderRegistrations_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var providerRegistration = new AzureNative.ProviderHub.ProviderRegistration("providerRegistration", new()
///     {
///         Kind = AzureNative.ProviderHub.ProviderRegistrationKind.Direct,
///         Properties = new AzureNative.ProviderHub.Inputs.ProviderRegistrationPropertiesArgs
///         {
///             Capabilities = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.ResourceProviderCapabilitiesArgs
///                 {
///                     Effect = AzureNative.ProviderHub.ResourceProviderCapabilitiesEffect.Allow,
///                     QuotaId = "CSP_2015-05-01",
///                 },
///                 new AzureNative.ProviderHub.Inputs.ResourceProviderCapabilitiesArgs
///                 {
///                     Effect = AzureNative.ProviderHub.ResourceProviderCapabilitiesEffect.Allow,
///                     QuotaId = "CSP_MG_2017-12-01",
///                 },
///             },
///             CustomManifestVersion = "2.0",
///             DstsConfiguration = new AzureNative.ProviderHub.Inputs.ResourceProviderManifestPropertiesDstsConfigurationArgs
///             {
///                 ServiceDnsName = "prds.sparta.azure.com",
///                 ServiceName = "prds-shim",
///             },
///             LegacyNamespace = "legacyNamespace",
///             LegacyRegistrations = new[]
///             {
///                 "legacyRegistration",
///             },
///             Management = new AzureNative.ProviderHub.Inputs.ResourceProviderManifestPropertiesManagementArgs
///             {
///                 IncidentContactEmail = "helpme@contoso.com",
///                 IncidentRoutingService = "Contoso Resource Provider",
///                 IncidentRoutingTeam = "Contoso Triage",
///                 ServiceTreeInfos = new[]
///                 {
///                     new AzureNative.ProviderHub.Inputs.ServiceTreeInfoArgs
///                     {
///                         ComponentId = "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///                         Readiness = AzureNative.ProviderHub.Readiness.InDevelopment,
///                         ServiceId = "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///                     },
///                 },
///             },
///             ManagementGroupGlobalNotificationEndpoints = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.ResourceProviderEndpointArgs
///                 {
///                     EndpointUri = "{your_management_group_notification_endpoint}",
///                 },
///             },
///             NotificationOptions = AzureNative.ProviderHub.NotificationOptions.EmitSpendingLimit,
///             NotificationSettings = new AzureNative.ProviderHub.Inputs.ResourceProviderManifestPropertiesNotificationSettingsArgs
///             {
///                 SubscriberSettings = new[]
///                 {
///                     new AzureNative.ProviderHub.Inputs.SubscriberSettingArgs
///                     {
///                         FilterRules = new[]
///                         {
///                             new AzureNative.ProviderHub.Inputs.FilterRuleArgs
///                             {
///                                 EndpointInformation = new[]
///                                 {
///                                     new AzureNative.ProviderHub.Inputs.EndpointInformationArgs
///                                     {
///                                         Endpoint = "https://userrp.azure.com/arnnotify",
///                                         EndpointType = AzureNative.ProviderHub.NotificationEndpointType.Webhook,
///                                         SchemaVersion = "3.0",
///                                     },
///                                     new AzureNative.ProviderHub.Inputs.EndpointInformationArgs
///                                     {
///                                         Endpoint = "https://userrp.azure.com/arnnotify",
///                                         EndpointType = AzureNative.ProviderHub.NotificationEndpointType.Eventhub,
///                                         SchemaVersion = "3.0",
///                                     },
///                                 },
///                                 FilterQuery = "Resources | where event.eventType in ('Microsoft.Network/IpAddresses/write', 'Microsoft.KeyVault/vaults/move/action')",
///                             },
///                         },
///                     },
///                 },
///             },
///             OptionalFeatures = new[]
///             {
///                 "Microsoft.Resources/PlatformSubscription",
///             },
///             ProviderType = AzureNative.ProviderHub.ResourceProviderType.Internal,
///             ProviderVersion = "2.0",
///             ResourceGroupLockOptionDuringMove = new AzureNative.ProviderHub.Inputs.ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMoveArgs
///             {
///                 BlockActionVerb = AzureNative.ProviderHub.BlockActionVerb.Action,
///             },
///             ResourceHydrationAccounts = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.ResourceHydrationAccountArgs
///                 {
///                     AccountName = "classichydrationprodsn01",
///                     SubscriptionId = "e4eae963-2d15-43e6-a097-98bd75b33edd",
///                 },
///                 new AzureNative.ProviderHub.Inputs.ResourceHydrationAccountArgs
///                 {
///                     AccountName = "classichydrationprodch01",
///                     SubscriptionId = "69e69ecb-e69c-41d4-99b8-87dd12781067",
///                 },
///             },
///             ResponseOptions = new AzureNative.ProviderHub.Inputs.ResourceProviderManifestPropertiesResponseOptionsArgs
///             {
///                 ServiceClientOptionsType = AzureNative.ProviderHub.ServiceClientOptionsType.DisableAutomaticDecompression,
///             },
///             ServiceName = "root",
///             Services = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.ResourceProviderServiceArgs
///                 {
///                     ServiceName = "tags",
///                     Status = AzureNative.ProviderHub.ServiceStatus.Inactive,
///                 },
///             },
///         },
///         ProviderNamespace = "Microsoft.Contoso",
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
/// 	providerhub "github.com/pulumi/pulumi-azure-native-sdk/providerhub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := providerhub.NewProviderRegistration(ctx, "providerRegistration", &providerhub.ProviderRegistrationArgs{
/// 			Kind: pulumi.String(providerhub.ProviderRegistrationKindDirect),
/// 			Properties: &providerhub.ProviderRegistrationPropertiesArgs{
/// 				Capabilities: providerhub.ResourceProviderCapabilitiesArray{
/// 					&providerhub.ResourceProviderCapabilitiesArgs{
/// 						Effect:  pulumi.String(providerhub.ResourceProviderCapabilitiesEffectAllow),
/// 						QuotaId: pulumi.String("CSP_2015-05-01"),
/// 					},
/// 					&providerhub.ResourceProviderCapabilitiesArgs{
/// 						Effect:  pulumi.String(providerhub.ResourceProviderCapabilitiesEffectAllow),
/// 						QuotaId: pulumi.String("CSP_MG_2017-12-01"),
/// 					},
/// 				},
/// 				CustomManifestVersion: pulumi.String("2.0"),
/// 				DstsConfiguration: &providerhub.ResourceProviderManifestPropertiesDstsConfigurationArgs{
/// 					ServiceDnsName: pulumi.String("prds.sparta.azure.com"),
/// 					ServiceName:    pulumi.String("prds-shim"),
/// 				},
/// 				LegacyNamespace: pulumi.String("legacyNamespace"),
/// 				LegacyRegistrations: pulumi.StringArray{
/// 					pulumi.String("legacyRegistration"),
/// 				},
/// 				Management: &providerhub.ResourceProviderManifestPropertiesManagementArgs{
/// 					IncidentContactEmail:   pulumi.String("helpme@contoso.com"),
/// 					IncidentRoutingService: pulumi.String("Contoso Resource Provider"),
/// 					IncidentRoutingTeam:    pulumi.String("Contoso Triage"),
/// 					ServiceTreeInfos: providerhub.ServiceTreeInfoArray{
/// 						&providerhub.ServiceTreeInfoArgs{
/// 							ComponentId: pulumi.String("d1b7d8ba-05e2-48e6-90d6-d781b99c6e69"),
/// 							Readiness:   pulumi.String(providerhub.ReadinessInDevelopment),
/// 							ServiceId:   pulumi.String("d1b7d8ba-05e2-48e6-90d6-d781b99c6e69"),
/// 						},
/// 					},
/// 				},
/// 				ManagementGroupGlobalNotificationEndpoints: providerhub.ResourceProviderEndpointArray{
/// 					&providerhub.ResourceProviderEndpointArgs{
/// 						EndpointUri: pulumi.String("{your_management_group_notification_endpoint}"),
/// 					},
/// 				},
/// 				NotificationOptions: pulumi.String(providerhub.NotificationOptionsEmitSpendingLimit),
/// 				NotificationSettings: &providerhub.ResourceProviderManifestPropertiesNotificationSettingsArgs{
/// 					SubscriberSettings: providerhub.SubscriberSettingArray{
/// 						&providerhub.SubscriberSettingArgs{
/// 							FilterRules: providerhub.FilterRuleArray{
/// 								&providerhub.FilterRuleArgs{
/// 									EndpointInformation: providerhub.EndpointInformationArray{
/// 										&providerhub.EndpointInformationArgs{
/// 											Endpoint:      pulumi.String("https://userrp.azure.com/arnnotify"),
/// 											EndpointType:  pulumi.String(providerhub.NotificationEndpointTypeWebhook),
/// 											SchemaVersion: pulumi.String("3.0"),
/// 										},
/// 										&providerhub.EndpointInformationArgs{
/// 											Endpoint:      pulumi.String("https://userrp.azure.com/arnnotify"),
/// 											EndpointType:  pulumi.String(providerhub.NotificationEndpointTypeEventhub),
/// 											SchemaVersion: pulumi.String("3.0"),
/// 										},
/// 									},
/// 									FilterQuery: pulumi.String("Resources | where event.eventType in ('Microsoft.Network/IpAddresses/write', 'Microsoft.KeyVault/vaults/move/action')"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				OptionalFeatures: pulumi.StringArray{
/// 					pulumi.String("Microsoft.Resources/PlatformSubscription"),
/// 				},
/// 				ProviderType:    pulumi.String(providerhub.ResourceProviderTypeInternal),
/// 				ProviderVersion: pulumi.String("2.0"),
/// 				ResourceGroupLockOptionDuringMove: &providerhub.ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMoveArgs{
/// 					BlockActionVerb: pulumi.String(providerhub.BlockActionVerbAction),
/// 				},
/// 				ResourceHydrationAccounts: providerhub.ResourceHydrationAccountArray{
/// 					&providerhub.ResourceHydrationAccountArgs{
/// 						AccountName:    pulumi.String("classichydrationprodsn01"),
/// 						SubscriptionId: pulumi.String("e4eae963-2d15-43e6-a097-98bd75b33edd"),
/// 					},
/// 					&providerhub.ResourceHydrationAccountArgs{
/// 						AccountName:    pulumi.String("classichydrationprodch01"),
/// 						SubscriptionId: pulumi.String("69e69ecb-e69c-41d4-99b8-87dd12781067"),
/// 					},
/// 				},
/// 				ResponseOptions: &providerhub.ResourceProviderManifestPropertiesResponseOptionsArgs{
/// 					ServiceClientOptionsType: pulumi.String(providerhub.ServiceClientOptionsTypeDisableAutomaticDecompression),
/// 				},
/// 				ServiceName: pulumi.String("root"),
/// 				Services: providerhub.ResourceProviderServiceArray{
/// 					&providerhub.ResourceProviderServiceArgs{
/// 						ServiceName: pulumi.String("tags"),
/// 						Status:      pulumi.String(providerhub.ServiceStatusInactive),
/// 					},
/// 				},
/// 			},
/// 			ProviderNamespace: pulumi.String("Microsoft.Contoso"),
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
/// import com.pulumi.azurenative.providerhub.ProviderRegistration;
/// import com.pulumi.azurenative.providerhub.ProviderRegistrationArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ProviderRegistrationPropertiesArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceProviderManifestPropertiesDstsConfigurationArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceProviderManifestPropertiesManagementArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceProviderManifestPropertiesNotificationSettingsArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMoveArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceProviderManifestPropertiesResponseOptionsArgs;
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
///         var providerRegistration = new ProviderRegistration("providerRegistration", ProviderRegistrationArgs.builder()
///             .kind("Direct")
///             .properties(ProviderRegistrationPropertiesArgs.builder()
///                 .capabilities(
///                     ResourceProviderCapabilitiesArgs.builder()
///                         .effect("Allow")
///                         .quotaId("CSP_2015-05-01")
///                         .build(),
///                     ResourceProviderCapabilitiesArgs.builder()
///                         .effect("Allow")
///                         .quotaId("CSP_MG_2017-12-01")
///                         .build())
///                 .customManifestVersion("2.0")
///                 .dstsConfiguration(ResourceProviderManifestPropertiesDstsConfigurationArgs.builder()
///                     .serviceDnsName("prds.sparta.azure.com")
///                     .serviceName("prds-shim")
///                     .build())
///                 .legacyNamespace("legacyNamespace")
///                 .legacyRegistrations("legacyRegistration")
///                 .management(ResourceProviderManifestPropertiesManagementArgs.builder()
///                     .incidentContactEmail("helpme@contoso.com")
///                     .incidentRoutingService("Contoso Resource Provider")
///                     .incidentRoutingTeam("Contoso Triage")
///                     .serviceTreeInfos(ServiceTreeInfoArgs.builder()
///                         .componentId("d1b7d8ba-05e2-48e6-90d6-d781b99c6e69")
///                         .readiness("InDevelopment")
///                         .serviceId("d1b7d8ba-05e2-48e6-90d6-d781b99c6e69")
///                         .build())
///                     .build())
///                 .managementGroupGlobalNotificationEndpoints(ResourceProviderEndpointArgs.builder()
///                     .endpointUri("{your_management_group_notification_endpoint}")
///                     .build())
///                 .notificationOptions("EmitSpendingLimit")
///                 .notificationSettings(ResourceProviderManifestPropertiesNotificationSettingsArgs.builder()
///                     .subscriberSettings(SubscriberSettingArgs.builder()
///                         .filterRules(FilterRuleArgs.builder()
///                             .endpointInformation(
///                                 EndpointInformationArgs.builder()
///                                     .endpoint("https://userrp.azure.com/arnnotify")
///                                     .endpointType("Webhook")
///                                     .schemaVersion("3.0")
///                                     .build(),
///                                 EndpointInformationArgs.builder()
///                                     .endpoint("https://userrp.azure.com/arnnotify")
///                                     .endpointType("Eventhub")
///                                     .schemaVersion("3.0")
///                                     .build())
///                             .filterQuery("Resources | where event.eventType in ('Microsoft.Network/IpAddresses/write', 'Microsoft.KeyVault/vaults/move/action')")
///                             .build())
///                         .build())
///                     .build())
///                 .optionalFeatures("Microsoft.Resources/PlatformSubscription")
///                 .providerType("Internal")
///                 .providerVersion("2.0")
///                 .resourceGroupLockOptionDuringMove(ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMoveArgs.builder()
///                     .blockActionVerb("Action")
///                     .build())
///                 .resourceHydrationAccounts(
///                     ResourceHydrationAccountArgs.builder()
///                         .accountName("classichydrationprodsn01")
///                         .subscriptionId("e4eae963-2d15-43e6-a097-98bd75b33edd")
///                         .build(),
///                     ResourceHydrationAccountArgs.builder()
///                         .accountName("classichydrationprodch01")
///                         .subscriptionId("69e69ecb-e69c-41d4-99b8-87dd12781067")
///                         .build())
///                 .responseOptions(ResourceProviderManifestPropertiesResponseOptionsArgs.builder()
///                     .serviceClientOptionsType("DisableAutomaticDecompression")
///                     .build())
///                 .serviceName("root")
///                 .services(ResourceProviderServiceArgs.builder()
///                     .serviceName("tags")
///                     .status("Inactive")
///                     .build())
///                 .build())
///             .providerNamespace("Microsoft.Contoso")
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
/// const providerRegistration = new azure_native.providerhub.ProviderRegistration("providerRegistration", {
///     kind: azure_native.providerhub.ProviderRegistrationKind.Direct,
///     properties: {
///         capabilities: [
///             {
///                 effect: azure_native.providerhub.ResourceProviderCapabilitiesEffect.Allow,
///                 quotaId: "CSP_2015-05-01",
///             },
///             {
///                 effect: azure_native.providerhub.ResourceProviderCapabilitiesEffect.Allow,
///                 quotaId: "CSP_MG_2017-12-01",
///             },
///         ],
///         customManifestVersion: "2.0",
///         dstsConfiguration: {
///             serviceDnsName: "prds.sparta.azure.com",
///             serviceName: "prds-shim",
///         },
///         legacyNamespace: "legacyNamespace",
///         legacyRegistrations: ["legacyRegistration"],
///         management: {
///             incidentContactEmail: "helpme@contoso.com",
///             incidentRoutingService: "Contoso Resource Provider",
///             incidentRoutingTeam: "Contoso Triage",
///             serviceTreeInfos: [{
///                 componentId: "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///                 readiness: azure_native.providerhub.Readiness.InDevelopment,
///                 serviceId: "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///             }],
///         },
///         managementGroupGlobalNotificationEndpoints: [{
///             endpointUri: "{your_management_group_notification_endpoint}",
///         }],
///         notificationOptions: azure_native.providerhub.NotificationOptions.EmitSpendingLimit,
///         notificationSettings: {
///             subscriberSettings: [{
///                 filterRules: [{
///                     endpointInformation: [
///                         {
///                             endpoint: "https://userrp.azure.com/arnnotify",
///                             endpointType: azure_native.providerhub.NotificationEndpointType.Webhook,
///                             schemaVersion: "3.0",
///                         },
///                         {
///                             endpoint: "https://userrp.azure.com/arnnotify",
///                             endpointType: azure_native.providerhub.NotificationEndpointType.Eventhub,
///                             schemaVersion: "3.0",
///                         },
///                     ],
///                     filterQuery: "Resources | where event.eventType in ('Microsoft.Network/IpAddresses/write', 'Microsoft.KeyVault/vaults/move/action')",
///                 }],
///             }],
///         },
///         optionalFeatures: ["Microsoft.Resources/PlatformSubscription"],
///         providerType: azure_native.providerhub.ResourceProviderType.Internal,
///         providerVersion: "2.0",
///         resourceGroupLockOptionDuringMove: {
///             blockActionVerb: azure_native.providerhub.BlockActionVerb.Action,
///         },
///         resourceHydrationAccounts: [
///             {
///                 accountName: "classichydrationprodsn01",
///                 subscriptionId: "e4eae963-2d15-43e6-a097-98bd75b33edd",
///             },
///             {
///                 accountName: "classichydrationprodch01",
///                 subscriptionId: "69e69ecb-e69c-41d4-99b8-87dd12781067",
///             },
///         ],
///         responseOptions: {
///             serviceClientOptionsType: azure_native.providerhub.ServiceClientOptionsType.DisableAutomaticDecompression,
///         },
///         serviceName: "root",
///         services: [{
///             serviceName: "tags",
///             status: azure_native.providerhub.ServiceStatus.Inactive,
///         }],
///     },
///     providerNamespace: "Microsoft.Contoso",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// provider_registration = azure_native.providerhub.ProviderRegistration("providerRegistration",
///     kind=azure_native.providerhub.ProviderRegistrationKind.DIRECT,
///     properties={
///         "capabilities": [
///             {
///                 "effect": azure_native.providerhub.ResourceProviderCapabilitiesEffect.ALLOW,
///                 "quota_id": "CSP_2015-05-01",
///             },
///             {
///                 "effect": azure_native.providerhub.ResourceProviderCapabilitiesEffect.ALLOW,
///                 "quota_id": "CSP_MG_2017-12-01",
///             },
///         ],
///         "custom_manifest_version": "2.0",
///         "dsts_configuration": {
///             "service_dns_name": "prds.sparta.azure.com",
///             "service_name": "prds-shim",
///         },
///         "legacy_namespace": "legacyNamespace",
///         "legacy_registrations": ["legacyRegistration"],
///         "management": {
///             "incident_contact_email": "helpme@contoso.com",
///             "incident_routing_service": "Contoso Resource Provider",
///             "incident_routing_team": "Contoso Triage",
///             "service_tree_infos": [{
///                 "component_id": "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///                 "readiness": azure_native.providerhub.Readiness.IN_DEVELOPMENT,
///                 "service_id": "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///             }],
///         },
///         "management_group_global_notification_endpoints": [{
///             "endpoint_uri": "{your_management_group_notification_endpoint}",
///         }],
///         "notification_options": azure_native.providerhub.NotificationOptions.EMIT_SPENDING_LIMIT,
///         "notification_settings": {
///             "subscriber_settings": [{
///                 "filter_rules": [{
///                     "endpoint_information": [
///                         {
///                             "endpoint": "https://userrp.azure.com/arnnotify",
///                             "endpoint_type": azure_native.providerhub.NotificationEndpointType.WEBHOOK,
///                             "schema_version": "3.0",
///                         },
///                         {
///                             "endpoint": "https://userrp.azure.com/arnnotify",
///                             "endpoint_type": azure_native.providerhub.NotificationEndpointType.EVENTHUB,
///                             "schema_version": "3.0",
///                         },
///                     ],
///                     "filter_query": "Resources | where event.eventType in ('Microsoft.Network/IpAddresses/write', 'Microsoft.KeyVault/vaults/move/action')",
///                 }],
///             }],
///         },
///         "optional_features": ["Microsoft.Resources/PlatformSubscription"],
///         "provider_type": azure_native.providerhub.ResourceProviderType.INTERNAL,
///         "provider_version": "2.0",
///         "resource_group_lock_option_during_move": {
///             "block_action_verb": azure_native.providerhub.BlockActionVerb.ACTION,
///         },
///         "resource_hydration_accounts": [
///             {
///                 "account_name": "classichydrationprodsn01",
///                 "subscription_id": "e4eae963-2d15-43e6-a097-98bd75b33edd",
///             },
///             {
///                 "account_name": "classichydrationprodch01",
///                 "subscription_id": "69e69ecb-e69c-41d4-99b8-87dd12781067",
///             },
///         ],
///         "response_options": {
///             "service_client_options_type": azure_native.providerhub.ServiceClientOptionsType.DISABLE_AUTOMATIC_DECOMPRESSION,
///         },
///         "service_name": "root",
///         "services": [{
///             "service_name": "tags",
///             "status": azure_native.providerhub.ServiceStatus.INACTIVE,
///         }],
///     },
///     provider_namespace="Microsoft.Contoso")
///
/// ```
///
/// ```yaml
/// resources:
///   providerRegistration:
///     type: azure-native:providerhub:ProviderRegistration
///     properties:
///       kind: Direct
///       properties:
///         capabilities:
///           - effect: Allow
///             quotaId: CSP_2015-05-01
///           - effect: Allow
///             quotaId: CSP_MG_2017-12-01
///         customManifestVersion: '2.0'
///         dstsConfiguration:
///           serviceDnsName: prds.sparta.azure.com
///           serviceName: prds-shim
///         legacyNamespace: legacyNamespace
///         legacyRegistrations:
///           - legacyRegistration
///         management:
///           incidentContactEmail: helpme@contoso.com
///           incidentRoutingService: Contoso Resource Provider
///           incidentRoutingTeam: Contoso Triage
///           serviceTreeInfos:
///             - componentId: d1b7d8ba-05e2-48e6-90d6-d781b99c6e69
///               readiness: InDevelopment
///               serviceId: d1b7d8ba-05e2-48e6-90d6-d781b99c6e69
///         managementGroupGlobalNotificationEndpoints:
///           - endpointUri: '{your_management_group_notification_endpoint}'
///         notificationOptions: EmitSpendingLimit
///         notificationSettings:
///           subscriberSettings:
///             - filterRules:
///                 - endpointInformation:
///                     - endpoint: https://userrp.azure.com/arnnotify
///                       endpointType: Webhook
///                       schemaVersion: '3.0'
///                     - endpoint: https://userrp.azure.com/arnnotify
///                       endpointType: Eventhub
///                       schemaVersion: '3.0'
///                   filterQuery: Resources | where event.eventType in ('Microsoft.Network/IpAddresses/write', 'Microsoft.KeyVault/vaults/move/action')
///         optionalFeatures:
///           - Microsoft.Resources/PlatformSubscription
///         providerType: Internal
///         providerVersion: '2.0'
///         resourceGroupLockOptionDuringMove:
///           blockActionVerb: Action
///         resourceHydrationAccounts:
///           - accountName: classichydrationprodsn01
///             subscriptionId: e4eae963-2d15-43e6-a097-98bd75b33edd
///           - accountName: classichydrationprodch01
///             subscriptionId: 69e69ecb-e69c-41d4-99b8-87dd12781067
///         responseOptions:
///           serviceClientOptionsType: DisableAutomaticDecompression
///         serviceName: root
///         services:
///           - serviceName: tags
///             status: Inactive
///       providerNamespace: Microsoft.Contoso
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ProviderRegistrations_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var providerRegistration = new AzureNative.ProviderHub.ProviderRegistration("providerRegistration", new()
///     {
///         Properties = new AzureNative.ProviderHub.Inputs.ProviderRegistrationPropertiesArgs
///         {
///             Capabilities = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.ResourceProviderCapabilitiesArgs
///                 {
///                     Effect = AzureNative.ProviderHub.ResourceProviderCapabilitiesEffect.Allow,
///                     QuotaId = "CSP_2015-05-01",
///                 },
///                 new AzureNative.ProviderHub.Inputs.ResourceProviderCapabilitiesArgs
///                 {
///                     Effect = AzureNative.ProviderHub.ResourceProviderCapabilitiesEffect.Allow,
///                     QuotaId = "CSP_MG_2017-12-01",
///                 },
///             },
///             CrossTenantTokenValidation = AzureNative.ProviderHub.CrossTenantTokenValidation.EnsureSecureValidation,
///             Management = new AzureNative.ProviderHub.Inputs.ResourceProviderManifestPropertiesManagementArgs
///             {
///                 CanaryManifestOwners = new[]
///                 {
///                     "SPARTA-PlatformServiceAdmin",
///                 },
///                 ErrorResponseMessageOptions = new AzureNative.ProviderHub.Inputs.ResourceProviderManagementErrorResponseMessageOptionsArgs
///                 {
///                     ServerFailureResponseMessageType = AzureNative.ProviderHub.ServerFailureResponseMessageType.OutageReporting,
///                 },
///                 ExpeditedRolloutMetadata = new AzureNative.ProviderHub.Inputs.ResourceProviderManagementExpeditedRolloutMetadataArgs
///                 {
///                     Enabled = false,
///                     ExpeditedRolloutIntent = AzureNative.ProviderHub.ExpeditedRolloutIntent.Hotfix,
///                 },
///                 ExpeditedRolloutSubmitters = new[]
///                 {
///                     "SPARTA-PlatformServiceOperator",
///                 },
///                 IncidentContactEmail = "helpme@contoso.com",
///                 IncidentRoutingService = "Contoso Resource Provider",
///                 IncidentRoutingTeam = "Contoso Triage",
///                 PcCode = "P1234",
///                 ProfitCenterProgramId = "1234",
///                 ServiceTreeInfos = new[]
///                 {
///                     new AzureNative.ProviderHub.Inputs.ServiceTreeInfoArgs
///                     {
///                         ComponentId = "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///                         Readiness = AzureNative.ProviderHub.Readiness.InDevelopment,
///                         ServiceId = "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///                     },
///                 },
///             },
///             ProviderType = AzureNative.ProviderHub.ResourceProviderType.Internal,
///             ProviderVersion = "2.0",
///             ServiceName = "root",
///             Services = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.ResourceProviderServiceArgs
///                 {
///                     ServiceName = "tags",
///                     Status = AzureNative.ProviderHub.ServiceStatus.Inactive,
///                 },
///             },
///         },
///         ProviderNamespace = "Microsoft.Contoso",
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
/// 	providerhub "github.com/pulumi/pulumi-azure-native-sdk/providerhub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := providerhub.NewProviderRegistration(ctx, "providerRegistration", &providerhub.ProviderRegistrationArgs{
/// 			Properties: &providerhub.ProviderRegistrationPropertiesArgs{
/// 				Capabilities: providerhub.ResourceProviderCapabilitiesArray{
/// 					&providerhub.ResourceProviderCapabilitiesArgs{
/// 						Effect:  pulumi.String(providerhub.ResourceProviderCapabilitiesEffectAllow),
/// 						QuotaId: pulumi.String("CSP_2015-05-01"),
/// 					},
/// 					&providerhub.ResourceProviderCapabilitiesArgs{
/// 						Effect:  pulumi.String(providerhub.ResourceProviderCapabilitiesEffectAllow),
/// 						QuotaId: pulumi.String("CSP_MG_2017-12-01"),
/// 					},
/// 				},
/// 				CrossTenantTokenValidation: pulumi.String(providerhub.CrossTenantTokenValidationEnsureSecureValidation),
/// 				Management: &providerhub.ResourceProviderManifestPropertiesManagementArgs{
/// 					CanaryManifestOwners: pulumi.StringArray{
/// 						pulumi.String("SPARTA-PlatformServiceAdmin"),
/// 					},
/// 					ErrorResponseMessageOptions: &providerhub.ResourceProviderManagementErrorResponseMessageOptionsArgs{
/// 						ServerFailureResponseMessageType: pulumi.String(providerhub.ServerFailureResponseMessageTypeOutageReporting),
/// 					},
/// 					ExpeditedRolloutMetadata: &providerhub.ResourceProviderManagementExpeditedRolloutMetadataArgs{
/// 						Enabled:                pulumi.Bool(false),
/// 						ExpeditedRolloutIntent: pulumi.String(providerhub.ExpeditedRolloutIntentHotfix),
/// 					},
/// 					ExpeditedRolloutSubmitters: pulumi.StringArray{
/// 						pulumi.String("SPARTA-PlatformServiceOperator"),
/// 					},
/// 					IncidentContactEmail:   pulumi.String("helpme@contoso.com"),
/// 					IncidentRoutingService: pulumi.String("Contoso Resource Provider"),
/// 					IncidentRoutingTeam:    pulumi.String("Contoso Triage"),
/// 					PcCode:                 pulumi.String("P1234"),
/// 					ProfitCenterProgramId:  pulumi.String("1234"),
/// 					ServiceTreeInfos: providerhub.ServiceTreeInfoArray{
/// 						&providerhub.ServiceTreeInfoArgs{
/// 							ComponentId: pulumi.String("d1b7d8ba-05e2-48e6-90d6-d781b99c6e69"),
/// 							Readiness:   pulumi.String(providerhub.ReadinessInDevelopment),
/// 							ServiceId:   pulumi.String("d1b7d8ba-05e2-48e6-90d6-d781b99c6e69"),
/// 						},
/// 					},
/// 				},
/// 				ProviderType:    pulumi.String(providerhub.ResourceProviderTypeInternal),
/// 				ProviderVersion: pulumi.String("2.0"),
/// 				ServiceName:     pulumi.String("root"),
/// 				Services: providerhub.ResourceProviderServiceArray{
/// 					&providerhub.ResourceProviderServiceArgs{
/// 						ServiceName: pulumi.String("tags"),
/// 						Status:      pulumi.String(providerhub.ServiceStatusInactive),
/// 					},
/// 				},
/// 			},
/// 			ProviderNamespace: pulumi.String("Microsoft.Contoso"),
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
/// import com.pulumi.azurenative.providerhub.ProviderRegistration;
/// import com.pulumi.azurenative.providerhub.ProviderRegistrationArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ProviderRegistrationPropertiesArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceProviderManifestPropertiesManagementArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceProviderManagementErrorResponseMessageOptionsArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceProviderManagementExpeditedRolloutMetadataArgs;
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
///         var providerRegistration = new ProviderRegistration("providerRegistration", ProviderRegistrationArgs.builder()
///             .properties(ProviderRegistrationPropertiesArgs.builder()
///                 .capabilities(
///                     ResourceProviderCapabilitiesArgs.builder()
///                         .effect("Allow")
///                         .quotaId("CSP_2015-05-01")
///                         .build(),
///                     ResourceProviderCapabilitiesArgs.builder()
///                         .effect("Allow")
///                         .quotaId("CSP_MG_2017-12-01")
///                         .build())
///                 .crossTenantTokenValidation("EnsureSecureValidation")
///                 .management(ResourceProviderManifestPropertiesManagementArgs.builder()
///                     .canaryManifestOwners("SPARTA-PlatformServiceAdmin")
///                     .errorResponseMessageOptions(ResourceProviderManagementErrorResponseMessageOptionsArgs.builder()
///                         .serverFailureResponseMessageType("OutageReporting")
///                         .build())
///                     .expeditedRolloutMetadata(ResourceProviderManagementExpeditedRolloutMetadataArgs.builder()
///                         .enabled(false)
///                         .expeditedRolloutIntent("Hotfix")
///                         .build())
///                     .expeditedRolloutSubmitters("SPARTA-PlatformServiceOperator")
///                     .incidentContactEmail("helpme@contoso.com")
///                     .incidentRoutingService("Contoso Resource Provider")
///                     .incidentRoutingTeam("Contoso Triage")
///                     .pcCode("P1234")
///                     .profitCenterProgramId("1234")
///                     .serviceTreeInfos(ServiceTreeInfoArgs.builder()
///                         .componentId("d1b7d8ba-05e2-48e6-90d6-d781b99c6e69")
///                         .readiness("InDevelopment")
///                         .serviceId("d1b7d8ba-05e2-48e6-90d6-d781b99c6e69")
///                         .build())
///                     .build())
///                 .providerType("Internal")
///                 .providerVersion("2.0")
///                 .serviceName("root")
///                 .services(ResourceProviderServiceArgs.builder()
///                     .serviceName("tags")
///                     .status("Inactive")
///                     .build())
///                 .build())
///             .providerNamespace("Microsoft.Contoso")
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
/// const providerRegistration = new azure_native.providerhub.ProviderRegistration("providerRegistration", {
///     properties: {
///         capabilities: [
///             {
///                 effect: azure_native.providerhub.ResourceProviderCapabilitiesEffect.Allow,
///                 quotaId: "CSP_2015-05-01",
///             },
///             {
///                 effect: azure_native.providerhub.ResourceProviderCapabilitiesEffect.Allow,
///                 quotaId: "CSP_MG_2017-12-01",
///             },
///         ],
///         crossTenantTokenValidation: azure_native.providerhub.CrossTenantTokenValidation.EnsureSecureValidation,
///         management: {
///             canaryManifestOwners: ["SPARTA-PlatformServiceAdmin"],
///             errorResponseMessageOptions: {
///                 serverFailureResponseMessageType: azure_native.providerhub.ServerFailureResponseMessageType.OutageReporting,
///             },
///             expeditedRolloutMetadata: {
///                 enabled: false,
///                 expeditedRolloutIntent: azure_native.providerhub.ExpeditedRolloutIntent.Hotfix,
///             },
///             expeditedRolloutSubmitters: ["SPARTA-PlatformServiceOperator"],
///             incidentContactEmail: "helpme@contoso.com",
///             incidentRoutingService: "Contoso Resource Provider",
///             incidentRoutingTeam: "Contoso Triage",
///             pcCode: "P1234",
///             profitCenterProgramId: "1234",
///             serviceTreeInfos: [{
///                 componentId: "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///                 readiness: azure_native.providerhub.Readiness.InDevelopment,
///                 serviceId: "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///             }],
///         },
///         providerType: azure_native.providerhub.ResourceProviderType.Internal,
///         providerVersion: "2.0",
///         serviceName: "root",
///         services: [{
///             serviceName: "tags",
///             status: azure_native.providerhub.ServiceStatus.Inactive,
///         }],
///     },
///     providerNamespace: "Microsoft.Contoso",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// provider_registration = azure_native.providerhub.ProviderRegistration("providerRegistration",
///     properties={
///         "capabilities": [
///             {
///                 "effect": azure_native.providerhub.ResourceProviderCapabilitiesEffect.ALLOW,
///                 "quota_id": "CSP_2015-05-01",
///             },
///             {
///                 "effect": azure_native.providerhub.ResourceProviderCapabilitiesEffect.ALLOW,
///                 "quota_id": "CSP_MG_2017-12-01",
///             },
///         ],
///         "cross_tenant_token_validation": azure_native.providerhub.CrossTenantTokenValidation.ENSURE_SECURE_VALIDATION,
///         "management": {
///             "canary_manifest_owners": ["SPARTA-PlatformServiceAdmin"],
///             "error_response_message_options": {
///                 "server_failure_response_message_type": azure_native.providerhub.ServerFailureResponseMessageType.OUTAGE_REPORTING,
///             },
///             "expedited_rollout_metadata": {
///                 "enabled": False,
///                 "expedited_rollout_intent": azure_native.providerhub.ExpeditedRolloutIntent.HOTFIX,
///             },
///             "expedited_rollout_submitters": ["SPARTA-PlatformServiceOperator"],
///             "incident_contact_email": "helpme@contoso.com",
///             "incident_routing_service": "Contoso Resource Provider",
///             "incident_routing_team": "Contoso Triage",
///             "pc_code": "P1234",
///             "profit_center_program_id": "1234",
///             "service_tree_infos": [{
///                 "component_id": "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///                 "readiness": azure_native.providerhub.Readiness.IN_DEVELOPMENT,
///                 "service_id": "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///             }],
///         },
///         "provider_type": azure_native.providerhub.ResourceProviderType.INTERNAL,
///         "provider_version": "2.0",
///         "service_name": "root",
///         "services": [{
///             "service_name": "tags",
///             "status": azure_native.providerhub.ServiceStatus.INACTIVE,
///         }],
///     },
///     provider_namespace="Microsoft.Contoso")
///
/// ```
///
/// ```yaml
/// resources:
///   providerRegistration:
///     type: azure-native:providerhub:ProviderRegistration
///     properties:
///       properties:
///         capabilities:
///           - effect: Allow
///             quotaId: CSP_2015-05-01
///           - effect: Allow
///             quotaId: CSP_MG_2017-12-01
///         crossTenantTokenValidation: EnsureSecureValidation
///         management:
///           canaryManifestOwners:
///             - SPARTA-PlatformServiceAdmin
///           errorResponseMessageOptions:
///             serverFailureResponseMessageType: OutageReporting
///           expeditedRolloutMetadata:
///             enabled: false
///             expeditedRolloutIntent: Hotfix
///           expeditedRolloutSubmitters:
///             - SPARTA-PlatformServiceOperator
///           incidentContactEmail: helpme@contoso.com
///           incidentRoutingService: Contoso Resource Provider
///           incidentRoutingTeam: Contoso Triage
///           pcCode: P1234
///           profitCenterProgramId: '1234'
///           serviceTreeInfos:
///             - componentId: d1b7d8ba-05e2-48e6-90d6-d781b99c6e69
///               readiness: InDevelopment
///               serviceId: d1b7d8ba-05e2-48e6-90d6-d781b99c6e69
///         providerType: Internal
///         providerVersion: '2.0'
///         serviceName: root
///         services:
///           - serviceName: tags
///             status: Inactive
///       providerNamespace: Microsoft.Contoso
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
/// $ pulumi import azure-native:providerhub:ProviderRegistration Microsoft.Contoso /subscriptions/{subscriptionId}/providers/Microsoft.ProviderHub/providerRegistrations/{providerNamespace}
/// ```
class ProviderRegistration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Provider registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  late final pulumi.Output<String?> kind;

  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<ProviderRegistrationPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ProviderRegistration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderRegistration]. {@macro pulumi_providerhub_provider_registration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderRegistration(
    String name, {
    ProviderRegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:providerhub:ProviderRegistration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ProviderRegistrationPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ProviderRegistrationPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
