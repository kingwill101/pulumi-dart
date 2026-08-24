import 'package:pulumi/pulumi.dart' as pulumi;
import 'workers_deployment_annotations.dart';
import 'workers_deployment_args.dart';
import 'workers_deployment_state.dart';
import 'workers_deployment_version.dart';

/// Accepted Permissions
///
/// - `Workers Scripts Read`
/// - `Workers Scripts Write`
/// - `Workers Tail Read`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleWorkersDeployment = new cloudflare.WorkersDeployment("example_workers_deployment", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     scriptName: "this-is_my_script-01",
///     strategy: "percentage",
///     versions: [{
///         percentage: 100,
///         versionId: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     }],
///     annotations: {
///         workersMessage: "Deploy bug fix.",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_workers_deployment = cloudflare.WorkersDeployment("example_workers_deployment",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     script_name="this-is_my_script-01",
///     strategy="percentage",
///     versions=[{
///         "percentage": float(100),
///         "version_id": "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     }],
///     annotations={
///         "workers_message": "Deploy bug fix.",
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
///     var exampleWorkersDeployment = new Cloudflare.WorkersDeployment("example_workers_deployment", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         ScriptName = "this-is_my_script-01",
///         Strategy = "percentage",
///         Versions = new[]
///         {
///             new Cloudflare.Inputs.WorkersDeploymentVersionArgs
///             {
///                 Percentage = 100,
///                 VersionId = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///             },
///         },
///         Annotations = new Cloudflare.Inputs.WorkersDeploymentAnnotationsArgs
///         {
///             WorkersMessage = "Deploy bug fix.",
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
/// 		_, err := cloudflare.NewWorkersDeployment(ctx, "example_workers_deployment", &cloudflare.WorkersDeploymentArgs{
/// 			AccountId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			ScriptName: pulumi.String("this-is_my_script-01"),
/// 			Strategy:   pulumi.String("percentage"),
/// 			Versions: cloudflare.WorkersDeploymentVersionArray{
/// 				&cloudflare.WorkersDeploymentVersionArgs{
/// 					Percentage: pulumi.Float64(100),
/// 					VersionId:  pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 				},
/// 			},
/// 			Annotations: &cloudflare.WorkersDeploymentAnnotationsArgs{
/// 				WorkersMessage: pulumi.String("Deploy bug fix."),
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
/// resource "cloudflare_workersdeployment" "example_workers_deployment" {
///   account_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   script_name = "this-is_my_script-01"
///   strategy    = "percentage"
///   versions {
///     percentage = 100
///     version_id = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
///   }
///   annotations = {
///     workers_message = "Deploy bug fix."
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.WorkersDeployment;
/// import com.pulumi.cloudflare.WorkersDeploymentArgs;
/// import com.pulumi.cloudflare.inputs.WorkersDeploymentVersionArgs;
/// import com.pulumi.cloudflare.inputs.WorkersDeploymentAnnotationsArgs;
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
///         var exampleWorkersDeployment = new WorkersDeployment("exampleWorkersDeployment", WorkersDeploymentArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .scriptName("this-is_my_script-01")
///             .strategy("percentage")
///             .versions(WorkersDeploymentVersionArgs.builder()
///                 .percentage(100.0)
///                 .versionId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///                 .build())
///             .annotations(WorkersDeploymentAnnotationsArgs.builder()
///                 .workersMessage("Deploy bug fix.")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWorkersDeployment:
///     type: cloudflare:WorkersDeployment
///     name: example_workers_deployment
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       scriptName: this-is_my_script-01
///       strategy: percentage
///       versions:
///         - percentage: 100
///           versionId: 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///       annotations:
///         workersMessage: Deploy bug fix.
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/workersDeployment:WorkersDeployment example '<account_id>/<script_name>/<deployment_id>'
/// ```
class WorkersDeployment extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<WorkersDeploymentAnnotations> annotations;
  late final pulumi.Output<String> authorEmail;
  late final pulumi.Output<String> createdOn;
  /// Name of the script, used in URLs and route configuration.
  late final pulumi.Output<String> scriptName;
  late final pulumi.Output<String> source;
  /// Available values: "percentage".
  late final pulumi.Output<String> strategy;
  late final pulumi.Output<List<WorkersDeploymentVersion>> versions;

  /// Creates a new [WorkersDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkersDeployment]. {@macro pulumi_index_workers_deployment_workers_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkersDeployment(
    String name, {
    WorkersDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workersDeployment:WorkersDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    annotations = registerOutput<WorkersDeploymentAnnotations>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersDeploymentAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authorEmail = registerOutput<String>('authorEmail');
    createdOn = registerOutput<String>('createdOn');
    scriptName = registerOutput<String>('scriptName');
    source = registerOutput<String>('source');
    strategy = registerOutput<String>('strategy');
    versions = registerOutput<List<WorkersDeploymentVersion>>('versions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkersDeploymentVersion>(guardedValue, (value) => WorkersDeploymentVersion.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [WorkersDeployment] resource's state with the given [name] and [id].
  static WorkersDeployment get(
    String name,
    pulumi.Input<String> id, {
    WorkersDeploymentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WorkersDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WorkersDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workersDeployment:WorkersDeployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    annotations = registerOutput<WorkersDeploymentAnnotations>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersDeploymentAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authorEmail = registerOutput<String>('authorEmail');
    createdOn = registerOutput<String>('createdOn');
    scriptName = registerOutput<String>('scriptName');
    source = registerOutput<String>('source');
    strategy = registerOutput<String>('strategy');
    versions = registerOutput<List<WorkersDeploymentVersion>>('versions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkersDeploymentVersion>(guardedValue, (value) => WorkersDeploymentVersion.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [WorkersDeployment] resource.
  WorkersDeployment.reference(String urn)
    : super(
        'cloudflare:index/workersDeployment:WorkersDeployment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    annotations = registerOutput<WorkersDeploymentAnnotations>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkersDeploymentAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authorEmail = registerOutput<String>('authorEmail');
    createdOn = registerOutput<String>('createdOn');
    scriptName = registerOutput<String>('scriptName');
    source = registerOutput<String>('source');
    strategy = registerOutput<String>('strategy');
    versions = registerOutput<List<WorkersDeploymentVersion>>('versions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkersDeploymentVersion>(guardedValue, (value) => WorkersDeploymentVersion.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
