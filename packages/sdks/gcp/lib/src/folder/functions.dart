import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_iam_policy_args.dart';
import 'get_iam_policy_result.dart';
import 'get_organization_policy_args.dart';
import 'get_organization_policy_result.dart';

/// Retrieves the current IAM policy data for a folder.
///
/// ## example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = gcp.folder.getIamPolicy({
///     folder: permissiontest.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.folder.get_iam_policy(folder=permissiontest["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Gcp.Folder.GetIamPolicy.Invoke(new()
///     {
///         Folder = permissiontest.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := folder.GetIamPolicy(ctx, &folder.GetIamPolicyArgs{
/// 			Folder: permissiontest.Name,
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
/// data "gcp_folder_getiampolicy" "test" {
///   folder = permissiontest.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.folder.FolderFunctions;
/// import com.pulumi.gcp.folder.inputs.GetIamPolicyArgs;
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
///         final var test = FolderFunctions.getIamPolicy(GetIamPolicyArgs.builder()
///             .folder(permissiontest.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: gcp:folder:getIamPolicy
///       arguments:
///         folder: ${permissiontest.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_folder_get_iam_policy_get_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIamPolicyResult> getIamPolicy(
  GetIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:folder/getIamPolicy:getIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamPolicyResult.fromMap(result);
}

pulumi.Output<GetIamPolicyResult> getIamPolicyOutput(
  GetIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:folder/getIamPolicy:getIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIamPolicyResult.fromMap);
}

/// Allows management of Organization policies for a Google Folder. For more information see
/// [the official
/// documentation](https://docs.cloud.google.com/resource-manager/docs/organization-policy/overview)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.folder.getOrganizationPolicy({
///     folder: "folders/folderid",
///     constraint: "constraints/compute.trustedImageProjects",
/// });
/// export const version = policy.then(policy => policy.version);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.folder.get_organization_policy(folder="folders/folderid",
///     constraint="constraints/compute.trustedImageProjects")
/// pulumi.export("version", policy.version)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Folder.GetOrganizationPolicy.Invoke(new()
///     {
///         Folder = "folders/folderid",
///         Constraint = "constraints/compute.trustedImageProjects",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["version"] = policy.Apply(getOrganizationPolicyResult => getOrganizationPolicyResult.Version),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		policy, err := folder.LookupOrganizationPolicy(ctx, &folder.LookupOrganizationPolicyArgs{
/// 			Folder:     "folders/folderid",
/// 			Constraint: "constraints/compute.trustedImageProjects",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("version", policy.Version)
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
/// data "gcp_folder_getorganizationpolicy" "policy" {
///   folder     = "folders/folderid"
///   constraint = "constraints/compute.trustedImageProjects"
/// }
///
/// output "version" {
///   value = data.gcp_folder_getorganizationpolicy.policy.version
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.folder.FolderFunctions;
/// import com.pulumi.gcp.folder.inputs.GetOrganizationPolicyArgs;
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
///         final var policy = FolderFunctions.getOrganizationPolicy(GetOrganizationPolicyArgs.builder()
///             .folder("folders/folderid")
///             .constraint("constraints/compute.trustedImageProjects")
///             .build());
///
///         ctx.export("version", policy.version());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:folder:getOrganizationPolicy
///       arguments:
///         folder: folders/folderid
///         constraint: constraints/compute.trustedImageProjects
/// outputs:
///   version: ${policy.version}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_folder_get_organization_policy_get_organization_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationPolicyResult> getOrganizationPolicy(
  GetOrganizationPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:folder/getOrganizationPolicy:getOrganizationPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPolicyResult.fromMap(result);
}

pulumi.Output<GetOrganizationPolicyResult> getOrganizationPolicyOutput(
  GetOrganizationPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:folder/getOrganizationPolicy:getOrganizationPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationPolicyResult.fromMap);
}
