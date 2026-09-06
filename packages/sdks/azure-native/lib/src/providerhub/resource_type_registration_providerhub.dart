import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_type_registration_args.dart';
import 'resource_type_registration_properties_response.dart';
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
/// ### DirectResourceTypeRegistrations_CreateOrUpdate.json
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var resourceTypeRegistration = new AzureNative.ProviderHub.ResourceTypeRegistration("resourceTypeRegistration", new()
///     {
///         Properties = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesArgs
///         {
///             AddResourceListTargetLocations = true,
///             AdditionalOptions = AzureNative.ProviderHub.AdditionalOptionsResourceTypeRegistration.ProtectedAsyncOperationPolling,
///             AllowEmptyRoleAssignments = false,
///             AllowedResourceNames = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.AllowedResourceNameArgs
///                 {
///                     GetActionVerb = "list",
///                     Name = "name1",
///                 },
///                 new AzureNative.ProviderHub.Inputs.AllowedResourceNameArgs
///                 {
///                     Name = "name2",
///                 },
///             },
///             AllowedTemplateDeploymentReferenceActions = new[]
///             {
///                 "ListKeys",
///                 "ListSAS",
///             },
///             ApiProfiles = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.ApiProfileArgs
///                 {
///                     ApiVersion = "2018-02-01",
///                     ProfileVersion = "2018-03-01-hybrid",
///                 },
///                 new AzureNative.ProviderHub.Inputs.ApiProfileArgs
///                 {
///                     ApiVersion = "2016-06-01",
///                     ProfileVersion = "2019-03-01-hybrid",
///                 },
///             },
///             AsyncTimeoutRules = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.AsyncTimeoutRuleArgs
///                 {
///                     ActionName = "Microsoft.ClassicCompute/domainNames/write",
///                     Timeout = "PT12H",
///                 },
///             },
///             AvailabilityZoneRule = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesAvailabilityZoneRuleArgs
///             {
///                 AvailabilityZonePolicy = AzureNative.ProviderHub.AvailabilityZonePolicy.MultiZoned,
///             },
///             CapacityRule = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesCapacityRuleArgs
///             {
///                 CapacityPolicy = AzureNative.ProviderHub.CapacityPolicy.Restricted,
///                 SkuAlias = "incorrectAlias",
///             },
///             CommonApiVersions = new[]
///             {
///                 "2021-01-01",
///             },
///             DstsConfiguration = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesDstsConfigurationArgs
///             {
///                 ServiceDnsName = "prds.sparta.azure.com",
///                 ServiceName = "prds-shim",
///             },
///             Endpoints = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.ResourceTypeEndpointArgs
///                 {
///                     ApiVersions = new[]
///                     {
///                         "2020-06-01-preview",
///                     },
///                     Locations = new[]
///                     {
///                         "West US",
///                         "East US",
///                         "North Europe",
///                     },
///                     RequiredFeatures = new[]
///                     {
///                         "<feature flag>",
///                     },
///                 },
///             },
///             GroupingTag = "groupingTag",
///             LegacyName = "legacyName",
///             LegacyNames = new[]
///             {
///                 "legacyName",
///             },
///             LegacyPolicy = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesLegacyPolicyArgs
///             {
///                 DisallowedConditions = new[]
///                 {
///                     new AzureNative.ProviderHub.Inputs.LegacyDisallowedConditionArgs
///                     {
///                         DisallowedLegacyOperations = new[]
///                         {
///                             AzureNative.ProviderHub.LegacyOperation.Create,
///                             AzureNative.ProviderHub.LegacyOperation.Delete,
///                         },
///                         Feature = "Microsoft.RP/ArmOnlyJobCollections",
///                     },
///                 },
///                 DisallowedLegacyOperations = new[]
///                 {
///                     AzureNative.ProviderHub.LegacyOperation.Create,
///                 },
///             },
///             LinkedOperationRules = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.LinkedOperationRuleArgs
///                 {
///                     LinkedAction = AzureNative.ProviderHub.LinkedAction.Blocked,
///                     LinkedOperation = AzureNative.ProviderHub.LinkedOperation.CrossSubscriptionResourceMove,
///                 },
///                 new AzureNative.ProviderHub.Inputs.LinkedOperationRuleArgs
///                 {
///                     LinkedAction = AzureNative.ProviderHub.LinkedAction.Validate,
///                     LinkedOperation = AzureNative.ProviderHub.LinkedOperation.CrossResourceGroupResourceMove,
///                 },
///             },
///             Management = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesManagementArgs
///             {
///                 AuthorizationOwners = new[]
///                 {
///                     "RPAAS-PlatformServiceAdministrator",
///                 },
///                 IncidentContactEmail = "helpme@contoso.com",
///                 IncidentRoutingService = "",
///                 IncidentRoutingTeam = "",
///                 ManifestOwners = new[]
///                 {
///                     "SPARTA-PlatformServiceAdministrator",
///                 },
///                 ResourceAccessPolicy = AzureNative.ProviderHub.ResourceAccessPolicy.NotSpecified,
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
///             ManifestLink = "https://azure.com",
///             MarketplaceOptions = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesMarketplaceOptionsArgs
///             {
///                 AddOnPlanConversionAllowed = true,
///             },
///             Metadata = null,
///             Notifications = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.NotificationArgs
///                 {
///                     NotificationType = AzureNative.ProviderHub.NotificationType.SubscriptionNotification,
///                     SkipNotifications = AzureNative.ProviderHub.SkipNotifications.Disabled,
///                 },
///             },
///             OpenApiConfiguration = new AzureNative.ProviderHub.Inputs.OpenApiConfigurationArgs
///             {
///                 Validation = new AzureNative.ProviderHub.Inputs.OpenApiValidationArgs
///                 {
///                     AllowNoncompliantCollectionResponse = true,
///                 },
///             },
///             PolicyExecutionType = AzureNative.ProviderHub.PolicyExecutionType.BypassPolicies,
///             Regionality = AzureNative.ProviderHub.Regionality.Regional,
///             RequestHeaderOptions = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesRequestHeaderOptionsArgs
///             {
///                 OptOutHeaders = AzureNative.ProviderHub.OptOutHeaderType.SystemDataCreatedByLastModifiedBy,
///             },
///             ResourceCache = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesResourceCacheArgs
///             {
///                 EnableResourceCache = true,
///                 ResourceCacheExpirationTimespan = "PT2M",
///             },
///             ResourceConcurrencyControlOptions =
///             {
///                 { "patch", new AzureNative.ProviderHub.Inputs.ResourceConcurrencyControlOptionArgs
///                 {
///                     Policy = AzureNative.ProviderHub.Policy.SynchronizeBeginExtension,
///                 } },
///                 { "post", new AzureNative.ProviderHub.Inputs.ResourceConcurrencyControlOptionArgs
///                 {
///                     Policy = AzureNative.ProviderHub.Policy.SynchronizeBeginExtension,
///                 } },
///                 { "put", new AzureNative.ProviderHub.Inputs.ResourceConcurrencyControlOptionArgs
///                 {
///                     Policy = AzureNative.ProviderHub.Policy.SynchronizeBeginExtension,
///                 } },
///             },
///             ResourceGraphConfiguration = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesResourceGraphConfigurationArgs
///             {
///                 ApiVersion = "2019-01-01",
///                 Enabled = true,
///             },
///             ResourceManagementOptions = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesResourceManagementOptionsArgs
///             {
///                 BatchProvisioningSupport = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupportArgs
///                 {
///                     SupportedOperations = "Get, Delete",
///                 },
///                 DeleteDependencies = new[]
///                 {
///                     new AzureNative.ProviderHub.Inputs.DeleteDependencyArgs
///                     {
///                         LinkedProperty = "properties.edgeProfile.subscription.id",
///                     },
///                 },
///             },
///             ResourceQueryManagement = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesResourceQueryManagementArgs
///             {
///                 FilterOption = AzureNative.ProviderHub.FilterOption.EnableSubscriptionFilterOnTenant,
///             },
///             ResourceTypeCommonAttributeManagement = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagementArgs
///             {
///                 CommonApiVersionsMergeMode = AzureNative.ProviderHub.CommonApiVersionsMergeMode.Merge,
///             },
///             RoutingRule = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesRoutingRuleArgs
///             {
///                 HostResourceType = "servers/databases",
///             },
///             RoutingType = AzureNative.ProviderHub.RoutingType.Default,
///             SupportsTags = true,
///             SwaggerSpecifications = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.SwaggerSpecificationArgs
///                 {
///                     ApiVersions = new[]
///                     {
///                         "2020-06-01-preview",
///                     },
///                     SwaggerSpecFolderUri = "https://github.com/Azure/azure-rest-api-specs/blob/feature/azure/contoso/specification/contoso/resource-manager/Microsoft.SampleRP/",
///                 },
///             },
///             TemplateDeploymentPolicy = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesTemplateDeploymentPolicyArgs
///             {
///                 Capabilities = AzureNative.ProviderHub.TemplateDeploymentCapabilities.Preflight,
///                 PreflightNotifications = AzureNative.ProviderHub.TemplateDeploymentPreflightNotifications.None,
///                 PreflightOptions = "ValidationRequests, DeploymentRequests",
///             },
///         },
///         ProviderNamespace = "Microsoft.Contoso",
///         ResourceType = "employees",
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
/// 		_, err := providerhub.NewResourceTypeRegistration(ctx, "resourceTypeRegistration", &providerhub.ResourceTypeRegistrationArgs{
/// 			Properties: &providerhub.ResourceTypeRegistrationPropertiesArgs{
/// 				AddResourceListTargetLocations: pulumi.Bool(true),
/// 				AdditionalOptions:              pulumi.String(providerhub.AdditionalOptionsResourceTypeRegistrationProtectedAsyncOperationPolling),
/// 				AllowEmptyRoleAssignments:      pulumi.Bool(false),
/// 				AllowedResourceNames: providerhub.AllowedResourceNameArray{
/// 					&providerhub.AllowedResourceNameArgs{
/// 						GetActionVerb: pulumi.String("list"),
/// 						Name:          pulumi.String("name1"),
/// 					},
/// 					&providerhub.AllowedResourceNameArgs{
/// 						Name: pulumi.String("name2"),
/// 					},
/// 				},
/// 				AllowedTemplateDeploymentReferenceActions: pulumi.StringArray{
/// 					pulumi.String("ListKeys"),
/// 					pulumi.String("ListSAS"),
/// 				},
/// 				ApiProfiles: providerhub.ApiProfileArray{
/// 					&providerhub.ApiProfileArgs{
/// 						ApiVersion:     pulumi.String("2018-02-01"),
/// 						ProfileVersion: pulumi.String("2018-03-01-hybrid"),
/// 					},
/// 					&providerhub.ApiProfileArgs{
/// 						ApiVersion:     pulumi.String("2016-06-01"),
/// 						ProfileVersion: pulumi.String("2019-03-01-hybrid"),
/// 					},
/// 				},
/// 				AsyncTimeoutRules: providerhub.AsyncTimeoutRuleArray{
/// 					&providerhub.AsyncTimeoutRuleArgs{
/// 						ActionName: pulumi.String("Microsoft.ClassicCompute/domainNames/write"),
/// 						Timeout:    pulumi.String("PT12H"),
/// 					},
/// 				},
/// 				AvailabilityZoneRule: &providerhub.ResourceTypeRegistrationPropertiesAvailabilityZoneRuleArgs{
/// 					AvailabilityZonePolicy: pulumi.String(providerhub.AvailabilityZonePolicyMultiZoned),
/// 				},
/// 				CapacityRule: &providerhub.ResourceTypeRegistrationPropertiesCapacityRuleArgs{
/// 					CapacityPolicy: pulumi.String(providerhub.CapacityPolicyRestricted),
/// 					SkuAlias:       pulumi.String("incorrectAlias"),
/// 				},
/// 				CommonApiVersions: pulumi.StringArray{
/// 					pulumi.String("2021-01-01"),
/// 				},
/// 				DstsConfiguration: &providerhub.ResourceTypeRegistrationPropertiesDstsConfigurationArgs{
/// 					ServiceDnsName: pulumi.String("prds.sparta.azure.com"),
/// 					ServiceName:    pulumi.String("prds-shim"),
/// 				},
/// 				Endpoints: providerhub.ResourceTypeEndpointArray{
/// 					&providerhub.ResourceTypeEndpointArgs{
/// 						ApiVersions: pulumi.StringArray{
/// 							pulumi.String("2020-06-01-preview"),
/// 						},
/// 						Locations: pulumi.StringArray{
/// 							pulumi.String("West US"),
/// 							pulumi.String("East US"),
/// 							pulumi.String("North Europe"),
/// 						},
/// 						RequiredFeatures: pulumi.StringArray{
/// 							pulumi.String("<feature flag>"),
/// 						},
/// 					},
/// 				},
/// 				GroupingTag: pulumi.String("groupingTag"),
/// 				LegacyName:  pulumi.String("legacyName"),
/// 				LegacyNames: pulumi.StringArray{
/// 					pulumi.String("legacyName"),
/// 				},
/// 				LegacyPolicy: &providerhub.ResourceTypeRegistrationPropertiesLegacyPolicyArgs{
/// 					DisallowedConditions: providerhub.LegacyDisallowedConditionArray{
/// 						&providerhub.LegacyDisallowedConditionArgs{
/// 							DisallowedLegacyOperations: pulumi.StringArray{
/// 								pulumi.String(providerhub.LegacyOperationCreate),
/// 								pulumi.String(providerhub.LegacyOperationDelete),
/// 							},
/// 							Feature: pulumi.String("Microsoft.RP/ArmOnlyJobCollections"),
/// 						},
/// 					},
/// 					DisallowedLegacyOperations: pulumi.StringArray{
/// 						pulumi.String(providerhub.LegacyOperationCreate),
/// 					},
/// 				},
/// 				LinkedOperationRules: providerhub.LinkedOperationRuleArray{
/// 					&providerhub.LinkedOperationRuleArgs{
/// 						LinkedAction:    pulumi.String(providerhub.LinkedActionBlocked),
/// 						LinkedOperation: pulumi.String(providerhub.LinkedOperationCrossSubscriptionResourceMove),
/// 					},
/// 					&providerhub.LinkedOperationRuleArgs{
/// 						LinkedAction:    pulumi.String(providerhub.LinkedActionValidate),
/// 						LinkedOperation: pulumi.String(providerhub.LinkedOperationCrossResourceGroupResourceMove),
/// 					},
/// 				},
/// 				Management: &providerhub.ResourceTypeRegistrationPropertiesManagementArgs{
/// 					AuthorizationOwners: pulumi.StringArray{
/// 						pulumi.String("RPAAS-PlatformServiceAdministrator"),
/// 					},
/// 					IncidentContactEmail:   pulumi.String("helpme@contoso.com"),
/// 					IncidentRoutingService: pulumi.String(""),
/// 					IncidentRoutingTeam:    pulumi.String(""),
/// 					ManifestOwners: pulumi.StringArray{
/// 						pulumi.String("SPARTA-PlatformServiceAdministrator"),
/// 					},
/// 					ResourceAccessPolicy: providerhub.ResourceAccessPolicyNotSpecified,
/// 					ServiceTreeInfos: providerhub.ServiceTreeInfoArray{
/// 						&providerhub.ServiceTreeInfoArgs{
/// 							ComponentId: pulumi.String("d1b7d8ba-05e2-48e6-90d6-d781b99c6e69"),
/// 							Readiness:   pulumi.String(providerhub.ReadinessInDevelopment),
/// 							ServiceId:   pulumi.String("d1b7d8ba-05e2-48e6-90d6-d781b99c6e69"),
/// 						},
/// 					},
/// 				},
/// 				ManifestLink: pulumi.String("https://azure.com"),
/// 				MarketplaceOptions: &providerhub.ResourceTypeRegistrationPropertiesMarketplaceOptionsArgs{
/// 					AddOnPlanConversionAllowed: pulumi.Bool(true),
/// 				},
/// 				Metadata: pulumi.Any(map[string]interface{}{}),
/// 				Notifications: providerhub.NotificationArray{
/// 					&providerhub.NotificationArgs{
/// 						NotificationType:  pulumi.String(providerhub.NotificationTypeSubscriptionNotification),
/// 						SkipNotifications: pulumi.String(providerhub.SkipNotificationsDisabled),
/// 					},
/// 				},
/// 				OpenApiConfiguration: &providerhub.OpenApiConfigurationArgs{
/// 					Validation: &providerhub.OpenApiValidationArgs{
/// 						AllowNoncompliantCollectionResponse: pulumi.Bool(true),
/// 					},
/// 				},
/// 				PolicyExecutionType: pulumi.String(providerhub.PolicyExecutionTypeBypassPolicies),
/// 				Regionality:         pulumi.String(providerhub.RegionalityRegional),
/// 				RequestHeaderOptions: &providerhub.ResourceTypeRegistrationPropertiesRequestHeaderOptionsArgs{
/// 					OptOutHeaders: pulumi.String(providerhub.OptOutHeaderTypeSystemDataCreatedByLastModifiedBy),
/// 				},
/// 				ResourceCache: &providerhub.ResourceTypeRegistrationPropertiesResourceCacheArgs{
/// 					EnableResourceCache:             pulumi.Bool(true),
/// 					ResourceCacheExpirationTimespan: pulumi.String("PT2M"),
/// 				},
/// 				ResourceConcurrencyControlOptions: providerhub.ResourceConcurrencyControlOptionMap{
/// 					"patch": &providerhub.ResourceConcurrencyControlOptionArgs{
/// 						Policy: pulumi.String(providerhub.PolicySynchronizeBeginExtension),
/// 					},
/// 					"post": &providerhub.ResourceConcurrencyControlOptionArgs{
/// 						Policy: pulumi.String(providerhub.PolicySynchronizeBeginExtension),
/// 					},
/// 					"put": &providerhub.ResourceConcurrencyControlOptionArgs{
/// 						Policy: pulumi.String(providerhub.PolicySynchronizeBeginExtension),
/// 					},
/// 				},
/// 				ResourceGraphConfiguration: &providerhub.ResourceTypeRegistrationPropertiesResourceGraphConfigurationArgs{
/// 					ApiVersion: pulumi.String("2019-01-01"),
/// 					Enabled:    pulumi.Bool(true),
/// 				},
/// 				ResourceManagementOptions: &providerhub.ResourceTypeRegistrationPropertiesResourceManagementOptionsArgs{
/// 					BatchProvisioningSupport: &providerhub.ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupportArgs{
/// 						SupportedOperations: pulumi.String("Get, Delete"),
/// 					},
/// 					DeleteDependencies: providerhub.DeleteDependencyArray{
/// 						&providerhub.DeleteDependencyArgs{
/// 							LinkedProperty: pulumi.String("properties.edgeProfile.subscription.id"),
/// 						},
/// 					},
/// 				},
/// 				ResourceQueryManagement: &providerhub.ResourceTypeRegistrationPropertiesResourceQueryManagementArgs{
/// 					FilterOption: pulumi.String(providerhub.FilterOptionEnableSubscriptionFilterOnTenant),
/// 				},
/// 				ResourceTypeCommonAttributeManagement: &providerhub.ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagementArgs{
/// 					CommonApiVersionsMergeMode: pulumi.String(providerhub.CommonApiVersionsMergeModeMerge),
/// 				},
/// 				RoutingRule: &providerhub.ResourceTypeRegistrationPropertiesRoutingRuleArgs{
/// 					HostResourceType: pulumi.String("servers/databases"),
/// 				},
/// 				RoutingType:  pulumi.String(providerhub.RoutingTypeDefault),
/// 				SupportsTags: pulumi.Bool(true),
/// 				SwaggerSpecifications: providerhub.SwaggerSpecificationArray{
/// 					&providerhub.SwaggerSpecificationArgs{
/// 						ApiVersions: pulumi.StringArray{
/// 							pulumi.String("2020-06-01-preview"),
/// 						},
/// 						SwaggerSpecFolderUri: pulumi.String("https://github.com/Azure/azure-rest-api-specs/blob/feature/azure/contoso/specification/contoso/resource-manager/Microsoft.SampleRP/"),
/// 					},
/// 				},
/// 				TemplateDeploymentPolicy: &providerhub.ResourceTypeRegistrationPropertiesTemplateDeploymentPolicyArgs{
/// 					Capabilities:           pulumi.String(providerhub.TemplateDeploymentCapabilitiesPreflight),
/// 					PreflightNotifications: pulumi.String(providerhub.TemplateDeploymentPreflightNotificationsNone),
/// 					PreflightOptions:       pulumi.String("ValidationRequests, DeploymentRequests"),
/// 				},
/// 			},
/// 			ProviderNamespace: pulumi.String("Microsoft.Contoso"),
/// 			ResourceType:      pulumi.String("employees"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_providerhub_resourcetyperegistration" "resourceTypeRegistration" {
///   properties = {
///     add_resource_list_target_locations = true
///     additional_options                 = "ProtectedAsyncOperationPolling"
///     allow_empty_role_assignments       = false
///     allowed_resource_names = [{
///       "getActionVerb" = "list"
///       "name"          = "name1"
///       }, {
///       "name" = "name2"
///     }]
///     allowed_template_deployment_reference_actions = ["ListKeys", "ListSAS"]
///     api_profiles = [{
///       "apiVersion"     = "2018-02-01"
///       "profileVersion" = "2018-03-01-hybrid"
///       }, {
///       "apiVersion"     = "2016-06-01"
///       "profileVersion" = "2019-03-01-hybrid"
///     }]
///     async_timeout_rules = [{
///       "actionName" = "Microsoft.ClassicCompute/domainNames/write"
///       "timeout"    = "PT12H"
///     }]
///     availability_zone_rule = {
///       availability_zone_policy = "MultiZoned"
///     }
///     capacity_rule = {
///       capacity_policy = "Restricted"
///       sku_alias       = "incorrectAlias"
///     }
///     common_api_versions = ["2021-01-01"]
///     dsts_configuration = {
///       service_dns_name = "prds.sparta.azure.com"
///       service_name     = "prds-shim"
///     }
///     endpoints = [{
///       "apiVersions"      = ["2020-06-01-preview"]
///       "locations"        = ["West US", "East US", "North Europe"]
///       "requiredFeatures" = ["<feature flag>"]
///     }]
///     grouping_tag = "groupingTag"
///     legacy_name  = "legacyName"
///     legacy_names = ["legacyName"]
///     legacy_policy = {
///       disallowed_conditions = [{
///         "disallowedLegacyOperations" = ["Create", "Delete"]
///         "feature"                    = "Microsoft.RP/ArmOnlyJobCollections"
///       }]
///       disallowed_legacy_operations = ["Create"]
///     }
///     linked_operation_rules = [{
///       "linkedAction"    = "Blocked"
///       "linkedOperation" = "CrossSubscriptionResourceMove"
///       }, {
///       "linkedAction"    = "Validate"
///       "linkedOperation" = "CrossResourceGroupResourceMove"
///     }]
///     management = {
///       authorization_owners     = ["RPAAS-PlatformServiceAdministrator"]
///       incident_contact_email   = "helpme@contoso.com"
///       incident_routing_service = ""
///       incident_routing_team    = ""
///       manifest_owners          = ["SPARTA-PlatformServiceAdministrator"]
///       resource_access_policy   = "NotSpecified"
///       service_tree_infos = [{
///         "componentId" = "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69"
///         "readiness"   = "InDevelopment"
///         "serviceId"   = "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69"
///       }]
///     }
///     manifest_link = "https://azure.com"
///     marketplace_options = {
///       add_on_plan_conversion_allowed = true
///     }
///     metadata = {}
///     notifications = [{
///       "notificationType"  = "SubscriptionNotification"
///       "skipNotifications" = "Disabled"
///     }]
///     open_api_configuration = {
///       validation = {
///         allow_noncompliant_collection_response = true
///       }
///     }
///     policy_execution_type = "BypassPolicies"
///     regionality           = "Regional"
///     request_header_options = {
///       opt_out_headers = "SystemDataCreatedByLastModifiedBy"
///     }
///     resource_cache = {
///       enable_resource_cache              = true
///       resource_cache_expiration_timespan = "PT2M"
///     }
///     resource_concurrency_control_options = {
///       "patch" = {
///         policy = "SynchronizeBeginExtension"
///       }
///       "post" = {
///         policy = "SynchronizeBeginExtension"
///       }
///       "put" = {
///         policy = "SynchronizeBeginExtension"
///       }
///     }
///     resource_graph_configuration = {
///       api_version = "2019-01-01"
///       enabled     = true
///     }
///     resource_management_options = {
///       batch_provisioning_support = {
///         supported_operations = "Get, Delete"
///       }
///       delete_dependencies = [{
///         "linkedProperty" = "properties.edgeProfile.subscription.id"
///       }]
///     }
///     resource_query_management = {
///       filter_option = "EnableSubscriptionFilterOnTenant"
///     }
///     resource_type_common_attribute_management = {
///       common_api_versions_merge_mode = "Merge"
///     }
///     routing_rule = {
///       host_resource_type = "servers/databases"
///     }
///     routing_type  = "Default"
///     supports_tags = true
///     swagger_specifications = [{
///       "apiVersions"          = ["2020-06-01-preview"]
///       "swaggerSpecFolderUri" = "https://github.com/Azure/azure-rest-api-specs/blob/feature/azure/contoso/specification/contoso/resource-manager/Microsoft.SampleRP/"
///     }]
///     template_deployment_policy = {
///       capabilities            = "Preflight"
///       preflight_notifications = "None"
///       preflight_options       = "ValidationRequests, DeploymentRequests"
///     }
///   }
///   provider_namespace = "Microsoft.Contoso"
///   resource_type      = "employees"
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
/// import com.pulumi.azurenative.providerhub.ResourceTypeRegistration;
/// import com.pulumi.azurenative.providerhub.ResourceTypeRegistrationArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesAvailabilityZoneRuleArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesCapacityRuleArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesDstsConfigurationArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesLegacyPolicyArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesManagementArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesMarketplaceOptionsArgs;
/// import com.pulumi.azurenative.providerhub.inputs.OpenApiConfigurationArgs;
/// import com.pulumi.azurenative.providerhub.inputs.OpenApiValidationArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesRequestHeaderOptionsArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesResourceCacheArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesResourceGraphConfigurationArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesResourceManagementOptionsArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupportArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesResourceQueryManagementArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagementArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesRoutingRuleArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesTemplateDeploymentPolicyArgs;
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
///         var resourceTypeRegistration = new ResourceTypeRegistration("resourceTypeRegistration", ResourceTypeRegistrationArgs.builder()
///             .properties(ResourceTypeRegistrationPropertiesArgs.builder()
///                 .addResourceListTargetLocations(true)
///                 .additionalOptions("ProtectedAsyncOperationPolling")
///                 .allowEmptyRoleAssignments(false)
///                 .allowedResourceNames(
///                     AllowedResourceNameArgs.builder()
///                         .getActionVerb("list")
///                         .name("name1")
///                         .build(),
///                     AllowedResourceNameArgs.builder()
///                         .name("name2")
///                         .build())
///                 .allowedTemplateDeploymentReferenceActions(
///                     "ListKeys",
///                     "ListSAS")
///                 .apiProfiles(
///                     ApiProfileArgs.builder()
///                         .apiVersion("2018-02-01")
///                         .profileVersion("2018-03-01-hybrid")
///                         .build(),
///                     ApiProfileArgs.builder()
///                         .apiVersion("2016-06-01")
///                         .profileVersion("2019-03-01-hybrid")
///                         .build())
///                 .asyncTimeoutRules(AsyncTimeoutRuleArgs.builder()
///                     .actionName("Microsoft.ClassicCompute/domainNames/write")
///                     .timeout("PT12H")
///                     .build())
///                 .availabilityZoneRule(ResourceTypeRegistrationPropertiesAvailabilityZoneRuleArgs.builder()
///                     .availabilityZonePolicy("MultiZoned")
///                     .build())
///                 .capacityRule(ResourceTypeRegistrationPropertiesCapacityRuleArgs.builder()
///                     .capacityPolicy("Restricted")
///                     .skuAlias("incorrectAlias")
///                     .build())
///                 .commonApiVersions("2021-01-01")
///                 .dstsConfiguration(ResourceTypeRegistrationPropertiesDstsConfigurationArgs.builder()
///                     .serviceDnsName("prds.sparta.azure.com")
///                     .serviceName("prds-shim")
///                     .build())
///                 .endpoints(ResourceTypeEndpointArgs.builder()
///                     .apiVersions("2020-06-01-preview")
///                     .locations(
///                         "West US",
///                         "East US",
///                         "North Europe")
///                     .requiredFeatures("<feature flag>")
///                     .build())
///                 .groupingTag("groupingTag")
///                 .legacyName("legacyName")
///                 .legacyNames("legacyName")
///                 .legacyPolicy(ResourceTypeRegistrationPropertiesLegacyPolicyArgs.builder()
///                     .disallowedConditions(LegacyDisallowedConditionArgs.builder()
///                         .disallowedLegacyOperations(
///                             "Create",
///                             "Delete")
///                         .feature("Microsoft.RP/ArmOnlyJobCollections")
///                         .build())
///                     .disallowedLegacyOperations("Create")
///                     .build())
///                 .linkedOperationRules(
///                     LinkedOperationRuleArgs.builder()
///                         .linkedAction("Blocked")
///                         .linkedOperation("CrossSubscriptionResourceMove")
///                         .build(),
///                     LinkedOperationRuleArgs.builder()
///                         .linkedAction("Validate")
///                         .linkedOperation("CrossResourceGroupResourceMove")
///                         .build())
///                 .management(ResourceTypeRegistrationPropertiesManagementArgs.builder()
///                     .authorizationOwners("RPAAS-PlatformServiceAdministrator")
///                     .incidentContactEmail("helpme@contoso.com")
///                     .incidentRoutingService("")
///                     .incidentRoutingTeam("")
///                     .manifestOwners("SPARTA-PlatformServiceAdministrator")
///                     .resourceAccessPolicy("NotSpecified")
///                     .serviceTreeInfos(ServiceTreeInfoArgs.builder()
///                         .componentId("d1b7d8ba-05e2-48e6-90d6-d781b99c6e69")
///                         .readiness("InDevelopment")
///                         .serviceId("d1b7d8ba-05e2-48e6-90d6-d781b99c6e69")
///                         .build())
///                     .build())
///                 .manifestLink("https://azure.com")
///                 .marketplaceOptions(ResourceTypeRegistrationPropertiesMarketplaceOptionsArgs.builder()
///                     .addOnPlanConversionAllowed(true)
///                     .build())
///                 .metadata(Map.ofEntries(
///                 ))
///                 .notifications(NotificationArgs.builder()
///                     .notificationType("SubscriptionNotification")
///                     .skipNotifications("Disabled")
///                     .build())
///                 .openApiConfiguration(OpenApiConfigurationArgs.builder()
///                     .validation(OpenApiValidationArgs.builder()
///                         .allowNoncompliantCollectionResponse(true)
///                         .build())
///                     .build())
///                 .policyExecutionType("BypassPolicies")
///                 .regionality("Regional")
///                 .requestHeaderOptions(ResourceTypeRegistrationPropertiesRequestHeaderOptionsArgs.builder()
///                     .optOutHeaders("SystemDataCreatedByLastModifiedBy")
///                     .build())
///                 .resourceCache(ResourceTypeRegistrationPropertiesResourceCacheArgs.builder()
///                     .enableResourceCache(true)
///                     .resourceCacheExpirationTimespan("PT2M")
///                     .build())
///                 .resourceConcurrencyControlOptions(Map.ofEntries(
///                     Map.entry("patch", ResourceConcurrencyControlOptionArgs.builder()
///                         .policy("SynchronizeBeginExtension")
///                         .build()),
///                     Map.entry("post", ResourceConcurrencyControlOptionArgs.builder()
///                         .policy("SynchronizeBeginExtension")
///                         .build()),
///                     Map.entry("put", ResourceConcurrencyControlOptionArgs.builder()
///                         .policy("SynchronizeBeginExtension")
///                         .build())
///                 ))
///                 .resourceGraphConfiguration(ResourceTypeRegistrationPropertiesResourceGraphConfigurationArgs.builder()
///                     .apiVersion("2019-01-01")
///                     .enabled(true)
///                     .build())
///                 .resourceManagementOptions(ResourceTypeRegistrationPropertiesResourceManagementOptionsArgs.builder()
///                     .batchProvisioningSupport(ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupportArgs.builder()
///                         .supportedOperations("Get, Delete")
///                         .build())
///                     .deleteDependencies(DeleteDependencyArgs.builder()
///                         .linkedProperty("properties.edgeProfile.subscription.id")
///                         .build())
///                     .build())
///                 .resourceQueryManagement(ResourceTypeRegistrationPropertiesResourceQueryManagementArgs.builder()
///                     .filterOption("EnableSubscriptionFilterOnTenant")
///                     .build())
///                 .resourceTypeCommonAttributeManagement(ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagementArgs.builder()
///                     .commonApiVersionsMergeMode("Merge")
///                     .build())
///                 .routingRule(ResourceTypeRegistrationPropertiesRoutingRuleArgs.builder()
///                     .hostResourceType("servers/databases")
///                     .build())
///                 .routingType("Default")
///                 .supportsTags(true)
///                 .swaggerSpecifications(SwaggerSpecificationArgs.builder()
///                     .apiVersions("2020-06-01-preview")
///                     .swaggerSpecFolderUri("https://github.com/Azure/azure-rest-api-specs/blob/feature/azure/contoso/specification/contoso/resource-manager/Microsoft.SampleRP/")
///                     .build())
///                 .templateDeploymentPolicy(ResourceTypeRegistrationPropertiesTemplateDeploymentPolicyArgs.builder()
///                     .capabilities("Preflight")
///                     .preflightNotifications("None")
///                     .preflightOptions("ValidationRequests, DeploymentRequests")
///                     .build())
///                 .build())
///             .providerNamespace("Microsoft.Contoso")
///             .resourceType("employees")
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
/// const resourceTypeRegistration = new azure_native.providerhub.ResourceTypeRegistration("resourceTypeRegistration", {
///     properties: {
///         addResourceListTargetLocations: true,
///         additionalOptions: azure_native.providerhub.AdditionalOptionsResourceTypeRegistration.ProtectedAsyncOperationPolling,
///         allowEmptyRoleAssignments: false,
///         allowedResourceNames: [
///             {
///                 getActionVerb: "list",
///                 name: "name1",
///             },
///             {
///                 name: "name2",
///             },
///         ],
///         allowedTemplateDeploymentReferenceActions: [
///             "ListKeys",
///             "ListSAS",
///         ],
///         apiProfiles: [
///             {
///                 apiVersion: "2018-02-01",
///                 profileVersion: "2018-03-01-hybrid",
///             },
///             {
///                 apiVersion: "2016-06-01",
///                 profileVersion: "2019-03-01-hybrid",
///             },
///         ],
///         asyncTimeoutRules: [{
///             actionName: "Microsoft.ClassicCompute/domainNames/write",
///             timeout: "PT12H",
///         }],
///         availabilityZoneRule: {
///             availabilityZonePolicy: azure_native.providerhub.AvailabilityZonePolicy.MultiZoned,
///         },
///         capacityRule: {
///             capacityPolicy: azure_native.providerhub.CapacityPolicy.Restricted,
///             skuAlias: "incorrectAlias",
///         },
///         commonApiVersions: ["2021-01-01"],
///         dstsConfiguration: {
///             serviceDnsName: "prds.sparta.azure.com",
///             serviceName: "prds-shim",
///         },
///         endpoints: [{
///             apiVersions: ["2020-06-01-preview"],
///             locations: [
///                 "West US",
///                 "East US",
///                 "North Europe",
///             ],
///             requiredFeatures: ["<feature flag>"],
///         }],
///         groupingTag: "groupingTag",
///         legacyName: "legacyName",
///         legacyNames: ["legacyName"],
///         legacyPolicy: {
///             disallowedConditions: [{
///                 disallowedLegacyOperations: [
///                     azure_native.providerhub.LegacyOperation.Create,
///                     azure_native.providerhub.LegacyOperation.Delete,
///                 ],
///                 feature: "Microsoft.RP/ArmOnlyJobCollections",
///             }],
///             disallowedLegacyOperations: [azure_native.providerhub.LegacyOperation.Create],
///         },
///         linkedOperationRules: [
///             {
///                 linkedAction: azure_native.providerhub.LinkedAction.Blocked,
///                 linkedOperation: azure_native.providerhub.LinkedOperation.CrossSubscriptionResourceMove,
///             },
///             {
///                 linkedAction: azure_native.providerhub.LinkedAction.Validate,
///                 linkedOperation: azure_native.providerhub.LinkedOperation.CrossResourceGroupResourceMove,
///             },
///         ],
///         management: {
///             authorizationOwners: ["RPAAS-PlatformServiceAdministrator"],
///             incidentContactEmail: "helpme@contoso.com",
///             incidentRoutingService: "",
///             incidentRoutingTeam: "",
///             manifestOwners: ["SPARTA-PlatformServiceAdministrator"],
///             resourceAccessPolicy: azure_native.providerhub.ResourceAccessPolicy.NotSpecified,
///             serviceTreeInfos: [{
///                 componentId: "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///                 readiness: azure_native.providerhub.Readiness.InDevelopment,
///                 serviceId: "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///             }],
///         },
///         manifestLink: "https://azure.com",
///         marketplaceOptions: {
///             addOnPlanConversionAllowed: true,
///         },
///         metadata: {},
///         notifications: [{
///             notificationType: azure_native.providerhub.NotificationType.SubscriptionNotification,
///             skipNotifications: azure_native.providerhub.SkipNotifications.Disabled,
///         }],
///         openApiConfiguration: {
///             validation: {
///                 allowNoncompliantCollectionResponse: true,
///             },
///         },
///         policyExecutionType: azure_native.providerhub.PolicyExecutionType.BypassPolicies,
///         regionality: azure_native.providerhub.Regionality.Regional,
///         requestHeaderOptions: {
///             optOutHeaders: azure_native.providerhub.OptOutHeaderType.SystemDataCreatedByLastModifiedBy,
///         },
///         resourceCache: {
///             enableResourceCache: true,
///             resourceCacheExpirationTimespan: "PT2M",
///         },
///         resourceConcurrencyControlOptions: {
///             patch: {
///                 policy: azure_native.providerhub.Policy.SynchronizeBeginExtension,
///             },
///             post: {
///                 policy: azure_native.providerhub.Policy.SynchronizeBeginExtension,
///             },
///             put: {
///                 policy: azure_native.providerhub.Policy.SynchronizeBeginExtension,
///             },
///         },
///         resourceGraphConfiguration: {
///             apiVersion: "2019-01-01",
///             enabled: true,
///         },
///         resourceManagementOptions: {
///             batchProvisioningSupport: {
///                 supportedOperations: "Get, Delete",
///             },
///             deleteDependencies: [{
///                 linkedProperty: "properties.edgeProfile.subscription.id",
///             }],
///         },
///         resourceQueryManagement: {
///             filterOption: azure_native.providerhub.FilterOption.EnableSubscriptionFilterOnTenant,
///         },
///         resourceTypeCommonAttributeManagement: {
///             commonApiVersionsMergeMode: azure_native.providerhub.CommonApiVersionsMergeMode.Merge,
///         },
///         routingRule: {
///             hostResourceType: "servers/databases",
///         },
///         routingType: azure_native.providerhub.RoutingType.Default,
///         supportsTags: true,
///         swaggerSpecifications: [{
///             apiVersions: ["2020-06-01-preview"],
///             swaggerSpecFolderUri: "https://github.com/Azure/azure-rest-api-specs/blob/feature/azure/contoso/specification/contoso/resource-manager/Microsoft.SampleRP/",
///         }],
///         templateDeploymentPolicy: {
///             capabilities: azure_native.providerhub.TemplateDeploymentCapabilities.Preflight,
///             preflightNotifications: azure_native.providerhub.TemplateDeploymentPreflightNotifications.None,
///             preflightOptions: "ValidationRequests, DeploymentRequests",
///         },
///     },
///     providerNamespace: "Microsoft.Contoso",
///     resourceType: "employees",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// resource_type_registration = azure_native.providerhub.ResourceTypeRegistration("resourceTypeRegistration",
///     properties={
///         "add_resource_list_target_locations": True,
///         "additional_options": azure_native.providerhub.AdditionalOptionsResourceTypeRegistration.PROTECTED_ASYNC_OPERATION_POLLING,
///         "allow_empty_role_assignments": False,
///         "allowed_resource_names": [
///             {
///                 "get_action_verb": "list",
///                 "name": "name1",
///             },
///             {
///                 "name": "name2",
///             },
///         ],
///         "allowed_template_deployment_reference_actions": [
///             "ListKeys",
///             "ListSAS",
///         ],
///         "api_profiles": [
///             {
///                 "api_version": "2018-02-01",
///                 "profile_version": "2018-03-01-hybrid",
///             },
///             {
///                 "api_version": "2016-06-01",
///                 "profile_version": "2019-03-01-hybrid",
///             },
///         ],
///         "async_timeout_rules": [{
///             "action_name": "Microsoft.ClassicCompute/domainNames/write",
///             "timeout": "PT12H",
///         }],
///         "availability_zone_rule": {
///             "availability_zone_policy": azure_native.providerhub.AvailabilityZonePolicy.MULTI_ZONED,
///         },
///         "capacity_rule": {
///             "capacity_policy": azure_native.providerhub.CapacityPolicy.RESTRICTED,
///             "sku_alias": "incorrectAlias",
///         },
///         "common_api_versions": ["2021-01-01"],
///         "dsts_configuration": {
///             "service_dns_name": "prds.sparta.azure.com",
///             "service_name": "prds-shim",
///         },
///         "endpoints": [{
///             "api_versions": ["2020-06-01-preview"],
///             "locations": [
///                 "West US",
///                 "East US",
///                 "North Europe",
///             ],
///             "required_features": ["<feature flag>"],
///         }],
///         "grouping_tag": "groupingTag",
///         "legacy_name": "legacyName",
///         "legacy_names": ["legacyName"],
///         "legacy_policy": {
///             "disallowed_conditions": [{
///                 "disallowed_legacy_operations": [
///                     azure_native.providerhub.LegacyOperation.CREATE,
///                     azure_native.providerhub.LegacyOperation.DELETE,
///                 ],
///                 "feature": "Microsoft.RP/ArmOnlyJobCollections",
///             }],
///             "disallowed_legacy_operations": [azure_native.providerhub.LegacyOperation.CREATE],
///         },
///         "linked_operation_rules": [
///             {
///                 "linked_action": azure_native.providerhub.LinkedAction.BLOCKED,
///                 "linked_operation": azure_native.providerhub.LinkedOperation.CROSS_SUBSCRIPTION_RESOURCE_MOVE,
///             },
///             {
///                 "linked_action": azure_native.providerhub.LinkedAction.VALIDATE,
///                 "linked_operation": azure_native.providerhub.LinkedOperation.CROSS_RESOURCE_GROUP_RESOURCE_MOVE,
///             },
///         ],
///         "management": {
///             "authorization_owners": ["RPAAS-PlatformServiceAdministrator"],
///             "incident_contact_email": "helpme@contoso.com",
///             "incident_routing_service": "",
///             "incident_routing_team": "",
///             "manifest_owners": ["SPARTA-PlatformServiceAdministrator"],
///             "resource_access_policy": azure_native.providerhub.ResourceAccessPolicy.NOT_SPECIFIED,
///             "service_tree_infos": [{
///                 "component_id": "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///                 "readiness": azure_native.providerhub.Readiness.IN_DEVELOPMENT,
///                 "service_id": "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///             }],
///         },
///         "manifest_link": "https://azure.com",
///         "marketplace_options": {
///             "add_on_plan_conversion_allowed": True,
///         },
///         "metadata": {},
///         "notifications": [{
///             "notification_type": azure_native.providerhub.NotificationType.SUBSCRIPTION_NOTIFICATION,
///             "skip_notifications": azure_native.providerhub.SkipNotifications.DISABLED,
///         }],
///         "open_api_configuration": {
///             "validation": {
///                 "allow_noncompliant_collection_response": True,
///             },
///         },
///         "policy_execution_type": azure_native.providerhub.PolicyExecutionType.BYPASS_POLICIES,
///         "regionality": azure_native.providerhub.Regionality.REGIONAL,
///         "request_header_options": {
///             "opt_out_headers": azure_native.providerhub.OptOutHeaderType.SYSTEM_DATA_CREATED_BY_LAST_MODIFIED_BY,
///         },
///         "resource_cache": {
///             "enable_resource_cache": True,
///             "resource_cache_expiration_timespan": "PT2M",
///         },
///         "resource_concurrency_control_options": {
///             "patch": {
///                 "policy": azure_native.providerhub.Policy.SYNCHRONIZE_BEGIN_EXTENSION,
///             },
///             "post": {
///                 "policy": azure_native.providerhub.Policy.SYNCHRONIZE_BEGIN_EXTENSION,
///             },
///             "put": {
///                 "policy": azure_native.providerhub.Policy.SYNCHRONIZE_BEGIN_EXTENSION,
///             },
///         },
///         "resource_graph_configuration": {
///             "api_version": "2019-01-01",
///             "enabled": True,
///         },
///         "resource_management_options": {
///             "batch_provisioning_support": {
///                 "supported_operations": "Get, Delete",
///             },
///             "delete_dependencies": [{
///                 "linked_property": "properties.edgeProfile.subscription.id",
///             }],
///         },
///         "resource_query_management": {
///             "filter_option": azure_native.providerhub.FilterOption.ENABLE_SUBSCRIPTION_FILTER_ON_TENANT,
///         },
///         "resource_type_common_attribute_management": {
///             "common_api_versions_merge_mode": azure_native.providerhub.CommonApiVersionsMergeMode.MERGE,
///         },
///         "routing_rule": {
///             "host_resource_type": "servers/databases",
///         },
///         "routing_type": azure_native.providerhub.RoutingType.DEFAULT,
///         "supports_tags": True,
///         "swagger_specifications": [{
///             "api_versions": ["2020-06-01-preview"],
///             "swagger_spec_folder_uri": "https://github.com/Azure/azure-rest-api-specs/blob/feature/azure/contoso/specification/contoso/resource-manager/Microsoft.SampleRP/",
///         }],
///         "template_deployment_policy": {
///             "capabilities": azure_native.providerhub.TemplateDeploymentCapabilities.PREFLIGHT,
///             "preflight_notifications": azure_native.providerhub.TemplateDeploymentPreflightNotifications.NONE,
///             "preflight_options": "ValidationRequests, DeploymentRequests",
///         },
///     },
///     provider_namespace="Microsoft.Contoso",
///     resource_type="employees")
///
/// ```
///
/// ```yaml
/// resources:
///   resourceTypeRegistration:
///     type: azure-native:providerhub:ResourceTypeRegistration
///     properties:
///       properties:
///         addResourceListTargetLocations: true
///         additionalOptions: ProtectedAsyncOperationPolling
///         allowEmptyRoleAssignments: false
///         allowedResourceNames:
///           - getActionVerb: list
///             name: name1
///           - name: name2
///         allowedTemplateDeploymentReferenceActions:
///           - ListKeys
///           - ListSAS
///         apiProfiles:
///           - apiVersion: 2018-02-01
///             profileVersion: 2018-03-01-hybrid
///           - apiVersion: 2016-06-01
///             profileVersion: 2019-03-01-hybrid
///         asyncTimeoutRules:
///           - actionName: Microsoft.ClassicCompute/domainNames/write
///             timeout: PT12H
///         availabilityZoneRule:
///           availabilityZonePolicy: MultiZoned
///         capacityRule:
///           capacityPolicy: Restricted
///           skuAlias: incorrectAlias
///         commonApiVersions:
///           - 2021-01-01
///         dstsConfiguration:
///           serviceDnsName: prds.sparta.azure.com
///           serviceName: prds-shim
///         endpoints:
///           - apiVersions:
///               - 2020-06-01-preview
///             locations:
///               - West US
///               - East US
///               - North Europe
///             requiredFeatures:
///               - <feature flag>
///         groupingTag: groupingTag
///         legacyName: legacyName
///         legacyNames:
///           - legacyName
///         legacyPolicy:
///           disallowedConditions:
///             - disallowedLegacyOperations:
///                 - Create
///                 - Delete
///               feature: Microsoft.RP/ArmOnlyJobCollections
///           disallowedLegacyOperations:
///             - Create
///         linkedOperationRules:
///           - linkedAction: Blocked
///             linkedOperation: CrossSubscriptionResourceMove
///           - linkedAction: Validate
///             linkedOperation: CrossResourceGroupResourceMove
///         management:
///           authorizationOwners:
///             - RPAAS-PlatformServiceAdministrator
///           incidentContactEmail: helpme@contoso.com
///           incidentRoutingService: ""
///           incidentRoutingTeam: ""
///           manifestOwners:
///             - SPARTA-PlatformServiceAdministrator
///           resourceAccessPolicy: NotSpecified
///           serviceTreeInfos:
///             - componentId: d1b7d8ba-05e2-48e6-90d6-d781b99c6e69
///               readiness: InDevelopment
///               serviceId: d1b7d8ba-05e2-48e6-90d6-d781b99c6e69
///         manifestLink: https://azure.com
///         marketplaceOptions:
///           addOnPlanConversionAllowed: true
///         metadata: {}
///         notifications:
///           - notificationType: SubscriptionNotification
///             skipNotifications: Disabled
///         openApiConfiguration:
///           validation:
///             allowNoncompliantCollectionResponse: true
///         policyExecutionType: BypassPolicies
///         regionality: Regional
///         requestHeaderOptions:
///           optOutHeaders: SystemDataCreatedByLastModifiedBy
///         resourceCache:
///           enableResourceCache: true
///           resourceCacheExpirationTimespan: PT2M
///         resourceConcurrencyControlOptions:
///           patch:
///             policy: SynchronizeBeginExtension
///           post:
///             policy: SynchronizeBeginExtension
///           put:
///             policy: SynchronizeBeginExtension
///         resourceGraphConfiguration:
///           apiVersion: 2019-01-01
///           enabled: true
///         resourceManagementOptions:
///           batchProvisioningSupport:
///             supportedOperations: Get, Delete
///           deleteDependencies:
///             - linkedProperty: properties.edgeProfile.subscription.id
///         resourceQueryManagement:
///           filterOption: EnableSubscriptionFilterOnTenant
///         resourceTypeCommonAttributeManagement:
///           commonApiVersionsMergeMode: Merge
///         routingRule:
///           hostResourceType: servers/databases
///         routingType: Default
///         supportsTags: true
///         swaggerSpecifications:
///           - apiVersions:
///               - 2020-06-01-preview
///             swaggerSpecFolderUri: https://github.com/Azure/azure-rest-api-specs/blob/feature/azure/contoso/specification/contoso/resource-manager/Microsoft.SampleRP/
///         templateDeploymentPolicy:
///           capabilities: Preflight
///           preflightNotifications: None
///           preflightOptions: ValidationRequests, DeploymentRequests
///       providerNamespace: Microsoft.Contoso
///       resourceType: employees
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ResourceTypeRegistrations_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var resourceTypeRegistration = new AzureNative.ProviderHub.ResourceTypeRegistration("resourceTypeRegistration", new()
///     {
///         Properties = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesArgs
///         {
///             CrossTenantTokenValidation = AzureNative.ProviderHub.CrossTenantTokenValidation.EnsureSecureValidation,
///             Endpoints = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.ResourceTypeEndpointArgs
///                 {
///                     ApiVersions = new[]
///                     {
///                         "2020-06-01-preview",
///                     },
///                     Locations = new[]
///                     {
///                         "West US",
///                         "East US",
///                         "North Europe",
///                     },
///                     RequiredFeatures = new[]
///                     {
///                         "<feature flag>",
///                     },
///                 },
///             },
///             Management = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesManagementArgs
///             {
///                 AuthorizationOwners = new[]
///                 {
///                     "RPAAS-PlatformServiceAdministrator",
///                 },
///                 IncidentContactEmail = "helpme@contoso.com",
///                 IncidentRoutingService = "",
///                 IncidentRoutingTeam = "",
///                 ManifestOwners = new[]
///                 {
///                     "SPARTA-PlatformServiceAdministrator",
///                 },
///                 ResourceAccessPolicy = AzureNative.ProviderHub.ResourceAccessPolicy.NotSpecified,
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
///             Metadata = null,
///             Notifications = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.NotificationArgs
///                 {
///                     NotificationType = AzureNative.ProviderHub.NotificationType.SubscriptionNotification,
///                     SkipNotifications = AzureNative.ProviderHub.SkipNotifications.Disabled,
///                 },
///             },
///             OpenApiConfiguration = new AzureNative.ProviderHub.Inputs.OpenApiConfigurationArgs
///             {
///                 Validation = new AzureNative.ProviderHub.Inputs.OpenApiValidationArgs
///                 {
///                     AllowNoncompliantCollectionResponse = true,
///                 },
///             },
///             Regionality = AzureNative.ProviderHub.Regionality.Regional,
///             RequestHeaderOptions = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesRequestHeaderOptionsArgs
///             {
///                 OptOutHeaders = AzureNative.ProviderHub.OptOutHeaderType.SystemDataCreatedByLastModifiedBy,
///             },
///             ResourceConcurrencyControlOptions =
///             {
///                 { "patch", new AzureNative.ProviderHub.Inputs.ResourceConcurrencyControlOptionArgs
///                 {
///                     Policy = AzureNative.ProviderHub.Policy.SynchronizeBeginExtension,
///                 } },
///                 { "post", new AzureNative.ProviderHub.Inputs.ResourceConcurrencyControlOptionArgs
///                 {
///                     Policy = AzureNative.ProviderHub.Policy.SynchronizeBeginExtension,
///                 } },
///                 { "put", new AzureNative.ProviderHub.Inputs.ResourceConcurrencyControlOptionArgs
///                 {
///                     Policy = AzureNative.ProviderHub.Policy.SynchronizeBeginExtension,
///                 } },
///             },
///             ResourceGraphConfiguration = new AzureNative.ProviderHub.Inputs.ResourceTypeRegistrationPropertiesResourceGraphConfigurationArgs
///             {
///                 ApiVersion = "2019-01-01",
///                 Enabled = true,
///             },
///             RoutingType = AzureNative.ProviderHub.RoutingType.Default,
///             SwaggerSpecifications = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.SwaggerSpecificationArgs
///                 {
///                     ApiVersions = new[]
///                     {
///                         "2020-06-01-preview",
///                     },
///                     SwaggerSpecFolderUri = "https://github.com/Azure/azure-rest-api-specs/blob/feature/azure/contoso/specification/contoso/resource-manager/Microsoft.SampleRP/",
///                 },
///             },
///         },
///         ProviderNamespace = "Microsoft.Contoso",
///         ResourceType = "employees",
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
/// 		_, err := providerhub.NewResourceTypeRegistration(ctx, "resourceTypeRegistration", &providerhub.ResourceTypeRegistrationArgs{
/// 			Properties: &providerhub.ResourceTypeRegistrationPropertiesArgs{
/// 				CrossTenantTokenValidation: pulumi.String(providerhub.CrossTenantTokenValidationEnsureSecureValidation),
/// 				Endpoints: providerhub.ResourceTypeEndpointArray{
/// 					&providerhub.ResourceTypeEndpointArgs{
/// 						ApiVersions: pulumi.StringArray{
/// 							pulumi.String("2020-06-01-preview"),
/// 						},
/// 						Locations: pulumi.StringArray{
/// 							pulumi.String("West US"),
/// 							pulumi.String("East US"),
/// 							pulumi.String("North Europe"),
/// 						},
/// 						RequiredFeatures: pulumi.StringArray{
/// 							pulumi.String("<feature flag>"),
/// 						},
/// 					},
/// 				},
/// 				Management: &providerhub.ResourceTypeRegistrationPropertiesManagementArgs{
/// 					AuthorizationOwners: pulumi.StringArray{
/// 						pulumi.String("RPAAS-PlatformServiceAdministrator"),
/// 					},
/// 					IncidentContactEmail:   pulumi.String("helpme@contoso.com"),
/// 					IncidentRoutingService: pulumi.String(""),
/// 					IncidentRoutingTeam:    pulumi.String(""),
/// 					ManifestOwners: pulumi.StringArray{
/// 						pulumi.String("SPARTA-PlatformServiceAdministrator"),
/// 					},
/// 					ResourceAccessPolicy: providerhub.ResourceAccessPolicyNotSpecified,
/// 					ServiceTreeInfos: providerhub.ServiceTreeInfoArray{
/// 						&providerhub.ServiceTreeInfoArgs{
/// 							ComponentId: pulumi.String("d1b7d8ba-05e2-48e6-90d6-d781b99c6e69"),
/// 							Readiness:   pulumi.String(providerhub.ReadinessInDevelopment),
/// 							ServiceId:   pulumi.String("d1b7d8ba-05e2-48e6-90d6-d781b99c6e69"),
/// 						},
/// 					},
/// 				},
/// 				Metadata: pulumi.Any(map[string]interface{}{}),
/// 				Notifications: providerhub.NotificationArray{
/// 					&providerhub.NotificationArgs{
/// 						NotificationType:  pulumi.String(providerhub.NotificationTypeSubscriptionNotification),
/// 						SkipNotifications: pulumi.String(providerhub.SkipNotificationsDisabled),
/// 					},
/// 				},
/// 				OpenApiConfiguration: &providerhub.OpenApiConfigurationArgs{
/// 					Validation: &providerhub.OpenApiValidationArgs{
/// 						AllowNoncompliantCollectionResponse: pulumi.Bool(true),
/// 					},
/// 				},
/// 				Regionality: pulumi.String(providerhub.RegionalityRegional),
/// 				RequestHeaderOptions: &providerhub.ResourceTypeRegistrationPropertiesRequestHeaderOptionsArgs{
/// 					OptOutHeaders: pulumi.String(providerhub.OptOutHeaderTypeSystemDataCreatedByLastModifiedBy),
/// 				},
/// 				ResourceConcurrencyControlOptions: providerhub.ResourceConcurrencyControlOptionMap{
/// 					"patch": &providerhub.ResourceConcurrencyControlOptionArgs{
/// 						Policy: pulumi.String(providerhub.PolicySynchronizeBeginExtension),
/// 					},
/// 					"post": &providerhub.ResourceConcurrencyControlOptionArgs{
/// 						Policy: pulumi.String(providerhub.PolicySynchronizeBeginExtension),
/// 					},
/// 					"put": &providerhub.ResourceConcurrencyControlOptionArgs{
/// 						Policy: pulumi.String(providerhub.PolicySynchronizeBeginExtension),
/// 					},
/// 				},
/// 				ResourceGraphConfiguration: &providerhub.ResourceTypeRegistrationPropertiesResourceGraphConfigurationArgs{
/// 					ApiVersion: pulumi.String("2019-01-01"),
/// 					Enabled:    pulumi.Bool(true),
/// 				},
/// 				RoutingType: pulumi.String(providerhub.RoutingTypeDefault),
/// 				SwaggerSpecifications: providerhub.SwaggerSpecificationArray{
/// 					&providerhub.SwaggerSpecificationArgs{
/// 						ApiVersions: pulumi.StringArray{
/// 							pulumi.String("2020-06-01-preview"),
/// 						},
/// 						SwaggerSpecFolderUri: pulumi.String("https://github.com/Azure/azure-rest-api-specs/blob/feature/azure/contoso/specification/contoso/resource-manager/Microsoft.SampleRP/"),
/// 					},
/// 				},
/// 			},
/// 			ProviderNamespace: pulumi.String("Microsoft.Contoso"),
/// 			ResourceType:      pulumi.String("employees"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_providerhub_resourcetyperegistration" "resourceTypeRegistration" {
///   properties = {
///     cross_tenant_token_validation = "EnsureSecureValidation"
///     endpoints = [{
///       "apiVersions"      = ["2020-06-01-preview"]
///       "locations"        = ["West US", "East US", "North Europe"]
///       "requiredFeatures" = ["<feature flag>"]
///     }]
///     management = {
///       authorization_owners     = ["RPAAS-PlatformServiceAdministrator"]
///       incident_contact_email   = "helpme@contoso.com"
///       incident_routing_service = ""
///       incident_routing_team    = ""
///       manifest_owners          = ["SPARTA-PlatformServiceAdministrator"]
///       resource_access_policy   = "NotSpecified"
///       service_tree_infos = [{
///         "componentId" = "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69"
///         "readiness"   = "InDevelopment"
///         "serviceId"   = "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69"
///       }]
///     }
///     metadata = {}
///     notifications = [{
///       "notificationType"  = "SubscriptionNotification"
///       "skipNotifications" = "Disabled"
///     }]
///     open_api_configuration = {
///       validation = {
///         allow_noncompliant_collection_response = true
///       }
///     }
///     regionality = "Regional"
///     request_header_options = {
///       opt_out_headers = "SystemDataCreatedByLastModifiedBy"
///     }
///     resource_concurrency_control_options = {
///       "patch" = {
///         policy = "SynchronizeBeginExtension"
///       }
///       "post" = {
///         policy = "SynchronizeBeginExtension"
///       }
///       "put" = {
///         policy = "SynchronizeBeginExtension"
///       }
///     }
///     resource_graph_configuration = {
///       api_version = "2019-01-01"
///       enabled     = true
///     }
///     routing_type = "Default"
///     swagger_specifications = [{
///       "apiVersions"          = ["2020-06-01-preview"]
///       "swaggerSpecFolderUri" = "https://github.com/Azure/azure-rest-api-specs/blob/feature/azure/contoso/specification/contoso/resource-manager/Microsoft.SampleRP/"
///     }]
///   }
///   provider_namespace = "Microsoft.Contoso"
///   resource_type      = "employees"
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
/// import com.pulumi.azurenative.providerhub.ResourceTypeRegistration;
/// import com.pulumi.azurenative.providerhub.ResourceTypeRegistrationArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesManagementArgs;
/// import com.pulumi.azurenative.providerhub.inputs.OpenApiConfigurationArgs;
/// import com.pulumi.azurenative.providerhub.inputs.OpenApiValidationArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesRequestHeaderOptionsArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ResourceTypeRegistrationPropertiesResourceGraphConfigurationArgs;
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
///         var resourceTypeRegistration = new ResourceTypeRegistration("resourceTypeRegistration", ResourceTypeRegistrationArgs.builder()
///             .properties(ResourceTypeRegistrationPropertiesArgs.builder()
///                 .crossTenantTokenValidation("EnsureSecureValidation")
///                 .endpoints(ResourceTypeEndpointArgs.builder()
///                     .apiVersions("2020-06-01-preview")
///                     .locations(
///                         "West US",
///                         "East US",
///                         "North Europe")
///                     .requiredFeatures("<feature flag>")
///                     .build())
///                 .management(ResourceTypeRegistrationPropertiesManagementArgs.builder()
///                     .authorizationOwners("RPAAS-PlatformServiceAdministrator")
///                     .incidentContactEmail("helpme@contoso.com")
///                     .incidentRoutingService("")
///                     .incidentRoutingTeam("")
///                     .manifestOwners("SPARTA-PlatformServiceAdministrator")
///                     .resourceAccessPolicy("NotSpecified")
///                     .serviceTreeInfos(ServiceTreeInfoArgs.builder()
///                         .componentId("d1b7d8ba-05e2-48e6-90d6-d781b99c6e69")
///                         .readiness("InDevelopment")
///                         .serviceId("d1b7d8ba-05e2-48e6-90d6-d781b99c6e69")
///                         .build())
///                     .build())
///                 .metadata(Map.ofEntries(
///                 ))
///                 .notifications(NotificationArgs.builder()
///                     .notificationType("SubscriptionNotification")
///                     .skipNotifications("Disabled")
///                     .build())
///                 .openApiConfiguration(OpenApiConfigurationArgs.builder()
///                     .validation(OpenApiValidationArgs.builder()
///                         .allowNoncompliantCollectionResponse(true)
///                         .build())
///                     .build())
///                 .regionality("Regional")
///                 .requestHeaderOptions(ResourceTypeRegistrationPropertiesRequestHeaderOptionsArgs.builder()
///                     .optOutHeaders("SystemDataCreatedByLastModifiedBy")
///                     .build())
///                 .resourceConcurrencyControlOptions(Map.ofEntries(
///                     Map.entry("patch", ResourceConcurrencyControlOptionArgs.builder()
///                         .policy("SynchronizeBeginExtension")
///                         .build()),
///                     Map.entry("post", ResourceConcurrencyControlOptionArgs.builder()
///                         .policy("SynchronizeBeginExtension")
///                         .build()),
///                     Map.entry("put", ResourceConcurrencyControlOptionArgs.builder()
///                         .policy("SynchronizeBeginExtension")
///                         .build())
///                 ))
///                 .resourceGraphConfiguration(ResourceTypeRegistrationPropertiesResourceGraphConfigurationArgs.builder()
///                     .apiVersion("2019-01-01")
///                     .enabled(true)
///                     .build())
///                 .routingType("Default")
///                 .swaggerSpecifications(SwaggerSpecificationArgs.builder()
///                     .apiVersions("2020-06-01-preview")
///                     .swaggerSpecFolderUri("https://github.com/Azure/azure-rest-api-specs/blob/feature/azure/contoso/specification/contoso/resource-manager/Microsoft.SampleRP/")
///                     .build())
///                 .build())
///             .providerNamespace("Microsoft.Contoso")
///             .resourceType("employees")
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
/// const resourceTypeRegistration = new azure_native.providerhub.ResourceTypeRegistration("resourceTypeRegistration", {
///     properties: {
///         crossTenantTokenValidation: azure_native.providerhub.CrossTenantTokenValidation.EnsureSecureValidation,
///         endpoints: [{
///             apiVersions: ["2020-06-01-preview"],
///             locations: [
///                 "West US",
///                 "East US",
///                 "North Europe",
///             ],
///             requiredFeatures: ["<feature flag>"],
///         }],
///         management: {
///             authorizationOwners: ["RPAAS-PlatformServiceAdministrator"],
///             incidentContactEmail: "helpme@contoso.com",
///             incidentRoutingService: "",
///             incidentRoutingTeam: "",
///             manifestOwners: ["SPARTA-PlatformServiceAdministrator"],
///             resourceAccessPolicy: azure_native.providerhub.ResourceAccessPolicy.NotSpecified,
///             serviceTreeInfos: [{
///                 componentId: "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///                 readiness: azure_native.providerhub.Readiness.InDevelopment,
///                 serviceId: "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///             }],
///         },
///         metadata: {},
///         notifications: [{
///             notificationType: azure_native.providerhub.NotificationType.SubscriptionNotification,
///             skipNotifications: azure_native.providerhub.SkipNotifications.Disabled,
///         }],
///         openApiConfiguration: {
///             validation: {
///                 allowNoncompliantCollectionResponse: true,
///             },
///         },
///         regionality: azure_native.providerhub.Regionality.Regional,
///         requestHeaderOptions: {
///             optOutHeaders: azure_native.providerhub.OptOutHeaderType.SystemDataCreatedByLastModifiedBy,
///         },
///         resourceConcurrencyControlOptions: {
///             patch: {
///                 policy: azure_native.providerhub.Policy.SynchronizeBeginExtension,
///             },
///             post: {
///                 policy: azure_native.providerhub.Policy.SynchronizeBeginExtension,
///             },
///             put: {
///                 policy: azure_native.providerhub.Policy.SynchronizeBeginExtension,
///             },
///         },
///         resourceGraphConfiguration: {
///             apiVersion: "2019-01-01",
///             enabled: true,
///         },
///         routingType: azure_native.providerhub.RoutingType.Default,
///         swaggerSpecifications: [{
///             apiVersions: ["2020-06-01-preview"],
///             swaggerSpecFolderUri: "https://github.com/Azure/azure-rest-api-specs/blob/feature/azure/contoso/specification/contoso/resource-manager/Microsoft.SampleRP/",
///         }],
///     },
///     providerNamespace: "Microsoft.Contoso",
///     resourceType: "employees",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// resource_type_registration = azure_native.providerhub.ResourceTypeRegistration("resourceTypeRegistration",
///     properties={
///         "cross_tenant_token_validation": azure_native.providerhub.CrossTenantTokenValidation.ENSURE_SECURE_VALIDATION,
///         "endpoints": [{
///             "api_versions": ["2020-06-01-preview"],
///             "locations": [
///                 "West US",
///                 "East US",
///                 "North Europe",
///             ],
///             "required_features": ["<feature flag>"],
///         }],
///         "management": {
///             "authorization_owners": ["RPAAS-PlatformServiceAdministrator"],
///             "incident_contact_email": "helpme@contoso.com",
///             "incident_routing_service": "",
///             "incident_routing_team": "",
///             "manifest_owners": ["SPARTA-PlatformServiceAdministrator"],
///             "resource_access_policy": azure_native.providerhub.ResourceAccessPolicy.NOT_SPECIFIED,
///             "service_tree_infos": [{
///                 "component_id": "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///                 "readiness": azure_native.providerhub.Readiness.IN_DEVELOPMENT,
///                 "service_id": "d1b7d8ba-05e2-48e6-90d6-d781b99c6e69",
///             }],
///         },
///         "metadata": {},
///         "notifications": [{
///             "notification_type": azure_native.providerhub.NotificationType.SUBSCRIPTION_NOTIFICATION,
///             "skip_notifications": azure_native.providerhub.SkipNotifications.DISABLED,
///         }],
///         "open_api_configuration": {
///             "validation": {
///                 "allow_noncompliant_collection_response": True,
///             },
///         },
///         "regionality": azure_native.providerhub.Regionality.REGIONAL,
///         "request_header_options": {
///             "opt_out_headers": azure_native.providerhub.OptOutHeaderType.SYSTEM_DATA_CREATED_BY_LAST_MODIFIED_BY,
///         },
///         "resource_concurrency_control_options": {
///             "patch": {
///                 "policy": azure_native.providerhub.Policy.SYNCHRONIZE_BEGIN_EXTENSION,
///             },
///             "post": {
///                 "policy": azure_native.providerhub.Policy.SYNCHRONIZE_BEGIN_EXTENSION,
///             },
///             "put": {
///                 "policy": azure_native.providerhub.Policy.SYNCHRONIZE_BEGIN_EXTENSION,
///             },
///         },
///         "resource_graph_configuration": {
///             "api_version": "2019-01-01",
///             "enabled": True,
///         },
///         "routing_type": azure_native.providerhub.RoutingType.DEFAULT,
///         "swagger_specifications": [{
///             "api_versions": ["2020-06-01-preview"],
///             "swagger_spec_folder_uri": "https://github.com/Azure/azure-rest-api-specs/blob/feature/azure/contoso/specification/contoso/resource-manager/Microsoft.SampleRP/",
///         }],
///     },
///     provider_namespace="Microsoft.Contoso",
///     resource_type="employees")
///
/// ```
///
/// ```yaml
/// resources:
///   resourceTypeRegistration:
///     type: azure-native:providerhub:ResourceTypeRegistration
///     properties:
///       properties:
///         crossTenantTokenValidation: EnsureSecureValidation
///         endpoints:
///           - apiVersions:
///               - 2020-06-01-preview
///             locations:
///               - West US
///               - East US
///               - North Europe
///             requiredFeatures:
///               - <feature flag>
///         management:
///           authorizationOwners:
///             - RPAAS-PlatformServiceAdministrator
///           incidentContactEmail: helpme@contoso.com
///           incidentRoutingService: ""
///           incidentRoutingTeam: ""
///           manifestOwners:
///             - SPARTA-PlatformServiceAdministrator
///           resourceAccessPolicy: NotSpecified
///           serviceTreeInfos:
///             - componentId: d1b7d8ba-05e2-48e6-90d6-d781b99c6e69
///               readiness: InDevelopment
///               serviceId: d1b7d8ba-05e2-48e6-90d6-d781b99c6e69
///         metadata: {}
///         notifications:
///           - notificationType: SubscriptionNotification
///             skipNotifications: Disabled
///         openApiConfiguration:
///           validation:
///             allowNoncompliantCollectionResponse: true
///         regionality: Regional
///         requestHeaderOptions:
///           optOutHeaders: SystemDataCreatedByLastModifiedBy
///         resourceConcurrencyControlOptions:
///           patch:
///             policy: SynchronizeBeginExtension
///           post:
///             policy: SynchronizeBeginExtension
///           put:
///             policy: SynchronizeBeginExtension
///         resourceGraphConfiguration:
///           apiVersion: 2019-01-01
///           enabled: true
///         routingType: Default
///         swaggerSpecifications:
///           - apiVersions:
///               - 2020-06-01-preview
///             swaggerSpecFolderUri: https://github.com/Azure/azure-rest-api-specs/blob/feature/azure/contoso/specification/contoso/resource-manager/Microsoft.SampleRP/
///       providerNamespace: Microsoft.Contoso
///       resourceType: employees
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
/// $ pulumi import azure-native:providerhub:ResourceTypeRegistration Microsoft.Contoso/employees /subscriptions/{subscriptionId}/providers/Microsoft.ProviderHub/providerRegistrations/{providerNamespace}/resourcetypeRegistrations/{resourceType}
/// ```
class ResourceTypeRegistrationProviderhub extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource type registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  late final pulumi.Output<String?> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<ResourceTypeRegistrationPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ResourceTypeRegistrationProviderhub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceTypeRegistrationProviderhub]. {@macro pulumi_providerhub_resource_type_registration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceTypeRegistrationProviderhub(
    String name, {
    ResourceTypeRegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:providerhub:ResourceTypeRegistration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ResourceTypeRegistrationPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceTypeRegistrationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ResourceTypeRegistrationProviderhub] resource.
  ResourceTypeRegistrationProviderhub.reference(String urn)
    : super(
        'azure-native:providerhub:ResourceTypeRegistration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ResourceTypeRegistrationPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceTypeRegistrationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
