import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_args.dart';
import 'get_function_iam_policy_args.dart';
import 'get_function_iam_policy_result.dart';
import 'get_function_result.dart';

/// Get information about a Google Cloud Function. For more information see
/// the [official documentation](https://cloud.google.com/functions/docs/)
/// and [API](https://cloud.google.com/functions/docs/apis).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_function = gcp.cloudfunctions.getFunction({
///     name: "function",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_function = gcp.cloudfunctions.get_function(name="function")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_function = Gcp.CloudFunctions.GetFunction.Invoke(new()
///     {
///         Name = "function",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctions"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfunctions.LookupFunction(ctx, &cloudfunctions.LookupFunctionArgs{
/// 			Name: "function",
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
/// data "gcp_cloudfunctions_getfunction" "my-function" {
///   name = "function"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudfunctions.CloudfunctionsFunctions;
/// import com.pulumi.gcp.cloudfunctions.inputs.GetFunctionArgs;
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
///         final var my-function = CloudfunctionsFunctions.getFunction(GetFunctionArgs.builder()
///             .name("function")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-function:
///     fn::invoke:
///       function: gcp:cloudfunctions:getFunction
///       arguments:
///         name: function
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctions_get_function_get_function_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionResult> getFunction(
  GetFunctionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudfunctions/getFunction:getFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionResult.fromMap(result);
}

pulumi.Output<GetFunctionResult> getFunctionOutput(
  GetFunctionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:cloudfunctions/getFunction:getFunction',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFunctionResult.fromMap);
}

/// Retrieves the current IAM policy data for cloudfunction
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.cloudfunctions.getFunctionIamPolicy({
///     project: _function.project,
///     region: _function.region,
///     cloudFunction: _function.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.cloudfunctions.get_function_iam_policy(project=function["project"],
///     region=function["region"],
///     cloud_function=function["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.CloudFunctions.GetFunctionIamPolicy.Invoke(new()
///     {
///         Project = function.Project,
///         Region = function.Region,
///         CloudFunction = function.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctions"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfunctions.LookupFunctionIamPolicy(ctx, &cloudfunctions.LookupFunctionIamPolicyArgs{
/// 			Project:       pulumi.StringRef(function.Project),
/// 			Region:        pulumi.StringRef(function.Region),
/// 			CloudFunction: function.Name,
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
/// data "gcp_cloudfunctions_getfunctioniampolicy" "policy" {
///   project        = function.project
///   region         = function.region
///   cloud_function = function.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudfunctions.CloudfunctionsFunctions;
/// import com.pulumi.gcp.cloudfunctions.inputs.GetFunctionIamPolicyArgs;
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
///         final var policy = CloudfunctionsFunctions.getFunctionIamPolicy(GetFunctionIamPolicyArgs.builder()
///             .project(function.get("project"))
///             .region(function.get("region"))
///             .cloudFunction(function.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:cloudfunctions:getFunctionIamPolicy
///       arguments:
///         project: ${function.project}
///         region: ${function.region}
///         cloudFunction: ${function.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctions_get_function_iam_policy_get_function_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionIamPolicyResult> getFunctionIamPolicy(
  GetFunctionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudfunctions/getFunctionIamPolicy:getFunctionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionIamPolicyResult.fromMap(result);
}

pulumi.Output<GetFunctionIamPolicyResult> getFunctionIamPolicyOutput(
  GetFunctionIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:cloudfunctions/getFunctionIamPolicy:getFunctionIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFunctionIamPolicyResult.fromMap);
}
