import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_logic_prompt_template_args.dart';
import 'ai_logic_prompt_template_state.dart';

/// The PromptTemplate resource for Firebase AI Logic.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about PromptTemplate, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/ai-logic/rest/v1beta/projects.locations.templates)
/// * How-to Guides
/// * [Get started with server prompt templates](https://firebase.google.com/docs/ai-logic/server-prompt-templates/get-started)
/// * [Product documentation for Firebase AI Logic](https://firebase.google.com/docs/ai-logic)
/// * [Specification for Dotprompt format](https://google.github.io/dotprompt/getting-started)
///
/// ## Example Usage
///
/// ### Firebaseailogic Prompt Template File
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const file = new gcp.firebase.AiLogicPromptTemplate("file", {
///     location: "global",
///     templateId: "file-template",
///     templateString: std.file({
///         input: "test-fixtures/hello_world.prompt",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// file = gcp.firebase.AiLogicPromptTemplate("file",
///     location="global",
///     template_id="file-template",
///     template_string=std.file(input="test-fixtures/hello_world.prompt").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var file = new Gcp.Firebase.AiLogicPromptTemplate("file", new()
///     {
///         Location = "global",
///         TemplateId = "file-template",
///         TemplateString = Std.File.Invoke(new()
///         {
///             Input = "test-fixtures/hello_world.prompt",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/hello_world.prompt",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAiLogicPromptTemplate(ctx, "file", &firebase.AiLogicPromptTemplateArgs{
/// 			Location:       pulumi.String("global"),
/// 			TemplateId:     pulumi.String("file-template"),
/// 			TemplateString: pulumi.String(invokeFile.Result),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_firebase_ailogicprompttemplate" "file" {
///   location        = "global"
///   template_id     = "file-template"
///   template_string = file("test-fixtures/hello_world.prompt")
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.firebase.AiLogicPromptTemplate;
/// import com.pulumi.gcp.firebase.AiLogicPromptTemplateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var file = new AiLogicPromptTemplate("file", AiLogicPromptTemplateArgs.builder()
///             .location("global")
///             .templateId("file-template")
///             .templateString(StdFunctions.file(FileArgs.builder()
///                 .input("test-fixtures/hello_world.prompt")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   file:
///     type: gcp:firebase:AiLogicPromptTemplate
///     properties:
///       location: global
///       templateId: file-template
///       templateString:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: test-fixtures/hello_world.prompt
///           return: result
/// ```
///
/// ### Firebaseailogic Prompt Template Global Only
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const globalOnly = new gcp.firebase.AiLogicPromptTemplate("global_only", {
///     location: "global",
///     templateId: "global-only-template",
///     regionalPropagationDisabled: true,
///     templateString: std.file({
///         input: "test-fixtures/hello_world.prompt",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// global_only = gcp.firebase.AiLogicPromptTemplate("global_only",
///     location="global",
///     template_id="global-only-template",
///     regional_propagation_disabled=True,
///     template_string=std.file(input="test-fixtures/hello_world.prompt").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var globalOnly = new Gcp.Firebase.AiLogicPromptTemplate("global_only", new()
///     {
///         Location = "global",
///         TemplateId = "global-only-template",
///         RegionalPropagationDisabled = true,
///         TemplateString = Std.File.Invoke(new()
///         {
///             Input = "test-fixtures/hello_world.prompt",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/hello_world.prompt",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAiLogicPromptTemplate(ctx, "global_only", &firebase.AiLogicPromptTemplateArgs{
/// 			Location:                    pulumi.String("global"),
/// 			TemplateId:                  pulumi.String("global-only-template"),
/// 			RegionalPropagationDisabled: pulumi.Bool(true),
/// 			TemplateString:              pulumi.String(invokeFile.Result),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_firebase_ailogicprompttemplate" "global_only" {
///   location                      = "global"
///   template_id                   = "global-only-template"
///   regional_propagation_disabled = true
///   template_string               = file("test-fixtures/hello_world.prompt")
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.firebase.AiLogicPromptTemplate;
/// import com.pulumi.gcp.firebase.AiLogicPromptTemplateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var globalOnly = new AiLogicPromptTemplate("globalOnly", AiLogicPromptTemplateArgs.builder()
///             .location("global")
///             .templateId("global-only-template")
///             .regionalPropagationDisabled(true)
///             .templateString(StdFunctions.file(FileArgs.builder()
///                 .input("test-fixtures/hello_world.prompt")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   globalOnly:
///     type: gcp:firebase:AiLogicPromptTemplate
///     name: global_only
///     properties:
///       location: global
///       templateId: global-only-template
///       regionalPropagationDisabled: true
///       templateString:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: test-fixtures/hello_world.prompt
///           return: result
/// ```
///
/// ### Firebaseailogic Prompt Template Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.firebase.AiLogicPromptTemplate("basic", {
///     location: "global",
///     templateId: "basic-template",
///     templateString: `---
/// model: gemini-2.5-flash
/// ---
/// Hello world!
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.firebase.AiLogicPromptTemplate("basic",
///     location="global",
///     template_id="basic-template",
///     template_string="""---
/// model: gemini-2.5-flash
/// ---
/// Hello world!
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.Firebase.AiLogicPromptTemplate("basic", new()
///     {
///         Location = "global",
///         TemplateId = "basic-template",
///         TemplateString = @"---
/// model: gemini-2.5-flash
/// ---
/// Hello world!
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := firebase.NewAiLogicPromptTemplate(ctx, "basic", &firebase.AiLogicPromptTemplateArgs{
/// 			Location:       pulumi.String("global"),
/// 			TemplateId:     pulumi.String("basic-template"),
/// 			TemplateString: pulumi.String("---\nmodel: gemini-2.5-flash\n---\nHello world!\n"),
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
/// resource "gcp_firebase_ailogicprompttemplate" "basic" {
///   location        = "global"
///   template_id     = "basic-template"
///   template_string = "---\nmodel: gemini-2.5-flash\n---\nHello world!\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.firebase.AiLogicPromptTemplate;
/// import com.pulumi.gcp.firebase.AiLogicPromptTemplateArgs;
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
///         var basic = new AiLogicPromptTemplate("basic", AiLogicPromptTemplateArgs.builder()
///             .location("global")
///             .templateId("basic-template")
///             .templateString("""
/// ---
/// model: gemini-2.5-flash
/// ---
/// Hello world!
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:firebase:AiLogicPromptTemplate
///     properties:
///       location: global
///       templateId: basic-template
///       templateString: |
///         ---
///         model: gemini-2.5-flash
///         ---
///         Hello world!
/// ```
///
///
/// ## Import
///
/// PromptTemplate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/templates/{{template_id}}`
/// * `{{project}}/{{location}}/{{template_id}}`
/// * `{{location}}/{{template_id}}`
///
///
/// When using the `pulumi import` command, PromptTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/aiLogicPromptTemplate:AiLogicPromptTemplate default projects/{{project}}/locations/{{location}}/templates/{{template_id}}
/// $ pulumi import gcp:firebase/aiLogicPromptTemplate:AiLogicPromptTemplate default {{project}}/{{location}}/{{template_id}}
/// $ pulumi import gcp:firebase/aiLogicPromptTemplate:AiLogicPromptTemplate default {{location}}/{{template_id}}
/// ```
class AiLogicPromptTemplate extends pulumi.CustomResource {
  /// Timestamp when the PromptTemplate was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The display name of the PromptTemplate.
  late final pulumi.Output<String?> displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Indicates if the PromptTemplate has been locked for mutations.  It is
  /// strongly recommended that PromptTemplates used in production Apps be
  /// locked to avoid accidental distruption to live apps.
  /// To modify a PromptTemplate that has been locked, a call to ModifyLock with
  /// lock=false is required first.
  late final pulumi.Output<bool> locked;
  /// The model name parsed from the template_string.
  late final pulumi.Output<String> model;
  /// Identifier. The resource name of the PromptTemplate.
  /// Format:
  /// projects/{project}/locations/{location}/templates/{prompt_template}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// For the `global` location only. If true, the write operation (create,
  /// update, or delete) will apply to the global region only. Otherwise, the
  /// operation will also propagate to all applicable regions.
  late final pulumi.Output<bool?> regionalPropagationDisabled;
  /// Timestamp when the PromptTemplate state was last changed.
  late final pulumi.Output<String> stateChangeTime;
  /// The unique ID of the PromptTemplate, which is the final component of the
  /// PromptTemplate's resource name.
  late final pulumi.Output<String> templateId;
  /// The [Dotprompt](https://google.github.io/dotprompt/getting-started) raw template string.
  late final pulumi.Output<String> templateString;
  /// Timestamp when the PromptTemplate was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiLogicPromptTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiLogicPromptTemplate]. {@macro pulumi_firebase_ai_logic_prompt_template_ai_logic_prompt_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiLogicPromptTemplate(
    String name, {
    AiLogicPromptTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/aiLogicPromptTemplate:AiLogicPromptTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    locked = registerOutput<bool>('locked');
    model = registerOutput<String>('model');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    regionalPropagationDisabled = registerOutput<bool?>('regionalPropagationDisabled');
    stateChangeTime = registerOutput<String>('stateChangeTime');
    templateId = registerOutput<String>('templateId');
    templateString = registerOutput<String>('templateString');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AiLogicPromptTemplate] resource's state with the given [name] and [id].
  static AiLogicPromptTemplate get(
    String name,
    pulumi.Input<String> id, {
    AiLogicPromptTemplateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiLogicPromptTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiLogicPromptTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/aiLogicPromptTemplate:AiLogicPromptTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    locked = registerOutput<bool>('locked');
    model = registerOutput<String>('model');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    regionalPropagationDisabled = registerOutput<bool?>('regionalPropagationDisabled');
    stateChangeTime = registerOutput<String>('stateChangeTime');
    templateId = registerOutput<String>('templateId');
    templateString = registerOutput<String>('templateString');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [AiLogicPromptTemplate] resource.
  AiLogicPromptTemplate.reference(String urn)
    : super(
        'gcp:firebase/aiLogicPromptTemplate:AiLogicPromptTemplate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    locked = registerOutput<bool>('locked');
    model = registerOutput<String>('model');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    regionalPropagationDisabled = registerOutput<bool?>('regionalPropagationDisabled');
    stateChangeTime = registerOutput<String>('stateChangeTime');
    templateId = registerOutput<String>('templateId');
    templateString = registerOutput<String>('templateString');
    updateTime = registerOutput<String>('updateTime');
  }
}
