import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_policy_assignment_args.dart';
import 'get_access_policy_assignment_result.dart';
import 'get_args.dart';
import 'get_result.dart';

/// Use this data source to access information about an existing Managed Redis instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.managedredis.get({
///     name: "example-managed-redis",
///     resourceGroupName: "example-resources",
/// });
/// export const managedRedisHostname = example.then(example => example.hostname);
/// export const managedRedisPrimaryAccessKey = example.then(example => example.defaultDatabases?.[0]?.primaryAccessKey);
/// export const managedRedisSecondaryAccessKey = example.then(example => example.defaultDatabases?.[0]?.secondaryAccessKey);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.managedredis.get(name="example-managed-redis",
///     resource_group_name="example-resources")
/// pulumi.export("managedRedisHostname", example.hostname)
/// pulumi.export("managedRedisPrimaryAccessKey", example.default_databases[0].primary_access_key)
/// pulumi.export("managedRedisSecondaryAccessKey", example.default_databases[0].secondary_access_key)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ManagedRedis.Get.Invoke(new()
///     {
///         Name = "example-managed-redis",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["managedRedisHostname"] = example.Apply(getResult => getResult.Hostname),
///         ["managedRedisPrimaryAccessKey"] = example.Apply(getResult => getResult.DefaultDatabases[0]?.PrimaryAccessKey),
///         ["managedRedisSecondaryAccessKey"] = example.Apply(getResult => getResult.DefaultDatabases[0]?.SecondaryAccessKey),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/managedredis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := managedredis.Get(ctx, &managedredis.GetArgs{
/// 			Name:              "example-managed-redis",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("managedRedisHostname", example.Hostname)
/// 		ctx.Export("managedRedisPrimaryAccessKey", example.DefaultDatabases[0].PrimaryAccessKey)
/// 		ctx.Export("managedRedisSecondaryAccessKey", example.DefaultDatabases[0].SecondaryAccessKey)
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
/// import com.pulumi.azure.managedredis.ManagedredisFunctions;
/// import com.pulumi.azure.managedredis.inputs.GetArgs;
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
///         final var example = ManagedredisFunctions.get(GetArgs.builder()
///             .name("example-managed-redis")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("managedRedisHostname", example.hostname());
///         ctx.export("managedRedisPrimaryAccessKey", example.defaultDatabases()[0].primaryAccessKey());
///         ctx.export("managedRedisSecondaryAccessKey", example.defaultDatabases()[0].secondaryAccessKey());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:managedredis:get
///       arguments:
///         name: example-managed-redis
///         resourceGroupName: example-resources
/// outputs:
///   managedRedisHostname: ${example.hostname}
///   managedRedisPrimaryAccessKey: ${example.defaultDatabases[0].primaryAccessKey}
///   managedRedisSecondaryAccessKey: ${example.defaultDatabases[0].secondaryAccessKey}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Cache` - 2025-07-01
/// [args] Arguments passed to this invoke. {@macro pulumi_managedredis_get_get_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResult> get(GetArgs args, {pulumi.InvokeOptions? options}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:managedredis/get:get',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResult.fromMap(result);
}

/// Use this data source to access information about an existing Managed Redis Access Policy Assignment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.managedredis.getAccessPolicyAssignment({
///     objectId: "00000000-0000-0000-0000-000000000000",
///     managedRedisName: "example-managedredis",
///     resourceGroupName: "example-resources",
/// });
/// export const objectId = example.then(example => example.objectId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.managedredis.get_access_policy_assignment(object_id="00000000-0000-0000-0000-000000000000",
///     managed_redis_name="example-managedredis",
///     resource_group_name="example-resources")
/// pulumi.export("objectId", example.object_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ManagedRedis.GetAccessPolicyAssignment.Invoke(new()
///     {
///         ObjectId = "00000000-0000-0000-0000-000000000000",
///         ManagedRedisName = "example-managedredis",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["objectId"] = example.Apply(getAccessPolicyAssignmentResult => getAccessPolicyAssignmentResult.ObjectId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/managedredis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := managedredis.LookupAccessPolicyAssignment(ctx, &managedredis.LookupAccessPolicyAssignmentArgs{
/// 			ObjectId:          "00000000-0000-0000-0000-000000000000",
/// 			ManagedRedisName:  "example-managedredis",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("objectId", example.ObjectId)
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
/// import com.pulumi.azure.managedredis.ManagedredisFunctions;
/// import com.pulumi.azure.managedredis.inputs.GetAccessPolicyAssignmentArgs;
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
///         final var example = ManagedredisFunctions.getAccessPolicyAssignment(GetAccessPolicyAssignmentArgs.builder()
///             .objectId("00000000-0000-0000-0000-000000000000")
///             .managedRedisName("example-managedredis")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("objectId", example.objectId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:managedredis:getAccessPolicyAssignment
///       arguments:
///         objectId: 00000000-0000-0000-0000-000000000000
///         managedRedisName: example-managedredis
///         resourceGroupName: example-resources
/// outputs:
///   objectId: ${example.objectId}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Cache` - 2025-07-01
/// [args] Arguments passed to this invoke. {@macro pulumi_managedredis_get_access_policy_assignment_get_access_policy_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPolicyAssignmentResult> getAccessPolicyAssignment(
  GetAccessPolicyAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:managedredis/getAccessPolicyAssignment:getAccessPolicyAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPolicyAssignmentResult.fromMap(result);
}
