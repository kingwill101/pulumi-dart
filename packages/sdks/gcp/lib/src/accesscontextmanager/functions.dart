import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_policy_args.dart';
import 'get_access_policy_iam_policy_args.dart';
import 'get_access_policy_iam_policy_result.dart';
import 'get_access_policy_result.dart';
import 'get_supported_service_args.dart';
import 'get_supported_service_result.dart';
import 'get_supported_services_result.dart';

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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_accesscontextmanager_getaccesspolicy" "policy-org" {
///   parent = "organizations/1234567"
/// }
/// data "gcp_accesscontextmanager_getaccesspolicy" "policy-scoped" {
///   parent = "organizations/1234567"
///   scopes = ["projects/1234567"]
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

pulumi.Output<GetAccessPolicyResult> getAccessPolicyOutput(
  GetAccessPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:accesscontextmanager/getAccessPolicy:getAccessPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccessPolicyResult.fromMap);
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_accesscontextmanager_getaccesspolicyiampolicy" "policy" {
///   name = access-policy.name
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
///         final var policy = AccesscontextmanagerFunctions.getAccessPolicyIamPolicy(GetAccessPolicyIamPolicyArgs.builder()
///             .name(access_policy.get("name"))
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

pulumi.Output<GetAccessPolicyIamPolicyResult> getAccessPolicyIamPolicyOutput(
  GetAccessPolicyIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:accesscontextmanager/getAccessPolicyIamPolicy:getAccessPolicyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccessPolicyIamPolicyResult.fromMap);
}

/// Get information about a VPC Service Controls supported service, including its supported methods.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const storage = gcp.accesscontextmanager.getSupportedService({
///     serviceName: "storage.googleapis.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// storage = gcp.accesscontextmanager.get_supported_service(service_name="storage.googleapis.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storage = Gcp.AccessContextManager.GetSupportedService.Invoke(new()
///     {
///         ServiceName = "storage.googleapis.com",
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
/// 		_, err := accesscontextmanager.GetSupportedService(ctx, &accesscontextmanager.GetSupportedServiceArgs{
/// 			ServiceName: "storage.googleapis.com",
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
/// data "gcp_accesscontextmanager_getsupportedservice" "storage" {
///   service_name = "storage.googleapis.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.accesscontextmanager.AccesscontextmanagerFunctions;
/// import com.pulumi.gcp.accesscontextmanager.inputs.GetSupportedServiceArgs;
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
///         final var storage = AccesscontextmanagerFunctions.getSupportedService(GetSupportedServiceArgs.builder()
///             .serviceName("storage.googleapis.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   storage:
///     fn::invoke:
///       function: gcp:accesscontextmanager:getSupportedService
///       arguments:
///         serviceName: storage.googleapis.com
/// ```
///
///
/// ### Use supported methods in a service perimeter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const storage = gcp.accesscontextmanager.getSupportedService({
///     serviceName: "storage.googleapis.com",
/// });
/// export const storageMethods = storage.then(storage => storage.supportedMethods);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// storage = gcp.accesscontextmanager.get_supported_service(service_name="storage.googleapis.com")
/// pulumi.export("storageMethods", storage.supported_methods)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storage = Gcp.AccessContextManager.GetSupportedService.Invoke(new()
///     {
///         ServiceName = "storage.googleapis.com",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["storageMethods"] = storage.Apply(getSupportedServiceResult => getSupportedServiceResult.SupportedMethods),
///     };
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
/// 		storage, err := accesscontextmanager.GetSupportedService(ctx, &accesscontextmanager.GetSupportedServiceArgs{
/// 			ServiceName: "storage.googleapis.com",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("storageMethods", storage.SupportedMethods)
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
/// data "gcp_accesscontextmanager_getsupportedservice" "storage" {
///   service_name = "storage.googleapis.com"
/// }
///
/// output "storageMethods" {
///   value = data.gcp_accesscontextmanager_getsupportedservice.storage.supported_methods
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.accesscontextmanager.AccesscontextmanagerFunctions;
/// import com.pulumi.gcp.accesscontextmanager.inputs.GetSupportedServiceArgs;
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
///         final var storage = AccesscontextmanagerFunctions.getSupportedService(GetSupportedServiceArgs.builder()
///             .serviceName("storage.googleapis.com")
///             .build());
///
///         ctx.export("storageMethods", storage.supportedMethods());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   storage:
///     fn::invoke:
///       function: gcp:accesscontextmanager:getSupportedService
///       arguments:
///         serviceName: storage.googleapis.com
/// outputs:
///   storageMethods: ${storage.supportedMethods}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_accesscontextmanager_get_supported_service_get_supported_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSupportedServiceResult> getSupportedService(
  GetSupportedServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:accesscontextmanager/getSupportedService:getSupportedService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSupportedServiceResult.fromMap(result);
}

pulumi.Output<GetSupportedServiceResult> getSupportedServiceOutput(
  GetSupportedServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:accesscontextmanager/getSupportedService:getSupportedService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSupportedServiceResult.fromMap);
}

/// Lists all VPC Service Controls supported services.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const all = gcp.accesscontextmanager.getSupportedServices({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// all = gcp.accesscontextmanager.get_supported_services()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Gcp.AccessContextManager.GetSupportedServices.Invoke();
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
/// 		_, err := accesscontextmanager.GetSupportedServices(ctx, map[string]interface{}{}, nil)
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
/// data "gcp_accesscontextmanager_getsupportedservices" "all" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.accesscontextmanager.AccesscontextmanagerFunctions;
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
///         final var all = AccesscontextmanagerFunctions.getSupportedServices(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: gcp:accesscontextmanager:getSupportedServices
///       arguments: {}
/// ```
///
///
/// ### Filter to GA services available on restricted VIP
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// export = async () => {
///     const all = await gcp.accesscontextmanager.getSupportedServices({});
///     const gaRestrictedServices = .filter(s => s.serviceSupportStage == "GA" && s.availableOnRestrictedVip).map(s => (s.name));
///     return {
///         gaRestrictedServices: gaRestrictedServices,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// all = gcp.accesscontextmanager.get_supported_services()
/// ga_restricted_services = [s.name for s in all.supported_services if s.service_support_stage == "GA" and s.available_on_restricted_vip]
/// pulumi.export("gaRestrictedServices", ga_restricted_services)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Gcp.AccessContextManager.GetSupportedServices.Invoke();
///
///     var gaRestrictedServices = .Where(s => s.ServiceSupportStage == "GA" && s.AvailableOnRestrictedVip).Select(s =>
///     {
///         return s.Name;
///     }).ToList();
///
///     return new Dictionary<string, object?>
///     {
///         ["gaRestrictedServices"] = gaRestrictedServices,
///     };
/// });
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
/// data "gcp_accesscontextmanager_getsupportedservices" "all" {
/// }
///
/// locals {
///   gaRestrictedServices = [for s in data.gcp_accesscontextmanager_getsupportedservices.all.supported_services : s.name if s.serviceSupportStage == "GA" && s.availableOnRestrictedVip]
/// }
/// output "gaRestrictedServices" {
///   value = local.gaRestrictedServices
/// }
/// ```
/// [options] Invoke options controlling this call.
Future<GetSupportedServicesResult> getSupportedServices(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:accesscontextmanager/getSupportedServices:getSupportedServices',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSupportedServicesResult.fromMap(result);
}

pulumi.Output<GetSupportedServicesResult> getSupportedServicesOutput(
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:accesscontextmanager/getSupportedServices:getSupportedServices',
    const <String, pulumi.Input<dynamic>>{},
    options: options,
  ).apply(GetSupportedServicesResult.fromMap);
}
