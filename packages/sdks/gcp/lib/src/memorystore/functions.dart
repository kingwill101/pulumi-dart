import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_acl_policy_args.dart';
import 'get_acl_policy_result.dart';
import 'get_instance_args.dart';
import 'get_instance_result.dart';

/// Get information about a Google Cloud Memorystore ACL policy. For more information see the [official documentation](https://cloud.google.com/memorystore/docs/valkey) or the [API documentation](https://cloud.google.com/memorystore/docs/valkey/reference/rest).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const qa = gcp.memorystore.getAclPolicy({
///     aclPolicyId: "my-acl-policy",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// qa = gcp.memorystore.get_acl_policy(acl_policy_id="my-acl-policy",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qa = Gcp.MemoryStore.GetAclPolicy.Invoke(new()
///     {
///         AclPolicyId = "my-acl-policy",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/memorystore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := memorystore.LookupAclPolicy(ctx, &memorystore.LookupAclPolicyArgs{
/// 			AclPolicyId: "my-acl-policy",
/// 			Location:    pulumi.StringRef("us-central1"),
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
/// data "gcp_memorystore_getaclpolicy" "qa" {
///   acl_policy_id = "my-acl-policy"
///   location      = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.memorystore.MemorystoreFunctions;
/// import com.pulumi.gcp.memorystore.inputs.GetAclPolicyArgs;
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
///         final var qa = MemorystoreFunctions.getAclPolicy(GetAclPolicyArgs.builder()
///             .aclPolicyId("my-acl-policy")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   qa:
///     fn::invoke:
///       function: gcp:memorystore:getAclPolicy
///       arguments:
///         aclPolicyId: my-acl-policy
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_memorystore_get_acl_policy_get_acl_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAclPolicyResult> getAclPolicy(
  GetAclPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:memorystore/getAclPolicy:getAclPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAclPolicyResult.fromMap(result);
}

pulumi.Output<GetAclPolicyResult> getAclPolicyOutput(
  GetAclPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:memorystore/getAclPolicy:getAclPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAclPolicyResult.fromMap);
}

/// Use this data source to get information about the available instance. For more details refer the [API docs](https://cloud.google.com/memorystore/docs/valkey/reference/rest/v1/projects.locations.instances).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const qa = gcp.memorystore.getInstance({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// qa = gcp.memorystore.get_instance()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qa = Gcp.MemoryStore.GetInstance.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/memorystore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := memorystore.LookupInstance(ctx, &memorystore.LookupInstanceArgs{}, nil)
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
/// data "gcp_memorystore_getinstance" "qa" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.memorystore.MemorystoreFunctions;
/// import com.pulumi.gcp.memorystore.inputs.GetInstanceArgs;
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
///         final var qa = MemorystoreFunctions.getInstance(GetInstanceArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   qa:
///     fn::invoke:
///       function: gcp:memorystore:getInstance
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_memorystore_get_instance_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:memorystore/getInstance:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

pulumi.Output<GetInstanceResult> getInstanceOutput(
  GetInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:memorystore/getInstance:getInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceResult.fromMap);
}
