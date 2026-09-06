import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_args.dart';
import 'standard_component_properties_response.dart';
import 'system_data_response.dart';

/// Security Standard on a resource
///
/// Uses Azure REST API version 2021-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-08-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a security standard on a specified scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var standard = new AzureNative.Security.Standard("standard", new()
///     {
///         Category = "SecurityCenter",
///         Components = new[]
///         {
///             new AzureNative.Security.Inputs.StandardComponentPropertiesArgs
///             {
///                 Key = "1195afff-c881-495e-9bc5-1486211ae03f",
///             },
///             new AzureNative.Security.Inputs.StandardComponentPropertiesArgs
///             {
///                 Key = "dbd0cb49-b563-45e7-9724-889e799fa648",
///             },
///         },
///         Description = "description of Azure Test Security Standard 1",
///         DisplayName = "Azure Test Security Standard 1",
///         ResourceGroupName = "myResourceGroup",
///         StandardId = "8bb8be0a-6010-4789-812f-e4d661c4ed0e",
///         SupportedClouds = new[]
///         {
///             AzureNative.Security.StandardSupportedClouds.GCP,
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewStandard(ctx, "standard", &security.StandardArgs{
/// 			Category: pulumi.String("SecurityCenter"),
/// 			Components: security.StandardComponentPropertiesArray{
/// 				&security.StandardComponentPropertiesArgs{
/// 					Key: pulumi.String("1195afff-c881-495e-9bc5-1486211ae03f"),
/// 				},
/// 				&security.StandardComponentPropertiesArgs{
/// 					Key: pulumi.String("dbd0cb49-b563-45e7-9724-889e799fa648"),
/// 				},
/// 			},
/// 			Description:       pulumi.String("description of Azure Test Security Standard 1"),
/// 			DisplayName:       pulumi.String("Azure Test Security Standard 1"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StandardId:        pulumi.String("8bb8be0a-6010-4789-812f-e4d661c4ed0e"),
/// 			SupportedClouds: security.StandardSupportedCloudsArray{
/// 				security.StandardSupportedCloudsGCP,
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
/// resource "azure-native_security_standard" "standard" {
///   category = "SecurityCenter"
///   components {
///     key = "1195afff-c881-495e-9bc5-1486211ae03f"
///   }
///   components {
///     key = "dbd0cb49-b563-45e7-9724-889e799fa648"
///   }
///   description         = "description of Azure Test Security Standard 1"
///   display_name        = "Azure Test Security Standard 1"
///   resource_group_name = "myResourceGroup"
///   standard_id         = "8bb8be0a-6010-4789-812f-e4d661c4ed0e"
///   supported_clouds    = ["GCP"]
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
/// import com.pulumi.azurenative.security.Standard;
/// import com.pulumi.azurenative.security.StandardArgs;
/// import com.pulumi.azurenative.security.inputs.StandardComponentPropertiesArgs;
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
///         var standard = new Standard("standard", StandardArgs.builder()
///             .category("SecurityCenter")
///             .components(
///                 StandardComponentPropertiesArgs.builder()
///                     .key("1195afff-c881-495e-9bc5-1486211ae03f")
///                     .build(),
///                 StandardComponentPropertiesArgs.builder()
///                     .key("dbd0cb49-b563-45e7-9724-889e799fa648")
///                     .build())
///             .description("description of Azure Test Security Standard 1")
///             .displayName("Azure Test Security Standard 1")
///             .resourceGroupName("myResourceGroup")
///             .standardId("8bb8be0a-6010-4789-812f-e4d661c4ed0e")
///             .supportedClouds("GCP")
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
/// const standard = new azure_native.security.Standard("standard", {
///     category: "SecurityCenter",
///     components: [
///         {
///             key: "1195afff-c881-495e-9bc5-1486211ae03f",
///         },
///         {
///             key: "dbd0cb49-b563-45e7-9724-889e799fa648",
///         },
///     ],
///     description: "description of Azure Test Security Standard 1",
///     displayName: "Azure Test Security Standard 1",
///     resourceGroupName: "myResourceGroup",
///     standardId: "8bb8be0a-6010-4789-812f-e4d661c4ed0e",
///     supportedClouds: [azure_native.security.StandardSupportedClouds.GCP],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// standard = azure_native.security.Standard("standard",
///     category="SecurityCenter",
///     components=[
///         {
///             "key": "1195afff-c881-495e-9bc5-1486211ae03f",
///         },
///         {
///             "key": "dbd0cb49-b563-45e7-9724-889e799fa648",
///         },
///     ],
///     description="description of Azure Test Security Standard 1",
///     display_name="Azure Test Security Standard 1",
///     resource_group_name="myResourceGroup",
///     standard_id="8bb8be0a-6010-4789-812f-e4d661c4ed0e",
///     supported_clouds=[azure_native.security.StandardSupportedClouds.GCP])
///
/// ```
///
/// ```yaml
/// resources:
///   standard:
///     type: azure-native:security:Standard
///     properties:
///       category: SecurityCenter
///       components:
///         - key: 1195afff-c881-495e-9bc5-1486211ae03f
///         - key: dbd0cb49-b563-45e7-9724-889e799fa648
///       description: description of Azure Test Security Standard 1
///       displayName: Azure Test Security Standard 1
///       resourceGroupName: myResourceGroup
///       standardId: 8bb8be0a-6010-4789-812f-e4d661c4ed0e
///       supportedClouds:
///         - GCP
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
/// $ pulumi import azure-native:security:Standard 8bb8be0a-6010-4789-812f-e4d661c4ed0e /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/standards/{standardId}
/// ```
class Standard extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// category of the standard provided
  late final pulumi.Output<String?> category;
  /// List of component objects containing component unique keys (such as assessment keys) to apply to standard scope.  Currently only supports assessment keys.
  late final pulumi.Output<List<StandardComponentPropertiesResponse>?> components;
  /// description of the standard
  late final pulumi.Output<String?> description;
  /// display name of the standard, equivalent to the standardId
  late final pulumi.Output<String?> displayName;
  /// Entity tag is used for comparing two or more entities from the same requested resource.
  late final pulumi.Output<String?> etag;
  /// Kind of the resource
  late final pulumi.Output<String?> kind;
  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// standard type (Custom or BuiltIn only currently)
  late final pulumi.Output<String> standardType;
  /// List of all standard supported clouds.
  late final pulumi.Output<List<String>?> supportedClouds;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Standard].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Standard]. {@macro pulumi_security_standard_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Standard(
    String name, {
    StandardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:Standard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    category = registerOutput<String?>('category');
    components = registerOutput<List<StandardComponentPropertiesResponse>?>('components', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StandardComponentPropertiesResponse>(guardedValue, (value) => StandardComponentPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    standardType = registerOutput<String>('standardType');
    supportedClouds = registerOutput<List<String>?>('supportedClouds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Standard] resource.
  Standard.reference(String urn)
    : super(
        'azure-native:security:Standard',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    category = registerOutput<String?>('category');
    components = registerOutput<List<StandardComponentPropertiesResponse>?>('components', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StandardComponentPropertiesResponse>(guardedValue, (value) => StandardComponentPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    standardType = registerOutput<String>('standardType');
    supportedClouds = registerOutput<List<String>?>('supportedClouds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
