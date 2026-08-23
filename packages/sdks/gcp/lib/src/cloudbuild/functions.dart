import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_args.dart';
import 'get_trigger_result.dart';

/// To get more information about Cloudbuild Trigger, see:
///
/// * [API documentation](https://cloud.google.com/build/docs/api/reference/rest/v1/projects.triggers)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/build/docs/automating-builds/create-manage-triggers)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const name = gcp.cloudbuild.getTrigger({
///     project: "your-project-id",
///     triggerId: filename_trigger.triggerId,
///     location: "location of trigger build",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// name = gcp.cloudbuild.get_trigger(project="your-project-id",
///     trigger_id=filename_trigger["triggerId"],
///     location="location of trigger build")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var name = Gcp.CloudBuild.GetTrigger.Invoke(new()
///     {
///         Project = "your-project-id",
///         TriggerId = filename_trigger.TriggerId,
///         Location = "location of trigger build",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuild.LookupTrigger(ctx, &cloudbuild.LookupTriggerArgs{
/// 			Project:   pulumi.StringRef("your-project-id"),
/// 			TriggerId: filename_trigger.TriggerId,
/// 			Location:  "location of trigger build",
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
/// data "gcp_cloudbuild_gettrigger" "name" {
///   project    = "your-project-id"
///   trigger_id = filename-trigger.triggerId
///   location   = "location of trigger build"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudbuild.CloudbuildFunctions;
/// import com.pulumi.gcp.cloudbuild.inputs.GetTriggerArgs;
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
///         final var name = CloudbuildFunctions.getTrigger(GetTriggerArgs.builder()
///             .project("your-project-id")
///             .triggerId(filename_trigger.get("triggerId"))
///             .location("location of trigger build")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   name:
///     fn::invoke:
///       function: gcp:cloudbuild:getTrigger
///       arguments:
///         project: your-project-id
///         triggerId: ${["filename-trigger"].triggerId}
///         location: location of trigger build
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudbuild_get_trigger_get_trigger_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTriggerResult> getTrigger(
  GetTriggerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudbuild/getTrigger:getTrigger',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTriggerResult.fromMap(result);
}
