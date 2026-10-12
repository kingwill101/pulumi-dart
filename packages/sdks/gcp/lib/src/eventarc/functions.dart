import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_iam_policy_args.dart';
import 'get_pipeline_iam_policy_result.dart';

/// Retrieves the current IAM policy data for pipeline
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.eventarc.getPipelineIamPolicy({
///     project: primary.project,
///     location: primary.location,
///     pipelineId: primary.pipelineId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.eventarc.get_pipeline_iam_policy(project=primary["project"],
///     location=primary["location"],
///     pipeline_id=primary["pipelineId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Eventarc.GetPipelineIamPolicy.Invoke(new()
///     {
///         Project = primary.Project,
///         Location = primary.Location,
///         PipelineId = primary.PipelineId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/eventarc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventarc.LookupPipelineIamPolicy(ctx, &eventarc.LookupPipelineIamPolicyArgs{
/// 			Project:    pulumi.StringRef(primary.Project),
/// 			Location:   pulumi.StringRef(primary.Location),
/// 			PipelineId: primary.PipelineId,
/// 		}, nil)
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
/// data "gcp_eventarc_getpipelineiampolicy" "policy" {
///   project     = primary.project
///   location    = primary.location
///   pipeline_id = primary.pipelineId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.eventarc.EventarcFunctions;
/// import com.pulumi.gcp.eventarc.inputs.GetPipelineIamPolicyArgs;
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
///         final var policy = EventarcFunctions.getPipelineIamPolicy(GetPipelineIamPolicyArgs.builder()
///             .project(primary.get("project"))
///             .location(primary.get("location"))
///             .pipelineId(primary.get("pipelineId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:eventarc:getPipelineIamPolicy
///       arguments:
///         project: ${primary.project}
///         location: ${primary.location}
///         pipelineId: ${primary.pipelineId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eventarc_get_pipeline_iam_policy_get_pipeline_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPipelineIamPolicyResult> getPipelineIamPolicy(
  GetPipelineIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:eventarc/getPipelineIamPolicy:getPipelineIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPipelineIamPolicyResult.fromMap(result);
}

pulumi.Output<GetPipelineIamPolicyResult> getPipelineIamPolicyOutput(
  GetPipelineIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:eventarc/getPipelineIamPolicy:getPipelineIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPipelineIamPolicyResult.fromMap);
}
