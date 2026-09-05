import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_repository_index_args.dart';
import 'code_repository_index_state.dart';

/// The resource for managing Code Repository Index for Gemini Code Assist.
///
///
/// To get more information about CodeRepositoryIndex, see:
///
/// * [API documentation](https://cloud.google.com/gemini/docs/api/reference/rest/v1/projects.locations.codeRepositoryIndexes)
/// * How-to Guides
/// * [Gemini Code Assist overview](https://cloud.google.com/gemini/docs/codeassist/overview)
///
/// ## Example Usage
///
/// ### Gemini Code Repository Index Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.gemini.CodeRepositoryIndex("example", {
///     location: "us-central1",
///     codeRepositoryIndexId: "code-repository-index-example",
///     kmsKey: "projects/projectExample/locations/locationExample/keyRings/keyRingExample/cryptoKeys/cryptoKeyExample",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gemini.CodeRepositoryIndex("example",
///     location="us-central1",
///     code_repository_index_id="code-repository-index-example",
///     kms_key="projects/projectExample/locations/locationExample/keyRings/keyRingExample/cryptoKeys/cryptoKeyExample")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Gemini.CodeRepositoryIndex("example", new()
///     {
///         Location = "us-central1",
///         CodeRepositoryIndexId = "code-repository-index-example",
///         KmsKey = "projects/projectExample/locations/locationExample/keyRings/keyRingExample/cryptoKeys/cryptoKeyExample",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gemini"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gemini.NewCodeRepositoryIndex(ctx, "example", &gemini.CodeRepositoryIndexArgs{
/// 			Location:              pulumi.String("us-central1"),
/// 			CodeRepositoryIndexId: pulumi.String("code-repository-index-example"),
/// 			KmsKey:                pulumi.String("projects/projectExample/locations/locationExample/keyRings/keyRingExample/cryptoKeys/cryptoKeyExample"),
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
/// resource "gcp_gemini_coderepositoryindex" "example" {
///   location                 = "us-central1"
///   code_repository_index_id = "code-repository-index-example"
///   kms_key                  = "projects/projectExample/locations/locationExample/keyRings/keyRingExample/cryptoKeys/cryptoKeyExample"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gemini.CodeRepositoryIndex;
/// import com.pulumi.gcp.gemini.CodeRepositoryIndexArgs;
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
///         var example = new CodeRepositoryIndex("example", CodeRepositoryIndexArgs.builder()
///             .location("us-central1")
///             .codeRepositoryIndexId("code-repository-index-example")
///             .kmsKey("projects/projectExample/locations/locationExample/keyRings/keyRingExample/cryptoKeys/cryptoKeyExample")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:gemini:CodeRepositoryIndex
///     properties:
///       location: us-central1
///       codeRepositoryIndexId: code-repository-index-example
///       kmsKey: projects/projectExample/locations/locationExample/keyRings/keyRingExample/cryptoKeys/cryptoKeyExample
/// ```
///
///
/// ## Import
///
/// CodeRepositoryIndex can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index_id}}`
/// * `{{project}}/{{location}}/{{code_repository_index_id}}`
/// * `{{location}}/{{code_repository_index_id}}`
///
///
/// When using the `pulumi import` command, CodeRepositoryIndex can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/codeRepositoryIndex:CodeRepositoryIndex default projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index_id}}
/// $ pulumi import gcp:gemini/codeRepositoryIndex:CodeRepositoryIndex default {{project}}/{{location}}/{{code_repository_index_id}}
/// $ pulumi import gcp:gemini/codeRepositoryIndex:CodeRepositoryIndex default {{location}}/{{code_repository_index_id}}
/// ```
class CodeRepositoryIndex extends pulumi.CustomResource {
  /// Required. Id of the Code Repository Index.
  late final pulumi.Output<String> codeRepositoryIndexId;
  /// Output only. Create time stamp.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// If set to true, will allow deletion of the CodeRepositoryIndex even if there are existing RepositoryGroups for the resource. These RepositoryGroups will also be deleted.
  late final pulumi.Output<bool?> forceDestroy;
  /// Optional. Immutable. Customer-managed encryption key name, in the format
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  late final pulumi.Output<String?> kmsKey;
  /// Optional. Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the Code Repository Index, for example `us-central1`.
  late final pulumi.Output<String> location;
  /// Immutable. Identifier. Name of Code Repository Index.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Output only. Code Repository Index instance State.
  /// Possible values are: `STATE_UNSPECIFIED`, `CREATING`, `ACTIVE`, `DELETING`, `SUSPENDED`.
  late final pulumi.Output<String> state;
  /// Output only. Update time stamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CodeRepositoryIndex].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CodeRepositoryIndex]. {@macro pulumi_gemini_code_repository_index_code_repository_index_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CodeRepositoryIndex(
    String name, {
    CodeRepositoryIndexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/codeRepositoryIndex:CodeRepositoryIndex',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    codeRepositoryIndexId = registerOutput<String>('codeRepositoryIndexId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    forceDestroy = registerOutput<bool?>('forceDestroy');
    kmsKey = registerOutput<String?>('kmsKey');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [CodeRepositoryIndex] resource's state with the given [name] and [id].
  static CodeRepositoryIndex get(
    String name,
    pulumi.Input<String> id, {
    CodeRepositoryIndexState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CodeRepositoryIndex._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CodeRepositoryIndex._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/codeRepositoryIndex:CodeRepositoryIndex',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    codeRepositoryIndexId = registerOutput<String>('codeRepositoryIndexId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    forceDestroy = registerOutput<bool?>('forceDestroy');
    kmsKey = registerOutput<String?>('kmsKey');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [CodeRepositoryIndex] resource.
  CodeRepositoryIndex.reference(String urn)
    : super(
        'gcp:gemini/codeRepositoryIndex:CodeRepositoryIndex',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    codeRepositoryIndexId = registerOutput<String>('codeRepositoryIndexId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    forceDestroy = registerOutput<bool?>('forceDestroy');
    kmsKey = registerOutput<String?>('kmsKey');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
