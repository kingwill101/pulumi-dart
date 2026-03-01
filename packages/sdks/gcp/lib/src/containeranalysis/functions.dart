import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_note_iam_policy_args.dart';
import 'get_note_iam_policy_result.dart';

/// Retrieves the current IAM policy data for note
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.containeranalysis.getNoteIamPolicy({
///     project: note.project,
///     note: note.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.containeranalysis.get_note_iam_policy(project=note["project"],
///     note=note["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.ContainerAnalysis.GetNoteIamPolicy.Invoke(new()
///     {
///         Project = note.Project,
///         Note = note.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/containeranalysis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containeranalysis.LookupNoteIamPolicy(ctx, &containeranalysis.LookupNoteIamPolicyArgs{
/// 			Project: pulumi.StringRef(note.Project),
/// 			Note:    note.Name,
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
/// import com.pulumi.gcp.containeranalysis.ContaineranalysisFunctions;
/// import com.pulumi.gcp.containeranalysis.inputs.GetNoteIamPolicyArgs;
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
///         final var policy = ContaineranalysisFunctions.getNoteIamPolicy(GetNoteIamPolicyArgs.builder()
///             .project(note.project())
///             .note(note.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:containeranalysis:getNoteIamPolicy
///       arguments:
///         project: ${note.project}
///         note: ${note.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_containeranalysis_get_note_iam_policy_get_note_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNoteIamPolicyResult> getNoteIamPolicy(
  GetNoteIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:containeranalysis/getNoteIamPolicy:getNoteIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNoteIamPolicyResult.fromMap(result);
}
