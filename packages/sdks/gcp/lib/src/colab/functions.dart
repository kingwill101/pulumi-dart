import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_runtime_template_iam_policy_args.dart';
import 'get_runtime_template_iam_policy_result.dart';

/// Retrieves the current IAM policy data for runtimetemplate
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.colab.getRuntimeTemplateIamPolicy({
///     project: runtime_template.project,
///     location: runtime_template.location,
///     runtimeTemplate: runtime_template.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.colab.get_runtime_template_iam_policy(project=runtime_template["project"],
///     location=runtime_template["location"],
///     runtime_template=runtime_template["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Colab.GetRuntimeTemplateIamPolicy.Invoke(new()
///     {
///         Project = runtime_template.Project,
///         Location = runtime_template.Location,
///         RuntimeTemplate = runtime_template.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := colab.LookupRuntimeTemplateIamPolicy(ctx, &colab.LookupRuntimeTemplateIamPolicyArgs{
/// 			Project:         pulumi.StringRef(runtime_template.Project),
/// 			Location:        pulumi.StringRef(runtime_template.Location),
/// 			RuntimeTemplate: runtime_template.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.colab.ColabFunctions;
/// import com.pulumi.gcp.colab.inputs.GetRuntimeTemplateIamPolicyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var policy = ColabFunctions.getRuntimeTemplateIamPolicy(GetRuntimeTemplateIamPolicyArgs.builder()
///             .project(runtime_template.project())
///             .location(runtime_template.location())
///             .runtimeTemplate(runtime_template.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:colab:getRuntimeTemplateIamPolicy
///       arguments:
///         project: ${["runtime-template"].project}
///         location: ${["runtime-template"].location}
///         runtimeTemplate: ${["runtime-template"].name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_colab_get_runtime_template_iam_policy_get_runtime_template_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRuntimeTemplateIamPolicyResult> getRuntimeTemplateIamPolicy(
  GetRuntimeTemplateIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:colab/getRuntimeTemplateIamPolicy:getRuntimeTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuntimeTemplateIamPolicyResult.fromMap(result);
}
