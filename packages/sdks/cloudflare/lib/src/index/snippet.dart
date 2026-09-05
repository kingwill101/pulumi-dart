import 'package:pulumi/pulumi.dart' as pulumi;
import 'snippet_args.dart';
import 'snippet_file.dart';
import 'snippet_metadata.dart';
import 'snippet_state.dart';

/// Accepted Permissions
///
/// - `Snippets Read`
/// - `Snippets Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleSnippet = new cloudflare.Snippet("example_snippet", {
///     zoneId: "9f1839b6152d298aca64c4e906b6d074",
///     snippetName: "my_snippet",
///     files: [{
///         name: "main.js",
///         content: `export default {
///   async fetch(request) {
///     return new Response('Hello, World!');
///   }
/// }
/// `,
///     }],
///     metadata: {
///         mainModule: "main.js",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_snippet = cloudflare.Snippet("example_snippet",
///     zone_id="9f1839b6152d298aca64c4e906b6d074",
///     snippet_name="my_snippet",
///     files=[{
///         "name": "main.js",
///         "content": """export default {
///   async fetch(request) {
///     return new Response('Hello, World!');
///   }
/// }
/// """,
///     }],
///     metadata={
///         "main_module": "main.js",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleSnippet = new Cloudflare.Snippet("example_snippet", new()
///     {
///         ZoneId = "9f1839b6152d298aca64c4e906b6d074",
///         SnippetName = "my_snippet",
///         Files = new[]
///         {
///             new Cloudflare.Inputs.SnippetFileArgs
///             {
///                 Name = "main.js",
///                 Content = @"export default {
///   async fetch(request) {
///     return new Response('Hello, World!');
///   }
/// }
/// ",
///             },
///         },
///         Metadata = new Cloudflare.Inputs.SnippetMetadataArgs
///         {
///             MainModule = "main.js",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewSnippet(ctx, "example_snippet", &cloudflare.SnippetArgs{
/// 			ZoneId:      pulumi.String("9f1839b6152d298aca64c4e906b6d074"),
/// 			SnippetName: pulumi.String("my_snippet"),
/// 			Files: cloudflare.SnippetFileArray{
/// 				&cloudflare.SnippetFileArgs{
/// 					Name: pulumi.String("main.js"),
/// 					Content: pulumi.String(`export default {
///   async fetch(request) {
///     return new Response('Hello, World!');
///   }
/// }
/// `),
/// 				},
/// 			},
/// 			Metadata: &cloudflare.SnippetMetadataArgs{
/// 				MainModule: pulumi.String("main.js"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_snippet" "example_snippet" {
///   zone_id      = "9f1839b6152d298aca64c4e906b6d074"
///   snippet_name = "my_snippet"
///   files {
///     name    = "main.js"
///     content = "export default {\n  async fetch(request) {\n    return new Response('Hello, World!');\n  }\n}\n"
///   }
///   metadata = {
///     main_module = "main.js"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.Snippet;
/// import com.pulumi.cloudflare.SnippetArgs;
/// import com.pulumi.cloudflare.inputs.SnippetFileArgs;
/// import com.pulumi.cloudflare.inputs.SnippetMetadataArgs;
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
///         var exampleSnippet = new Snippet("exampleSnippet", SnippetArgs.builder()
///             .zoneId("9f1839b6152d298aca64c4e906b6d074")
///             .snippetName("my_snippet")
///             .files(SnippetFileArgs.builder()
///                 .name("main.js")
///                 .content("""
/// export default {
///   async fetch(request) {
///     return new Response('Hello, World!');
///   }
/// }
///                 """)
///                 .build())
///             .metadata(SnippetMetadataArgs.builder()
///                 .mainModule("main.js")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSnippet:
///     type: cloudflare:Snippet
///     name: example_snippet
///     properties:
///       zoneId: 9f1839b6152d298aca64c4e906b6d074
///       snippetName: my_snippet
///       files:
///         - name: main.js
///           content: |
///             export default {
///               async fetch(request) {
///                 return new Response('Hello, World!');
///               }
///             }
///       metadata:
///         mainModule: main.js
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/snippet:Snippet example '<zone_id>/<snippet_name>'
/// ```
class Snippet extends pulumi.CustomResource {
  /// Indicates when the snippet was created.
  late final pulumi.Output<String> createdOn;
  /// The list of files belonging to the snippet.
  late final pulumi.Output<List<SnippetFile>> files;
  /// Provide metadata about the snippet.
  late final pulumi.Output<SnippetMetadata> metadata;
  /// Indicates when the snippet was last modified.
  late final pulumi.Output<String> modifiedOn;
  /// Identify the snippet.
  late final pulumi.Output<String> snippetName;
  /// Use this field to specify the unique ID of the zone.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Snippet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snippet]. {@macro pulumi_index_snippet_snippet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snippet(
    String name, {
    SnippetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/snippet:Snippet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    createdOn = registerOutput<String>('createdOn');
    files = registerOutput<List<SnippetFile>>('files', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SnippetFile>(guardedValue, (value) => SnippetFile.fromMap((value as Map).cast<String, dynamic>())); });
    metadata = registerOutput<SnippetMetadata>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnippetMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    snippetName = registerOutput<String>('snippetName');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Snippet] resource's state with the given [name] and [id].
  static Snippet get(
    String name,
    pulumi.Input<String> id, {
    SnippetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Snippet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Snippet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/snippet:Snippet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdOn = registerOutput<String>('createdOn');
    files = registerOutput<List<SnippetFile>>('files', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SnippetFile>(guardedValue, (value) => SnippetFile.fromMap((value as Map).cast<String, dynamic>())); });
    metadata = registerOutput<SnippetMetadata>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnippetMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    snippetName = registerOutput<String>('snippetName');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [Snippet] resource.
  Snippet.reference(String urn)
    : super(
        'cloudflare:index/snippet:Snippet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdOn = registerOutput<String>('createdOn');
    files = registerOutput<List<SnippetFile>>('files', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SnippetFile>(guardedValue, (value) => SnippetFile.fromMap((value as Map).cast<String, dynamic>())); });
    metadata = registerOutput<SnippetMetadata>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnippetMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    snippetName = registerOutput<String>('snippetName');
    zoneId = registerOutput<String>('zoneId');
  }
}
