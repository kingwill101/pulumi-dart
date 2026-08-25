import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_namespace_iam_policy_args.dart';
import 'get_namespace_iam_policy_result.dart';
import 'get_service_iam_policy_args.dart';
import 'get_service_iam_policy_result.dart';

/// Retrieves the current IAM policy data for namespace
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.servicedirectory.getNamespaceIamPolicy({
///     name: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.servicedirectory.get_namespace_iam_policy(name=example["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.ServiceDirectory.GetNamespaceIamPolicy.Invoke(new()
///     {
///         Name = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicedirectory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicedirectory.LookupNamespaceIamPolicy(ctx, &servicedirectory.LookupNamespaceIamPolicyArgs{
/// 			Name: example.Name,
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
/// data "gcp_servicedirectory_getnamespaceiampolicy" "policy" {
///   name = example.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.servicedirectory.ServicedirectoryFunctions;
/// import com.pulumi.gcp.servicedirectory.inputs.GetNamespaceIamPolicyArgs;
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
///         final var policy = ServicedirectoryFunctions.getNamespaceIamPolicy(GetNamespaceIamPolicyArgs.builder()
///             .name(example.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:servicedirectory:getNamespaceIamPolicy
///       arguments:
///         name: ${example.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicedirectory_get_namespace_iam_policy_get_namespace_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceIamPolicyResult> getNamespaceIamPolicy(
  GetNamespaceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:servicedirectory/getNamespaceIamPolicy:getNamespaceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetNamespaceIamPolicyResult> getNamespaceIamPolicyOutput(
  GetNamespaceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:servicedirectory/getNamespaceIamPolicy:getNamespaceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for service
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.servicedirectory.getServiceIamPolicy({
///     name: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.servicedirectory.get_service_iam_policy(name=example["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.ServiceDirectory.GetServiceIamPolicy.Invoke(new()
///     {
///         Name = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicedirectory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicedirectory.LookupServiceIamPolicy(ctx, &servicedirectory.LookupServiceIamPolicyArgs{
/// 			Name: example.Name,
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
/// data "gcp_servicedirectory_getserviceiampolicy" "policy" {
///   name = example.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.servicedirectory.ServicedirectoryFunctions;
/// import com.pulumi.gcp.servicedirectory.inputs.GetServiceIamPolicyArgs;
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
///         final var policy = ServicedirectoryFunctions.getServiceIamPolicy(GetServiceIamPolicyArgs.builder()
///             .name(example.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:servicedirectory:getServiceIamPolicy
///       arguments:
///         name: ${example.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicedirectory_get_service_iam_policy_get_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceIamPolicyResult> getServiceIamPolicy(
  GetServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:servicedirectory/getServiceIamPolicy:getServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetServiceIamPolicyResult> getServiceIamPolicyOutput(
  GetServiceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:servicedirectory/getServiceIamPolicy:getServiceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceIamPolicyResult.fromMap);
}
