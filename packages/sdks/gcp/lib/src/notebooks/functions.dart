import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_iam_policy_args.dart';
import 'get_instance_iam_policy_result.dart';
import 'get_runtime_iam_policy_args.dart';
import 'get_runtime_iam_policy_result.dart';

/// &gt; **Warning:** The parent resource has been deprecated: `gcp.notebooks.Instance` is deprecated and will be removed in a future major release. Use `gcp.workbench.Instance` instead.
///
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
/// const policy = gcp.notebooks.getInstanceIamPolicy({
///     project: instance.project,
///     location: instance.location,
///     instanceName: instance.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.notebooks.get_instance_iam_policy(project=instance["project"],
///     location=instance["location"],
///     instance_name=instance["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Notebooks.GetInstanceIamPolicy.Invoke(new()
///     {
///         Project = instance.Project,
///         Location = instance.Location,
///         InstanceName = instance.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notebooks.LookupInstanceIamPolicy(ctx, &notebooks.LookupInstanceIamPolicyArgs{
/// 			Project:      pulumi.StringRef(instance.Project),
/// 			Location:     pulumi.StringRef(instance.Location),
/// 			InstanceName: instance.Name,
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
/// data "gcp_notebooks_getinstanceiampolicy" "policy" {
///   project       = instance.project
///   location      = instance.location
///   instance_name = instance.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.notebooks.NotebooksFunctions;
/// import com.pulumi.gcp.notebooks.inputs.GetInstanceIamPolicyArgs;
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
///         final var policy = NotebooksFunctions.getInstanceIamPolicy(GetInstanceIamPolicyArgs.builder()
///             .project(instance.get("project"))
///             .location(instance.get("location"))
///             .instanceName(instance.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:notebooks:getInstanceIamPolicy
///       arguments:
///         project: ${instance.project}
///         location: ${instance.location}
///         instanceName: ${instance.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_notebooks_get_instance_iam_policy_get_instance_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceIamPolicyResult> getInstanceIamPolicy(
  GetInstanceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:notebooks/getInstanceIamPolicy:getInstanceIamPolicy',
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
    'gcp:notebooks/getInstanceIamPolicy:getInstanceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceIamPolicyResult.fromMap);
}

/// &gt; **Warning:** The parent resource has been deprecated: `gcp.notebooks.Runtime` is deprecated and will be removed in a future major release. Use `gcp.workbench.Instance` instead.
///
/// Retrieves the current IAM policy data for runtime
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.notebooks.getRuntimeIamPolicy({
///     project: runtime.project,
///     location: runtime.location,
///     runtimeName: runtime.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.notebooks.get_runtime_iam_policy(project=runtime["project"],
///     location=runtime["location"],
///     runtime_name=runtime["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Notebooks.GetRuntimeIamPolicy.Invoke(new()
///     {
///         Project = runtime.Project,
///         Location = runtime.Location,
///         RuntimeName = runtime.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notebooks.LookupRuntimeIamPolicy(ctx, &notebooks.LookupRuntimeIamPolicyArgs{
/// 			Project:     pulumi.StringRef(runtime.Project),
/// 			Location:    pulumi.StringRef(runtime.Location),
/// 			RuntimeName: runtime.Name,
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
/// data "gcp_notebooks_getruntimeiampolicy" "policy" {
///   project      = runtime.project
///   location     = runtime.location
///   runtime_name = runtime.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.notebooks.NotebooksFunctions;
/// import com.pulumi.gcp.notebooks.inputs.GetRuntimeIamPolicyArgs;
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
///         final var policy = NotebooksFunctions.getRuntimeIamPolicy(GetRuntimeIamPolicyArgs.builder()
///             .project(runtime.get("project"))
///             .location(runtime.get("location"))
///             .runtimeName(runtime.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:notebooks:getRuntimeIamPolicy
///       arguments:
///         project: ${runtime.project}
///         location: ${runtime.location}
///         runtimeName: ${runtime.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_notebooks_get_runtime_iam_policy_get_runtime_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRuntimeIamPolicyResult> getRuntimeIamPolicy(
  GetRuntimeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:notebooks/getRuntimeIamPolicy:getRuntimeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuntimeIamPolicyResult.fromMap(result);
}

pulumi.Output<GetRuntimeIamPolicyResult> getRuntimeIamPolicyOutput(
  GetRuntimeIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:notebooks/getRuntimeIamPolicy:getRuntimeIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRuntimeIamPolicyResult.fromMap);
}
