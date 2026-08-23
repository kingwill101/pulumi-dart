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
/// const policy = gcp.datafusion.getInstanceIamPolicy({
///     project: basicInstance.project,
///     region: basicInstance.region,
///     name: basicInstance.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.datafusion.get_instance_iam_policy(project=basic_instance["project"],
///     region=basic_instance["region"],
///     name=basic_instance["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DataFusion.GetInstanceIamPolicy.Invoke(new()
///     {
///         Project = basicInstance.Project,
///         Region = basicInstance.Region,
///         Name = basicInstance.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datafusion"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafusion.GetInstanceIamPolicy(ctx, &datafusion.GetInstanceIamPolicyArgs{
/// 			Project: pulumi.StringRef(basicInstance.Project),
/// 			Region:  pulumi.StringRef(basicInstance.Region),
/// 			Name:    basicInstance.Name,
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
/// data "gcp_datafusion_getinstanceiampolicy" "policy" {
///   project = basicInstance.project
///   region  = basicInstance.region
///   name    = basicInstance.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.datafusion.DatafusionFunctions;
/// import com.pulumi.gcp.datafusion.inputs.GetInstanceIamPolicyArgs;
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
///         final var policy = DatafusionFunctions.getInstanceIamPolicy(GetInstanceIamPolicyArgs.builder()
///             .project(basicInstance.get("project"))
///             .region(basicInstance.get("region"))
///             .name(basicInstance.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:datafusion:getInstanceIamPolicy
///       arguments:
///         project: ${basicInstance.project}
///         region: ${basicInstance.region}
///         name: ${basicInstance.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_datafusion_get_instance_iam_policy_get_instance_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceIamPolicyResult> getInstanceIamPolicy(
  GetInstanceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datafusion/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult.fromMap(result);
}
