import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_provider_class_args.dart';
import 'azure_resource_manager_common_types_extended_location_response.dart';
import 'system_data_response.dart';

/// The AzureKeyVaultSecretProviderClass resource.
///
/// Uses Azure REST API version 2024-08-21-preview. In version 2.x of the Azure Native provider, it used API version 2024-08-21-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AzureKeyVaultSecretProviderClasses_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureKeyVaultSecretProviderClass = new AzureNative.SecretSyncController.AzureKeyVaultSecretProviderClass("azureKeyVaultSecretProviderClass", new()
///     {
///         AzureKeyVaultSecretProviderClassName = "akvspc-ssc-example",
///         ClientId = "00000000-0000-0000-0000-000000000000",
///         ExtendedLocation = new AzureNative.SecretSyncController.Inputs.AzureResourceManagerCommonTypesExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-ssc-example/providers/Microsoft.ExtendedLocation/customLocations/example-custom-location",
///             Type = AzureNative.SecretSyncController.ExtendedLocationType.CustomLocation,
///         },
///         KeyvaultName = "example-ssc-key-vault",
///         Location = "eastus",
///         Objects = @"array: |
///   - |
///     objectName: my-secret-object
///     objectType: secret
///     objectVersionHistory: 1",
///         ResourceGroupName = "rg-ssc-example",
///         Tags =
///         {
///             { "example-tag", "example-tag-value" },
///         },
///         TenantId = "00000000-0000-0000-0000-000000000000",
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
/// 	secretsynccontroller "github.com/pulumi/pulumi-azure-native-sdk/secretsynccontroller/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretsynccontroller.NewAzureKeyVaultSecretProviderClass(ctx, "azureKeyVaultSecretProviderClass", &secretsynccontroller.AzureKeyVaultSecretProviderClassArgs{
/// 			AzureKeyVaultSecretProviderClassName: pulumi.String("akvspc-ssc-example"),
/// 			ClientId:                             pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			ExtendedLocation: &secretsynccontroller.AzureResourceManagerCommonTypesExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-ssc-example/providers/Microsoft.ExtendedLocation/customLocations/example-custom-location"),
/// 				Type: pulumi.String(secretsynccontroller.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			KeyvaultName:      pulumi.String("example-ssc-key-vault"),
/// 			Location:          pulumi.String("eastus"),
/// 			Objects:           pulumi.String("array: |\n  - |\n    objectName: my-secret-object\n    objectType: secret\n    objectVersionHistory: 1"),
/// 			ResourceGroupName: pulumi.String("rg-ssc-example"),
/// 			Tags: pulumi.StringMap{
/// 				"example-tag": pulumi.String("example-tag-value"),
/// 			},
/// 			TenantId: pulumi.String("00000000-0000-0000-0000-000000000000"),
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
/// import com.pulumi.azurenative.secretsynccontroller.AzureKeyVaultSecretProviderClass;
/// import com.pulumi.azurenative.secretsynccontroller.AzureKeyVaultSecretProviderClassArgs;
/// import com.pulumi.azurenative.secretsynccontroller.inputs.AzureResourceManagerCommonTypesExtendedLocationArgs;
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
///         var azureKeyVaultSecretProviderClass = new AzureKeyVaultSecretProviderClass("azureKeyVaultSecretProviderClass", AzureKeyVaultSecretProviderClassArgs.builder()
///             .azureKeyVaultSecretProviderClassName("akvspc-ssc-example")
///             .clientId("00000000-0000-0000-0000-000000000000")
///             .extendedLocation(AzureResourceManagerCommonTypesExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-ssc-example/providers/Microsoft.ExtendedLocation/customLocations/example-custom-location")
///                 .type("CustomLocation")
///                 .build())
///             .keyvaultName("example-ssc-key-vault")
///             .location("eastus")
///             .objects("""
/// array: |
///   - |
///     objectName: my-secret-object
///     objectType: secret
///     objectVersionHistory: 1            """)
///             .resourceGroupName("rg-ssc-example")
///             .tags(Map.of("example-tag", "example-tag-value"))
///             .tenantId("00000000-0000-0000-0000-000000000000")
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
/// const azureKeyVaultSecretProviderClass = new azure_native.secretsynccontroller.AzureKeyVaultSecretProviderClass("azureKeyVaultSecretProviderClass", {
///     azureKeyVaultSecretProviderClassName: "akvspc-ssc-example",
///     clientId: "00000000-0000-0000-0000-000000000000",
///     extendedLocation: {
///         name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-ssc-example/providers/Microsoft.ExtendedLocation/customLocations/example-custom-location",
///         type: azure_native.secretsynccontroller.ExtendedLocationType.CustomLocation,
///     },
///     keyvaultName: "example-ssc-key-vault",
///     location: "eastus",
///     objects: `array: |
///   - |
///     objectName: my-secret-object
///     objectType: secret
///     objectVersionHistory: 1`,
///     resourceGroupName: "rg-ssc-example",
///     tags: {
///         "example-tag": "example-tag-value",
///     },
///     tenantId: "00000000-0000-0000-0000-000000000000",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_key_vault_secret_provider_class = azure_native.secretsynccontroller.AzureKeyVaultSecretProviderClass("azureKeyVaultSecretProviderClass",
///     azure_key_vault_secret_provider_class_name="akvspc-ssc-example",
///     client_id="00000000-0000-0000-0000-000000000000",
///     extended_location={
///         "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-ssc-example/providers/Microsoft.ExtendedLocation/customLocations/example-custom-location",
///         "type": azure_native.secretsynccontroller.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     keyvault_name="example-ssc-key-vault",
///     location="eastus",
///     objects="""array: |
///   - |
///     objectName: my-secret-object
///     objectType: secret
///     objectVersionHistory: 1""",
///     resource_group_name="rg-ssc-example",
///     tags={
///         "example-tag": "example-tag-value",
///     },
///     tenant_id="00000000-0000-0000-0000-000000000000")
///
/// ```
///
/// ```yaml
/// resources:
///   azureKeyVaultSecretProviderClass:
///     type: azure-native:secretsynccontroller:AzureKeyVaultSecretProviderClass
///     properties:
///       azureKeyVaultSecretProviderClassName: akvspc-ssc-example
///       clientId: 00000000-0000-0000-0000-000000000000
///       extendedLocation:
///         name: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-ssc-example/providers/Microsoft.ExtendedLocation/customLocations/example-custom-location
///         type: CustomLocation
///       keyvaultName: example-ssc-key-vault
///       location: eastus
///       objects: |-
///         array: |
///           - |
///             objectName: my-secret-object
///             objectType: secret
///             objectVersionHistory: 1
///       resourceGroupName: rg-ssc-example
///       tags:
///         example-tag: example-tag-value
///       tenantId: 00000000-0000-0000-0000-000000000000
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
/// $ pulumi import azure-native:secretsynccontroller:AzureKeyVaultSecretProviderClass akvspc-ssc-example /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SecretSyncController/azureKeyVaultSecretProviderClasses/{azureKeyVaultSecretProviderClassName}
/// ```
class AzureKeyVaultSecretProviderClass extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The user assigned managed identity client ID that should be used to access the Azure Key Vault.
  late final pulumi.Output<String> clientId;
  /// The complex type of the extended location.
  late final pulumi.Output<AzureResourceManagerCommonTypesExtendedLocationResponse?> extendedLocation;
  /// The name of the Azure Key Vault to sync secrets from.
  late final pulumi.Output<String> keyvaultName;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Objects defines the desired state of synced K8s secret objects
  late final pulumi.Output<String?> objects;
  /// Provisioning state of the AzureKeyVaultSecretProviderClass instance.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Azure Active Directory tenant ID that should be used for authenticating requests to the Azure Key Vault.
  late final pulumi.Output<String> tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AzureKeyVaultSecretProviderClass].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AzureKeyVaultSecretProviderClass]. {@macro pulumi_secretsynccontroller_azure_key_vault_secret_provider_class_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AzureKeyVaultSecretProviderClass(
    String name, {
    AzureKeyVaultSecretProviderClassArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:secretsynccontroller:AzureKeyVaultSecretProviderClass',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clientId = registerOutput<String>('clientId');
    extendedLocation = registerOutput<AzureResourceManagerCommonTypesExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureResourceManagerCommonTypesExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyvaultName = registerOutput<String>('keyvaultName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    objects = registerOutput<String?>('objects');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }
}
