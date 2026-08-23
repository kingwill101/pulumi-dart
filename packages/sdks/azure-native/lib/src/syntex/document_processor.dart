import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_processor_args.dart';
import 'document_processor_properties_response.dart';
import 'system_data_response.dart';

/// Document processor details
///
/// Uses Azure REST API version 2022-09-15-preview. In version 2.x of the Azure Native provider, it used API version 2022-09-15-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DocumentProcessor_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var documentProcessor = new AzureNative.Syntex.DocumentProcessor("documentProcessor", new()
///     {
///         Location = "westus",
///         ProcessorName = "myprocessor",
///         Properties = new AzureNative.Syntex.Inputs.DocumentProcessorPropertiesArgs
///         {
///             SpoTenantId = "e9bb744b-9558-4dc6-9e50-a3297e3332fa",
///             SpoTenantUrl = "https://test123.sharepoint.com",
///         },
///         ResourceGroupName = "mygroup",
///         Tags =
///         {
///             { "additionalProp1", "string1" },
///             { "additionalProp2", "string2" },
///             { "additionalProp3", "string3" },
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
/// 	syntex "github.com/pulumi/pulumi-azure-native-sdk/syntex/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := syntex.NewDocumentProcessor(ctx, "documentProcessor", &syntex.DocumentProcessorArgs{
/// 			Location:      pulumi.String("westus"),
/// 			ProcessorName: pulumi.String("myprocessor"),
/// 			Properties: &syntex.DocumentProcessorPropertiesArgs{
/// 				SpoTenantId:  pulumi.String("e9bb744b-9558-4dc6-9e50-a3297e3332fa"),
/// 				SpoTenantUrl: pulumi.String("https://test123.sharepoint.com"),
/// 			},
/// 			ResourceGroupName: pulumi.String("mygroup"),
/// 			Tags: pulumi.StringMap{
/// 				"additionalProp1": pulumi.String("string1"),
/// 				"additionalProp2": pulumi.String("string2"),
/// 				"additionalProp3": pulumi.String("string3"),
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
/// resource "azure-native_syntex_documentprocessor" "documentProcessor" {
///   location       = "westus"
///   processor_name = "myprocessor"
///   properties = {
///     spo_tenant_id  = "e9bb744b-9558-4dc6-9e50-a3297e3332fa"
///     spo_tenant_url = "https://test123.sharepoint.com"
///   }
///   resource_group_name = "mygroup"
///   tags = {
///     "additionalProp1" = "string1"
///     "additionalProp2" = "string2"
///     "additionalProp3" = "string3"
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
/// import com.pulumi.azurenative.syntex.DocumentProcessor;
/// import com.pulumi.azurenative.syntex.DocumentProcessorArgs;
/// import com.pulumi.azurenative.syntex.inputs.DocumentProcessorPropertiesArgs;
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
///         var documentProcessor = new DocumentProcessor("documentProcessor", DocumentProcessorArgs.builder()
///             .location("westus")
///             .processorName("myprocessor")
///             .properties(DocumentProcessorPropertiesArgs.builder()
///                 .spoTenantId("e9bb744b-9558-4dc6-9e50-a3297e3332fa")
///                 .spoTenantUrl("https://test123.sharepoint.com")
///                 .build())
///             .resourceGroupName("mygroup")
///             .tags(Map.ofEntries(
///                 Map.entry("additionalProp1", "string1"),
///                 Map.entry("additionalProp2", "string2"),
///                 Map.entry("additionalProp3", "string3")
///             ))
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
/// const documentProcessor = new azure_native.syntex.DocumentProcessor("documentProcessor", {
///     location: "westus",
///     processorName: "myprocessor",
///     properties: {
///         spoTenantId: "e9bb744b-9558-4dc6-9e50-a3297e3332fa",
///         spoTenantUrl: "https://test123.sharepoint.com",
///     },
///     resourceGroupName: "mygroup",
///     tags: {
///         additionalProp1: "string1",
///         additionalProp2: "string2",
///         additionalProp3: "string3",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// document_processor = azure_native.syntex.DocumentProcessor("documentProcessor",
///     location="westus",
///     processor_name="myprocessor",
///     properties={
///         "spo_tenant_id": "e9bb744b-9558-4dc6-9e50-a3297e3332fa",
///         "spo_tenant_url": "https://test123.sharepoint.com",
///     },
///     resource_group_name="mygroup",
///     tags={
///         "additionalProp1": "string1",
///         "additionalProp2": "string2",
///         "additionalProp3": "string3",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   documentProcessor:
///     type: azure-native:syntex:DocumentProcessor
///     properties:
///       location: westus
///       processorName: myprocessor
///       properties:
///         spoTenantId: e9bb744b-9558-4dc6-9e50-a3297e3332fa
///         spoTenantUrl: https://test123.sharepoint.com
///       resourceGroupName: mygroup
///       tags:
///         additionalProp1: string1
///         additionalProp2: string2
///         additionalProp3: string3
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
/// $ pulumi import azure-native:syntex:DocumentProcessor myprocessor /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Syntex/documentProcessors/{processorName}
/// ```
class DocumentProcessor extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Document processor properties.
  late final pulumi.Output<DocumentProcessorPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DocumentProcessor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DocumentProcessor]. {@macro pulumi_syntex_document_processor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DocumentProcessor(
    String name, {
    DocumentProcessorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:syntex:DocumentProcessor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DocumentProcessorPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DocumentProcessorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
