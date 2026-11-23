import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_space_iam_policy_args.dart';
import 'get_space_iam_policy_result.dart';

/// Retrieves the current IAM policy data for space
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.designcenter.getSpaceIamPolicy({
///     project: example.project,
///     location: example.location,
///     spaceId: example.spaceId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.designcenter.get_space_iam_policy(project=example["project"],
///     location=example["location"],
///     space_id=example["spaceId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DesignCenter.GetSpaceIamPolicy.Invoke(new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SpaceId = example.SpaceId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/designcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := designcenter.LookupSpaceIamPolicy(ctx, &designcenter.LookupSpaceIamPolicyArgs{
/// 			Project:  pulumi.StringRef(example.Project),
/// 			Location: pulumi.StringRef(example.Location),
/// 			SpaceId:  example.SpaceId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_designcenter_space_iam_policy" "policy" {
///   project  = example.project
///   location = example.location
///   space_id = example.spaceId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.designcenter.DesigncenterFunctions;
/// import com.pulumi.gcp.designcenter.inputs.GetSpaceIamPolicyArgs;
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
///         final var policy = DesigncenterFunctions.getSpaceIamPolicy(GetSpaceIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .spaceId(example.get("spaceId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:designcenter:getSpaceIamPolicy
///       arguments:
///         project: ${example.project}
///         location: ${example.location}
///         spaceId: ${example.spaceId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_designcenter_get_space_iam_policy_get_space_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpaceIamPolicyResult> getSpaceIamPolicy(
  GetSpaceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:designcenter/getSpaceIamPolicy:getSpaceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpaceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetSpaceIamPolicyResult> getSpaceIamPolicyOutput(
  GetSpaceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:designcenter/getSpaceIamPolicy:getSpaceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSpaceIamPolicyResult.fromMap);
}
