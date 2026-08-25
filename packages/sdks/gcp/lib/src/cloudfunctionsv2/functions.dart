import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_args.dart';
import 'get_function_iam_policy_args.dart';
import 'get_function_iam_policy_result.dart';
import 'get_function_result.dart';

/// Get information about a Google Cloud Function (2nd gen). For more information see:
///
/// * [API documentation](https://cloud.google.com/functions/docs/reference/rest/v2beta/projects.locations.functions).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_function = gcp.cloudfunctionsv2.getFunction({
///     name: "function",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_function = gcp.cloudfunctionsv2.get_function(name="function",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_function = Gcp.CloudFunctionsV2.GetFunction.Invoke(new()
///     {
///         Name = "function",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfunctionsv2.LookupFunction(ctx, &cloudfunctionsv2.LookupFunctionArgs{
/// 			Name:     "function",
/// 			Location: "us-central1",
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
/// data "gcp_cloudfunctionsv2_getfunction" "my-function" {
///   name     = "function"
///   location = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudfunctionsv2.Cloudfunctionsv2Functions;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.GetFunctionArgs;
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
///         final var my-function = Cloudfunctionsv2Functions.getFunction(GetFunctionArgs.builder()
///             .name("function")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-function:
///     fn::invoke:
///       function: gcp:cloudfunctionsv2:getFunction
///       arguments:
///         name: function
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctionsv2_get_function_get_function_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionResult> getFunction(
  GetFunctionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudfunctionsv2/getFunction:getFunction',
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
    'gcp:cloudfunctionsv2/getFunction:getFunction',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFunctionResult.fromMap);
}

/// Retrieves the current IAM policy data for function
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.cloudfunctionsv2.getFunctionIamPolicy({
///     project: _function.project,
///     location: _function.location,
///     cloudFunction: _function.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.cloudfunctionsv2.get_function_iam_policy(project=function["project"],
///     location=function["location"],
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
///     var policy = Gcp.CloudFunctionsV2.GetFunctionIamPolicy.Invoke(new()
///     {
///         Project = function.Project,
///         Location = function.Location,
///         CloudFunction = function.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfunctionsv2.LookupFunctionIamPolicy(ctx, &cloudfunctionsv2.LookupFunctionIamPolicyArgs{
/// 			Project:       pulumi.StringRef(function.Project),
/// 			Location:      pulumi.StringRef(function.Location),
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
/// data "gcp_cloudfunctionsv2_getfunctioniampolicy" "policy" {
///   project        = function.project
///   location       = function.location
///   cloud_function = function.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudfunctionsv2.Cloudfunctionsv2Functions;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.GetFunctionIamPolicyArgs;
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
///         final var policy = Cloudfunctionsv2Functions.getFunctionIamPolicy(GetFunctionIamPolicyArgs.builder()
///             .project(function.get("project"))
///             .location(function.get("location"))
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
///       function: gcp:cloudfunctionsv2:getFunctionIamPolicy
///       arguments:
///         project: ${function.project}
///         location: ${function.location}
///         cloudFunction: ${function.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctionsv2_get_function_iam_policy_get_function_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionIamPolicyResult> getFunctionIamPolicy(
  GetFunctionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudfunctionsv2/getFunctionIamPolicy:getFunctionIamPolicy',
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
    'gcp:cloudfunctionsv2/getFunctionIamPolicy:getFunctionIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFunctionIamPolicyResult.fromMap);
}
