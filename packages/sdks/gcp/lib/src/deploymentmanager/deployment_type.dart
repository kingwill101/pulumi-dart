import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_args.dart';
import 'deployment_label.dart';
import 'deployment_state.dart';
import 'deployment_target.dart';

/// A collection of resources that are deployed and managed together using
/// a configuration file
///
///
///
/// &gt; **Warning:** This resource is intended only to manage a Deployment resource,
/// and attempts to manage the Deployment's resources in the provider as well
/// will likely result in errors or unexpected behavior as the two tools
/// fight over ownership. We strongly discourage doing so unless you are an
/// experienced user of both tools.
///
/// In addition, due to limitations of the API, the provider will treat
/// deployments in preview as recreate-only for any update operation other
/// than actually deploying an in-preview deployment (i.e. `preview=true` to
/// `preview=false`).
///
/// ## Example Usage
///
/// ### Deployment Manager Deployment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const deployment = new gcp.deploymentmanager.Deployment("deployment", {
///     name: "my-deployment",
///     target: {
///         config: {
///             content: std.file({
///                 input: "path/to/config.yml",
///             }).then(invoke => invoke.result),
///         },
///     },
///     labels: [{
///         key: "foo",
///         value: "bar",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// deployment = gcp.deploymentmanager.Deployment("deployment",
///     name="my-deployment",
///     target={
///         "config": {
///             "content": std.file(input="path/to/config.yml").result,
///         },
///     },
///     labels=[{
///         "key": "foo",
///         "value": "bar",
///     }])
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
///     var deployment = new Gcp.DeploymentManager.Deployment("deployment", new()
///     {
///         Name = "my-deployment",
///         Target = new Gcp.DeploymentManager.Inputs.DeploymentTargetArgs
///         {
///             Config = new Gcp.DeploymentManager.Inputs.DeploymentTargetConfigArgs
///             {
///                 Content = Std.File.Invoke(new()
///                 {
///                     Input = "path/to/config.yml",
///                 }).Apply(invoke => invoke.Result),
///             },
///         },
///         Labels = new[]
///         {
///             new Gcp.DeploymentManager.Inputs.DeploymentLabelArgs
///             {
///                 Key = "foo",
///                 Value = "bar",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/deploymentmanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "path/to/config.yml",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = deploymentmanager.NewDeployment(ctx, "deployment", &deploymentmanager.DeploymentArgs{
/// 			Name: pulumi.String("my-deployment"),
/// 			Target: &deploymentmanager.DeploymentTargetArgs{
/// 				Config: &deploymentmanager.DeploymentTargetConfigArgs{
/// 					Content: pulumi.String(invokeFile.Result),
/// 				},
/// 			},
/// 			Labels: deploymentmanager.DeploymentLabelArray{
/// 				&deploymentmanager.DeploymentLabelArgs{
/// 					Key:   pulumi.String("foo"),
/// 					Value: pulumi.String("bar"),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_deploymentmanager_deployment" "deployment" {
///   name = "my-deployment"
///   target = {
///     config = {
///       content = file("path/to/config.yml")
///     }
///   }
///   labels {
///     key   = "foo"
///     value = "bar"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.deploymentmanager.Deployment;
/// import com.pulumi.gcp.deploymentmanager.DeploymentArgs;
/// import com.pulumi.gcp.deploymentmanager.inputs.DeploymentTargetArgs;
/// import com.pulumi.gcp.deploymentmanager.inputs.DeploymentTargetConfigArgs;
/// import com.pulumi.gcp.deploymentmanager.inputs.DeploymentLabelArgs;
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
///         var deployment = new Deployment("deployment", DeploymentArgs.builder()
///             .name("my-deployment")
///             .target(DeploymentTargetArgs.builder()
///                 .config(DeploymentTargetConfigArgs.builder()
///                     .content(StdFunctions.file(FileArgs.builder()
///                         .input("path/to/config.yml")
///                         .build()).result())
///                     .build())
///                 .build())
///             .labels(DeploymentLabelArgs.builder()
///                 .key("foo")
///                 .value("bar")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   deployment:
///     type: gcp:deploymentmanager:Deployment
///     properties:
///       name: my-deployment
///       target:
///         config:
///           content:
///             fn::invoke:
///               function: std:file
///               arguments:
///                 input: path/to/config.yml
///               return: result
///       labels:
///         - key: foo
///           value: bar
/// ```
///
/// ## Import
///
/// Deployment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/deployments/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Deployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:deploymentmanager/deployment:Deployment default projects/{{project}}/deployments/{{name}}
/// $ pulumi import gcp:deploymentmanager/deployment:Deployment default {{project}}/{{name}}
/// $ pulumi import gcp:deploymentmanager/deployment:Deployment default {{name}}
/// ```
class DeploymentType extends pulumi.CustomResource {
  /// Set the policy to use for creating new resources. Only used on
  /// create and update. Valid values are `CREATE_OR_ACQUIRE` (default) or
  /// `ACQUIRE`. If set to `ACQUIRE` and resources do not already exist,
  /// the deployment will fail. Note that updating this field does not
  /// actually affect the deployment, just how it is updated.
  /// Default value is `CREATE_OR_ACQUIRE`.
  /// Possible values are: `ACQUIRE`, `CREATE_OR_ACQUIRE`.
  late final pulumi.Output<String?> createPolicy;
  /// Set the policy to use for deleting new resources on update/delete.
  /// Valid values are `DELETE` (default) or `ABANDON`. If `DELETE`,
  /// resource is deleted after removal from Deployment Manager. If
  /// `ABANDON`, the resource is only removed from Deployment Manager
  /// and is not actually deleted. Note that updating this field does not
  /// actually change the deployment, just how it is updated.
  /// Default value is `DELETE`.
  /// Possible values are: `ABANDON`, `DELETE`.
  late final pulumi.Output<String?> deletePolicy;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Unique identifier for deployment. Output only.
  late final pulumi.Output<String> deploymentId;
  /// Optional user-provided description of deployment.
  late final pulumi.Output<String?> description;
  /// Key-value pairs to apply to this labels.
  /// Structure is documented below.
  late final pulumi.Output<List<DeploymentLabel>?> labels;
  /// Output only. URL of the manifest representing the last manifest that
  /// was successfully deployed.
  late final pulumi.Output<String> manifest;
  /// Unique name for the deployment
  late final pulumi.Output<String> name;
  /// If set to true, a deployment is created with "shell" resources
  /// that are not actually instantiated. This allows you to preview a
  /// deployment. It can be updated to false to actually deploy
  /// with real resources.
  /// ~&gt;**NOTE:** Deployment Manager does not allow update
  /// of a deployment in preview (unless updating to preview=false). Thus,
  /// the provider will force-recreate deployments if either preview is updated
  /// to true or if other fields are updated while preview is true.
  late final pulumi.Output<bool?> preview;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Output only. Server defined URL for the resource.
  late final pulumi.Output<String> selfLink;
  /// Parameters that define your deployment, including the deployment
  /// configuration and relevant templates.
  /// Structure is documented below.
  late final pulumi.Output<DeploymentTarget> target;

  /// Creates a new [DeploymentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentType]. {@macro pulumi_deploymentmanager_deployment_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentType(
    String name, {
    DeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:deploymentmanager/deployment:Deployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    createPolicy = registerOutput<String?>('createPolicy');
    deletePolicy = registerOutput<String?>('deletePolicy');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deploymentId = registerOutput<String>('deploymentId');
    description = registerOutput<String?>('description');
    labels = registerOutput<List<DeploymentLabel>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DeploymentLabel>(guardedValue, (value) => DeploymentLabel.fromMap((value as Map).cast<String, dynamic>())); });
    manifest = registerOutput<String>('manifest');
    this.name = registerOutput<String>('name');
    preview = registerOutput<bool?>('preview');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    target = registerOutput<DeploymentTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [DeploymentType] resource's state with the given [name] and [id].
  static DeploymentType get(
    String name,
    pulumi.Input<String> id, {
    DeploymentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DeploymentType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DeploymentType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:deploymentmanager/deployment:Deployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createPolicy = registerOutput<String?>('createPolicy');
    deletePolicy = registerOutput<String?>('deletePolicy');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deploymentId = registerOutput<String>('deploymentId');
    description = registerOutput<String?>('description');
    labels = registerOutput<List<DeploymentLabel>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DeploymentLabel>(guardedValue, (value) => DeploymentLabel.fromMap((value as Map).cast<String, dynamic>())); });
    manifest = registerOutput<String>('manifest');
    this.name = registerOutput<String>('name');
    preview = registerOutput<bool?>('preview');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    target = registerOutput<DeploymentTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [DeploymentType] resource.
  DeploymentType.reference(String urn)
    : super(
        'gcp:deploymentmanager/deployment:Deployment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createPolicy = registerOutput<String?>('createPolicy');
    deletePolicy = registerOutput<String?>('deletePolicy');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deploymentId = registerOutput<String>('deploymentId');
    description = registerOutput<String?>('description');
    labels = registerOutput<List<DeploymentLabel>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DeploymentLabel>(guardedValue, (value) => DeploymentLabel.fromMap((value as Map).cast<String, dynamic>())); });
    manifest = registerOutput<String>('manifest');
    this.name = registerOutput<String>('name');
    preview = registerOutput<bool?>('preview');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    target = registerOutput<DeploymentTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
