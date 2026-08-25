import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_iam_policy_args.dart';
import 'get_instance_iam_policy_result.dart';

/// Retrieves the current IAM policy data for instance
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.workbench.getInstanceIamPolicy({
///     project: instance.project,
///     location: instance.location,
///     name: instance.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.workbench.get_instance_iam_policy(project=instance["project"],
///     location=instance["location"],
///     name=instance["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Workbench.GetInstanceIamPolicy.Invoke(new()
///     {
///         Project = instance.Project,
///         Location = instance.Location,
///         Name = instance.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workbench"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workbench.LookupInstanceIamPolicy(ctx, &workbench.LookupInstanceIamPolicyArgs{
/// 			Project:  pulumi.StringRef(instance.Project),
/// 			Location: pulumi.StringRef(instance.Location),
/// 			Name:     instance.Name,
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
/// data "gcp_workbench_getinstanceiampolicy" "policy" {
///   project  = instance.project
///   location = instance.location
///   name     = instance.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.workbench.WorkbenchFunctions;
/// import com.pulumi.gcp.workbench.inputs.GetInstanceIamPolicyArgs;
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
///         final var policy = WorkbenchFunctions.getInstanceIamPolicy(GetInstanceIamPolicyArgs.builder()
///             .project(instance.get("project"))
///             .location(instance.get("location"))
///             .name(instance.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:workbench:getInstanceIamPolicy
///       arguments:
///         project: ${instance.project}
///         location: ${instance.location}
///         name: ${instance.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_workbench_get_instance_iam_policy_get_instance_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceIamPolicyResult> getInstanceIamPolicy(
  GetInstanceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:workbench/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetInstanceIamPolicyResult> getInstanceIamPolicyOutput(
  GetInstanceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:workbench/getInstanceIamPolicy:getInstanceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceIamPolicyResult.fromMap);
}
