import 'package:pulumi/pulumi.dart' as pulumi;
import 'ruleset_args.dart';
import 'ruleset_source.dart';
import 'ruleset_state.dart';

/// For more information, see:
/// * [Get started with Firebase Security Rules](https://firebase.google.com/docs/rules/get-started)
/// ## Example Usage
///
/// ### Basic_ruleset
/// Creates a basic Firestore ruleset
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.firebaserules.Ruleset("primary", {
///     source: {
///         files: [{
///             content: "service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }",
///             name: "firestore.rules",
///             fingerprint: "",
///         }],
///         language: "",
///     },
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.firebaserules.Ruleset("primary",
///     source={
///         "files": [{
///             "content": "service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }",
///             "name": "firestore.rules",
///             "fingerprint": "",
///         }],
///         "language": "",
///     },
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Firebaserules.Ruleset("primary", new()
///     {
///         Source = new Gcp.Firebaserules.Inputs.RulesetSourceArgs
///         {
///             Files = new[]
///             {
///                 new Gcp.Firebaserules.Inputs.RulesetSourceFileArgs
///                 {
///                     Content = "service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }",
///                     Name = "firestore.rules",
///                     Fingerprint = "",
///                 },
///             },
///             Language = "",
///         },
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebaserules"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := firebaserules.NewRuleset(ctx, "primary", &firebaserules.RulesetArgs{
/// 			Source: &firebaserules.RulesetSourceArgs{
/// 				Files: firebaserules.RulesetSourceFileArray{
/// 					&firebaserules.RulesetSourceFileArgs{
/// 						Content:     pulumi.String("service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }"),
/// 						Name:        pulumi.String("firestore.rules"),
/// 						Fingerprint: pulumi.String(""),
/// 					},
/// 				},
/// 				Language: pulumi.String(""),
/// 			},
/// 			Project: pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.firebaserules.Ruleset;
/// import com.pulumi.gcp.firebaserules.RulesetArgs;
/// import com.pulumi.gcp.firebaserules.inputs.RulesetSourceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var primary = new Ruleset("primary", RulesetArgs.builder()
///             .source(RulesetSourceArgs.builder()
///                 .files(RulesetSourceFileArgs.builder()
///                     .content("service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }")
///                     .name("firestore.rules")
///                     .fingerprint("")
///                     .build())
///                 .language("")
///                 .build())
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:firebaserules:Ruleset
///     properties:
///       source:
///         files:
///           - content: 'service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }'
///             name: firestore.rules
///             fingerprint: ""
///         language: ""
///       project: my-project-name
/// ```
///
/// ### Minimal_ruleset
/// Creates a minimal Firestore ruleset
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.firebaserules.Ruleset("primary", {
///     source: {
///         files: [{
///             content: "service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }",
///             name: "firestore.rules",
///         }],
///     },
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.firebaserules.Ruleset("primary",
///     source={
///         "files": [{
///             "content": "service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }",
///             "name": "firestore.rules",
///         }],
///     },
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Firebaserules.Ruleset("primary", new()
///     {
///         Source = new Gcp.Firebaserules.Inputs.RulesetSourceArgs
///         {
///             Files = new[]
///             {
///                 new Gcp.Firebaserules.Inputs.RulesetSourceFileArgs
///                 {
///                     Content = "service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }",
///                     Name = "firestore.rules",
///                 },
///             },
///         },
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebaserules"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := firebaserules.NewRuleset(ctx, "primary", &firebaserules.RulesetArgs{
/// 			Source: &firebaserules.RulesetSourceArgs{
/// 				Files: firebaserules.RulesetSourceFileArray{
/// 					&firebaserules.RulesetSourceFileArgs{
/// 						Content: pulumi.String("service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }"),
/// 						Name:    pulumi.String("firestore.rules"),
/// 					},
/// 				},
/// 			},
/// 			Project: pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.firebaserules.Ruleset;
/// import com.pulumi.gcp.firebaserules.RulesetArgs;
/// import com.pulumi.gcp.firebaserules.inputs.RulesetSourceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var primary = new Ruleset("primary", RulesetArgs.builder()
///             .source(RulesetSourceArgs.builder()
///                 .files(RulesetSourceFileArgs.builder()
///                     .content("service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }")
///                     .name("firestore.rules")
///                     .build())
///                 .build())
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:firebaserules:Ruleset
///     properties:
///       source:
///         files:
///           - content: 'service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }'
///             name: firestore.rules
///       project: my-project-name
/// ```
///
///
/// ## Import
///
/// Ruleset can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/rulesets/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Ruleset can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebaserules/ruleset:Ruleset default projects/{{project}}/rulesets/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebaserules/ruleset:Ruleset default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebaserules/ruleset:Ruleset default {{name}}
/// ```
class Ruleset extends pulumi.CustomResource {
  /// Output only. Time the `Ruleset` was created.
  late final pulumi.Output<String> createTime;
  /// Output only. The metadata for this ruleset.
  late final pulumi.Output<List<Map<String, dynamic>>> metadatas;
  /// Output only. Name of the `Ruleset`. The ruleset_id is auto generated by the service. Format: `projects/{project_id}/rulesets/{ruleset_id}`
  late final pulumi.Output<String> name;
  /// The project for the resource
  late final pulumi.Output<String> project;
  /// `Source` for the `Ruleset`.
  late final pulumi.Output<RulesetSource> source;

  /// Creates a new [Ruleset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ruleset]. {@macro pulumi_firebaserules_ruleset_ruleset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ruleset(
    String name, {
    RulesetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebaserules/ruleset:Ruleset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    metadatas = registerOutput<List<Map<String, dynamic>>>('metadatas');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    source = registerOutput<RulesetSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RulesetSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Ruleset] resource's state with the given [name] and [id].
  static Ruleset get(
    String name,
    pulumi.Input<String> id, {
    RulesetState? state,
  }) {
    return Ruleset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Ruleset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebaserules/ruleset:Ruleset',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    metadatas = registerOutput<List<Map<String, dynamic>>>('metadatas');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    source = registerOutput<RulesetSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RulesetSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
