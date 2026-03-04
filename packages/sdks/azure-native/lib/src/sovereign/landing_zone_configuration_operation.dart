import 'package:pulumi/pulumi.dart' as pulumi;
import 'landing_zone_configuration_operation_args.dart';
import 'landing_zone_configuration_resource_properties_response.dart';
import 'system_data_response.dart';

/// Concrete proxy resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2025-02-27-preview. In version 2.x of the Azure Native provider, it used API version 2025-02-27-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### LandingZoneConfigurationOperations_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var landingZoneConfigurationOperation = new AzureNative.Sovereign.LandingZoneConfigurationOperation("landingZoneConfigurationOperation", new()
///     {
///         LandingZoneAccountName = "lza-RemApiExample",
///         LandingZoneConfigurationName = "lzc-RemApiExample",
///         Properties = new AzureNative.Sovereign.Inputs.LandingZoneConfigurationResourcePropertiesArgs
///         {
///             AzureBastionCreationOption = AzureNative.Sovereign.ResourceCreationOptions.UseExisting,
///             CustomNamingConvention = new[]
///             {
///                 new AzureNative.Sovereign.Inputs.CustomNamingConventionArgs
///                 {
///                     Formula = "{ResourceTypeAbbreviation}-{DeploymentPrefix}-Contoso-{DeploymentSuffix}",
///                     ResourceType = AzureNative.Sovereign.ResourceType.DdosProtectionPlans,
///                 },
///             },
///             DdosProtectionCreationOption = AzureNative.Sovereign.ResourceCreationOptions.UseExisting,
///             DecommissionedMgMetadata = new AzureNative.Sovereign.Inputs.DecommissionedManagementGroupPropertiesArgs
///             {
///                 Create = true,
///                 PolicyInitiativesAssignmentProperties = new[]
///                 {
///                     new AzureNative.Sovereign.Inputs.PolicyInitiativeAssignmentPropertiesArgs
///                     {
///                         AssignmentParameters = new Dictionary<string, object?>
///                         {
///                             ["listOfAllowedLocations"] = new[]
///                             {
///                                 "swedencentral",
///                             },
///                         },
///                         PolicyInitiativeId = "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///                     },
///                 },
///             },
///             ExistingAzureBastionId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.Network/bastionHosts/bas-RemApiExample",
///             ExistingDdosProtectionId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.Network/ddosProtectionPlans/ddos-RemApiExample",
///             ExistingLogAnalyticsWorkspaceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.OperationalInsights/workspaces/log-RemApiExample",
///             FirewallCreationOption = AzureNative.Sovereign.FirewallCreationOptions.Premium,
///             FirewallSubnetCidrBlock = "10.20.254.0/24",
///             GatewaySubnetCidrBlock = "10.20.252.0/24",
///             HubNetworkCidrBlock = "10.20.0.0/16",
///             LandingZonesMgChildren = new[]
///             {
///                 new AzureNative.Sovereign.Inputs.LandingZoneManagementGroupPropertiesArgs
///                 {
///                     Name = "Corp",
///                     PolicyInitiativesAssignmentProperties = new() { },
///                 },
///                 new AzureNative.Sovereign.Inputs.LandingZoneManagementGroupPropertiesArgs
///                 {
///                     Name = "Online",
///                     PolicyInitiativesAssignmentProperties = new() { },
///                 },
///                 new AzureNative.Sovereign.Inputs.LandingZoneManagementGroupPropertiesArgs
///                 {
///                     Name = "Confidential Corp",
///                     PolicyInitiativesAssignmentProperties = new[]
///                     {
///                         new AzureNative.Sovereign.Inputs.PolicyInitiativeAssignmentPropertiesArgs
///                         {
///                             AssignmentParameters = null,
///                             PolicyInitiativeId = "/providers/Microsoft.Authorization/policySetDefinitions/03de05a4-c324-4ccd-882f-a814ea8ab9ea",
///                         },
///                     },
///                 },
///                 new AzureNative.Sovereign.Inputs.LandingZoneManagementGroupPropertiesArgs
///                 {
///                     Name = "Confidential Online",
///                     PolicyInitiativesAssignmentProperties = new[]
///                     {
///                         new AzureNative.Sovereign.Inputs.PolicyInitiativeAssignmentPropertiesArgs
///                         {
///                             AssignmentParameters = null,
///                             PolicyInitiativeId = "/providers/Microsoft.Authorization/policySetDefinitions/03de05a4-c324-4ccd-882f-a814ea8ab9ea",
///                         },
///                     },
///                 },
///             },
///             LandingZonesMgMetadata = new AzureNative.Sovereign.Inputs.ManagementGroupPropertiesArgs
///             {
///                 PolicyInitiativesAssignmentProperties = new[]
///                 {
///                     new AzureNative.Sovereign.Inputs.PolicyInitiativeAssignmentPropertiesArgs
///                     {
///                         AssignmentParameters = new Dictionary<string, object?>
///                         {
///                             ["listOfAllowedLocations"] = new[]
///                             {
///                                 "swedencentral",
///                             },
///                         },
///                         PolicyInitiativeId = "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///                     },
///                 },
///             },
///             LogAnalyticsWorkspaceCreationOption = AzureNative.Sovereign.ResourceCreationOptions.UseExisting,
///             LogRetentionInDays = 540,
///             ManagedIdentity = new AzureNative.Sovereign.Inputs.ManagedIdentityPropertiesArgs
///             {
///                 Type = AzureNative.Sovereign.ManagedIdentityResourceType.UserAssigned,
///                 UserAssignedIdentityResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mi-RemApiExample",
///             },
///             NamingConventionFormula = "{ResourceTypeAbbreviation}-{DeploymentPrefix}-Contoso-{DeploymentSuffix}-{Environment}",
///             PlatformConnectivityMgMetadata = new AzureNative.Sovereign.Inputs.ManagementGroupPropertiesArgs
///             {
///                 PolicyInitiativesAssignmentProperties = new[]
///                 {
///                     new AzureNative.Sovereign.Inputs.PolicyInitiativeAssignmentPropertiesArgs
///                     {
///                         AssignmentParameters = new Dictionary<string, object?>
///                         {
///                             ["listOfAllowedLocations"] = new[]
///                             {
///                                 "swedencentral",
///                             },
///                         },
///                         PolicyInitiativeId = "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///                     },
///                 },
///             },
///             PlatformIdentityMgMetadata = new AzureNative.Sovereign.Inputs.ManagementGroupPropertiesArgs
///             {
///                 PolicyInitiativesAssignmentProperties = new[]
///                 {
///                     new AzureNative.Sovereign.Inputs.PolicyInitiativeAssignmentPropertiesArgs
///                     {
///                         AssignmentParameters = new Dictionary<string, object?>
///                         {
///                             ["listOfAllowedLocations"] = new[]
///                             {
///                                 "swedencentral",
///                             },
///                         },
///                         PolicyInitiativeId = "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///                     },
///                 },
///             },
///             PlatformManagementMgMetadata = new AzureNative.Sovereign.Inputs.ManagementGroupPropertiesArgs
///             {
///                 PolicyInitiativesAssignmentProperties = new[]
///                 {
///                     new AzureNative.Sovereign.Inputs.PolicyInitiativeAssignmentPropertiesArgs
///                     {
///                         AssignmentParameters = new Dictionary<string, object?>
///                         {
///                             ["listOfAllowedLocations"] = new[]
///                             {
///                                 "swedencentral",
///                             },
///                         },
///                         PolicyInitiativeId = "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///                     },
///                 },
///             },
///             PlatformMgChildren = new[]
///             {
///                 new AzureNative.Sovereign.Inputs.PlatformManagementGroupPropertiesArgs
///                 {
///                     Name = "Telemetry",
///                     PolicyInitiativesAssignmentProperties = new[]
///                     {
///                         new AzureNative.Sovereign.Inputs.PolicyInitiativeAssignmentPropertiesArgs
///                         {
///                             AssignmentParameters = new Dictionary<string, object?>
///                             {
///                                 ["listOfAllowedLocations"] = new[]
///                                 {
///                                     "swedencentral",
///                                 },
///                             },
///                             PolicyInitiativeId = "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///                         },
///                     },
///                 },
///                 new AzureNative.Sovereign.Inputs.PlatformManagementGroupPropertiesArgs
///                 {
///                     Name = "Security",
///                     PolicyInitiativesAssignmentProperties = new[]
///                     {
///                         new AzureNative.Sovereign.Inputs.PolicyInitiativeAssignmentPropertiesArgs
///                         {
///                             AssignmentParameters = new Dictionary<string, object?>
///                             {
///                                 ["listOfAllowedLocations"] = new[]
///                                 {
///                                     "swedencentral",
///                                 },
///                             },
///                             PolicyInitiativeId = "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///                         },
///                     },
///                 },
///             },
///             PlatformMgMetadata = new AzureNative.Sovereign.Inputs.ManagementGroupPropertiesArgs
///             {
///                 PolicyInitiativesAssignmentProperties = new[]
///                 {
///                     new AzureNative.Sovereign.Inputs.PolicyInitiativeAssignmentPropertiesArgs
///                     {
///                         AssignmentParameters = new Dictionary<string, object?>
///                         {
///                             ["listOfAllowedLocations"] = new[]
///                             {
///                                 "swedencentral",
///                             },
///                         },
///                         PolicyInitiativeId = "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///                     },
///                 },
///             },
///             SandboxMgMetadata = new AzureNative.Sovereign.Inputs.SandboxManagementGroupPropertiesArgs
///             {
///                 Create = true,
///                 PolicyInitiativesAssignmentProperties = new[]
///                 {
///                     new AzureNative.Sovereign.Inputs.PolicyInitiativeAssignmentPropertiesArgs
///                     {
///                         AssignmentParameters = new Dictionary<string, object?>
///                         {
///                             ["listOfAllowedLocations"] = new[]
///                             {
///                                 "swedencentral",
///                             },
///                         },
///                         PolicyInitiativeId = "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///                     },
///                 },
///             },
///             Tags = new[]
///             {
///                 new AzureNative.Sovereign.Inputs.TagsArgs
///                 {
///                     Name = "tag1",
///                     Value = "Lorem",
///                 },
///                 new AzureNative.Sovereign.Inputs.TagsArgs
///                 {
///                     Name = "tag2",
///                     Value = "Ipsum",
///                 },
///             },
///             TopLevelMgMetadata = new AzureNative.Sovereign.Inputs.ManagementGroupPropertiesArgs
///             {
///                 PolicyInitiativesAssignmentProperties = new[]
///                 {
///                     new AzureNative.Sovereign.Inputs.PolicyInitiativeAssignmentPropertiesArgs
///                     {
///                         AssignmentParameters = new Dictionary<string, object?>
///                         {
///                             ["listOfAllowedLocations"] = new[]
///                             {
///                                 "swedencentral",
///                                 "eastus2",
///                                 "uksouth",
///                             },
///                         },
///                         PolicyInitiativeId = "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "rg-RemApiExample",
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
/// 	sovereign "github.com/pulumi/pulumi-azure-native-sdk/sovereign/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sovereign.NewLandingZoneConfigurationOperation(ctx, "landingZoneConfigurationOperation", &sovereign.LandingZoneConfigurationOperationArgs{
/// 			LandingZoneAccountName:       pulumi.String("lza-RemApiExample"),
/// 			LandingZoneConfigurationName: pulumi.String("lzc-RemApiExample"),
/// 			Properties: &sovereign.LandingZoneConfigurationResourcePropertiesArgs{
/// 				AzureBastionCreationOption: pulumi.String(sovereign.ResourceCreationOptionsUseExisting),
/// 				CustomNamingConvention: sovereign.CustomNamingConventionArray{
/// 					&sovereign.CustomNamingConventionArgs{
/// 						Formula:      pulumi.String("{ResourceTypeAbbreviation}-{DeploymentPrefix}-Contoso-{DeploymentSuffix}"),
/// 						ResourceType: pulumi.String(sovereign.ResourceTypeDdosProtectionPlans),
/// 					},
/// 				},
/// 				DdosProtectionCreationOption: pulumi.String(sovereign.ResourceCreationOptionsUseExisting),
/// 				DecommissionedMgMetadata: &sovereign.DecommissionedManagementGroupPropertiesArgs{
/// 					Create: pulumi.Bool(true),
/// 					PolicyInitiativesAssignmentProperties: sovereign.PolicyInitiativeAssignmentPropertiesArray{
/// 						&sovereign.PolicyInitiativeAssignmentPropertiesArgs{
/// 							AssignmentParameters: pulumi.Any(map[string]interface{}{
/// 								"listOfAllowedLocations": []string{
/// 									"swedencentral",
/// 								},
/// 							}),
/// 							PolicyInitiativeId: pulumi.String("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523"),
/// 						},
/// 					},
/// 				},
/// 				ExistingAzureBastionId:          pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.Network/bastionHosts/bas-RemApiExample"),
/// 				ExistingDdosProtectionId:        pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.Network/ddosProtectionPlans/ddos-RemApiExample"),
/// 				ExistingLogAnalyticsWorkspaceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.OperationalInsights/workspaces/log-RemApiExample"),
/// 				FirewallCreationOption:          pulumi.String(sovereign.FirewallCreationOptionsPremium),
/// 				FirewallSubnetCidrBlock:         pulumi.String("10.20.254.0/24"),
/// 				GatewaySubnetCidrBlock:          pulumi.String("10.20.252.0/24"),
/// 				HubNetworkCidrBlock:             pulumi.String("10.20.0.0/16"),
/// 				LandingZonesMgChildren: sovereign.LandingZoneManagementGroupPropertiesArray{
/// 					&sovereign.LandingZoneManagementGroupPropertiesArgs{
/// 						Name:                                  pulumi.String("Corp"),
/// 						PolicyInitiativesAssignmentProperties: sovereign.PolicyInitiativeAssignmentPropertiesArray{},
/// 					},
/// 					&sovereign.LandingZoneManagementGroupPropertiesArgs{
/// 						Name:                                  pulumi.String("Online"),
/// 						PolicyInitiativesAssignmentProperties: sovereign.PolicyInitiativeAssignmentPropertiesArray{},
/// 					},
/// 					&sovereign.LandingZoneManagementGroupPropertiesArgs{
/// 						Name: pulumi.String("Confidential Corp"),
/// 						PolicyInitiativesAssignmentProperties: sovereign.PolicyInitiativeAssignmentPropertiesArray{
/// 							&sovereign.PolicyInitiativeAssignmentPropertiesArgs{
/// 								AssignmentParameters: pulumi.Any(map[string]interface{}{}),
/// 								PolicyInitiativeId:   pulumi.String("/providers/Microsoft.Authorization/policySetDefinitions/03de05a4-c324-4ccd-882f-a814ea8ab9ea"),
/// 							},
/// 						},
/// 					},
/// 					&sovereign.LandingZoneManagementGroupPropertiesArgs{
/// 						Name: pulumi.String("Confidential Online"),
/// 						PolicyInitiativesAssignmentProperties: sovereign.PolicyInitiativeAssignmentPropertiesArray{
/// 							&sovereign.PolicyInitiativeAssignmentPropertiesArgs{
/// 								AssignmentParameters: pulumi.Any(map[string]interface{}{}),
/// 								PolicyInitiativeId:   pulumi.String("/providers/Microsoft.Authorization/policySetDefinitions/03de05a4-c324-4ccd-882f-a814ea8ab9ea"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				LandingZonesMgMetadata: &sovereign.ManagementGroupPropertiesArgs{
/// 					PolicyInitiativesAssignmentProperties: sovereign.PolicyInitiativeAssignmentPropertiesArray{
/// 						&sovereign.PolicyInitiativeAssignmentPropertiesArgs{
/// 							AssignmentParameters: pulumi.Any(map[string]interface{}{
/// 								"listOfAllowedLocations": []string{
/// 									"swedencentral",
/// 								},
/// 							}),
/// 							PolicyInitiativeId: pulumi.String("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523"),
/// 						},
/// 					},
/// 				},
/// 				LogAnalyticsWorkspaceCreationOption: pulumi.String(sovereign.ResourceCreationOptionsUseExisting),
/// 				LogRetentionInDays:                  pulumi.Float64(540),
/// 				ManagedIdentity: &sovereign.ManagedIdentityPropertiesArgs{
/// 					Type:                           pulumi.String(sovereign.ManagedIdentityResourceTypeUserAssigned),
/// 					UserAssignedIdentityResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mi-RemApiExample"),
/// 				},
/// 				NamingConventionFormula: pulumi.String("{ResourceTypeAbbreviation}-{DeploymentPrefix}-Contoso-{DeploymentSuffix}-{Environment}"),
/// 				PlatformConnectivityMgMetadata: &sovereign.ManagementGroupPropertiesArgs{
/// 					PolicyInitiativesAssignmentProperties: sovereign.PolicyInitiativeAssignmentPropertiesArray{
/// 						&sovereign.PolicyInitiativeAssignmentPropertiesArgs{
/// 							AssignmentParameters: pulumi.Any(map[string]interface{}{
/// 								"listOfAllowedLocations": []string{
/// 									"swedencentral",
/// 								},
/// 							}),
/// 							PolicyInitiativeId: pulumi.String("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523"),
/// 						},
/// 					},
/// 				},
/// 				PlatformIdentityMgMetadata: &sovereign.ManagementGroupPropertiesArgs{
/// 					PolicyInitiativesAssignmentProperties: sovereign.PolicyInitiativeAssignmentPropertiesArray{
/// 						&sovereign.PolicyInitiativeAssignmentPropertiesArgs{
/// 							AssignmentParameters: pulumi.Any(map[string]interface{}{
/// 								"listOfAllowedLocations": []string{
/// 									"swedencentral",
/// 								},
/// 							}),
/// 							PolicyInitiativeId: pulumi.String("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523"),
/// 						},
/// 					},
/// 				},
/// 				PlatformManagementMgMetadata: &sovereign.ManagementGroupPropertiesArgs{
/// 					PolicyInitiativesAssignmentProperties: sovereign.PolicyInitiativeAssignmentPropertiesArray{
/// 						&sovereign.PolicyInitiativeAssignmentPropertiesArgs{
/// 							AssignmentParameters: pulumi.Any(map[string]interface{}{
/// 								"listOfAllowedLocations": []string{
/// 									"swedencentral",
/// 								},
/// 							}),
/// 							PolicyInitiativeId: pulumi.String("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523"),
/// 						},
/// 					},
/// 				},
/// 				PlatformMgChildren: sovereign.PlatformManagementGroupPropertiesArray{
/// 					&sovereign.PlatformManagementGroupPropertiesArgs{
/// 						Name: pulumi.String("Telemetry"),
/// 						PolicyInitiativesAssignmentProperties: sovereign.PolicyInitiativeAssignmentPropertiesArray{
/// 							&sovereign.PolicyInitiativeAssignmentPropertiesArgs{
/// 								AssignmentParameters: pulumi.Any(map[string]interface{}{
/// 									"listOfAllowedLocations": []string{
/// 										"swedencentral",
/// 									},
/// 								}),
/// 								PolicyInitiativeId: pulumi.String("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523"),
/// 							},
/// 						},
/// 					},
/// 					&sovereign.PlatformManagementGroupPropertiesArgs{
/// 						Name: pulumi.String("Security"),
/// 						PolicyInitiativesAssignmentProperties: sovereign.PolicyInitiativeAssignmentPropertiesArray{
/// 							&sovereign.PolicyInitiativeAssignmentPropertiesArgs{
/// 								AssignmentParameters: pulumi.Any(map[string]interface{}{
/// 									"listOfAllowedLocations": []string{
/// 										"swedencentral",
/// 									},
/// 								}),
/// 								PolicyInitiativeId: pulumi.String("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				PlatformMgMetadata: &sovereign.ManagementGroupPropertiesArgs{
/// 					PolicyInitiativesAssignmentProperties: sovereign.PolicyInitiativeAssignmentPropertiesArray{
/// 						&sovereign.PolicyInitiativeAssignmentPropertiesArgs{
/// 							AssignmentParameters: pulumi.Any(map[string]interface{}{
/// 								"listOfAllowedLocations": []string{
/// 									"swedencentral",
/// 								},
/// 							}),
/// 							PolicyInitiativeId: pulumi.String("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523"),
/// 						},
/// 					},
/// 				},
/// 				SandboxMgMetadata: &sovereign.SandboxManagementGroupPropertiesArgs{
/// 					Create: pulumi.Bool(true),
/// 					PolicyInitiativesAssignmentProperties: sovereign.PolicyInitiativeAssignmentPropertiesArray{
/// 						&sovereign.PolicyInitiativeAssignmentPropertiesArgs{
/// 							AssignmentParameters: pulumi.Any(map[string]interface{}{
/// 								"listOfAllowedLocations": []string{
/// 									"swedencentral",
/// 								},
/// 							}),
/// 							PolicyInitiativeId: pulumi.String("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523"),
/// 						},
/// 					},
/// 				},
/// 				Tags: sovereign.TagsArray{
/// 					&sovereign.TagsArgs{
/// 						Name:  pulumi.String("tag1"),
/// 						Value: pulumi.String("Lorem"),
/// 					},
/// 					&sovereign.TagsArgs{
/// 						Name:  pulumi.String("tag2"),
/// 						Value: pulumi.String("Ipsum"),
/// 					},
/// 				},
/// 				TopLevelMgMetadata: &sovereign.ManagementGroupPropertiesArgs{
/// 					PolicyInitiativesAssignmentProperties: sovereign.PolicyInitiativeAssignmentPropertiesArray{
/// 						&sovereign.PolicyInitiativeAssignmentPropertiesArgs{
/// 							AssignmentParameters: pulumi.Any(map[string]interface{}{
/// 								"listOfAllowedLocations": []string{
/// 									"swedencentral",
/// 									"eastus2",
/// 									"uksouth",
/// 								},
/// 							}),
/// 							PolicyInitiativeId: pulumi.String("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg-RemApiExample"),
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
/// import com.pulumi.azurenative.sovereign.LandingZoneConfigurationOperation;
/// import com.pulumi.azurenative.sovereign.LandingZoneConfigurationOperationArgs;
/// import com.pulumi.azurenative.sovereign.inputs.LandingZoneConfigurationResourcePropertiesArgs;
/// import com.pulumi.azurenative.sovereign.inputs.DecommissionedManagementGroupPropertiesArgs;
/// import com.pulumi.azurenative.sovereign.inputs.ManagementGroupPropertiesArgs;
/// import com.pulumi.azurenative.sovereign.inputs.ManagedIdentityPropertiesArgs;
/// import com.pulumi.azurenative.sovereign.inputs.SandboxManagementGroupPropertiesArgs;
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
///         var landingZoneConfigurationOperation = new LandingZoneConfigurationOperation("landingZoneConfigurationOperation", LandingZoneConfigurationOperationArgs.builder()
///             .landingZoneAccountName("lza-RemApiExample")
///             .landingZoneConfigurationName("lzc-RemApiExample")
///             .properties(LandingZoneConfigurationResourcePropertiesArgs.builder()
///                 .azureBastionCreationOption("UseExisting")
///                 .customNamingConvention(CustomNamingConventionArgs.builder()
///                     .formula("{ResourceTypeAbbreviation}-{DeploymentPrefix}-Contoso-{DeploymentSuffix}")
///                     .resourceType("ddosProtectionPlans")
///                     .build())
///                 .ddosProtectionCreationOption("UseExisting")
///                 .decommissionedMgMetadata(DecommissionedManagementGroupPropertiesArgs.builder()
///                     .create(true)
///                     .policyInitiativesAssignmentProperties(PolicyInitiativeAssignmentPropertiesArgs.builder()
///                         .assignmentParameters(Map.of("listOfAllowedLocations", "swedencentral"))
///                         .policyInitiativeId("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523")
///                         .build())
///                     .build())
///                 .existingAzureBastionId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.Network/bastionHosts/bas-RemApiExample")
///                 .existingDdosProtectionId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.Network/ddosProtectionPlans/ddos-RemApiExample")
///                 .existingLogAnalyticsWorkspaceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.OperationalInsights/workspaces/log-RemApiExample")
///                 .firewallCreationOption("Premium")
///                 .firewallSubnetCidrBlock("10.20.254.0/24")
///                 .gatewaySubnetCidrBlock("10.20.252.0/24")
///                 .hubNetworkCidrBlock("10.20.0.0/16")
///                 .landingZonesMgChildren(
///                     LandingZoneManagementGroupPropertiesArgs.builder()
///                         .name("Corp")
///                         .policyInitiativesAssignmentProperties()
///                         .build(),
///                     LandingZoneManagementGroupPropertiesArgs.builder()
///                         .name("Online")
///                         .policyInitiativesAssignmentProperties()
///                         .build(),
///                     LandingZoneManagementGroupPropertiesArgs.builder()
///                         .name("Confidential Corp")
///                         .policyInitiativesAssignmentProperties(PolicyInitiativeAssignmentPropertiesArgs.builder()
///                             .assignmentParameters(Map.ofEntries(
///                             ))
///                             .policyInitiativeId("/providers/Microsoft.Authorization/policySetDefinitions/03de05a4-c324-4ccd-882f-a814ea8ab9ea")
///                             .build())
///                         .build(),
///                     LandingZoneManagementGroupPropertiesArgs.builder()
///                         .name("Confidential Online")
///                         .policyInitiativesAssignmentProperties(PolicyInitiativeAssignmentPropertiesArgs.builder()
///                             .assignmentParameters(Map.ofEntries(
///                             ))
///                             .policyInitiativeId("/providers/Microsoft.Authorization/policySetDefinitions/03de05a4-c324-4ccd-882f-a814ea8ab9ea")
///                             .build())
///                         .build())
///                 .landingZonesMgMetadata(ManagementGroupPropertiesArgs.builder()
///                     .policyInitiativesAssignmentProperties(PolicyInitiativeAssignmentPropertiesArgs.builder()
///                         .assignmentParameters(Map.of("listOfAllowedLocations", "swedencentral"))
///                         .policyInitiativeId("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523")
///                         .build())
///                     .build())
///                 .logAnalyticsWorkspaceCreationOption("UseExisting")
///                 .logRetentionInDays(540.0)
///                 .managedIdentity(ManagedIdentityPropertiesArgs.builder()
///                     .type("UserAssigned")
///                     .userAssignedIdentityResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mi-RemApiExample")
///                     .build())
///                 .namingConventionFormula("{ResourceTypeAbbreviation}-{DeploymentPrefix}-Contoso-{DeploymentSuffix}-{Environment}")
///                 .platformConnectivityMgMetadata(ManagementGroupPropertiesArgs.builder()
///                     .policyInitiativesAssignmentProperties(PolicyInitiativeAssignmentPropertiesArgs.builder()
///                         .assignmentParameters(Map.of("listOfAllowedLocations", "swedencentral"))
///                         .policyInitiativeId("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523")
///                         .build())
///                     .build())
///                 .platformIdentityMgMetadata(ManagementGroupPropertiesArgs.builder()
///                     .policyInitiativesAssignmentProperties(PolicyInitiativeAssignmentPropertiesArgs.builder()
///                         .assignmentParameters(Map.of("listOfAllowedLocations", "swedencentral"))
///                         .policyInitiativeId("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523")
///                         .build())
///                     .build())
///                 .platformManagementMgMetadata(ManagementGroupPropertiesArgs.builder()
///                     .policyInitiativesAssignmentProperties(PolicyInitiativeAssignmentPropertiesArgs.builder()
///                         .assignmentParameters(Map.of("listOfAllowedLocations", "swedencentral"))
///                         .policyInitiativeId("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523")
///                         .build())
///                     .build())
///                 .platformMgChildren(
///                     PlatformManagementGroupPropertiesArgs.builder()
///                         .name("Telemetry")
///                         .policyInitiativesAssignmentProperties(PolicyInitiativeAssignmentPropertiesArgs.builder()
///                             .assignmentParameters(Map.of("listOfAllowedLocations", "swedencentral"))
///                             .policyInitiativeId("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523")
///                             .build())
///                         .build(),
///                     PlatformManagementGroupPropertiesArgs.builder()
///                         .name("Security")
///                         .policyInitiativesAssignmentProperties(PolicyInitiativeAssignmentPropertiesArgs.builder()
///                             .assignmentParameters(Map.of("listOfAllowedLocations", "swedencentral"))
///                             .policyInitiativeId("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523")
///                             .build())
///                         .build())
///                 .platformMgMetadata(ManagementGroupPropertiesArgs.builder()
///                     .policyInitiativesAssignmentProperties(PolicyInitiativeAssignmentPropertiesArgs.builder()
///                         .assignmentParameters(Map.of("listOfAllowedLocations", "swedencentral"))
///                         .policyInitiativeId("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523")
///                         .build())
///                     .build())
///                 .sandboxMgMetadata(SandboxManagementGroupPropertiesArgs.builder()
///                     .create(true)
///                     .policyInitiativesAssignmentProperties(PolicyInitiativeAssignmentPropertiesArgs.builder()
///                         .assignmentParameters(Map.of("listOfAllowedLocations", "swedencentral"))
///                         .policyInitiativeId("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523")
///                         .build())
///                     .build())
///                 .tags(
///                     TagsArgs.builder()
///                         .name("tag1")
///                         .value("Lorem")
///                         .build(),
///                     TagsArgs.builder()
///                         .name("tag2")
///                         .value("Ipsum")
///                         .build())
///                 .topLevelMgMetadata(ManagementGroupPropertiesArgs.builder()
///                     .policyInitiativesAssignmentProperties(PolicyInitiativeAssignmentPropertiesArgs.builder()
///                         .assignmentParameters(Map.of("listOfAllowedLocations",
///                             "swedencentral",
///                             "eastus2",
///                             "uksouth"))
///                         .policyInitiativeId("/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("rg-RemApiExample")
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
/// const landingZoneConfigurationOperation = new azure_native.sovereign.LandingZoneConfigurationOperation("landingZoneConfigurationOperation", {
///     landingZoneAccountName: "lza-RemApiExample",
///     landingZoneConfigurationName: "lzc-RemApiExample",
///     properties: {
///         azureBastionCreationOption: azure_native.sovereign.ResourceCreationOptions.UseExisting,
///         customNamingConvention: [{
///             formula: "{ResourceTypeAbbreviation}-{DeploymentPrefix}-Contoso-{DeploymentSuffix}",
///             resourceType: azure_native.sovereign.ResourceType.DdosProtectionPlans,
///         }],
///         ddosProtectionCreationOption: azure_native.sovereign.ResourceCreationOptions.UseExisting,
///         decommissionedMgMetadata: {
///             create: true,
///             policyInitiativesAssignmentProperties: [{
///                 assignmentParameters: {
///                     listOfAllowedLocations: ["swedencentral"],
///                 },
///                 policyInitiativeId: "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///             }],
///         },
///         existingAzureBastionId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.Network/bastionHosts/bas-RemApiExample",
///         existingDdosProtectionId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.Network/ddosProtectionPlans/ddos-RemApiExample",
///         existingLogAnalyticsWorkspaceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.OperationalInsights/workspaces/log-RemApiExample",
///         firewallCreationOption: azure_native.sovereign.FirewallCreationOptions.Premium,
///         firewallSubnetCidrBlock: "10.20.254.0/24",
///         gatewaySubnetCidrBlock: "10.20.252.0/24",
///         hubNetworkCidrBlock: "10.20.0.0/16",
///         landingZonesMgChildren: [
///             {
///                 name: "Corp",
///                 policyInitiativesAssignmentProperties: [],
///             },
///             {
///                 name: "Online",
///                 policyInitiativesAssignmentProperties: [],
///             },
///             {
///                 name: "Confidential Corp",
///                 policyInitiativesAssignmentProperties: [{
///                     assignmentParameters: {},
///                     policyInitiativeId: "/providers/Microsoft.Authorization/policySetDefinitions/03de05a4-c324-4ccd-882f-a814ea8ab9ea",
///                 }],
///             },
///             {
///                 name: "Confidential Online",
///                 policyInitiativesAssignmentProperties: [{
///                     assignmentParameters: {},
///                     policyInitiativeId: "/providers/Microsoft.Authorization/policySetDefinitions/03de05a4-c324-4ccd-882f-a814ea8ab9ea",
///                 }],
///             },
///         ],
///         landingZonesMgMetadata: {
///             policyInitiativesAssignmentProperties: [{
///                 assignmentParameters: {
///                     listOfAllowedLocations: ["swedencentral"],
///                 },
///                 policyInitiativeId: "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///             }],
///         },
///         logAnalyticsWorkspaceCreationOption: azure_native.sovereign.ResourceCreationOptions.UseExisting,
///         logRetentionInDays: 540,
///         managedIdentity: {
///             type: azure_native.sovereign.ManagedIdentityResourceType.UserAssigned,
///             userAssignedIdentityResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mi-RemApiExample",
///         },
///         namingConventionFormula: "{ResourceTypeAbbreviation}-{DeploymentPrefix}-Contoso-{DeploymentSuffix}-{Environment}",
///         platformConnectivityMgMetadata: {
///             policyInitiativesAssignmentProperties: [{
///                 assignmentParameters: {
///                     listOfAllowedLocations: ["swedencentral"],
///                 },
///                 policyInitiativeId: "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///             }],
///         },
///         platformIdentityMgMetadata: {
///             policyInitiativesAssignmentProperties: [{
///                 assignmentParameters: {
///                     listOfAllowedLocations: ["swedencentral"],
///                 },
///                 policyInitiativeId: "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///             }],
///         },
///         platformManagementMgMetadata: {
///             policyInitiativesAssignmentProperties: [{
///                 assignmentParameters: {
///                     listOfAllowedLocations: ["swedencentral"],
///                 },
///                 policyInitiativeId: "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///             }],
///         },
///         platformMgChildren: [
///             {
///                 name: "Telemetry",
///                 policyInitiativesAssignmentProperties: [{
///                     assignmentParameters: {
///                         listOfAllowedLocations: ["swedencentral"],
///                     },
///                     policyInitiativeId: "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///                 }],
///             },
///             {
///                 name: "Security",
///                 policyInitiativesAssignmentProperties: [{
///                     assignmentParameters: {
///                         listOfAllowedLocations: ["swedencentral"],
///                     },
///                     policyInitiativeId: "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///                 }],
///             },
///         ],
///         platformMgMetadata: {
///             policyInitiativesAssignmentProperties: [{
///                 assignmentParameters: {
///                     listOfAllowedLocations: ["swedencentral"],
///                 },
///                 policyInitiativeId: "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///             }],
///         },
///         sandboxMgMetadata: {
///             create: true,
///             policyInitiativesAssignmentProperties: [{
///                 assignmentParameters: {
///                     listOfAllowedLocations: ["swedencentral"],
///                 },
///                 policyInitiativeId: "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///             }],
///         },
///         tags: [
///             {
///                 name: "tag1",
///                 value: "Lorem",
///             },
///             {
///                 name: "tag2",
///                 value: "Ipsum",
///             },
///         ],
///         topLevelMgMetadata: {
///             policyInitiativesAssignmentProperties: [{
///                 assignmentParameters: {
///                     listOfAllowedLocations: [
///                         "swedencentral",
///                         "eastus2",
///                         "uksouth",
///                     ],
///                 },
///                 policyInitiativeId: "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///             }],
///         },
///     },
///     resourceGroupName: "rg-RemApiExample",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// landing_zone_configuration_operation = azure_native.sovereign.LandingZoneConfigurationOperation("landingZoneConfigurationOperation",
///     landing_zone_account_name="lza-RemApiExample",
///     landing_zone_configuration_name="lzc-RemApiExample",
///     properties={
///         "azure_bastion_creation_option": azure_native.sovereign.ResourceCreationOptions.USE_EXISTING,
///         "custom_naming_convention": [{
///             "formula": "{ResourceTypeAbbreviation}-{DeploymentPrefix}-Contoso-{DeploymentSuffix}",
///             "resource_type": azure_native.sovereign.ResourceType.DDOS_PROTECTION_PLANS,
///         }],
///         "ddos_protection_creation_option": azure_native.sovereign.ResourceCreationOptions.USE_EXISTING,
///         "decommissioned_mg_metadata": {
///             "create": True,
///             "policy_initiatives_assignment_properties": [{
///                 "assignment_parameters": {
///                     "listOfAllowedLocations": ["swedencentral"],
///                 },
///                 "policy_initiative_id": "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///             }],
///         },
///         "existing_azure_bastion_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.Network/bastionHosts/bas-RemApiExample",
///         "existing_ddos_protection_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.Network/ddosProtectionPlans/ddos-RemApiExample",
///         "existing_log_analytics_workspace_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.OperationalInsights/workspaces/log-RemApiExample",
///         "firewall_creation_option": azure_native.sovereign.FirewallCreationOptions.PREMIUM,
///         "firewall_subnet_cidr_block": "10.20.254.0/24",
///         "gateway_subnet_cidr_block": "10.20.252.0/24",
///         "hub_network_cidr_block": "10.20.0.0/16",
///         "landing_zones_mg_children": [
///             {
///                 "name": "Corp",
///                 "policy_initiatives_assignment_properties": [],
///             },
///             {
///                 "name": "Online",
///                 "policy_initiatives_assignment_properties": [],
///             },
///             {
///                 "name": "Confidential Corp",
///                 "policy_initiatives_assignment_properties": [{
///                     "assignment_parameters": {},
///                     "policy_initiative_id": "/providers/Microsoft.Authorization/policySetDefinitions/03de05a4-c324-4ccd-882f-a814ea8ab9ea",
///                 }],
///             },
///             {
///                 "name": "Confidential Online",
///                 "policy_initiatives_assignment_properties": [{
///                     "assignment_parameters": {},
///                     "policy_initiative_id": "/providers/Microsoft.Authorization/policySetDefinitions/03de05a4-c324-4ccd-882f-a814ea8ab9ea",
///                 }],
///             },
///         ],
///         "landing_zones_mg_metadata": {
///             "policy_initiatives_assignment_properties": [{
///                 "assignment_parameters": {
///                     "listOfAllowedLocations": ["swedencentral"],
///                 },
///                 "policy_initiative_id": "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///             }],
///         },
///         "log_analytics_workspace_creation_option": azure_native.sovereign.ResourceCreationOptions.USE_EXISTING,
///         "log_retention_in_days": 540,
///         "managed_identity": {
///             "type": azure_native.sovereign.ManagedIdentityResourceType.USER_ASSIGNED,
///             "user_assigned_identity_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mi-RemApiExample",
///         },
///         "naming_convention_formula": "{ResourceTypeAbbreviation}-{DeploymentPrefix}-Contoso-{DeploymentSuffix}-{Environment}",
///         "platform_connectivity_mg_metadata": {
///             "policy_initiatives_assignment_properties": [{
///                 "assignment_parameters": {
///                     "listOfAllowedLocations": ["swedencentral"],
///                 },
///                 "policy_initiative_id": "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///             }],
///         },
///         "platform_identity_mg_metadata": {
///             "policy_initiatives_assignment_properties": [{
///                 "assignment_parameters": {
///                     "listOfAllowedLocations": ["swedencentral"],
///                 },
///                 "policy_initiative_id": "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///             }],
///         },
///         "platform_management_mg_metadata": {
///             "policy_initiatives_assignment_properties": [{
///                 "assignment_parameters": {
///                     "listOfAllowedLocations": ["swedencentral"],
///                 },
///                 "policy_initiative_id": "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///             }],
///         },
///         "platform_mg_children": [
///             {
///                 "name": "Telemetry",
///                 "policy_initiatives_assignment_properties": [{
///                     "assignment_parameters": {
///                         "listOfAllowedLocations": ["swedencentral"],
///                     },
///                     "policy_initiative_id": "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///                 }],
///             },
///             {
///                 "name": "Security",
///                 "policy_initiatives_assignment_properties": [{
///                     "assignment_parameters": {
///                         "listOfAllowedLocations": ["swedencentral"],
///                     },
///                     "policy_initiative_id": "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///                 }],
///             },
///         ],
///         "platform_mg_metadata": {
///             "policy_initiatives_assignment_properties": [{
///                 "assignment_parameters": {
///                     "listOfAllowedLocations": ["swedencentral"],
///                 },
///                 "policy_initiative_id": "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///             }],
///         },
///         "sandbox_mg_metadata": {
///             "create": True,
///             "policy_initiatives_assignment_properties": [{
///                 "assignment_parameters": {
///                     "listOfAllowedLocations": ["swedencentral"],
///                 },
///                 "policy_initiative_id": "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///             }],
///         },
///         "tags": [
///             {
///                 "name": "tag1",
///                 "value": "Lorem",
///             },
///             {
///                 "name": "tag2",
///                 "value": "Ipsum",
///             },
///         ],
///         "top_level_mg_metadata": {
///             "policy_initiatives_assignment_properties": [{
///                 "assignment_parameters": {
///                     "listOfAllowedLocations": [
///                         "swedencentral",
///                         "eastus2",
///                         "uksouth",
///                     ],
///                 },
///                 "policy_initiative_id": "/providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523",
///             }],
///         },
///     },
///     resource_group_name="rg-RemApiExample")
///
/// ```
///
/// ```yaml
/// resources:
///   landingZoneConfigurationOperation:
///     type: azure-native:sovereign:LandingZoneConfigurationOperation
///     properties:
///       landingZoneAccountName: lza-RemApiExample
///       landingZoneConfigurationName: lzc-RemApiExample
///       properties:
///         azureBastionCreationOption: UseExisting
///         customNamingConvention:
///           - formula: '{ResourceTypeAbbreviation}-{DeploymentPrefix}-Contoso-{DeploymentSuffix}'
///             resourceType: ddosProtectionPlans
///         ddosProtectionCreationOption: UseExisting
///         decommissionedMgMetadata:
///           create: true
///           policyInitiativesAssignmentProperties:
///             - assignmentParameters:
///                 listOfAllowedLocations:
///                   - swedencentral
///               policyInitiativeId: /providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523
///         existingAzureBastionId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.Network/bastionHosts/bas-RemApiExample
///         existingDdosProtectionId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.Network/ddosProtectionPlans/ddos-RemApiExample
///         existingLogAnalyticsWorkspaceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.OperationalInsights/workspaces/log-RemApiExample
///         firewallCreationOption: Premium
///         firewallSubnetCidrBlock: 10.20.254.0/24
///         gatewaySubnetCidrBlock: 10.20.252.0/24
///         hubNetworkCidrBlock: 10.20.0.0/16
///         landingZonesMgChildren:
///           - name: Corp
///             policyInitiativesAssignmentProperties: []
///           - name: Online
///             policyInitiativesAssignmentProperties: []
///           - name: Confidential Corp
///             policyInitiativesAssignmentProperties:
///               - assignmentParameters: {}
///                 policyInitiativeId: /providers/Microsoft.Authorization/policySetDefinitions/03de05a4-c324-4ccd-882f-a814ea8ab9ea
///           - name: Confidential Online
///             policyInitiativesAssignmentProperties:
///               - assignmentParameters: {}
///                 policyInitiativeId: /providers/Microsoft.Authorization/policySetDefinitions/03de05a4-c324-4ccd-882f-a814ea8ab9ea
///         landingZonesMgMetadata:
///           policyInitiativesAssignmentProperties:
///             - assignmentParameters:
///                 listOfAllowedLocations:
///                   - swedencentral
///               policyInitiativeId: /providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523
///         logAnalyticsWorkspaceCreationOption: UseExisting
///         logRetentionInDays: 540
///         managedIdentity:
///           type: UserAssigned
///           userAssignedIdentityResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mi-RemApiExample
///         namingConventionFormula: '{ResourceTypeAbbreviation}-{DeploymentPrefix}-Contoso-{DeploymentSuffix}-{Environment}'
///         platformConnectivityMgMetadata:
///           policyInitiativesAssignmentProperties:
///             - assignmentParameters:
///                 listOfAllowedLocations:
///                   - swedencentral
///               policyInitiativeId: /providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523
///         platformIdentityMgMetadata:
///           policyInitiativesAssignmentProperties:
///             - assignmentParameters:
///                 listOfAllowedLocations:
///                   - swedencentral
///               policyInitiativeId: /providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523
///         platformManagementMgMetadata:
///           policyInitiativesAssignmentProperties:
///             - assignmentParameters:
///                 listOfAllowedLocations:
///                   - swedencentral
///               policyInitiativeId: /providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523
///         platformMgChildren:
///           - name: Telemetry
///             policyInitiativesAssignmentProperties:
///               - assignmentParameters:
///                   listOfAllowedLocations:
///                     - swedencentral
///                 policyInitiativeId: /providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523
///           - name: Security
///             policyInitiativesAssignmentProperties:
///               - assignmentParameters:
///                   listOfAllowedLocations:
///                     - swedencentral
///                 policyInitiativeId: /providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523
///         platformMgMetadata:
///           policyInitiativesAssignmentProperties:
///             - assignmentParameters:
///                 listOfAllowedLocations:
///                   - swedencentral
///               policyInitiativeId: /providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523
///         sandboxMgMetadata:
///           create: true
///           policyInitiativesAssignmentProperties:
///             - assignmentParameters:
///                 listOfAllowedLocations:
///                   - swedencentral
///               policyInitiativeId: /providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523
///         tags:
///           - name: tag1
///             value: Lorem
///           - name: tag2
///             value: Ipsum
///         topLevelMgMetadata:
///           policyInitiativesAssignmentProperties:
///             - assignmentParameters:
///                 listOfAllowedLocations:
///                   - swedencentral
///                   - eastus2
///                   - uksouth
///               policyInitiativeId: /providers/Microsoft.Authorization/policySetDefinitions/c1cbff38-87c0-4b9f-9f70-035c7a3b5523
///       resourceGroupName: rg-RemApiExample
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
/// $ pulumi import azure-native:sovereign:LandingZoneConfigurationOperation lzc-RemApiExample /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sovereign/landingZoneAccounts/{landingZoneAccountName}/landingZoneConfigurations/{landingZoneConfigurationName}
/// ```
class LandingZoneConfigurationOperation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<LandingZoneConfigurationResourcePropertiesResponse>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LandingZoneConfigurationOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LandingZoneConfigurationOperation]. {@macro pulumi_sovereign_landing_zone_configuration_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LandingZoneConfigurationOperation(
    String name, {
    LandingZoneConfigurationOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:sovereign:LandingZoneConfigurationOperation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties =
        registerOutput<LandingZoneConfigurationResourcePropertiesResponse>(
          'properties',
        );
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
