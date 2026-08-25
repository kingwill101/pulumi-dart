import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_args.dart';
import 'get_repository_iam_policy_args.dart';
import 'get_repository_iam_policy_result.dart';
import 'get_repository_result.dart';

/// Get infomation about an existing Google Cloud Source Repository.
/// For more information see [the official documentation](https://cloud.google.com/source-repositories)
/// and
/// [API](https://cloud.google.com/source-repositories/docs/reference/rest/v1/projects.repos).
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_repo = gcp.sourcerepo.getRepository({
///     name: "my-repository",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_repo = gcp.sourcerepo.get_repository(name="my-repository")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_repo = Gcp.SourceRepo.GetRepository.Invoke(new()
///     {
///         Name = "my-repository",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sourcerepo"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sourcerepo.LookupRepository(ctx, &sourcerepo.LookupRepositoryArgs{
/// 			Name: "my-repository",
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
/// data "gcp_sourcerepo_getrepository" "my-repo" {
///   name = "my-repository"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sourcerepo.SourcerepoFunctions;
/// import com.pulumi.gcp.sourcerepo.inputs.GetRepositoryArgs;
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
///         final var my-repo = SourcerepoFunctions.getRepository(GetRepositoryArgs.builder()
///             .name("my-repository")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-repo:
///     fn::invoke:
///       function: gcp:sourcerepo:getRepository
///       arguments:
///         name: my-repository
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sourcerepo_get_repository_get_repository_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryResult> getRepository(
  GetRepositoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sourcerepo/getRepository:getRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryResult.fromMap(result);
}

pulumi.Output<GetRepositoryResult> getRepositoryOutput(
  GetRepositoryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:sourcerepo/getRepository:getRepository',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRepositoryResult.fromMap);
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
/// const policy = gcp.sourcerepo.getRepositoryIamPolicy({
///     project: my_repo.project,
///     repository: my_repo.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.sourcerepo.get_repository_iam_policy(project=my_repo["project"],
///     repository=my_repo["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.SourceRepo.GetRepositoryIamPolicy.Invoke(new()
///     {
///         Project = my_repo.Project,
///         Repository = my_repo.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sourcerepo"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sourcerepo.LookupRepositoryIamPolicy(ctx, &sourcerepo.LookupRepositoryIamPolicyArgs{
/// 			Project:    pulumi.StringRef(my_repo.Project),
/// 			Repository: my_repo.Name,
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
/// data "gcp_sourcerepo_getrepositoryiampolicy" "policy" {
///   project    = my-repo.project
///   repository = my-repo.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sourcerepo.SourcerepoFunctions;
/// import com.pulumi.gcp.sourcerepo.inputs.GetRepositoryIamPolicyArgs;
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
///         final var policy = SourcerepoFunctions.getRepositoryIamPolicy(GetRepositoryIamPolicyArgs.builder()
///             .project(my_repo.get("project"))
///             .repository(my_repo.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:sourcerepo:getRepositoryIamPolicy
///       arguments:
///         project: ${["my-repo"].project}
///         repository: ${["my-repo"].name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sourcerepo_get_repository_iam_policy_get_repository_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryIamPolicyResult> getRepositoryIamPolicy(
  GetRepositoryIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sourcerepo/getRepositoryIamPolicy:getRepositoryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyResult.fromMap(result);
}

pulumi.Output<GetRepositoryIamPolicyResult> getRepositoryIamPolicyOutput(
  GetRepositoryIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:sourcerepo/getRepositoryIamPolicy:getRepositoryIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRepositoryIamPolicyResult.fromMap);
}
