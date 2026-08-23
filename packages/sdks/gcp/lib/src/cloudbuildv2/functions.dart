import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_iam_policy_args.dart';
import 'get_connection_iam_policy_result.dart';

/// Retrieves the current IAM policy data for connection
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.cloudbuildv2.getConnectionIamPolicy({
///     project: my_connection.project,
///     location: my_connection.location,
///     name: my_connection.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.cloudbuildv2.get_connection_iam_policy(project=my_connection["project"],
///     location=my_connection["location"],
///     name=my_connection["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.CloudBuildV2.GetConnectionIamPolicy.Invoke(new()
///     {
///         Project = my_connection.Project,
///         Location = my_connection.Location,
///         Name = my_connection.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuildv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuildv2.GetConnectionIamPolicy(ctx, &cloudbuildv2.GetConnectionIamPolicyArgs{
/// 			Project:  pulumi.StringRef(my_connection.Project),
/// 			Location: pulumi.StringRef(my_connection.Location),
/// 			Name:     my_connection.Name,
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
/// data "gcp_cloudbuildv2_getconnectioniampolicy" "policy" {
///   project  = my-connection.project
///   location = my-connection.location
///   name     = my-connection.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudbuildv2.Cloudbuildv2Functions;
/// import com.pulumi.gcp.cloudbuildv2.inputs.GetConnectionIamPolicyArgs;
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
///         final var policy = Cloudbuildv2Functions.getConnectionIamPolicy(GetConnectionIamPolicyArgs.builder()
///             .project(my_connection.get("project"))
///             .location(my_connection.get("location"))
///             .name(my_connection.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:cloudbuildv2:getConnectionIamPolicy
///       arguments:
///         project: ${["my-connection"].project}
///         location: ${["my-connection"].location}
///         name: ${["my-connection"].name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudbuildv2_get_connection_iam_policy_get_connection_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionIamPolicyResult> getConnectionIamPolicy(
  GetConnectionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudbuildv2/getConnectionIamPolicy:getConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionIamPolicyResult.fromMap(result);
}
