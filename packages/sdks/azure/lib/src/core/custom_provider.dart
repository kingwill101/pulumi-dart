import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_provider_args.dart';
import 'custom_provider_state.dart';

/// Manages an Azure Custom Provider.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleCustomProvider = new azure.core.CustomProvider("example", {
///     name: "example_provider",
///     location: example.location,
///     resourceGroupName: example.name,
///     resourceTypes: [{
///         name: "dEf1",
///         endpoint: "https://testendpoint.com/",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_custom_provider = azure.core.CustomProvider("example",
///     name="example_provider",
///     location=example.location,
///     resource_group_name=example.name,
///     resource_types=[{
///         "name": "dEf1",
///         "endpoint": "https://testendpoint.com/",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleCustomProvider = new Azure.Core.CustomProvider("example", new()
///     {
///         Name = "example_provider",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ResourceTypes = new[]
///         {
///             new Azure.Core.Inputs.CustomProviderResourceTypeArgs
///             {
///                 Name = "dEf1",
///                 Endpoint = "https://testendpoint.com/",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.NewCustomProvider(ctx, "example", &core.CustomProviderArgs{
/// 			Name:              pulumi.String("example_provider"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ResourceTypes: core.CustomProviderResourceTypeArray{
/// 				&core.CustomProviderResourceTypeArgs{
/// 					Name:     pulumi.String("dEf1"),
/// 					Endpoint: pulumi.String("https://testendpoint.com/"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_core_customprovider" "example" {
///   name                = "example_provider"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   resource_types {
///     name     = "dEf1"
///     endpoint = "https://testendpoint.com/"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.core.CustomProvider;
/// import com.pulumi.azure.core.CustomProviderArgs;
/// import com.pulumi.azure.core.inputs.CustomProviderResourceTypeArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleCustomProvider = new CustomProvider("exampleCustomProvider", CustomProviderArgs.builder()
///             .name("example_provider")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .resourceTypes(CustomProviderResourceTypeArgs.builder()
///                 .name("dEf1")
///                 .endpoint("https://testendpoint.com/")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleCustomProvider:
///     type: azure:core:CustomProvider
///     name: example
///     properties:
///       name: example_provider
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       resourceTypes:
///         - name: dEf1
///           endpoint: https://testendpoint.com/
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.CustomProviders` - 2018-09-01-preview
///
/// ## Import
///
/// Custom Provider can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/customProvider:CustomProvider example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.CustomProviders/resourceProviders/example
/// ```
class CustomProvider extends pulumi.CustomResource {
  /// Any number of `action` block as defined below. One of `resourceType` or `action` must be specified.
  late final pulumi.Output<List<Map<String, dynamic>>?> actions;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Custom Provider. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the Custom Provider. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Any number of `resourceType` block as defined below. One of `resourceType` or `action` must be specified.
  late final pulumi.Output<List<Map<String, dynamic>>?> resourceTypes;
  /// A mapping of tags to assign to the resource. Changing this forces a new resource to be created.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Any number of `validation` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> validations;

  /// Creates a new [CustomProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomProvider]. {@macro pulumi_core_custom_provider_custom_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomProvider(
    String name, {
    CustomProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/customProvider:CustomProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<Map<String, dynamic>>?>('actions');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    resourceTypes = registerOutput<List<Map<String, dynamic>>?>('resourceTypes');
    tags = registerOutput<Map<String, String>?>('tags');
    validations = registerOutput<List<Map<String, dynamic>>?>('validations');
  }

  /// Gets an existing [CustomProvider] resource's state with the given [name] and [id].
  static CustomProvider get(
    String name,
    pulumi.Input<String> id, {
    CustomProviderState? state,
  }) {
    return CustomProvider._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomProvider._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/customProvider:CustomProvider',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<Map<String, dynamic>>?>('actions');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    resourceTypes = registerOutput<List<Map<String, dynamic>>?>('resourceTypes');
    tags = registerOutput<Map<String, String>?>('tags');
    validations = registerOutput<List<Map<String, dynamic>>?>('validations');
  }
}
