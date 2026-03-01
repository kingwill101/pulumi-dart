import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_policy_args.dart';
import 'get_access_policy_iam_policy_args.dart';
import 'get_access_policy_iam_policy_result.dart';
import 'get_access_policy_result.dart';

/// Get information about an Access Context Manager AccessPolicy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy_org = gcp.accesscontextmanager.getAccessPolicy({
///     parent: "organizations/1234567",
/// });
/// const policy_scoped = gcp.accesscontextmanager.getAccessPolicy({
///     parent: "organizations/1234567",
///     scopes: ["projects/1234567"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy_org = gcp.accesscontextmanager.get_access_policy(parent="organizations/1234567")
/// policy_scoped = gcp.accesscontextmanager.get_access_policy(parent="organizations/1234567",
///     scopes=["projects/1234567"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy_org = Gcp.AccessContextManager.GetAccessPolicy.Invoke(new()
///     {
///         Parent = "organizations/1234567",
///     });
///
///     var policy_scoped = Gcp.AccessContextManager.GetAccessPolicy.Invoke(new()
///     {
///         Parent = "organizations/1234567",
///         Scopes = new[]
///         {
///             "projects/1234567",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := accesscontextmanager.LookupAccessPolicy(ctx, &accesscontextmanager.LookupAccessPolicyArgs{
/// 			Parent: "organizations/1234567",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = accesscontextmanager.LookupAccessPolicy(ctx, &accesscontextmanager.LookupAccessPolicyArgs{
/// 			Parent: "organizations/1234567",
/// 			Scopes: []string{
/// 				"projects/1234567",
/// 			},
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
/// import com.pulumi.gcp.accesscontextmanager.AccesscontextmanagerFunctions;
/// import com.pulumi.gcp.accesscontextmanager.inputs.GetAccessPolicyArgs;
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
///         final var policy-org = AccesscontextmanagerFunctions.getAccessPolicy(GetAccessPolicyArgs.builder()
///             .parent("organizations/1234567")
///             .build());
///
///         final var policy-scoped = AccesscontextmanagerFunctions.getAccessPolicy(GetAccessPolicyArgs.builder()
///             .parent("organizations/1234567")
///             .scopes("projects/1234567")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy-org:
///     fn::invoke:
///       function: gcp:accesscontextmanager:getAccessPolicy
///       arguments:
///         parent: organizations/1234567
///   policy-scoped:
///     fn::invoke:
///       function: gcp:accesscontextmanager:getAccessPolicy
///       arguments:
///         parent: organizations/1234567
///         scopes:
///           - projects/1234567
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_accesscontextmanager_get_access_policy_get_access_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPolicyResult> getAccessPolicy(
  GetAccessPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:accesscontextmanager/getAccessPolicy:getAccessPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for accesspolicy
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.accesscontextmanager.getAccessPolicyIamPolicy({
///     name: access_policy.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.accesscontextmanager.get_access_policy_iam_policy(name=access_policy["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.AccessContextManager.GetAccessPolicyIamPolicy.Invoke(new()
///     {
///         Name = access_policy.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := accesscontextmanager.LookupAccessPolicyIamPolicy(ctx, &accesscontextmanager.LookupAccessPolicyIamPolicyArgs{
/// 			Name: access_policy.Name,
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
/// import com.pulumi.gcp.accesscontextmanager.AccesscontextmanagerFunctions;
/// import com.pulumi.gcp.accesscontextmanager.inputs.GetAccessPolicyIamPolicyArgs;
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
///         final var policy = AccesscontextmanagerFunctions.getAccessPolicyIamPolicy(GetAccessPolicyIamPolicyArgs.builder()
///             .name(access_policy.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:accesscontextmanager:getAccessPolicyIamPolicy
///       arguments:
///         name: ${["access-policy"].name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_accesscontextmanager_get_access_policy_iam_policy_get_access_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPolicyIamPolicyResult> getAccessPolicyIamPolicy(
  GetAccessPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:accesscontextmanager/getAccessPolicyIamPolicy:getAccessPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPolicyIamPolicyResult.fromMap(result);
}
