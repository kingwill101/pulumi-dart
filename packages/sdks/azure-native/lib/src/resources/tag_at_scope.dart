import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_at_scope_args.dart';
import 'tags_response.dart';

/// Wrapper resource for tags API requests and responses.
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2020-10-01, 2021-01-01, 2021-04-01, 2022-09-01, 2023-07-01, 2024-07-01, 2024-11-01, 2025-03-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update tags on a resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tagAtScope = new AzureNative.Resources.TagAtScope("tagAtScope", new()
///     {
///         Properties = new AzureNative.Resources.Inputs.TagsArgs
///         {
///             Tags =
///             {
///                 { "tagKey1", "tag-value-1" },
///                 { "tagKey2", "tag-value-2" },
///             },
///         },
///         Scope = "subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/my-resource-group/providers/myPRNameSpace/VM/myVm",
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
/// 		_, err := resources.NewTagAtScope(ctx, "tagAtScope", &resources.TagAtScopeArgs{
/// 			Properties: &resources.TagsArgs{
/// 				Tags: pulumi.StringMap{
/// 					"tagKey1": pulumi.String("tag-value-1"),
/// 					"tagKey2": pulumi.String("tag-value-2"),
/// 				},
/// 			},
/// 			Scope: pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/my-resource-group/providers/myPRNameSpace/VM/myVm"),
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
/// resource "azure-native_resources_tagatscope" "tagAtScope" {
///   properties = {
///     tags = {
///       "tagKey1" = "tag-value-1"
///       "tagKey2" = "tag-value-2"
///     }
///   }
///   scope = "subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/my-resource-group/providers/myPRNameSpace/VM/myVm"
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
/// import com.pulumi.azurenative.resources.TagAtScope;
/// import com.pulumi.azurenative.resources.TagAtScopeArgs;
/// import com.pulumi.azurenative.resources.inputs.TagsArgs;
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
///         var tagAtScope = new TagAtScope("tagAtScope", TagAtScopeArgs.builder()
///             .properties(TagsArgs.builder()
///                 .tags(Map.ofEntries(
///                     Map.entry("tagKey1", "tag-value-1"),
///                     Map.entry("tagKey2", "tag-value-2")
///                 ))
///                 .build())
///             .scope("subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/my-resource-group/providers/myPRNameSpace/VM/myVm")
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
/// const tagAtScope = new azure_native.resources.TagAtScope("tagAtScope", {
///     properties: {
///         tags: {
///             tagKey1: "tag-value-1",
///             tagKey2: "tag-value-2",
///         },
///     },
///     scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/my-resource-group/providers/myPRNameSpace/VM/myVm",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// tag_at_scope = azure_native.resources.TagAtScope("tagAtScope",
///     properties={
///         "tags": {
///             "tagKey1": "tag-value-1",
///             "tagKey2": "tag-value-2",
///         },
///     },
///     scope="subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/my-resource-group/providers/myPRNameSpace/VM/myVm")
///
/// ```
///
/// ```yaml
/// resources:
///   tagAtScope:
///     type: azure-native:resources:TagAtScope
///     properties:
///       properties:
///         tags:
///           tagKey1: tag-value-1
///           tagKey2: tag-value-2
///       scope: subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/my-resource-group/providers/myPRNameSpace/VM/myVm
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update tags on a subscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tagAtScope = new AzureNative.Resources.TagAtScope("tagAtScope", new()
///     {
///         Properties = new AzureNative.Resources.Inputs.TagsArgs
///         {
///             Tags =
///             {
///                 { "tagKey1", "tag-value-1" },
///                 { "tagKey2", "tag-value-2" },
///             },
///         },
///         Scope = "subscriptions/00000000-0000-0000-0000-000000000000",
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
/// 		_, err := resources.NewTagAtScope(ctx, "tagAtScope", &resources.TagAtScopeArgs{
/// 			Properties: &resources.TagsArgs{
/// 				Tags: pulumi.StringMap{
/// 					"tagKey1": pulumi.String("tag-value-1"),
/// 					"tagKey2": pulumi.String("tag-value-2"),
/// 				},
/// 			},
/// 			Scope: pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000"),
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
/// resource "azure-native_resources_tagatscope" "tagAtScope" {
///   properties = {
///     tags = {
///       "tagKey1" = "tag-value-1"
///       "tagKey2" = "tag-value-2"
///     }
///   }
///   scope = "subscriptions/00000000-0000-0000-0000-000000000000"
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
/// import com.pulumi.azurenative.resources.TagAtScope;
/// import com.pulumi.azurenative.resources.TagAtScopeArgs;
/// import com.pulumi.azurenative.resources.inputs.TagsArgs;
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
///         var tagAtScope = new TagAtScope("tagAtScope", TagAtScopeArgs.builder()
///             .properties(TagsArgs.builder()
///                 .tags(Map.ofEntries(
///                     Map.entry("tagKey1", "tag-value-1"),
///                     Map.entry("tagKey2", "tag-value-2")
///                 ))
///                 .build())
///             .scope("subscriptions/00000000-0000-0000-0000-000000000000")
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
/// const tagAtScope = new azure_native.resources.TagAtScope("tagAtScope", {
///     properties: {
///         tags: {
///             tagKey1: "tag-value-1",
///             tagKey2: "tag-value-2",
///         },
///     },
///     scope: "subscriptions/00000000-0000-0000-0000-000000000000",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// tag_at_scope = azure_native.resources.TagAtScope("tagAtScope",
///     properties={
///         "tags": {
///             "tagKey1": "tag-value-1",
///             "tagKey2": "tag-value-2",
///         },
///     },
///     scope="subscriptions/00000000-0000-0000-0000-000000000000")
///
/// ```
///
/// ```yaml
/// resources:
///   tagAtScope:
///     type: azure-native:resources:TagAtScope
///     properties:
///       properties:
///         tags:
///           tagKey1: tag-value-1
///           tagKey2: tag-value-2
///       scope: subscriptions/00000000-0000-0000-0000-000000000000
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
/// $ pulumi import azure-native:resources:TagAtScope myresource1 /{scope}/providers/Microsoft.Resources/tags/default
/// ```
class TagAtScope extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the tags wrapper resource.
  late final pulumi.Output<String> name;
  /// The set of tags.
  late final pulumi.Output<TagsResponse> properties;
  /// The type of the tags wrapper resource.
  late final pulumi.Output<String> type;

  /// Creates a new [TagAtScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TagAtScope]. {@macro pulumi_resources_tag_at_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TagAtScope(
    String name, {
    TagAtScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:resources:TagAtScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<TagsResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TagsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [TagAtScope] resource.
  TagAtScope.reference(String urn)
    : super(
        'azure-native:resources:TagAtScope',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<TagsResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TagsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
