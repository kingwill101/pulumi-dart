import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_resource_properties_response.dart';
import 'skus_args.dart';
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
/// ### Skus_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var skus = new AzureNative.ProviderHub.Skus("skus", new()
///     {
///         Properties = new AzureNative.ProviderHub.Inputs.SkuResourcePropertiesArgs
///         {
///             SkuSettings = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.SkuSettingArgs
///                 {
///                     Kind = "Standard",
///                     Name = "freeSku",
///                     Tier = "Tier1",
///                 },
///                 new AzureNative.ProviderHub.Inputs.SkuSettingArgs
///                 {
///                     Costs = new[]
///                     {
///                         new AzureNative.ProviderHub.Inputs.SkuCostArgs
///                         {
///                             MeterId = "xxx",
///                         },
///                     },
///                     Kind = "Premium",
///                     Name = "premiumSku",
///                     Tier = "Tier2",
///                 },
///             },
///         },
///         ProviderNamespace = "Microsoft.Contoso",
///         ResourceType = "testResourceType",
///         Sku = "testSku",
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
/// 		_, err := providerhub.NewSkus(ctx, "skus", &providerhub.SkusArgs{
/// 			Properties: &providerhub.SkuResourcePropertiesArgs{
/// 				SkuSettings: providerhub.SkuSettingArray{
/// 					&providerhub.SkuSettingArgs{
/// 						Kind: pulumi.String("Standard"),
/// 						Name: pulumi.String("freeSku"),
/// 						Tier: pulumi.String("Tier1"),
/// 					},
/// 					&providerhub.SkuSettingArgs{
/// 						Costs: providerhub.SkuCostArray{
/// 							&providerhub.SkuCostArgs{
/// 								MeterId: pulumi.String("xxx"),
/// 							},
/// 						},
/// 						Kind: pulumi.String("Premium"),
/// 						Name: pulumi.String("premiumSku"),
/// 						Tier: pulumi.String("Tier2"),
/// 					},
/// 				},
/// 			},
/// 			ProviderNamespace: pulumi.String("Microsoft.Contoso"),
/// 			ResourceType:      pulumi.String("testResourceType"),
/// 			Sku:               pulumi.String("testSku"),
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
/// import com.pulumi.azurenative.providerhub.Skus;
/// import com.pulumi.azurenative.providerhub.SkusArgs;
/// import com.pulumi.azurenative.providerhub.inputs.SkuResourcePropertiesArgs;
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
///         var skus = new Skus("skus", SkusArgs.builder()
///             .properties(SkuResourcePropertiesArgs.builder()
///                 .skuSettings(
///                     SkuSettingArgs.builder()
///                         .kind("Standard")
///                         .name("freeSku")
///                         .tier("Tier1")
///                         .build(),
///                     SkuSettingArgs.builder()
///                         .costs(SkuCostArgs.builder()
///                             .meterId("xxx")
///                             .build())
///                         .kind("Premium")
///                         .name("premiumSku")
///                         .tier("Tier2")
///                         .build())
///                 .build())
///             .providerNamespace("Microsoft.Contoso")
///             .resourceType("testResourceType")
///             .sku("testSku")
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
/// const skus = new azure_native.providerhub.Skus("skus", {
///     properties: {
///         skuSettings: [
///             {
///                 kind: "Standard",
///                 name: "freeSku",
///                 tier: "Tier1",
///             },
///             {
///                 costs: [{
///                     meterId: "xxx",
///                 }],
///                 kind: "Premium",
///                 name: "premiumSku",
///                 tier: "Tier2",
///             },
///         ],
///     },
///     providerNamespace: "Microsoft.Contoso",
///     resourceType: "testResourceType",
///     sku: "testSku",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// skus = azure_native.providerhub.Skus("skus",
///     properties={
///         "sku_settings": [
///             {
///                 "kind": "Standard",
///                 "name": "freeSku",
///                 "tier": "Tier1",
///             },
///             {
///                 "costs": [{
///                     "meter_id": "xxx",
///                 }],
///                 "kind": "Premium",
///                 "name": "premiumSku",
///                 "tier": "Tier2",
///             },
///         ],
///     },
///     provider_namespace="Microsoft.Contoso",
///     resource_type="testResourceType",
///     sku="testSku")
///
/// ```
///
/// ```yaml
/// resources:
///   skus:
///     type: azure-native:providerhub:Skus
///     properties:
///       properties:
///         skuSettings:
///           - kind: Standard
///             name: freeSku
///             tier: Tier1
///           - costs:
///               - meterId: xxx
///             kind: Premium
///             name: premiumSku
///             tier: Tier2
///       providerNamespace: Microsoft.Contoso
///       resourceType: testResourceType
///       sku: testSku
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
/// $ pulumi import azure-native:providerhub:Skus Microsoft.Contoso/employees/sku1 /subscriptions/{subscriptionId}/providers/Microsoft.ProviderHub/providerRegistrations/{providerNamespace}/resourcetypeRegistrations/{resourceType}/skus/{sku}
/// ```
class Skus extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<SkuResourcePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Skus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Skus]. {@macro pulumi_providerhub_skus_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Skus(
    String name, {
    SkusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:providerhub:Skus',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SkuResourcePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
