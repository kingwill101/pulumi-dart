import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_logic_prompt_template_lock_args.dart';
import 'ai_logic_prompt_template_lock_state.dart';

/// A resource that manages the lock state of a PromptTemplate.
/// When this resource is created, the template is locked.
/// When this resource is deleted, the template is unlocked.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
/// ### Firebaseailogic Prompt Template Lock Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.firebase.AiLogicPromptTemplate("basic", {
///     location: "global",
///     templateId: "lock-template",
///     templateString: `---
/// model: googleai/gemini-1.5-flash
/// ---
/// Hello World
/// `,
/// });
/// const basicLock = new gcp.firebase.AiLogicPromptTemplateLock("basic_lock", {
///     location: basic.location,
///     templateId: basic.templateId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.firebase.AiLogicPromptTemplate("basic",
///     location="global",
///     template_id="lock-template",
///     template_string="""---
/// model: googleai/gemini-1.5-flash
/// ---
/// Hello World
/// """)
/// basic_lock = gcp.firebase.AiLogicPromptTemplateLock("basic_lock",
///     location=basic.location,
///     template_id=basic.template_id)
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
///         TemplateId = "lock-template",
///         TemplateString = @"---
/// model: googleai/gemini-1.5-flash
/// ---
/// Hello World
/// ",
///     });
///
///     var basicLock = new Gcp.Firebase.AiLogicPromptTemplateLock("basic_lock", new()
///     {
///         Location = basic.Location,
///         TemplateId = basic.TemplateId,
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
/// 		basic, err := firebase.NewAiLogicPromptTemplate(ctx, "basic", &firebase.AiLogicPromptTemplateArgs{
/// 			Location:       pulumi.String("global"),
/// 			TemplateId:     pulumi.String("lock-template"),
/// 			TemplateString: pulumi.String("---\nmodel: googleai/gemini-1.5-flash\n---\nHello World\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAiLogicPromptTemplateLock(ctx, "basic_lock", &firebase.AiLogicPromptTemplateLockArgs{
/// 			Location:   basic.Location,
/// 			TemplateId: basic.TemplateId,
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
///   template_id     = "lock-template"
///   template_string = "---\nmodel: googleai/gemini-1.5-flash\n---\nHello World\n"
/// }
/// resource "gcp_firebase_ailogicprompttemplatelock" "basic_lock" {
///   location    = gcp_firebase_ailogicprompttemplate.basic.location
///   template_id = gcp_firebase_ailogicprompttemplate.basic.template_id
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
/// import com.pulumi.gcp.firebase.AiLogicPromptTemplateLock;
/// import com.pulumi.gcp.firebase.AiLogicPromptTemplateLockArgs;
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
///             .templateId("lock-template")
///             .templateString("""
/// ---
/// model: googleai/gemini-1.5-flash
/// ---
/// Hello World
///             """)
///             .build());
///
///         var basicLock = new AiLogicPromptTemplateLock("basicLock", AiLogicPromptTemplateLockArgs.builder()
///             .location(basic.location())
///             .templateId(basic.templateId())
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
///       templateId: lock-template
///       templateString: |
///         ---
///         model: googleai/gemini-1.5-flash
///         ---
///         Hello World
///   basicLock:
///     type: gcp:firebase:AiLogicPromptTemplateLock
///     name: basic_lock
///     properties:
///       location: ${basic.location}
///       templateId: ${basic.templateId}
/// ```
///
/// ### Firebaseailogic Prompt Template Lock Global Only
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const globalOnly = new gcp.firebase.AiLogicPromptTemplate("global_only", {
///     location: "global",
///     templateId: "global-only-lock-template",
///     templateString: `---
/// model: googleai/gemini-1.5-flash
/// ---
/// Hello World
/// `,
/// });
/// const globalOnlyLock = new gcp.firebase.AiLogicPromptTemplateLock("global_only_lock", {
///     location: globalOnly.location,
///     templateId: globalOnly.templateId,
///     regionalPropagationDisabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// global_only = gcp.firebase.AiLogicPromptTemplate("global_only",
///     location="global",
///     template_id="global-only-lock-template",
///     template_string="""---
/// model: googleai/gemini-1.5-flash
/// ---
/// Hello World
/// """)
/// global_only_lock = gcp.firebase.AiLogicPromptTemplateLock("global_only_lock",
///     location=global_only.location,
///     template_id=global_only.template_id,
///     regional_propagation_disabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var globalOnly = new Gcp.Firebase.AiLogicPromptTemplate("global_only", new()
///     {
///         Location = "global",
///         TemplateId = "global-only-lock-template",
///         TemplateString = @"---
/// model: googleai/gemini-1.5-flash
/// ---
/// Hello World
/// ",
///     });
///
///     var globalOnlyLock = new Gcp.Firebase.AiLogicPromptTemplateLock("global_only_lock", new()
///     {
///         Location = globalOnly.Location,
///         TemplateId = globalOnly.TemplateId,
///         RegionalPropagationDisabled = true,
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
/// 		globalOnly, err := firebase.NewAiLogicPromptTemplate(ctx, "global_only", &firebase.AiLogicPromptTemplateArgs{
/// 			Location:       pulumi.String("global"),
/// 			TemplateId:     pulumi.String("global-only-lock-template"),
/// 			TemplateString: pulumi.String("---\nmodel: googleai/gemini-1.5-flash\n---\nHello World\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAiLogicPromptTemplateLock(ctx, "global_only_lock", &firebase.AiLogicPromptTemplateLockArgs{
/// 			Location:                    globalOnly.Location,
/// 			TemplateId:                  globalOnly.TemplateId,
/// 			RegionalPropagationDisabled: pulumi.Bool(true),
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
/// resource "gcp_firebase_ailogicprompttemplate" "global_only" {
///   location        = "global"
///   template_id     = "global-only-lock-template"
///   template_string = "---\nmodel: googleai/gemini-1.5-flash\n---\nHello World\n"
/// }
/// resource "gcp_firebase_ailogicprompttemplatelock" "global_only_lock" {
///   location                      = gcp_firebase_ailogicprompttemplate.global_only.location
///   template_id                   = gcp_firebase_ailogicprompttemplate.global_only.template_id
///   regional_propagation_disabled = true
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
/// import com.pulumi.gcp.firebase.AiLogicPromptTemplateLock;
/// import com.pulumi.gcp.firebase.AiLogicPromptTemplateLockArgs;
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
///             .templateId("global-only-lock-template")
///             .templateString("""
/// ---
/// model: googleai/gemini-1.5-flash
/// ---
/// Hello World
///             """)
///             .build());
///
///         var globalOnlyLock = new AiLogicPromptTemplateLock("globalOnlyLock", AiLogicPromptTemplateLockArgs.builder()
///             .location(globalOnly.location())
///             .templateId(globalOnly.templateId())
///             .regionalPropagationDisabled(true)
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
///       templateId: global-only-lock-template
///       templateString: |
///         ---
///         model: googleai/gemini-1.5-flash
///         ---
///         Hello World
///   globalOnlyLock:
///     type: gcp:firebase:AiLogicPromptTemplateLock
///     name: global_only_lock
///     properties:
///       location: ${globalOnly.location}
///       templateId: ${globalOnly.templateId}
///       regionalPropagationDisabled: true
/// ```
///
///
/// ## Import
///
/// PromptTemplateLock can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/templates/{{template_id}}`
/// * `{{project}}/{{location}}/{{template_id}}`
/// * `{{location}}/{{template_id}}`
///
///
/// When using the `pulumi import` command, PromptTemplateLock can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/aiLogicPromptTemplateLock:AiLogicPromptTemplateLock default projects/{{project}}/locations/{{location}}/templates/{{template_id}}
/// $ pulumi import gcp:firebase/aiLogicPromptTemplateLock:AiLogicPromptTemplateLock default {{project}}/{{location}}/{{template_id}}
/// $ pulumi import gcp:firebase/aiLogicPromptTemplateLock:AiLogicPromptTemplateLock default {{location}}/{{template_id}}
/// ```
class AiLogicPromptTemplateLock extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The location of the prompt template.
  late final pulumi.Output<String> location;
  /// Indicates if the prompt template is currently locked.
  /// This is verified against the server-side PromptTemplate resource.
  late final pulumi.Output<bool> locked;
  /// The resource name of the prompt template.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// For the `global` location only. If true, the modifyLock operation will
  /// apply to the global region only. Otherwise, the operation will also
  /// propagate to all applicable regions.
  late final pulumi.Output<bool?> regionalPropagationDisabled;
  /// The ID of the prompt template.
  late final pulumi.Output<String> templateId;

  /// Creates a new [AiLogicPromptTemplateLock].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiLogicPromptTemplateLock]. {@macro pulumi_firebase_ai_logic_prompt_template_lock_ai_logic_prompt_template_lock_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiLogicPromptTemplateLock(
    String name, {
    AiLogicPromptTemplateLockArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/aiLogicPromptTemplateLock:AiLogicPromptTemplateLock',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    locked = registerOutput<bool>('locked');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    regionalPropagationDisabled = registerOutput<bool?>('regionalPropagationDisabled');
    templateId = registerOutput<String>('templateId');
  }

  /// Gets an existing [AiLogicPromptTemplateLock] resource's state with the given [name] and [id].
  static AiLogicPromptTemplateLock get(
    String name,
    pulumi.Input<String> id, {
    AiLogicPromptTemplateLockState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiLogicPromptTemplateLock._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiLogicPromptTemplateLock._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/aiLogicPromptTemplateLock:AiLogicPromptTemplateLock',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    locked = registerOutput<bool>('locked');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    regionalPropagationDisabled = registerOutput<bool?>('regionalPropagationDisabled');
    templateId = registerOutput<String>('templateId');
  }

  /// Creates a typed reference to an existing [AiLogicPromptTemplateLock] resource.
  AiLogicPromptTemplateLock.reference(String urn)
    : super(
        'gcp:firebase/aiLogicPromptTemplateLock:AiLogicPromptTemplateLock',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    locked = registerOutput<bool>('locked');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    regionalPropagationDisabled = registerOutput<bool?>('regionalPropagationDisabled');
    templateId = registerOutput<String>('templateId');
  }
}
