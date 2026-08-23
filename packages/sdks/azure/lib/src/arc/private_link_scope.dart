import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_scope_args.dart';
import 'private_link_scope_state.dart';

/// Manages an Azure Arc Private Link Scope.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "rg-example",
///     location: "west europe",
/// });
/// const examplePrivateLinkScope = new azure.arc.PrivateLinkScope("example", {
///     name: "plsexample",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="rg-example",
///     location="west europe")
/// example_private_link_scope = azure.arc.PrivateLinkScope("example",
///     name="plsexample",
///     resource_group_name=example.name,
///     location=example.location)
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
///         Name = "rg-example",
///         Location = "west europe",
///     });
///
///     var examplePrivateLinkScope = new Azure.Arc.PrivateLinkScope("example", new()
///     {
///         Name = "plsexample",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/arc"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("rg-example"),
/// 			Location: pulumi.String("west europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = arc.NewPrivateLinkScope(ctx, "example", &arc.PrivateLinkScopeArgs{
/// 			Name:              pulumi.String("plsexample"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
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
///   name     = "rg-example"
///   location = "west europe"
/// }
/// resource "azure_arc_privatelinkscope" "example" {
///   name                = "plsexample"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
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
/// import com.pulumi.azure.arc.PrivateLinkScope;
/// import com.pulumi.azure.arc.PrivateLinkScopeArgs;
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
///             .name("rg-example")
///             .location("west europe")
///             .build());
///
///         var examplePrivateLinkScope = new PrivateLinkScope("examplePrivateLinkScope", PrivateLinkScopeArgs.builder()
///             .name("plsexample")
///             .resourceGroupName(example.name())
///             .location(example.location())
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
///       name: rg-example
///       location: west europe
///   examplePrivateLinkScope:
///     type: azure:arc:PrivateLinkScope
///     name: example
///     properties:
///       name: plsexample
///       resourceGroupName: ${example.name}
///       location: ${example.location}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.HybridCompute` - 2022-11-10
///
/// ## Import
///
/// Azure Arc Private Link Scope can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:arc/privateLinkScope:PrivateLinkScope example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScope1
/// ```
class PrivateLinkScope extends pulumi.CustomResource {
  /// The Azure Region where the Arc Private Link Scope should exist. Changing this forces a new Azure Arc Private Link Scope to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for the Azure Arc Private Link Scope. Changing this forces a new Azure Arc Private Link Scope to be created.
  late final pulumi.Output<String> name;
  /// Indicates whether machines associated with the private link scope can also use public Azure Arc service endpoints. Defaults to `false`. Possible values are `true` and `false`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the Resource Group where the Azure Arc Private Link Scope should exist. Changing this forces a new Azure Arc Private Link Scope to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Azure Arc Private Link Scope.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [PrivateLinkScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateLinkScope]. {@macro pulumi_arc_private_link_scope_private_link_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateLinkScope(
    String name, {
    PrivateLinkScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:arc/privateLinkScope:PrivateLinkScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [PrivateLinkScope] resource's state with the given [name] and [id].
  static PrivateLinkScope get(
    String name,
    pulumi.Input<String> id, {
    PrivateLinkScopeState? state,
  }) {
    return PrivateLinkScope._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PrivateLinkScope._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:arc/privateLinkScope:PrivateLinkScope',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
