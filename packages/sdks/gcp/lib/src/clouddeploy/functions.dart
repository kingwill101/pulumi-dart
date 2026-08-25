import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_target_type_iam_policy_args.dart';
import 'get_custom_target_type_iam_policy_result.dart';
import 'get_delivery_pipeline_iam_policy_args.dart';
import 'get_delivery_pipeline_iam_policy_result.dart';
import 'get_target_iam_policy_args.dart';
import 'get_target_iam_policy_result.dart';

/// Retrieves the current IAM policy data for customtargettype
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.clouddeploy.getCustomTargetTypeIamPolicy({
///     project: custom_target_type.project,
///     location: custom_target_type.location,
///     name: custom_target_type.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.clouddeploy.get_custom_target_type_iam_policy(project=custom_target_type["project"],
///     location=custom_target_type["location"],
///     name=custom_target_type["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.CloudDeploy.GetCustomTargetTypeIamPolicy.Invoke(new()
///     {
///         Project = custom_target_type.Project,
///         Location = custom_target_type.Location,
///         Name = custom_target_type.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := clouddeploy.LookupCustomTargetTypeIamPolicy(ctx, &clouddeploy.LookupCustomTargetTypeIamPolicyArgs{
/// 			Project:  pulumi.StringRef(custom_target_type.Project),
/// 			Location: pulumi.StringRef(custom_target_type.Location),
/// 			Name:     custom_target_type.Name,
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
/// data "gcp_clouddeploy_getcustomtargettypeiampolicy" "policy" {
///   project  = custom-target-type.project
///   location = custom-target-type.location
///   name     = custom-target-type.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.clouddeploy.ClouddeployFunctions;
/// import com.pulumi.gcp.clouddeploy.inputs.GetCustomTargetTypeIamPolicyArgs;
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
///         final var policy = ClouddeployFunctions.getCustomTargetTypeIamPolicy(GetCustomTargetTypeIamPolicyArgs.builder()
///             .project(custom_target_type.get("project"))
///             .location(custom_target_type.get("location"))
///             .name(custom_target_type.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:clouddeploy:getCustomTargetTypeIamPolicy
///       arguments:
///         project: ${["custom-target-type"].project}
///         location: ${["custom-target-type"].location}
///         name: ${["custom-target-type"].name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_clouddeploy_get_custom_target_type_iam_policy_get_custom_target_type_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomTargetTypeIamPolicyResult> getCustomTargetTypeIamPolicy(
  GetCustomTargetTypeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:clouddeploy/getCustomTargetTypeIamPolicy:getCustomTargetTypeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomTargetTypeIamPolicyResult.fromMap(result);
}

pulumi.Output<GetCustomTargetTypeIamPolicyResult> getCustomTargetTypeIamPolicyOutput(
  GetCustomTargetTypeIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:clouddeploy/getCustomTargetTypeIamPolicy:getCustomTargetTypeIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCustomTargetTypeIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for deliverypipeline
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.clouddeploy.getDeliveryPipelineIamPolicy({
///     project: _default.project,
///     location: _default.location,
///     name: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.clouddeploy.get_delivery_pipeline_iam_policy(project=default["project"],
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
///     var policy = Gcp.CloudDeploy.GetDeliveryPipelineIamPolicy.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := clouddeploy.LookupDeliveryPipelineIamPolicy(ctx, &clouddeploy.LookupDeliveryPipelineIamPolicyArgs{
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
/// data "gcp_clouddeploy_getdeliverypipelineiampolicy" "policy" {
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
/// import com.pulumi.gcp.clouddeploy.ClouddeployFunctions;
/// import com.pulumi.gcp.clouddeploy.inputs.GetDeliveryPipelineIamPolicyArgs;
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
///         final var policy = ClouddeployFunctions.getDeliveryPipelineIamPolicy(GetDeliveryPipelineIamPolicyArgs.builder()
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
///       function: gcp:clouddeploy:getDeliveryPipelineIamPolicy
///       arguments:
///         project: ${default.project}
///         location: ${default.location}
///         name: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_clouddeploy_get_delivery_pipeline_iam_policy_get_delivery_pipeline_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeliveryPipelineIamPolicyResult> getDeliveryPipelineIamPolicy(
  GetDeliveryPipelineIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:clouddeploy/getDeliveryPipelineIamPolicy:getDeliveryPipelineIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeliveryPipelineIamPolicyResult.fromMap(result);
}

pulumi.Output<GetDeliveryPipelineIamPolicyResult> getDeliveryPipelineIamPolicyOutput(
  GetDeliveryPipelineIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:clouddeploy/getDeliveryPipelineIamPolicy:getDeliveryPipelineIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeliveryPipelineIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for target
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.clouddeploy.getTargetIamPolicy({
///     project: _default.project,
///     location: _default.location,
///     name: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.clouddeploy.get_target_iam_policy(project=default["project"],
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
///     var policy = Gcp.CloudDeploy.GetTargetIamPolicy.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := clouddeploy.LookupTargetIamPolicy(ctx, &clouddeploy.LookupTargetIamPolicyArgs{
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
/// data "gcp_clouddeploy_gettargetiampolicy" "policy" {
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
/// import com.pulumi.gcp.clouddeploy.ClouddeployFunctions;
/// import com.pulumi.gcp.clouddeploy.inputs.GetTargetIamPolicyArgs;
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
///         final var policy = ClouddeployFunctions.getTargetIamPolicy(GetTargetIamPolicyArgs.builder()
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
///       function: gcp:clouddeploy:getTargetIamPolicy
///       arguments:
///         project: ${default.project}
///         location: ${default.location}
///         name: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_clouddeploy_get_target_iam_policy_get_target_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetIamPolicyResult> getTargetIamPolicy(
  GetTargetIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:clouddeploy/getTargetIamPolicy:getTargetIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetIamPolicyResult.fromMap(result);
}

pulumi.Output<GetTargetIamPolicyResult> getTargetIamPolicyOutput(
  GetTargetIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:clouddeploy/getTargetIamPolicy:getTargetIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTargetIamPolicyResult.fromMap);
}
