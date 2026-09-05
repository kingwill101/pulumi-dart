import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_acl_policy_args.dart';
import 'get_cluster_acl_policy_result.dart';
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';
import 'get_instance_args.dart';
import 'get_instance_result.dart';

/// Use this data source to get information about a Redis Cluster. For more details, see the [API documentation](https://cloud.google.com/memorystore/docs/cluster/reference/rest/v1/projects.locations.clusters).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.redis.getCluster({
///     name: "my-redis-cluster",
///     region: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.redis.get_cluster(name="my-redis-cluster",
///     region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Redis.GetCluster.Invoke(new()
///     {
///         Name = "my-redis-cluster",
///         Region = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redis.LookupCluster(ctx, &redis.LookupClusterArgs{
/// 			Name:   "my-redis-cluster",
/// 			Region: pulumi.StringRef("us-central1"),
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
/// data "gcp_redis_getcluster" "default" {
///   name   = "my-redis-cluster"
///   region = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.redis.RedisFunctions;
/// import com.pulumi.gcp.redis.inputs.GetClusterArgs;
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
///         final var default = RedisFunctions.getCluster(GetClusterArgs.builder()
///             .name("my-redis-cluster")
///             .region("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:redis:getCluster
///       arguments:
///         name: my-redis-cluster
///         region: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_redis_get_cluster_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:redis/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

pulumi.Output<GetClusterResult> getClusterOutput(
  GetClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:redis/getCluster:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterResult.fromMap);
}

/// Get information about a Google Cloud Redis Cluster ACL policy. For more information see the [official documentation](https://cloud.google.com/memorystore/docs/redis) or the [API documentation](https://cloud.google.com/memorystore/docs/redis/reference/rest).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const qa = gcp.redis.getClusterAclPolicy({
///     aclPolicyId: "my-acl-policy",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// qa = gcp.redis.get_cluster_acl_policy(acl_policy_id="my-acl-policy",
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
///     var qa = Gcp.Redis.GetClusterAclPolicy.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redis.LookupClusterAclPolicy(ctx, &redis.LookupClusterAclPolicyArgs{
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
/// data "gcp_redis_getclusteraclpolicy" "qa" {
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
/// import com.pulumi.gcp.redis.RedisFunctions;
/// import com.pulumi.gcp.redis.inputs.GetClusterAclPolicyArgs;
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
///         final var qa = RedisFunctions.getClusterAclPolicy(GetClusterAclPolicyArgs.builder()
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
///       function: gcp:redis:getClusterAclPolicy
///       arguments:
///         aclPolicyId: my-acl-policy
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_redis_get_cluster_acl_policy_get_cluster_acl_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterAclPolicyResult> getClusterAclPolicy(
  GetClusterAclPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:redis/getClusterAclPolicy:getClusterAclPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterAclPolicyResult.fromMap(result);
}

pulumi.Output<GetClusterAclPolicyResult> getClusterAclPolicyOutput(
  GetClusterAclPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:redis/getClusterAclPolicy:getClusterAclPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterAclPolicyResult.fromMap);
}

/// Get info about a Google Cloud Redis instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myInstance = gcp.redis.getInstance({
///     name: "my-redis-instance",
/// });
/// export const instanceMemorySizeGb = myInstance.then(myInstance => myInstance.memorySizeGb);
/// export const instanceConnectMode = myInstance.then(myInstance => myInstance.connectMode);
/// export const instanceAuthorizedNetwork = myInstance.then(myInstance => myInstance.authorizedNetwork);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_instance = gcp.redis.get_instance(name="my-redis-instance")
/// pulumi.export("instanceMemorySizeGb", my_instance.memory_size_gb)
/// pulumi.export("instanceConnectMode", my_instance.connect_mode)
/// pulumi.export("instanceAuthorizedNetwork", my_instance.authorized_network)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myInstance = Gcp.Redis.GetInstance.Invoke(new()
///     {
///         Name = "my-redis-instance",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["instanceMemorySizeGb"] = myInstance.Apply(getInstanceResult => getInstanceResult.MemorySizeGb),
///         ["instanceConnectMode"] = myInstance.Apply(getInstanceResult => getInstanceResult.ConnectMode),
///         ["instanceAuthorizedNetwork"] = myInstance.Apply(getInstanceResult => getInstanceResult.AuthorizedNetwork),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myInstance, err := redis.LookupInstance(ctx, &redis.LookupInstanceArgs{
/// 			Name: "my-redis-instance",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("instanceMemorySizeGb", myInstance.MemorySizeGb)
/// 		ctx.Export("instanceConnectMode", myInstance.ConnectMode)
/// 		ctx.Export("instanceAuthorizedNetwork", myInstance.AuthorizedNetwork)
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
/// data "gcp_redis_getinstance" "myInstance" {
///   name = "my-redis-instance"
/// }
///
/// output "instanceMemorySizeGb" {
///   value = data.gcp_redis_getinstance.myInstance.memory_size_gb
/// }
/// output "instanceConnectMode" {
///   value = data.gcp_redis_getinstance.myInstance.connect_mode
/// }
/// output "instanceAuthorizedNetwork" {
///   value = data.gcp_redis_getinstance.myInstance.authorized_network
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.redis.RedisFunctions;
/// import com.pulumi.gcp.redis.inputs.GetInstanceArgs;
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
///         final var myInstance = RedisFunctions.getInstance(GetInstanceArgs.builder()
///             .name("my-redis-instance")
///             .build());
///
///         ctx.export("instanceMemorySizeGb", myInstance.memorySizeGb());
///         ctx.export("instanceConnectMode", myInstance.connectMode());
///         ctx.export("instanceAuthorizedNetwork", myInstance.authorizedNetwork());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myInstance:
///     fn::invoke:
///       function: gcp:redis:getInstance
///       arguments:
///         name: my-redis-instance
/// outputs:
///   instanceMemorySizeGb: ${myInstance.memorySizeGb}
///   instanceConnectMode: ${myInstance.connectMode}
///   instanceAuthorizedNetwork: ${myInstance.authorizedNetwork}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_redis_get_instance_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:redis/getInstance:getInstance',
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
    'gcp:redis/getInstance:getInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceResult.fromMap);
}
