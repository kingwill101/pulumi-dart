import 'package:pulumi/pulumi.dart' as pulumi;
import 'embedded_args.dart';
import 'embedded_state.dart';

/// Manages a PowerBI Embedded.
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
/// const exampleEmbedded = new azure.powerbi.Embedded("example", {
///     name: "examplepowerbi",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "A1",
///     administrators: ["azsdktest@microsoft.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_embedded = azure.powerbi.Embedded("example",
///     name="examplepowerbi",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="A1",
///     administrators=["azsdktest@microsoft.com"])
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
///     var exampleEmbedded = new Azure.PowerBI.Embedded("example", new()
///     {
///         Name = "examplepowerbi",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "A1",
///         Administrators = new[]
///         {
///             "azsdktest@microsoft.com",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/powerbi"
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
/// 		_, err = powerbi.NewEmbedded(ctx, "example", &powerbi.EmbeddedArgs{
/// 			Name:              pulumi.String("examplepowerbi"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("A1"),
/// 			Administrators: pulumi.StringArray{
/// 				pulumi.String("azsdktest@microsoft.com"),
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
/// resource "azure_powerbi_embedded" "example" {
///   name                = "examplepowerbi"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "A1"
///   administrators      = ["azsdktest@microsoft.com"]
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
/// import com.pulumi.azure.powerbi.Embedded;
/// import com.pulumi.azure.powerbi.EmbeddedArgs;
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
///         var exampleEmbedded = new Embedded("exampleEmbedded", EmbeddedArgs.builder()
///             .name("examplepowerbi")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("A1")
///             .administrators("azsdktest@microsoft.com")
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
///   exampleEmbedded:
///     type: azure:powerbi:Embedded
///     name: example
///     properties:
///       name: examplepowerbi
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: A1
///       administrators:
///         - azsdktest@microsoft.com
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.PowerBIDedicated` - 2021-01-01
///
/// ## Import
///
/// PowerBI Embedded can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:powerbi/embedded:Embedded example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.PowerBIDedicated/capacities/capacity1
/// ```
class Embedded extends pulumi.CustomResource {
  /// A set of administrator user identities, which manages the Power BI Embedded and must be a member user or a service principal in your AAD tenant.
  late final pulumi.Output<List<String>> administrators;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Sets the PowerBI Embedded's mode. Possible values include: `Gen1`, `Gen2`. Defaults to `Gen1`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> mode;
  /// The name of the PowerBI Embedded. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the PowerBI Embedded should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Sets the PowerBI Embedded's pricing level's SKU. Possible values include: `A1`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7` and `A8`.
  late final pulumi.Output<String> skuName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Embedded].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Embedded]. {@macro pulumi_powerbi_embedded_embedded_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Embedded(
    String name, {
    EmbeddedArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:powerbi/embedded:Embedded',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administrators = registerOutput<List<String>>('administrators');
    location = registerOutput<String>('location');
    mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Embedded] resource's state with the given [name] and [id].
  static Embedded get(
    String name,
    pulumi.Input<String> id, {
    EmbeddedState? state,
  }) {
    return Embedded._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Embedded._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:powerbi/embedded:Embedded',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administrators = registerOutput<List<String>>('administrators');
    location = registerOutput<String>('location');
    mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
