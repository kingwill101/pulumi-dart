import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_iam_policy_args.dart';
import 'get_environment_iam_policy_result.dart';
import 'get_instance_args.dart';
import 'get_instance_result.dart';

/// Retrieves the current IAM policy data for environment
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.apigee.getEnvironmentIamPolicy({
///     orgId: apigeeEnvironment.orgId,
///     envId: apigeeEnvironment.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.apigee.get_environment_iam_policy(org_id=apigee_environment["orgId"],
///     env_id=apigee_environment["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Apigee.GetEnvironmentIamPolicy.Invoke(new()
///     {
///         OrgId = apigeeEnvironment.OrgId,
///         EnvId = apigeeEnvironment.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigee.LookupEnvironmentIamPolicy(ctx, &apigee.LookupEnvironmentIamPolicyArgs{
/// 			OrgId: apigeeEnvironment.OrgId,
/// 			EnvId: apigeeEnvironment.Name,
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
/// data "gcp_apigee_getenvironmentiampolicy" "policy" {
///   org_id = apigeeEnvironment.orgId
///   env_id = apigeeEnvironment.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.apigee.ApigeeFunctions;
/// import com.pulumi.gcp.apigee.inputs.GetEnvironmentIamPolicyArgs;
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
///         final var policy = ApigeeFunctions.getEnvironmentIamPolicy(GetEnvironmentIamPolicyArgs.builder()
///             .orgId(apigeeEnvironment.get("orgId"))
///             .envId(apigeeEnvironment.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:apigee:getEnvironmentIamPolicy
///       arguments:
///         orgId: ${apigeeEnvironment.orgId}
///         envId: ${apigeeEnvironment.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_get_environment_iam_policy_get_environment_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentIamPolicyResult> getEnvironmentIamPolicy(
  GetEnvironmentIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apigee/getEnvironmentIamPolicy:getEnvironmentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentIamPolicyResult.fromMap(result);
}

/// Get information about a Google Apigee Instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myInstance = gcp.apigee.getInstance({
///     name: "my-instance-name",
///     orgId: "organizations/my-org-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_instance = gcp.apigee.get_instance(name="my-instance-name",
///     org_id="organizations/my-org-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myInstance = Gcp.Apigee.GetInstance.Invoke(new()
///     {
///         Name = "my-instance-name",
///         OrgId = "organizations/my-org-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigee.LookupInstance(ctx, &apigee.LookupInstanceArgs{
/// 			Name:  "my-instance-name",
/// 			OrgId: "organizations/my-org-id",
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
/// data "gcp_apigee_getinstance" "myInstance" {
///   name   = "my-instance-name"
///   org_id = "organizations/my-org-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.apigee.ApigeeFunctions;
/// import com.pulumi.gcp.apigee.inputs.GetInstanceArgs;
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
///         final var myInstance = ApigeeFunctions.getInstance(GetInstanceArgs.builder()
///             .name("my-instance-name")
///             .orgId("organizations/my-org-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myInstance:
///     fn::invoke:
///       function: gcp:apigee:getInstance
///       arguments:
///         name: my-instance-name
///         orgId: organizations/my-org-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_get_instance_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apigee/getInstance:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}
