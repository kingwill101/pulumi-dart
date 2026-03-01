import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_iam_policy_args.dart';
import 'get_instance_iam_policy_result.dart';
import 'get_table_iam_policy_args.dart';
import 'get_table_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Bigtable instance.
///
/// ## example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.bigtable.getInstanceIamPolicy({
///     instance: instance.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.bigtable.get_instance_iam_policy(instance=instance["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.BigTable.GetInstanceIamPolicy.Invoke(new()
///     {
///         Instance = instance.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigtable.LookupInstanceIamPolicy(ctx, &bigtable.LookupInstanceIamPolicyArgs{
/// 			Instance: instance.Name,
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
/// import com.pulumi.gcp.bigtable.BigtableFunctions;
/// import com.pulumi.gcp.bigtable.inputs.GetInstanceIamPolicyArgs;
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
///         final var policy = BigtableFunctions.getInstanceIamPolicy(GetInstanceIamPolicyArgs.builder()
///             .instance(instance.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:bigtable:getInstanceIamPolicy
///       arguments:
///         instance: ${instance.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bigtable_get_instance_iam_policy_get_instance_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceIamPolicyResult> getInstanceIamPolicy(
  GetInstanceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigtable/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for a Bigtable Table.
///
/// ## example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.bigtable.getTableIamPolicy({
///     instanceName: instance.name,
///     table: table.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.bigtable.get_table_iam_policy(instance_name=instance["name"],
///     table=table["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.BigTable.GetTableIamPolicy.Invoke(new()
///     {
///         InstanceName = instance.Name,
///         Table = table.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigtable.LookupTableIamPolicy(ctx, &bigtable.LookupTableIamPolicyArgs{
/// 			InstanceName: instance.Name,
/// 			Table:        table.Name,
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
/// import com.pulumi.gcp.bigtable.BigtableFunctions;
/// import com.pulumi.gcp.bigtable.inputs.GetTableIamPolicyArgs;
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
///         final var policy = BigtableFunctions.getTableIamPolicy(GetTableIamPolicyArgs.builder()
///             .instanceName(instance.name())
///             .table(table.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:bigtable:getTableIamPolicy
///       arguments:
///         instanceName: ${instance.name}
///         table: ${table.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bigtable_get_table_iam_policy_get_table_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTableIamPolicyResult> getTableIamPolicy(
  GetTableIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigtable/getTableIamPolicy:getTableIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableIamPolicyResult.fromMap(result);
}
