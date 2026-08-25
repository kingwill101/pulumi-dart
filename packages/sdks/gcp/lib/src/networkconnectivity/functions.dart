import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hub_iam_policy_args.dart';
import 'get_hub_iam_policy_result.dart';

/// Retrieves the current IAM policy data for hub
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.networkconnectivity.getHubIamPolicy({
///     project: primary.project,
///     hub: primary.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.networkconnectivity.get_hub_iam_policy(project=primary["project"],
///     hub=primary["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.NetworkConnectivity.GetHubIamPolicy.Invoke(new()
///     {
///         Project = primary.Project,
///         Hub = primary.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkconnectivity.LookupHubIamPolicy(ctx, &networkconnectivity.LookupHubIamPolicyArgs{
/// 			Project: pulumi.StringRef(primary.Project),
/// 			Hub:     primary.Name,
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
/// data "gcp_networkconnectivity_gethubiampolicy" "policy" {
///   project = primary.project
///   hub     = primary.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networkconnectivity.NetworkconnectivityFunctions;
/// import com.pulumi.gcp.networkconnectivity.inputs.GetHubIamPolicyArgs;
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
///         final var policy = NetworkconnectivityFunctions.getHubIamPolicy(GetHubIamPolicyArgs.builder()
///             .project(primary.get("project"))
///             .hub(primary.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:networkconnectivity:getHubIamPolicy
///       arguments:
///         project: ${primary.project}
///         hub: ${primary.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_get_hub_iam_policy_get_hub_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHubIamPolicyResult> getHubIamPolicy(
  GetHubIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:networkconnectivity/getHubIamPolicy:getHubIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHubIamPolicyResult.fromMap(result);
}

pulumi.Output<GetHubIamPolicyResult> getHubIamPolicyOutput(
  GetHubIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:networkconnectivity/getHubIamPolicy:getHubIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHubIamPolicyResult.fromMap);
}
