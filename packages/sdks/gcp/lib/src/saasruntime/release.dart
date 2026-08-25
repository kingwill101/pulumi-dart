import 'package:pulumi/pulumi.dart' as pulumi;
import 'release_args.dart';
import 'release_blueprint.dart';
import 'release_input_variable.dart';
import 'release_input_variable_default.dart';
import 'release_output_variable.dart';
import 'release_release_requirements.dart';
import 'release_state.dart';

/// A version to be propagated and deployed to Units. It points to a specific version of a Blueprint that can be applied to Units, for example, via a Rollout.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
/// ### Saas Runtime Release Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exampleSaas = new gcp.saasruntime.SaaS("example_saas", {
///     saasId: "example-saas",
///     location: "global",
///     locations: [{
///         name: "us-central1",
///     }],
/// });
/// const exampleUnitkind = new gcp.saasruntime.UnitKind("example_unitkind", {
///     location: "global",
///     unitKindId: "example-unitkind",
///     saas: exampleSaas.id,
/// });
/// const examplePrevious = new gcp.saasruntime.Release("example_previous", {
///     location: "global",
///     releaseId: "previous-release",
///     unitKind: exampleUnitkind.id,
///     blueprint: {
///         "package": "us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-alpha-image@sha256:7992fdbaeaf998ecd31a7f937bb26e38a781ecf49b24857a6176c1e9bfc299ee",
///     },
/// });
/// const example = new gcp.saasruntime.Release("example", {
///     location: "global",
///     releaseId: "example-release",
///     unitKind: exampleUnitkind.id,
///     blueprint: {
///         "package": "us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-beta-image@sha256:7bba0fa85b2956df7768f7b32e715b6fe11f4f4193e2a70a35bf3f286a6cdf9e",
///     },
///     inputVariableDefaults: [{
///         variable: "name",
///         value: "test",
///         type: "STRING",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_saas = gcp.saasruntime.SaaS("example_saas",
///     saas_id="example-saas",
///     location="global",
///     locations=[{
///         "name": "us-central1",
///     }])
/// example_unitkind = gcp.saasruntime.UnitKind("example_unitkind",
///     location="global",
///     unit_kind_id="example-unitkind",
///     saas=example_saas.id)
/// example_previous = gcp.saasruntime.Release("example_previous",
///     location="global",
///     release_id="previous-release",
///     unit_kind=example_unitkind.id,
///     blueprint={
///         "package": "us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-alpha-image@sha256:7992fdbaeaf998ecd31a7f937bb26e38a781ecf49b24857a6176c1e9bfc299ee",
///     })
/// example = gcp.saasruntime.Release("example",
///     location="global",
///     release_id="example-release",
///     unit_kind=example_unitkind.id,
///     blueprint={
///         "package": "us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-beta-image@sha256:7bba0fa85b2956df7768f7b32e715b6fe11f4f4193e2a70a35bf3f286a6cdf9e",
///     },
///     input_variable_defaults=[{
///         "variable": "name",
///         "value": "test",
///         "type": "STRING",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleSaas = new Gcp.SaaSRuntime.SaaS("example_saas", new()
///     {
///         SaasId = "example-saas",
///         Location = "global",
///         Locations = new[]
///         {
///             new Gcp.SaaSRuntime.Inputs.SaaSLocationArgs
///             {
///                 Name = "us-central1",
///             },
///         },
///     });
///
///     var exampleUnitkind = new Gcp.SaaSRuntime.UnitKind("example_unitkind", new()
///     {
///         Location = "global",
///         UnitKindId = "example-unitkind",
///         Saas = exampleSaas.Id,
///     });
///
///     var examplePrevious = new Gcp.SaaSRuntime.Release("example_previous", new()
///     {
///         Location = "global",
///         ReleaseId = "previous-release",
///         UnitKind = exampleUnitkind.Id,
///         Blueprint = new Gcp.SaaSRuntime.Inputs.ReleaseBlueprintArgs
///         {
///             Package = "us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-alpha-image@sha256:7992fdbaeaf998ecd31a7f937bb26e38a781ecf49b24857a6176c1e9bfc299ee",
///         },
///     });
///
///     var example = new Gcp.SaaSRuntime.Release("example", new()
///     {
///         Location = "global",
///         ReleaseId = "example-release",
///         UnitKind = exampleUnitkind.Id,
///         Blueprint = new Gcp.SaaSRuntime.Inputs.ReleaseBlueprintArgs
///         {
///             Package = "us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-beta-image@sha256:7bba0fa85b2956df7768f7b32e715b6fe11f4f4193e2a70a35bf3f286a6cdf9e",
///         },
///         InputVariableDefaults = new[]
///         {
///             new Gcp.SaaSRuntime.Inputs.ReleaseInputVariableDefaultArgs
///             {
///                 Variable = "name",
///                 Value = "test",
///                 Type = "STRING",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/saasruntime"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleSaas, err := saasruntime.NewSaaS(ctx, "example_saas", &saasruntime.SaaSArgs{
/// 			SaasId:   pulumi.String("example-saas"),
/// 			Location: pulumi.String("global"),
/// 			Locations: saasruntime.SaaSLocationArray{
/// 				&saasruntime.SaaSLocationArgs{
/// 					Name: pulumi.String("us-central1"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUnitkind, err := saasruntime.NewUnitKind(ctx, "example_unitkind", &saasruntime.UnitKindArgs{
/// 			Location:   pulumi.String("global"),
/// 			UnitKindId: pulumi.String("example-unitkind"),
/// 			Saas:       exampleSaas.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = saasruntime.NewRelease(ctx, "example_previous", &saasruntime.ReleaseArgs{
/// 			Location:  pulumi.String("global"),
/// 			ReleaseId: pulumi.String("previous-release"),
/// 			UnitKind:  exampleUnitkind.ID().ToIDOutput().ToStringOutput(),
/// 			Blueprint: &saasruntime.ReleaseBlueprintArgs{
/// 				Package: pulumi.String("us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-alpha-image@sha256:7992fdbaeaf998ecd31a7f937bb26e38a781ecf49b24857a6176c1e9bfc299ee"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = saasruntime.NewRelease(ctx, "example", &saasruntime.ReleaseArgs{
/// 			Location:  pulumi.String("global"),
/// 			ReleaseId: pulumi.String("example-release"),
/// 			UnitKind:  exampleUnitkind.ID().ToIDOutput().ToStringOutput(),
/// 			Blueprint: &saasruntime.ReleaseBlueprintArgs{
/// 				Package: pulumi.String("us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-beta-image@sha256:7bba0fa85b2956df7768f7b32e715b6fe11f4f4193e2a70a35bf3f286a6cdf9e"),
/// 			},
/// 			InputVariableDefaults: saasruntime.ReleaseInputVariableDefaultArray{
/// 				&saasruntime.ReleaseInputVariableDefaultArgs{
/// 					Variable: pulumi.String("name"),
/// 					Value:    pulumi.String("test"),
/// 					Type:     pulumi.String("STRING"),
/// 				},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_saasruntime_saas" "example_saas" {
///   saas_id  = "example-saas"
///   location = "global"
///   locations {
///     name = "us-central1"
///   }
/// }
/// resource "gcp_saasruntime_unitkind" "example_unitkind" {
///   location     = "global"
///   unit_kind_id = "example-unitkind"
///   saas         = gcp_saasruntime_saas.example_saas.id
/// }
/// resource "gcp_saasruntime_release" "example_previous" {
///   location   = "global"
///   release_id = "previous-release"
///   unit_kind  = gcp_saasruntime_unitkind.example_unitkind.id
///   blueprint = {
///     package = "us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-alpha-image@sha256:7992fdbaeaf998ecd31a7f937bb26e38a781ecf49b24857a6176c1e9bfc299ee"
///   }
/// }
/// resource "gcp_saasruntime_release" "example" {
///   location   = "global"
///   release_id = "example-release"
///   unit_kind  = gcp_saasruntime_unitkind.example_unitkind.id
///   blueprint = {
///     package = "us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-beta-image@sha256:7bba0fa85b2956df7768f7b32e715b6fe11f4f4193e2a70a35bf3f286a6cdf9e"
///   }
///   input_variable_defaults {
///     variable = "name"
///     value    = "test"
///     type     = "STRING"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.saasruntime.SaaS;
/// import com.pulumi.gcp.saasruntime.SaaSArgs;
/// import com.pulumi.gcp.saasruntime.inputs.SaaSLocationArgs;
/// import com.pulumi.gcp.saasruntime.UnitKind;
/// import com.pulumi.gcp.saasruntime.UnitKindArgs;
/// import com.pulumi.gcp.saasruntime.Release;
/// import com.pulumi.gcp.saasruntime.ReleaseArgs;
/// import com.pulumi.gcp.saasruntime.inputs.ReleaseBlueprintArgs;
/// import com.pulumi.gcp.saasruntime.inputs.ReleaseInputVariableDefaultArgs;
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
///         var exampleSaas = new SaaS("exampleSaas", SaaSArgs.builder()
///             .saasId("example-saas")
///             .location("global")
///             .locations(SaaSLocationArgs.builder()
///                 .name("us-central1")
///                 .build())
///             .build());
///
///         var exampleUnitkind = new UnitKind("exampleUnitkind", UnitKindArgs.builder()
///             .location("global")
///             .unitKindId("example-unitkind")
///             .saas(exampleSaas.id())
///             .build());
///
///         var examplePrevious = new Release("examplePrevious", ReleaseArgs.builder()
///             .location("global")
///             .releaseId("previous-release")
///             .unitKind(exampleUnitkind.id())
///             .blueprint(ReleaseBlueprintArgs.builder()
///                 .package_("us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-alpha-image@sha256:7992fdbaeaf998ecd31a7f937bb26e38a781ecf49b24857a6176c1e9bfc299ee")
///                 .build())
///             .build());
///
///         var example = new Release("example", ReleaseArgs.builder()
///             .location("global")
///             .releaseId("example-release")
///             .unitKind(exampleUnitkind.id())
///             .blueprint(ReleaseBlueprintArgs.builder()
///                 .package_("us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-beta-image@sha256:7bba0fa85b2956df7768f7b32e715b6fe11f4f4193e2a70a35bf3f286a6cdf9e")
///                 .build())
///             .inputVariableDefaults(ReleaseInputVariableDefaultArgs.builder()
///                 .variable("name")
///                 .value("test")
///                 .type("STRING")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSaas:
///     type: gcp:saasruntime:SaaS
///     name: example_saas
///     properties:
///       saasId: example-saas
///       location: global
///       locations:
///         - name: us-central1
///   exampleUnitkind:
///     type: gcp:saasruntime:UnitKind
///     name: example_unitkind
///     properties:
///       location: global
///       unitKindId: example-unitkind
///       saas: ${exampleSaas.id}
///   examplePrevious:
///     type: gcp:saasruntime:Release
///     name: example_previous
///     properties:
///       location: global
///       releaseId: previous-release
///       unitKind: ${exampleUnitkind.id}
///       blueprint:
///         package: us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-alpha-image@sha256:7992fdbaeaf998ecd31a7f937bb26e38a781ecf49b24857a6176c1e9bfc299ee
///   example:
///     type: gcp:saasruntime:Release
///     properties:
///       location: global
///       releaseId: example-release
///       unitKind: ${exampleUnitkind.id}
///       blueprint:
///         package: us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-beta-image@sha256:7bba0fa85b2956df7768f7b32e715b6fe11f4f4193e2a70a35bf3f286a6cdf9e
///       inputVariableDefaults:
///         - variable: name
///           value: test
///           type: STRING
/// ```
///
///
/// ## Import
///
/// Release can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/releases/{{release_id}}`
/// * `{{project}}/{{location}}/{{release_id}}`
/// * `{{location}}/{{release_id}}`
///
///
/// When using the `pulumi import` command, Release can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:saasruntime/release:Release default projects/{{project}}/locations/{{location}}/releases/{{release_id}}
/// $ pulumi import gcp:saasruntime/release:Release default {{project}}/{{location}}/{{release_id}}
/// $ pulumi import gcp:saasruntime/release:Release default {{location}}/{{release_id}}
/// ```
class Release extends pulumi.CustomResource {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Blueprints are OCI Images that contain all of the artifacts needed to
  /// provision a unit. Metadata such as, type of the engine used to actuate the
  /// blueprint (e.g. terraform, helm etc) and version will come from the image
  /// manifest. If the hostname is omitted, it will be assumed to be the regional
  /// path to Artifact Registry (eg. us-east1-docker.pkg.dev).
  /// Structure is documented below.
  late final pulumi.Output<ReleaseBlueprint?> blueprint;
  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// An opaque value that uniquely identifies a version or
  /// generation of a resource. It can be used to confirm that the client
  /// and server agree on the ordering of a resource being written.
  late final pulumi.Output<String> etag;
  /// Mapping of input variables to default values. Maximum 100
  /// Structure is documented below.
  late final pulumi.Output<List<ReleaseInputVariableDefault>?> inputVariableDefaults;
  /// List of input variables declared on the blueprint and can be present with
  /// their values on the unit spec
  /// Structure is documented below.
  late final pulumi.Output<List<ReleaseInputVariable>> inputVariables;
  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name (full URI of the resource) following the standard naming
  /// scheme:
  /// "projects/{project}/locations/{location}/releases/{release}"
  late final pulumi.Output<String> name;
  /// List of output variables declared on the blueprint and can be present with
  /// their values on the unit status
  /// Structure is documented below.
  late final pulumi.Output<List<ReleaseOutputVariable>> outputVariables;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The ID value for the new release.
  late final pulumi.Output<String> releaseId;
  /// Set of requirements to be fulfilled on the Unit when using this Release.
  /// Structure is documented below.
  late final pulumi.Output<ReleaseReleaseRequirements?> releaseRequirements;
  /// The unique identifier of the resource. UID is unique in the time
  /// and space for this resource within the scope of the service. It is
  /// typically generated by the server on successful creation of a resource
  /// and must not be changed. UID is used to uniquely identify resources
  /// with resource name reuses. This should be a UUID4.
  late final pulumi.Output<String> uid;
  /// Reference to the UnitKind this Release corresponds to (required and
  /// immutable once created).
  late final pulumi.Output<String> unitKind;
  /// The timestamp when the resource was last updated. Any
  /// change to the resource made by users must refresh this value.
  /// Changes to a resource made by the service should refresh this value.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Release].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Release]. {@macro pulumi_saasruntime_release_release_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Release(
    String name, {
    ReleaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:saasruntime/release:Release',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    blueprint = registerOutput<ReleaseBlueprint?>('blueprint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReleaseBlueprint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    inputVariableDefaults = registerOutput<List<ReleaseInputVariableDefault>?>('inputVariableDefaults', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReleaseInputVariableDefault>(guardedValue, (value) => ReleaseInputVariableDefault.fromMap((value as Map).cast<String, dynamic>())); });
    inputVariables = registerOutput<List<ReleaseInputVariable>>('inputVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReleaseInputVariable>(guardedValue, (value) => ReleaseInputVariable.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputVariables = registerOutput<List<ReleaseOutputVariable>>('outputVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReleaseOutputVariable>(guardedValue, (value) => ReleaseOutputVariable.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    releaseId = registerOutput<String>('releaseId');
    releaseRequirements = registerOutput<ReleaseReleaseRequirements?>('releaseRequirements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReleaseReleaseRequirements.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    unitKind = registerOutput<String>('unitKind');
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
          'gcp:saasruntime/release:Release',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    blueprint = registerOutput<ReleaseBlueprint?>('blueprint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReleaseBlueprint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    inputVariableDefaults = registerOutput<List<ReleaseInputVariableDefault>?>('inputVariableDefaults', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReleaseInputVariableDefault>(guardedValue, (value) => ReleaseInputVariableDefault.fromMap((value as Map).cast<String, dynamic>())); });
    inputVariables = registerOutput<List<ReleaseInputVariable>>('inputVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReleaseInputVariable>(guardedValue, (value) => ReleaseInputVariable.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputVariables = registerOutput<List<ReleaseOutputVariable>>('outputVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReleaseOutputVariable>(guardedValue, (value) => ReleaseOutputVariable.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    releaseId = registerOutput<String>('releaseId');
    releaseRequirements = registerOutput<ReleaseReleaseRequirements?>('releaseRequirements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReleaseReleaseRequirements.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    unitKind = registerOutput<String>('unitKind');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Release] resource.
  Release.reference(String urn)
    : super(
        'gcp:saasruntime/release:Release',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    blueprint = registerOutput<ReleaseBlueprint?>('blueprint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReleaseBlueprint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    inputVariableDefaults = registerOutput<List<ReleaseInputVariableDefault>?>('inputVariableDefaults', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReleaseInputVariableDefault>(guardedValue, (value) => ReleaseInputVariableDefault.fromMap((value as Map).cast<String, dynamic>())); });
    inputVariables = registerOutput<List<ReleaseInputVariable>>('inputVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReleaseInputVariable>(guardedValue, (value) => ReleaseInputVariable.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputVariables = registerOutput<List<ReleaseOutputVariable>>('outputVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReleaseOutputVariable>(guardedValue, (value) => ReleaseOutputVariable.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    releaseId = registerOutput<String>('releaseId');
    releaseRequirements = registerOutput<ReleaseReleaseRequirements?>('releaseRequirements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReleaseReleaseRequirements.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    unitKind = registerOutput<String>('unitKind');
    updateTime = registerOutput<String>('updateTime');
  }
}
