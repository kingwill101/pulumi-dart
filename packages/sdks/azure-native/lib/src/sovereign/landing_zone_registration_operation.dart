import 'package:pulumi/pulumi.dart' as pulumi;
import 'landing_zone_registration_operation_args.dart';
import 'landing_zone_registration_resource_properties_response.dart';
import 'system_data_response.dart';

/// The Landing zone registration resource type.
///
/// Uses Azure REST API version 2025-02-27-preview. In version 2.x of the Azure Native provider, it used API version 2025-02-27-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### LandingZoneRegistrationOperations_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var landingZoneRegistrationOperation = new AzureNative.Sovereign.LandingZoneRegistrationOperation("landingZoneRegistrationOperation", new()
///     {
///         LandingZoneAccountName = "lza-RemApiExample",
///         LandingZoneRegistrationName = "lzr-RemApiExample",
///         Properties = new AzureNative.Sovereign.Inputs.LandingZoneRegistrationResourcePropertiesArgs
///         {
///             ExistingLandingZoneConfigurationId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.Sovereign/landingZoneAccounts/lza-RemApiExample/landingZoneConfigurations/lzc-RemApiExample",
///             ExistingTopLevelMgId = "/providers/Microsoft.Management/managementGroups/mg-example",
///             ManagedIdentity = new AzureNative.Sovereign.Inputs.ManagedIdentityPropertiesArgs
///             {
///                 Type = AzureNative.Sovereign.ManagedIdentityResourceType.UserAssigned,
///                 UserAssignedIdentityResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mi-RemApiExample",
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
/// 		_, err := sovereign.NewLandingZoneRegistrationOperation(ctx, "landingZoneRegistrationOperation", &sovereign.LandingZoneRegistrationOperationArgs{
/// 			LandingZoneAccountName:      pulumi.String("lza-RemApiExample"),
/// 			LandingZoneRegistrationName: pulumi.String("lzr-RemApiExample"),
/// 			Properties: &sovereign.LandingZoneRegistrationResourcePropertiesArgs{
/// 				ExistingLandingZoneConfigurationId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.Sovereign/landingZoneAccounts/lza-RemApiExample/landingZoneConfigurations/lzc-RemApiExample"),
/// 				ExistingTopLevelMgId:               pulumi.String("/providers/Microsoft.Management/managementGroups/mg-example"),
/// 				ManagedIdentity: &sovereign.ManagedIdentityPropertiesArgs{
/// 					Type:                           pulumi.String(sovereign.ManagedIdentityResourceTypeUserAssigned),
/// 					UserAssignedIdentityResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mi-RemApiExample"),
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
/// import com.pulumi.azurenative.sovereign.LandingZoneRegistrationOperation;
/// import com.pulumi.azurenative.sovereign.LandingZoneRegistrationOperationArgs;
/// import com.pulumi.azurenative.sovereign.inputs.LandingZoneRegistrationResourcePropertiesArgs;
/// import com.pulumi.azurenative.sovereign.inputs.ManagedIdentityPropertiesArgs;
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
///         var landingZoneRegistrationOperation = new LandingZoneRegistrationOperation("landingZoneRegistrationOperation", LandingZoneRegistrationOperationArgs.builder()
///             .landingZoneAccountName("lza-RemApiExample")
///             .landingZoneRegistrationName("lzr-RemApiExample")
///             .properties(LandingZoneRegistrationResourcePropertiesArgs.builder()
///                 .existingLandingZoneConfigurationId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.Sovereign/landingZoneAccounts/lza-RemApiExample/landingZoneConfigurations/lzc-RemApiExample")
///                 .existingTopLevelMgId("/providers/Microsoft.Management/managementGroups/mg-example")
///                 .managedIdentity(ManagedIdentityPropertiesArgs.builder()
///                     .type("UserAssigned")
///                     .userAssignedIdentityResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mi-RemApiExample")
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
/// const landingZoneRegistrationOperation = new azure_native.sovereign.LandingZoneRegistrationOperation("landingZoneRegistrationOperation", {
///     landingZoneAccountName: "lza-RemApiExample",
///     landingZoneRegistrationName: "lzr-RemApiExample",
///     properties: {
///         existingLandingZoneConfigurationId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.Sovereign/landingZoneAccounts/lza-RemApiExample/landingZoneConfigurations/lzc-RemApiExample",
///         existingTopLevelMgId: "/providers/Microsoft.Management/managementGroups/mg-example",
///         managedIdentity: {
///             type: azure_native.sovereign.ManagedIdentityResourceType.UserAssigned,
///             userAssignedIdentityResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mi-RemApiExample",
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
/// landing_zone_registration_operation = azure_native.sovereign.LandingZoneRegistrationOperation("landingZoneRegistrationOperation",
///     landing_zone_account_name="lza-RemApiExample",
///     landing_zone_registration_name="lzr-RemApiExample",
///     properties={
///         "existing_landing_zone_configuration_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.Sovereign/landingZoneAccounts/lza-RemApiExample/landingZoneConfigurations/lzc-RemApiExample",
///         "existing_top_level_mg_id": "/providers/Microsoft.Management/managementGroups/mg-example",
///         "managed_identity": {
///             "type": azure_native.sovereign.ManagedIdentityResourceType.USER_ASSIGNED,
///             "user_assigned_identity_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mi-RemApiExample",
///         },
///     },
///     resource_group_name="rg-RemApiExample")
///
/// ```
///
/// ```yaml
/// resources:
///   landingZoneRegistrationOperation:
///     type: azure-native:sovereign:LandingZoneRegistrationOperation
///     properties:
///       landingZoneAccountName: lza-RemApiExample
///       landingZoneRegistrationName: lzr-RemApiExample
///       properties:
///         existingLandingZoneConfigurationId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.Sovereign/landingZoneAccounts/lza-RemApiExample/landingZoneConfigurations/lzc-RemApiExample
///         existingTopLevelMgId: /providers/Microsoft.Management/managementGroups/mg-example
///         managedIdentity:
///           type: UserAssigned
///           userAssignedIdentityResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-RemApiExample/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mi-RemApiExample
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
/// $ pulumi import azure-native:sovereign:LandingZoneRegistrationOperation lzr-RemApiExample /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sovereign/landingZoneAccounts/{landingZoneAccountName}/landingZoneRegistrations/{landingZoneRegistrationName}
/// ```
class LandingZoneRegistrationOperation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<LandingZoneRegistrationResourcePropertiesResponse>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LandingZoneRegistrationOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LandingZoneRegistrationOperation]. {@macro pulumi_sovereign_landing_zone_registration_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LandingZoneRegistrationOperation(
    String name, {
    LandingZoneRegistrationOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:sovereign:LandingZoneRegistrationOperation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties =
        registerOutput<LandingZoneRegistrationResourcePropertiesResponse>(
          'properties',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return LandingZoneRegistrationResourcePropertiesResponse.fromMap(
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
