import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_args.dart';
import 'resource_group_properties_response.dart';

/// Resource group information.
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2020-10-01, 2021-01-01, 2021-04-01, 2022-09-01, 2023-07-01, 2024-07-01, 2024-11-01, 2025-03-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a resource group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var resourceGroup = new AzureNative.Resources.ResourceGroup("resourceGroup", new()
///     {
///         Location = "eastus",
///         ResourceGroupName = "my-resource-group",
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
/// 	resources "github.com/pulumi/pulumi-azure-native-sdk/resources/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resources.NewResourceGroup(ctx, "resourceGroup", &resources.ResourceGroupArgs{
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
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
/// resource "azure-native_resources_resourcegroup" "resourceGroup" {
///   location            = "eastus"
///   resource_group_name = "my-resource-group"
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
/// import com.pulumi.azurenative.resources.ResourceGroup;
/// import com.pulumi.azurenative.resources.ResourceGroupArgs;
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
///         var resourceGroup = new ResourceGroup("resourceGroup", ResourceGroupArgs.builder()
///             .location("eastus")
///             .resourceGroupName("my-resource-group")
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
/// const resourceGroup = new azure_native.resources.ResourceGroup("resourceGroup", {
///     location: "eastus",
///     resourceGroupName: "my-resource-group",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// resource_group = azure_native.resources.ResourceGroup("resourceGroup",
///     location="eastus",
///     resource_group_name="my-resource-group")
///
/// ```
///
/// ```yaml
/// resources:
///   resourceGroup:
///     type: azure-native:resources:ResourceGroup
///     properties:
///       location: eastus
///       resourceGroupName: my-resource-group
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
/// $ pulumi import azure-native:resources:ResourceGroup my-resource-group /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}
/// ```
class ResourceGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The location of the resource group. It cannot be changed after the resource group has been created. It must be one of the supported Azure locations.
  late final pulumi.Output<String> location;
  /// The ID of the resource that manages this resource group.
  late final pulumi.Output<String?> managedBy;
  /// The name of the resource group.
  late final pulumi.Output<String> name;
  /// The resource group properties.
  late final pulumi.Output<ResourceGroupPropertiesResponse> properties;
  /// The tags attached to the resource group.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource group.
  late final pulumi.Output<String> type;

  /// Creates a new [ResourceGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceGroup]. {@macro pulumi_resources_resource_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceGroup(
    String name, {
    ResourceGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:resources:ResourceGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    managedBy = registerOutput<String?>('managedBy');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ResourceGroupPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceGroupPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
