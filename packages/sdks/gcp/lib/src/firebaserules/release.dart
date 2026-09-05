import 'package:pulumi/pulumi.dart' as pulumi;
import 'release_args.dart';
import 'release_state.dart';

/// For more information, see:
/// * [Get started with Firebase Security Rules](https://firebase.google.com/docs/rules/get-started)
/// ## Example Usage
///
/// ### Firestore_release
/// Creates a Firebase Rules Release to the default Cloud Firestore instance
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const firestore = new gcp.firebaserules.Ruleset("firestore", {
///     project: "my-project-name",
///     source: {
///         files: [{
///             content: "service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }",
///             name: "firestore.rules",
///         }],
///     },
/// });
/// const primary = new gcp.firebaserules.Release("primary", {
///     name: "cloud.firestore",
///     project: "my-project-name",
///     rulesetName: pulumi.interpolate`projects/my-project-name/rulesets/${firestore.name}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// firestore = gcp.firebaserules.Ruleset("firestore",
///     project="my-project-name",
///     source={
///         "files": [{
///             "content": "service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }",
///             "name": "firestore.rules",
///         }],
///     })
/// primary = gcp.firebaserules.Release("primary",
///     name="cloud.firestore",
///     project="my-project-name",
///     ruleset_name=firestore.name.apply(lambda name: f"projects/my-project-name/rulesets/{name}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firestore = new Gcp.Firebaserules.Ruleset("firestore", new()
///     {
///         Project = "my-project-name",
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
///     });
///
///     var primary = new Gcp.Firebaserules.Release("primary", new()
///     {
///         Name = "cloud.firestore",
///         Project = "my-project-name",
///         RulesetName = firestore.Name.Apply(name => $"projects/my-project-name/rulesets/{name}"),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebaserules"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		firestore, err := firebaserules.NewRuleset(ctx, "firestore", &firebaserules.RulesetArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Source: &firebaserules.RulesetSourceArgs{
/// 				Files: firebaserules.RulesetSourceFileArray{
/// 					&firebaserules.RulesetSourceFileArgs{
/// 						Content: pulumi.String("service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }"),
/// 						Name:    pulumi.String("firestore.rules"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebaserules.NewRelease(ctx, "primary", &firebaserules.ReleaseArgs{
/// 			Name:    pulumi.String("cloud.firestore"),
/// 			Project: pulumi.String("my-project-name"),
/// 			RulesetName: firestore.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("projects/my-project-name/rulesets/%v", name), nil
/// 			}).(pulumi.StringOutput),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_firebaserules_release" "primary" {
///   name         = "cloud.firestore"
///   project      = "my-project-name"
///   ruleset_name ="projects/my-project-name/rulesets/${gcp_firebaserules_ruleset.firestore.name}"
/// }
/// resource "gcp_firebaserules_ruleset" "firestore" {
///   project = "my-project-name"
///   source = {
///     files = [{
///       "content" = "service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }"
///       "name"    = "firestore.rules"
///     }]
///   }
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
/// import com.pulumi.gcp.firebaserules.inputs.RulesetSourceFileArgs;
/// import com.pulumi.gcp.firebaserules.Release;
/// import com.pulumi.gcp.firebaserules.ReleaseArgs;
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
///         var firestore = new Ruleset("firestore", RulesetArgs.builder()
///             .project("my-project-name")
///             .source(RulesetSourceArgs.builder()
///                 .files(RulesetSourceFileArgs.builder()
///                     .content("service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }")
///                     .name("firestore.rules")
///                     .build())
///                 .build())
///             .build());
///
///         var primary = new Release("primary", ReleaseArgs.builder()
///             .name("cloud.firestore")
///             .project("my-project-name")
///             .rulesetName(firestore.name().applyValue(_name -> String.format("projects/my-project-name/rulesets/%s", _name)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:firebaserules:Release
///     properties:
///       name: cloud.firestore
///       project: my-project-name
///       rulesetName: projects/my-project-name/rulesets/${firestore.name}
///   firestore:
///     type: gcp:firebaserules:Ruleset
///     properties:
///       project: my-project-name
///       source:
///         files:
///           - content: 'service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }'
///             name: firestore.rules
/// ```
///
/// ### Firestore_release_additional
/// Creates a Firebase Rules Release to an additional Cloud Firestore instance
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const firestore = new gcp.firebaserules.Ruleset("firestore", {
///     project: "my-project-name",
///     source: {
///         files: [{
///             content: "service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }",
///             name: "firestore.rules",
///         }],
///     },
/// });
/// const primary = new gcp.firebaserules.Release("primary", {
///     name: "cloud.firestore/database",
///     project: "my-project-name",
///     rulesetName: pulumi.interpolate`projects/my-project-name/rulesets/${firestore.name}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// firestore = gcp.firebaserules.Ruleset("firestore",
///     project="my-project-name",
///     source={
///         "files": [{
///             "content": "service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }",
///             "name": "firestore.rules",
///         }],
///     })
/// primary = gcp.firebaserules.Release("primary",
///     name="cloud.firestore/database",
///     project="my-project-name",
///     ruleset_name=firestore.name.apply(lambda name: f"projects/my-project-name/rulesets/{name}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firestore = new Gcp.Firebaserules.Ruleset("firestore", new()
///     {
///         Project = "my-project-name",
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
///     });
///
///     var primary = new Gcp.Firebaserules.Release("primary", new()
///     {
///         Name = "cloud.firestore/database",
///         Project = "my-project-name",
///         RulesetName = firestore.Name.Apply(name => $"projects/my-project-name/rulesets/{name}"),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebaserules"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		firestore, err := firebaserules.NewRuleset(ctx, "firestore", &firebaserules.RulesetArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Source: &firebaserules.RulesetSourceArgs{
/// 				Files: firebaserules.RulesetSourceFileArray{
/// 					&firebaserules.RulesetSourceFileArgs{
/// 						Content: pulumi.String("service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }"),
/// 						Name:    pulumi.String("firestore.rules"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebaserules.NewRelease(ctx, "primary", &firebaserules.ReleaseArgs{
/// 			Name:    pulumi.String("cloud.firestore/database"),
/// 			Project: pulumi.String("my-project-name"),
/// 			RulesetName: firestore.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("projects/my-project-name/rulesets/%v", name), nil
/// 			}).(pulumi.StringOutput),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_firebaserules_release" "primary" {
///   name         = "cloud.firestore/database"
///   project      = "my-project-name"
///   ruleset_name ="projects/my-project-name/rulesets/${gcp_firebaserules_ruleset.firestore.name}"
/// }
/// resource "gcp_firebaserules_ruleset" "firestore" {
///   project = "my-project-name"
///   source = {
///     files = [{
///       "content" = "service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }"
///       "name"    = "firestore.rules"
///     }]
///   }
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
/// import com.pulumi.gcp.firebaserules.inputs.RulesetSourceFileArgs;
/// import com.pulumi.gcp.firebaserules.Release;
/// import com.pulumi.gcp.firebaserules.ReleaseArgs;
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
///         var firestore = new Ruleset("firestore", RulesetArgs.builder()
///             .project("my-project-name")
///             .source(RulesetSourceArgs.builder()
///                 .files(RulesetSourceFileArgs.builder()
///                     .content("service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }")
///                     .name("firestore.rules")
///                     .build())
///                 .build())
///             .build());
///
///         var primary = new Release("primary", ReleaseArgs.builder()
///             .name("cloud.firestore/database")
///             .project("my-project-name")
///             .rulesetName(firestore.name().applyValue(_name -> String.format("projects/my-project-name/rulesets/%s", _name)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:firebaserules:Release
///     properties:
///       name: cloud.firestore/database
///       project: my-project-name
///       rulesetName: projects/my-project-name/rulesets/${firestore.name}
///   firestore:
///     type: gcp:firebaserules:Ruleset
///     properties:
///       project: my-project-name
///       source:
///         files:
///           - content: 'service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }'
///             name: firestore.rules
/// ```
///
/// ## Import
///
/// Release can be imported using any of these accepted formats:
/// * `projects/{{project}}/releases/{{name}}`
///
///
/// When using the `pulumi import` command, Release can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebaserules/release:Release default projects/{{project}}/releases/{{name}}
/// ```
class Release extends pulumi.CustomResource {
  /// Output only. Time the release was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Disable the release to keep it from being served. The response code of NOT_FOUND will be given for executables generated from this Release.
  late final pulumi.Output<bool> disabled;
  /// Format: `projects/{project_id}/releases/{release_id}`\Firestore Rules Releases will **always** have the name 'cloud.firestore'
  late final pulumi.Output<String> name;
  /// The project for the resource
  late final pulumi.Output<String> project;
  /// Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created.
  ///
  ///
  ///
  /// - - -
  late final pulumi.Output<String> rulesetName;
  /// Output only. Time the release was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Release].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Release]. {@macro pulumi_firebaserules_release_release_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Release(
    String name, {
    ReleaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebaserules/release:Release',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disabled = registerOutput<bool>('disabled');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rulesetName = registerOutput<String>('rulesetName');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Release] resource's state with the given [name] and [id].
  static Release get(
    String name,
    pulumi.Input<String> id, {
    ReleaseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Release._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Release._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebaserules/release:Release',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disabled = registerOutput<bool>('disabled');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rulesetName = registerOutput<String>('rulesetName');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Release] resource.
  Release.reference(String urn)
    : super(
        'gcp:firebaserules/release:Release',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disabled = registerOutput<bool>('disabled');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rulesetName = registerOutput<String>('rulesetName');
    updateTime = registerOutput<String>('updateTime');
  }
}
