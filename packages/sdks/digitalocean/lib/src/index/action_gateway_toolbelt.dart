import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_gateway_toolbelt_args.dart';
import 'action_gateway_toolbelt_state.dart';

/// Provides a DigitalOcean [Action Gateway](https://docs.digitalocean.com/products/managed-agents/action-gateway/)
/// toolbelt resource. A toolbelt is a named, versioned set of tools that your team
/// can attach to sessions as `toolbelt:&lt;name&gt;@&lt;version&gt;`. A toolbelt contains no
/// account authorization; use `digitalocean.ActionGatewayConnection`
/// to authorize tool providers.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const search = new digitalocean.ActionGatewayToolbelt("search", {
///     name: "search-toolbelt",
///     displayName: "Search Tools",
///     description: "Tools for searching and fetching public web pages.",
///     tools: [
///         "exa_web_search",
///         "exa_web_fetch",
///     ],
/// });
/// export const searchToolbelt = pulumi.interpolate`toolbelt:${search.reference}`;
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// search = digitalocean.ActionGatewayToolbelt("search",
///     name="search-toolbelt",
///     display_name="Search Tools",
///     description="Tools for searching and fetching public web pages.",
///     tools=[
///         "exa_web_search",
///         "exa_web_fetch",
///     ])
/// pulumi.export("searchToolbelt", search.reference.apply(lambda reference: f"toolbelt:{reference}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var search = new DigitalOcean.ActionGatewayToolbelt("search", new()
///     {
///         Name = "search-toolbelt",
///         DisplayName = "Search Tools",
///         Description = "Tools for searching and fetching public web pages.",
///         Tools = new[]
///         {
///             "exa_web_search",
///             "exa_web_fetch",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["searchToolbelt"] = search.Reference.Apply(reference => $"toolbelt:{reference}"),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		search, err := digitalocean.NewActionGatewayToolbelt(ctx, "search", &digitalocean.ActionGatewayToolbeltArgs{
/// 			Name:        pulumi.String("search-toolbelt"),
/// 			DisplayName: pulumi.String("Search Tools"),
/// 			Description: pulumi.String("Tools for searching and fetching public web pages."),
/// 			Tools: pulumi.StringArray{
/// 				pulumi.String("exa_web_search"),
/// 				pulumi.String("exa_web_fetch"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("searchToolbelt", search.Reference.ApplyT(func(reference string) (string, error) {
/// 			return fmt.Sprintf("toolbelt:%v", reference), nil
/// 		}).(pulumi.StringOutput))
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_action_gateway_toolbelt" "search" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name         = "search-toolbelt"
///   display_name = "Search Tools"
///   description  = "Tools for searching and fetching public web pages."
///   tools        = ["exa_web_search", "exa_web_fetch"]
/// }
/// output "searchToolbelt" {
///   value ="toolbelt:${digitalocean_action_gateway_toolbelt.search.reference}"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.ActionGatewayToolbelt;
/// import com.pulumi.digitalocean.ActionGatewayToolbeltArgs;
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
///         var search = new ActionGatewayToolbelt("search", ActionGatewayToolbeltArgs.builder()
///             .name("search-toolbelt")
///             .displayName("Search Tools")
///             .description("Tools for searching and fetching public web pages.")
///             .tools(
///                 "exa_web_search",
///                 "exa_web_fetch")
///             .build());
///
///         ctx.export("searchToolbelt", search.reference().applyValue(_reference -> String.format("toolbelt:%s", _reference)));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   search:
///     type: digitalocean:ActionGatewayToolbelt
///     properties:
///       name: search-toolbelt
///       displayName: Search Tools
///       description: Tools for searching and fetching public web pages.
///       tools:
///         - exa_web_search
///         - exa_web_fetch
/// outputs:
///   searchToolbelt: toolbelt:${search.reference}
/// ```
///
///
/// ## Import
///
/// A toolbelt can be imported using its `name`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/actionGatewayToolbelt:ActionGatewayToolbelt search search-toolbelt
/// ```
///
/// After an import, `tools` lists every member pinned as `&lt;tool_slug&gt;@&lt;version&gt;`.
class ActionGatewayToolbelt extends pulumi.CustomResource {
  /// When the toolbelt was created.
  late final pulumi.Output<String> createdAt;
  /// A description of the toolbelt, at most 255 bytes. Changing this forces a new toolbelt.
  late final pulumi.Output<String?> description;
  /// A human-readable label for the toolbelt, at most 128 bytes. Changing this forces a new toolbelt.
  late final pulumi.Output<String?> displayName;
  /// The name of the toolbelt, unique among your team's active toolbelts. It must start with a lowercase letter and contain at most 64 characters from `[a-z0-9_-]`. `search` is reserved. Changing this forces a new toolbelt.
  late final pulumi.Output<String> name;
  /// The members of the current version, each pinned as `&lt;tool_slug&gt;@&lt;version&gt;`.
  late final pulumi.Output<List<String>> pinnedTools;
  /// The version-pinned reference to the toolbelt, such as `search-toolbelt@2`. Sessions reference it as `toolbelt:&lt;reference&gt;`.
  late final pulumi.Output<String> reference;
  /// The reference to the latest version of the toolbelt.
  late final pulumi.Output<String> referenceLatest;
  /// The status of the toolbelt.
  late final pulumi.Output<String> status;
  /// The number of tools in the toolbelt.
  late final pulumi.Output<int> toolCount;
  /// The catalog tool slugs in the toolbelt, such as `exaWebSearch`. Each may be pinned as `&lt;tool_slug&gt;@&lt;version&gt;`, and a pin must equal the tool's current released version. An unpinned tool is pinned to its current released version when it is added. Changing the tools creates a new version of the toolbelt.
  late final pulumi.Output<List<String>?> tools;
  /// When the toolbelt was last modified.
  late final pulumi.Output<String> updatedAt;
  /// The current version of the toolbelt.
  late final pulumi.Output<String> version;

  /// Creates a new [ActionGatewayToolbelt].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ActionGatewayToolbelt]. {@macro pulumi_index_action_gateway_toolbelt_action_gateway_toolbelt_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ActionGatewayToolbelt(
    String name, {
    ActionGatewayToolbeltArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/actionGatewayToolbelt:ActionGatewayToolbelt',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.86.0').merge(options),
        ) {
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    pinnedTools = registerOutput<List<String>>('pinnedTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    reference = registerOutput<String>('reference');
    referenceLatest = registerOutput<String>('referenceLatest');
    status = registerOutput<String>('status');
    toolCount = registerOutput<int>('toolCount');
    tools = registerOutput<List<String>?>('tools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [ActionGatewayToolbelt] resource's state with the given [name] and [id].
  static ActionGatewayToolbelt get(
    String name,
    pulumi.Input<String> id, {
    ActionGatewayToolbeltState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ActionGatewayToolbelt._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ActionGatewayToolbelt._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/actionGatewayToolbelt:ActionGatewayToolbelt',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    pinnedTools = registerOutput<List<String>>('pinnedTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    reference = registerOutput<String>('reference');
    referenceLatest = registerOutput<String>('referenceLatest');
    status = registerOutput<String>('status');
    toolCount = registerOutput<int>('toolCount');
    tools = registerOutput<List<String>?>('tools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<String>('version');
  }

  /// Creates a typed reference to an existing [ActionGatewayToolbelt] resource.
  ActionGatewayToolbelt.reference(String urn)
    : super(
        'digitalocean:index/actionGatewayToolbelt:ActionGatewayToolbelt',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    pinnedTools = registerOutput<List<String>>('pinnedTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    reference = registerOutput<String>('reference');
    referenceLatest = registerOutput<String>('referenceLatest');
    status = registerOutput<String>('status');
    toolCount = registerOutput<int>('toolCount');
    tools = registerOutput<List<String>?>('tools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<String>('version');
  }
}
