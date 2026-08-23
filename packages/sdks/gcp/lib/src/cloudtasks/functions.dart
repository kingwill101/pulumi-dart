import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queue_iam_policy_args.dart';
import 'get_queue_iam_policy_result.dart';

/// Retrieves the current IAM policy data for queue
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.cloudtasks.getQueueIamPolicy({
///     project: _default.project,
///     location: _default.location,
///     name: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.cloudtasks.get_queue_iam_policy(project=default["project"],
///     location=default["location"],
///     name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.CloudTasks.GetQueueIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         Name = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudtasks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudtasks.LookupQueueIamPolicy(ctx, &cloudtasks.LookupQueueIamPolicyArgs{
/// 			Project:  pulumi.StringRef(_default.Project),
/// 			Location: pulumi.StringRef(_default.Location),
/// 			Name:     _default.Name,
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
/// data "gcp_cloudtasks_getqueueiampolicy" "policy" {
///   project  = default.project
///   location = default.location
///   name     = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudtasks.CloudtasksFunctions;
/// import com.pulumi.gcp.cloudtasks.inputs.GetQueueIamPolicyArgs;
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
///         final var policy = CloudtasksFunctions.getQueueIamPolicy(GetQueueIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .name(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:cloudtasks:getQueueIamPolicy
///       arguments:
///         project: ${default.project}
///         location: ${default.location}
///         name: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudtasks_get_queue_iam_policy_get_queue_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueueIamPolicyResult> getQueueIamPolicy(
  GetQueueIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudtasks/getQueueIamPolicy:getQueueIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueIamPolicyResult.fromMap(result);
}
