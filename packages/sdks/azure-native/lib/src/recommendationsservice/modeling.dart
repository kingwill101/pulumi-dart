import 'package:pulumi/pulumi.dart' as pulumi;
import 'modeling_args.dart';
import 'modeling_resource_response_properties.dart';
import 'system_data_response.dart';

/// Modeling resource details.
///
/// Uses Azure REST API version 2022-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-02-01.
///
/// Other available API versions: 2022-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recommendationsservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update Modeling resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var modeling = new AzureNative.RecommendationsService.Modeling("modeling", new()
///     {
///         AccountName = "sampleAccount",
///         Location = "West US",
///         ModelingName = "c1",
///         Properties = new AzureNative.RecommendationsService.Inputs.ModelingResourcePropertiesArgs
///         {
///             Features = AzureNative.RecommendationsService.ModelingFeatures.Standard,
///             Frequency = AzureNative.RecommendationsService.ModelingFrequency.High,
///             InputData = new AzureNative.RecommendationsService.Inputs.ModelingInputDataArgs
///             {
///                 ConnectionString = "https://storageAccount.blob.core.windows.net/container/root",
///             },
///             Size = AzureNative.RecommendationsService.ModelingSize.Medium,
///         },
///         ResourceGroupName = "rg",
///         Tags =
///         {
///             { "Environment", "Prod" },
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
/// 	recommendationsservice "github.com/pulumi/pulumi-azure-native-sdk/recommendationsservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recommendationsservice.NewModeling(ctx, "modeling", &recommendationsservice.ModelingArgs{
/// 			AccountName:  pulumi.String("sampleAccount"),
/// 			Location:     pulumi.String("West US"),
/// 			ModelingName: pulumi.String("c1"),
/// 			Properties: &recommendationsservice.ModelingResourcePropertiesArgs{
/// 				Features:  pulumi.String(recommendationsservice.ModelingFeaturesStandard),
/// 				Frequency: pulumi.String(recommendationsservice.ModelingFrequencyHigh),
/// 				InputData: &recommendationsservice.ModelingInputDataArgs{
/// 					ConnectionString: pulumi.String("https://storageAccount.blob.core.windows.net/container/root"),
/// 				},
/// 				Size: pulumi.String(recommendationsservice.ModelingSizeMedium),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Prod"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_recommendationsservice_modeling" "modeling" {
///   account_name  = "sampleAccount"
///   location      = "West US"
///   modeling_name = "c1"
///   properties = {
///     features  = "Standard"
///     frequency = "High"
///     input_data = {
///       connection_string = "https://storageAccount.blob.core.windows.net/container/root"
///     }
///     size = "Medium"
///   }
///   resource_group_name = "rg"
///   tags = {
///     "Environment" = "Prod"
///   }
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
/// import com.pulumi.azurenative.recommendationsservice.Modeling;
/// import com.pulumi.azurenative.recommendationsservice.ModelingArgs;
/// import com.pulumi.azurenative.recommendationsservice.inputs.ModelingResourcePropertiesArgs;
/// import com.pulumi.azurenative.recommendationsservice.inputs.ModelingInputDataArgs;
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
///         var modeling = new Modeling("modeling", ModelingArgs.builder()
///             .accountName("sampleAccount")
///             .location("West US")
///             .modelingName("c1")
///             .properties(ModelingResourcePropertiesArgs.builder()
///                 .features("Standard")
///                 .frequency("High")
///                 .inputData(ModelingInputDataArgs.builder()
///                     .connectionString("https://storageAccount.blob.core.windows.net/container/root")
///                     .build())
///                 .size("Medium")
///                 .build())
///             .resourceGroupName("rg")
///             .tags(Map.of("Environment", "Prod"))
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
/// const modeling = new azure_native.recommendationsservice.Modeling("modeling", {
///     accountName: "sampleAccount",
///     location: "West US",
///     modelingName: "c1",
///     properties: {
///         features: azure_native.recommendationsservice.ModelingFeatures.Standard,
///         frequency: azure_native.recommendationsservice.ModelingFrequency.High,
///         inputData: {
///             connectionString: "https://storageAccount.blob.core.windows.net/container/root",
///         },
///         size: azure_native.recommendationsservice.ModelingSize.Medium,
///     },
///     resourceGroupName: "rg",
///     tags: {
///         Environment: "Prod",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// modeling = azure_native.recommendationsservice.Modeling("modeling",
///     account_name="sampleAccount",
///     location="West US",
///     modeling_name="c1",
///     properties={
///         "features": azure_native.recommendationsservice.ModelingFeatures.STANDARD,
///         "frequency": azure_native.recommendationsservice.ModelingFrequency.HIGH,
///         "input_data": {
///             "connection_string": "https://storageAccount.blob.core.windows.net/container/root",
///         },
///         "size": azure_native.recommendationsservice.ModelingSize.MEDIUM,
///     },
///     resource_group_name="rg",
///     tags={
///         "Environment": "Prod",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   modeling:
///     type: azure-native:recommendationsservice:Modeling
///     properties:
///       accountName: sampleAccount
///       location: West US
///       modelingName: c1
///       properties:
///         features: Standard
///         frequency: High
///         inputData:
///           connectionString: https://storageAccount.blob.core.windows.net/container/root
///         size: Medium
///       resourceGroupName: rg
///       tags:
///         Environment: Prod
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
/// $ pulumi import azure-native:recommendationsservice:Modeling c1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecommendationsService/accounts/{accountName}/modeling/{modelingName}
/// ```
class Modeling extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Modeling resource properties.
  late final pulumi.Output<ModelingResourceResponseProperties> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Modeling].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Modeling]. {@macro pulumi_recommendationsservice_modeling_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Modeling(
    String name, {
    ModelingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:recommendationsservice:Modeling',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ModelingResourceResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ModelingResourceResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
