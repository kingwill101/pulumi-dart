import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_args.dart';
import 'get_database_iam_policy_args.dart';
import 'get_database_iam_policy_result.dart';
import 'get_database_result.dart';
import 'get_instance_args.dart';
import 'get_instance_iam_policy_args.dart';
import 'get_instance_iam_policy_result.dart';
import 'get_instance_result.dart';

/// Get a spanner database from Google Cloud by its name and instance name.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.spanner.getDatabase({
///     name: "foo",
///     instance: instance.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.spanner.get_database(name="foo",
///     instance=instance["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.Spanner.GetDatabase.Invoke(new()
///     {
///         Name = "foo",
///         Instance = instance.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := spanner.LookupDatabase(ctx, &spanner.LookupDatabaseArgs{
/// 			Name:     "foo",
/// 			Instance: instance.Name,
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
/// data "gcp_spanner_getdatabase" "foo" {
///   name     = "foo"
///   instance = instance.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.spanner.SpannerFunctions;
/// import com.pulumi.gcp.spanner.inputs.GetDatabaseArgs;
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
///         final var foo = SpannerFunctions.getDatabase(GetDatabaseArgs.builder()
///             .name("foo")
///             .instance(instance.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:spanner:getDatabase
///       arguments:
///         name: foo
///         instance: ${instance.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_spanner_get_database_get_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseResult> getDatabase(
  GetDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:spanner/getDatabase:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult.fromMap(result);
}

pulumi.Output<GetDatabaseResult> getDatabaseOutput(
  GetDatabaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:spanner/getDatabase:getDatabase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatabaseResult.fromMap);
}

/// Retrieves the current IAM policy data for a Spanner database.
///
/// ## example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.spanner.getDatabaseIamPolicy({
///     project: database.project,
///     database: database.name,
///     instance: database.instance,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.spanner.get_database_iam_policy(project=database["project"],
///     database=database["name"],
///     instance=database["instance"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.Spanner.GetDatabaseIamPolicy.Invoke(new()
///     {
///         Project = database.Project,
///         Database = database.Name,
///         Instance = database.Instance,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := spanner.GetDatabaseIamPolicy(ctx, &spanner.GetDatabaseIamPolicyArgs{
/// 			Project:  pulumi.StringRef(database.Project),
/// 			Database: database.Name,
/// 			Instance: database.Instance,
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
/// data "gcp_spanner_getdatabaseiampolicy" "foo" {
///   project  = database.project
///   database = database.name
///   instance = database.instance
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.spanner.SpannerFunctions;
/// import com.pulumi.gcp.spanner.inputs.GetDatabaseIamPolicyArgs;
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
///         final var foo = SpannerFunctions.getDatabaseIamPolicy(GetDatabaseIamPolicyArgs.builder()
///             .project(database.get("project"))
///             .database(database.get("name"))
///             .instance(database.get("instance"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:spanner:getDatabaseIamPolicy
///       arguments:
///         project: ${database.project}
///         database: ${database.name}
///         instance: ${database.instance}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_spanner_get_database_iam_policy_get_database_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseIamPolicyResult> getDatabaseIamPolicy(
  GetDatabaseIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:spanner/getDatabaseIamPolicy:getDatabaseIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseIamPolicyResult.fromMap(result);
}

pulumi.Output<GetDatabaseIamPolicyResult> getDatabaseIamPolicyOutput(
  GetDatabaseIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:spanner/getDatabaseIamPolicy:getDatabaseIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatabaseIamPolicyResult.fromMap);
}

/// Get a spanner instance from Google Cloud by its name.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.spanner.getInstance({
///     name: "bar",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.spanner.get_instance(name="bar")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.Spanner.GetInstance.Invoke(new()
///     {
///         Name = "bar",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := spanner.LookupInstance(ctx, &spanner.LookupInstanceArgs{
/// 			Name: "bar",
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
/// data "gcp_spanner_getinstance" "foo" {
///   name = "bar"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.spanner.SpannerFunctions;
/// import com.pulumi.gcp.spanner.inputs.GetInstanceArgs;
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
///         final var foo = SpannerFunctions.getInstance(GetInstanceArgs.builder()
///             .name("bar")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:spanner:getInstance
///       arguments:
///         name: bar
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_spanner_get_instance_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:spanner/getInstance:getInstance',
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
    'gcp:spanner/getInstance:getInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceResult.fromMap);
}

/// Retrieves the current IAM policy data for a Spanner instance.
///
/// ## example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.spanner.getInstanceIamPolicy({
///     project: instance.project,
///     instance: instance.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.spanner.get_instance_iam_policy(project=instance["project"],
///     instance=instance["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.Spanner.GetInstanceIamPolicy.Invoke(new()
///     {
///         Project = instance.Project,
///         Instance = instance.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := spanner.GetInstanceIamPolicy(ctx, &spanner.GetInstanceIamPolicyArgs{
/// 			Project:  pulumi.StringRef(instance.Project),
/// 			Instance: instance.Name,
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
/// data "gcp_spanner_getinstanceiampolicy" "foo" {
///   project  = instance.project
///   instance = instance.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.spanner.SpannerFunctions;
/// import com.pulumi.gcp.spanner.inputs.GetInstanceIamPolicyArgs;
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
///         final var foo = SpannerFunctions.getInstanceIamPolicy(GetInstanceIamPolicyArgs.builder()
///             .project(instance.get("project"))
///             .instance(instance.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:spanner:getInstanceIamPolicy
///       arguments:
///         project: ${instance.project}
///         instance: ${instance.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_spanner_get_instance_iam_policy_get_instance_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceIamPolicyResult> getInstanceIamPolicy(
  GetInstanceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:spanner/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetInstanceIamPolicyResult> getInstanceIamPolicyOutput(
  GetInstanceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:spanner/getInstanceIamPolicy:getInstanceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceIamPolicyResult.fromMap);
}
