import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_analytics_data_agent_iam_policy_args.dart';
import 'get_data_analytics_data_agent_iam_policy_result.dart';
import 'get_repository_group_iam_policy_args.dart';
import 'get_repository_group_iam_policy_result.dart';

/// Retrieves the current IAM policy data for dataagent
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.gemini.getDataAnalyticsDataAgentIamPolicy({
///     project: example.project,
///     location: example.location,
///     dataAgentId: example.dataAgentId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.gemini.get_data_analytics_data_agent_iam_policy(project=example["project"],
///     location=example["location"],
///     data_agent_id=example["dataAgentId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Gemini.GetDataAnalyticsDataAgentIamPolicy.Invoke(new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         DataAgentId = example.DataAgentId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/gemini"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gemini.LookupDataAnalyticsDataAgentIamPolicy(ctx, &gemini.LookupDataAnalyticsDataAgentIamPolicyArgs{
/// 			Project:     pulumi.StringRef(example.Project),
/// 			Location:    pulumi.StringRef(example.Location),
/// 			DataAgentId: example.DataAgentId,
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
/// data "gcp_gemini_data_analytics_data_agent_iam_policy" "policy" {
///   project       = example.project
///   location      = example.location
///   data_agent_id = example.dataAgentId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gemini.GeminiFunctions;
/// import com.pulumi.gcp.gemini.inputs.GetDataAnalyticsDataAgentIamPolicyArgs;
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
///         final var policy = GeminiFunctions.getDataAnalyticsDataAgentIamPolicy(GetDataAnalyticsDataAgentIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .dataAgentId(example.get("dataAgentId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:gemini:getDataAnalyticsDataAgentIamPolicy
///       arguments:
///         project: ${example.project}
///         location: ${example.location}
///         dataAgentId: ${example.dataAgentId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_gemini_get_data_analytics_data_agent_iam_policy_get_data_analytics_data_agent_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataAnalyticsDataAgentIamPolicyResult> getDataAnalyticsDataAgentIamPolicy(
  GetDataAnalyticsDataAgentIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gemini/getDataAnalyticsDataAgentIamPolicy:getDataAnalyticsDataAgentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataAnalyticsDataAgentIamPolicyResult.fromMap(result);
}

pulumi.Output<GetDataAnalyticsDataAgentIamPolicyResult> getDataAnalyticsDataAgentIamPolicyOutput(
  GetDataAnalyticsDataAgentIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:gemini/getDataAnalyticsDataAgentIamPolicy:getDataAnalyticsDataAgentIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataAnalyticsDataAgentIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for repositorygroup
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.gemini.getRepositoryGroupIamPolicy({
///     project: example.project,
///     location: example.location,
///     codeRepositoryIndex: example.codeRepositoryIndex,
///     repositoryGroupId: example.repositoryGroupId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.gemini.get_repository_group_iam_policy(project=example["project"],
///     location=example["location"],
///     code_repository_index=example["codeRepositoryIndex"],
///     repository_group_id=example["repositoryGroupId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Gemini.GetRepositoryGroupIamPolicy.Invoke(new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         CodeRepositoryIndex = example.CodeRepositoryIndex,
///         RepositoryGroupId = example.RepositoryGroupId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/gemini"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gemini.LookupRepositoryGroupIamPolicy(ctx, &gemini.LookupRepositoryGroupIamPolicyArgs{
/// 			Project:             pulumi.StringRef(example.Project),
/// 			Location:            pulumi.StringRef(example.Location),
/// 			CodeRepositoryIndex: example.CodeRepositoryIndex,
/// 			RepositoryGroupId:   example.RepositoryGroupId,
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
/// data "gcp_gemini_repository_group_iam_policy" "policy" {
///   project               = example.project
///   location              = example.location
///   code_repository_index = example.codeRepositoryIndex
///   repository_group_id   = example.repositoryGroupId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gemini.GeminiFunctions;
/// import com.pulumi.gcp.gemini.inputs.GetRepositoryGroupIamPolicyArgs;
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
///         final var policy = GeminiFunctions.getRepositoryGroupIamPolicy(GetRepositoryGroupIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .codeRepositoryIndex(example.get("codeRepositoryIndex"))
///             .repositoryGroupId(example.get("repositoryGroupId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:gemini:getRepositoryGroupIamPolicy
///       arguments:
///         project: ${example.project}
///         location: ${example.location}
///         codeRepositoryIndex: ${example.codeRepositoryIndex}
///         repositoryGroupId: ${example.repositoryGroupId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_gemini_get_repository_group_iam_policy_get_repository_group_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryGroupIamPolicyResult> getRepositoryGroupIamPolicy(
  GetRepositoryGroupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gemini/getRepositoryGroupIamPolicy:getRepositoryGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryGroupIamPolicyResult.fromMap(result);
}

pulumi.Output<GetRepositoryGroupIamPolicyResult> getRepositoryGroupIamPolicyOutput(
  GetRepositoryGroupIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:gemini/getRepositoryGroupIamPolicy:getRepositoryGroupIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRepositoryGroupIamPolicyResult.fromMap);
}
