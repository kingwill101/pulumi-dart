import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_iam_policy_args.dart';
import 'get_instance_iam_policy_result.dart';
import 'get_repository_iam_policy_args.dart';
import 'get_repository_iam_policy_result.dart';

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
/// const policy = gcp.securesourcemanager.getInstanceIamPolicy({
///     project: _default.project,
///     location: _default.location,
///     instanceId: _default.instanceId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.securesourcemanager.get_instance_iam_policy(project=default["project"],
///     location=default["location"],
///     instance_id=default["instanceId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.SecureSourceManager.GetInstanceIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         InstanceId = @default.InstanceId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securesourcemanager.LookupInstanceIamPolicy(ctx, &securesourcemanager.LookupInstanceIamPolicyArgs{
/// 			Project:    pulumi.StringRef(_default.Project),
/// 			Location:   pulumi.StringRef(_default.Location),
/// 			InstanceId: _default.InstanceId,
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
/// data "gcp_securesourcemanager_getinstanceiampolicy" "policy" {
///   project     = default.project
///   location    = default.location
///   instance_id = default.instanceId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.securesourcemanager.SecuresourcemanagerFunctions;
/// import com.pulumi.gcp.securesourcemanager.inputs.GetInstanceIamPolicyArgs;
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
///         final var policy = SecuresourcemanagerFunctions.getInstanceIamPolicy(GetInstanceIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .instanceId(default_.get("instanceId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:securesourcemanager:getInstanceIamPolicy
///       arguments:
///         project: ${default.project}
///         location: ${default.location}
///         instanceId: ${default.instanceId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_securesourcemanager_get_instance_iam_policy_get_instance_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceIamPolicyResult> getInstanceIamPolicy(
  GetInstanceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:securesourcemanager/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for repository
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.securesourcemanager.getRepositoryIamPolicy({
///     project: _default.project,
///     location: _default.location,
///     repositoryId: _default.repositoryId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.securesourcemanager.get_repository_iam_policy(project=default["project"],
///     location=default["location"],
///     repository_id=default["repositoryId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.SecureSourceManager.GetRepositoryIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         RepositoryId = @default.RepositoryId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securesourcemanager.LookupRepositoryIamPolicy(ctx, &securesourcemanager.LookupRepositoryIamPolicyArgs{
/// 			Project:      pulumi.StringRef(_default.Project),
/// 			Location:     pulumi.StringRef(_default.Location),
/// 			RepositoryId: _default.RepositoryId,
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
/// data "gcp_securesourcemanager_getrepositoryiampolicy" "policy" {
///   project       = default.project
///   location      = default.location
///   repository_id = default.repositoryId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.securesourcemanager.SecuresourcemanagerFunctions;
/// import com.pulumi.gcp.securesourcemanager.inputs.GetRepositoryIamPolicyArgs;
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
///         final var policy = SecuresourcemanagerFunctions.getRepositoryIamPolicy(GetRepositoryIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .repositoryId(default_.get("repositoryId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:securesourcemanager:getRepositoryIamPolicy
///       arguments:
///         project: ${default.project}
///         location: ${default.location}
///         repositoryId: ${default.repositoryId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_securesourcemanager_get_repository_iam_policy_get_repository_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryIamPolicyResult> getRepositoryIamPolicy(
  GetRepositoryIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:securesourcemanager/getRepositoryIamPolicy:getRepositoryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyResult.fromMap(result);
}
