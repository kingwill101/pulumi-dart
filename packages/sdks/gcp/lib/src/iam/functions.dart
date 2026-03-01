import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rule_args.dart';
import 'get_rule_result.dart';
import 'get_testable_permissions_args.dart';
import 'get_testable_permissions_result.dart';
import 'get_workforce_pool_iam_policy_args.dart';
import 'get_workforce_pool_iam_policy_result.dart';
import 'get_workload_identity_pool_args.dart';
import 'get_workload_identity_pool_iam_policy_args.dart';
import 'get_workload_identity_pool_iam_policy_result.dart';
import 'get_workload_identity_pool_provider_args.dart';
import 'get_workload_identity_pool_provider_result.dart';
import 'get_workload_identity_pool_result.dart';

/// Use this data source to get information about a Google IAM Role.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const roleinfo = gcp.iam.getRule({
///     name: "roles/compute.viewer",
/// });
/// export const theRolePermissions = roleinfo.then(roleinfo => roleinfo.includedPermissions);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// roleinfo = gcp.iam.get_rule(name="roles/compute.viewer")
/// pulumi.export("theRolePermissions", roleinfo.included_permissions)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roleinfo = Gcp.Iam.GetRule.Invoke(new()
///     {
///         Name = "roles/compute.viewer",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["theRolePermissions"] = roleinfo.Apply(getRuleResult => getRuleResult.IncludedPermissions),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		roleinfo, err := iam.GetRule(ctx, &iam.GetRuleArgs{
/// 			Name: "roles/compute.viewer",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("theRolePermissions", roleinfo.IncludedPermissions)
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
/// import com.pulumi.gcp.iam.IamFunctions;
/// import com.pulumi.gcp.iam.inputs.GetRuleArgs;
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
///         final var roleinfo = IamFunctions.getRule(GetRuleArgs.builder()
///             .name("roles/compute.viewer")
///             .build());
///
///         ctx.export("theRolePermissions", roleinfo.includedPermissions());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   roleinfo:
///     fn::invoke:
///       function: gcp:iam:getRule
///       arguments:
///         name: roles/compute.viewer
/// outputs:
///   theRolePermissions: ${roleinfo.includedPermissions}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_rule_get_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRuleResult> getRule(
  GetRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iam/getRule:getRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuleResult.fromMap(result);
}

/// Retrieve a list of testable permissions for a resource. Testable permissions mean the permissions that user can add or remove in a role at a given resource. The resource can be referenced either via the full resource name or via a URI.
///
/// ## Example Usage
///
/// Retrieve all the supported permissions able to be set on `my-project` that are in either GA or BETA. This is useful for dynamically constructing custom roles.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const perms = gcp.iam.getTestablePermissions({
///     fullResourceName: "//cloudresourcemanager.googleapis.com/projects/my-project",
///     stages: [
///         "GA",
///         "BETA",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// perms = gcp.iam.get_testable_permissions(full_resource_name="//cloudresourcemanager.googleapis.com/projects/my-project",
///     stages=[
///         "GA",
///         "BETA",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var perms = Gcp.Iam.GetTestablePermissions.Invoke(new()
///     {
///         FullResourceName = "//cloudresourcemanager.googleapis.com/projects/my-project",
///         Stages = new[]
///         {
///             "GA",
///             "BETA",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.GetTestablePermissions(ctx, &iam.GetTestablePermissionsArgs{
/// 			FullResourceName: "//cloudresourcemanager.googleapis.com/projects/my-project",
/// 			Stages: []string{
/// 				"GA",
/// 				"BETA",
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
/// import com.pulumi.gcp.iam.IamFunctions;
/// import com.pulumi.gcp.iam.inputs.GetTestablePermissionsArgs;
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
///         final var perms = IamFunctions.getTestablePermissions(GetTestablePermissionsArgs.builder()
///             .fullResourceName("//cloudresourcemanager.googleapis.com/projects/my-project")
///             .stages(
///                 "GA",
///                 "BETA")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   perms:
///     fn::invoke:
///       function: gcp:iam:getTestablePermissions
///       arguments:
///         fullResourceName: //cloudresourcemanager.googleapis.com/projects/my-project
///         stages:
///           - GA
///           - BETA
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_testable_permissions_get_testable_permissions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTestablePermissionsResult> getTestablePermissions(
  GetTestablePermissionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iam/getTestablePermissions:getTestablePermissions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTestablePermissionsResult.fromMap(result);
}

/// Retrieves the current IAM policy data for workforcepool
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iam.getWorkforcePoolIamPolicy({
///     location: example.location,
///     workforcePoolId: example.workforcePoolId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iam.get_workforce_pool_iam_policy(location=example["location"],
///     workforce_pool_id=example["workforcePoolId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iam.GetWorkforcePoolIamPolicy.Invoke(new()
///     {
///         Location = example.Location,
///         WorkforcePoolId = example.WorkforcePoolId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.LookupWorkforcePoolIamPolicy(ctx, &iam.LookupWorkforcePoolIamPolicyArgs{
/// 			Location:        pulumi.StringRef(example.Location),
/// 			WorkforcePoolId: example.WorkforcePoolId,
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
/// import com.pulumi.gcp.iam.IamFunctions;
/// import com.pulumi.gcp.iam.inputs.GetWorkforcePoolIamPolicyArgs;
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
///         final var policy = IamFunctions.getWorkforcePoolIamPolicy(GetWorkforcePoolIamPolicyArgs.builder()
///             .location(example.location())
///             .workforcePoolId(example.workforcePoolId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iam:getWorkforcePoolIamPolicy
///       arguments:
///         location: ${example.location}
///         workforcePoolId: ${example.workforcePoolId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_workforce_pool_iam_policy_get_workforce_pool_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkforcePoolIamPolicyResult> getWorkforcePoolIamPolicy(
  GetWorkforcePoolIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iam/getWorkforcePoolIamPolicy:getWorkforcePoolIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkforcePoolIamPolicyResult.fromMap(result);
}

/// Get a IAM workload identity pool from Google Cloud by its id.
/// > **Note:** The following resource requires the Beta IAM role `roles/iam.workloadIdentityPoolAdmin` in order to succeed. `OWNER` and `EDITOR` roles do not include the necessary permissions.
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.iam.getWorkloadIdentityPool({
///     workloadIdentityPoolId: "foo-pool",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.iam.get_workload_identity_pool(workload_identity_pool_id="foo-pool")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.Iam.GetWorkloadIdentityPool.Invoke(new()
///     {
///         WorkloadIdentityPoolId = "foo-pool",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.LookupWorkloadIdentityPool(ctx, &iam.LookupWorkloadIdentityPoolArgs{
/// 			WorkloadIdentityPoolId: "foo-pool",
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
/// import com.pulumi.gcp.iam.IamFunctions;
/// import com.pulumi.gcp.iam.inputs.GetWorkloadIdentityPoolArgs;
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
///         final var foo = IamFunctions.getWorkloadIdentityPool(GetWorkloadIdentityPoolArgs.builder()
///             .workloadIdentityPoolId("foo-pool")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:iam:getWorkloadIdentityPool
///       arguments:
///         workloadIdentityPoolId: foo-pool
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_workload_identity_pool_get_workload_identity_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadIdentityPoolResult> getWorkloadIdentityPool(
  GetWorkloadIdentityPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iam/getWorkloadIdentityPool:getWorkloadIdentityPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadIdentityPoolResult.fromMap(result);
}

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iam.getWorkloadIdentityPoolIamPolicy({
///     project: example.project,
///     workloadIdentityPoolId: example.workloadIdentityPoolId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iam.get_workload_identity_pool_iam_policy(project=example["project"],
///     workload_identity_pool_id=example["workloadIdentityPoolId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iam.GetWorkloadIdentityPoolIamPolicy.Invoke(new()
///     {
///         Project = example.Project,
///         WorkloadIdentityPoolId = example.WorkloadIdentityPoolId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.LookupWorkloadIdentityPoolIamPolicy(ctx, &iam.LookupWorkloadIdentityPoolIamPolicyArgs{
/// 			Project:                pulumi.StringRef(example.Project),
/// 			WorkloadIdentityPoolId: example.WorkloadIdentityPoolId,
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
/// import com.pulumi.gcp.iam.IamFunctions;
/// import com.pulumi.gcp.iam.inputs.GetWorkloadIdentityPoolIamPolicyArgs;
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
///         final var policy = IamFunctions.getWorkloadIdentityPoolIamPolicy(GetWorkloadIdentityPoolIamPolicyArgs.builder()
///             .project(example.project())
///             .workloadIdentityPoolId(example.workloadIdentityPoolId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iam:getWorkloadIdentityPoolIamPolicy
///       arguments:
///         project: ${example.project}
///         workloadIdentityPoolId: ${example.workloadIdentityPoolId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_workload_identity_pool_iam_policy_get_workload_identity_pool_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadIdentityPoolIamPolicyResult> getWorkloadIdentityPoolIamPolicy(
  GetWorkloadIdentityPoolIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iam/getWorkloadIdentityPoolIamPolicy:getWorkloadIdentityPoolIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadIdentityPoolIamPolicyResult.fromMap(result);
}

/// Get a IAM workload identity provider from Google Cloud by its id.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.iam.getWorkloadIdentityPoolProvider({
///     workloadIdentityPoolId: "foo-pool",
///     workloadIdentityPoolProviderId: "bar-provider",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.iam.get_workload_identity_pool_provider(workload_identity_pool_id="foo-pool",
///     workload_identity_pool_provider_id="bar-provider")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.Iam.GetWorkloadIdentityPoolProvider.Invoke(new()
///     {
///         WorkloadIdentityPoolId = "foo-pool",
///         WorkloadIdentityPoolProviderId = "bar-provider",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.LookupWorkloadIdentityPoolProvider(ctx, &iam.LookupWorkloadIdentityPoolProviderArgs{
/// 			WorkloadIdentityPoolId:         "foo-pool",
/// 			WorkloadIdentityPoolProviderId: "bar-provider",
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
/// import com.pulumi.gcp.iam.IamFunctions;
/// import com.pulumi.gcp.iam.inputs.GetWorkloadIdentityPoolProviderArgs;
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
///         final var foo = IamFunctions.getWorkloadIdentityPoolProvider(GetWorkloadIdentityPoolProviderArgs.builder()
///             .workloadIdentityPoolId("foo-pool")
///             .workloadIdentityPoolProviderId("bar-provider")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:iam:getWorkloadIdentityPoolProvider
///       arguments:
///         workloadIdentityPoolId: foo-pool
///         workloadIdentityPoolProviderId: bar-provider
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_workload_identity_pool_provider_get_workload_identity_pool_provider_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadIdentityPoolProviderResult> getWorkloadIdentityPoolProvider(
  GetWorkloadIdentityPoolProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iam/getWorkloadIdentityPoolProvider:getWorkloadIdentityPoolProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadIdentityPoolProviderResult.fromMap(result);
}
