import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hive_catalog_iam_policy_args.dart';
import 'get_hive_catalog_iam_policy_result.dart';
import 'get_hive_database_iam_policy_args.dart';
import 'get_hive_database_iam_policy_result.dart';
import 'get_hive_table_iam_policy_args.dart';
import 'get_hive_table_iam_policy_result.dart';
import 'get_iceberg_catalog_iam_policy_args.dart';
import 'get_iceberg_catalog_iam_policy_result.dart';
import 'get_iceberg_namespace_iam_policy_args.dart';
import 'get_iceberg_namespace_iam_policy_result.dart';
import 'get_iceberg_table_iam_policy_args.dart';
import 'get_iceberg_table_iam_policy_result.dart';

/// Retrieves the current IAM policy data for hivecatalog
/// &gt; **Warning:** This datasource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.biglake.getHiveCatalogIamPolicy({
///     project: myHiveCatalog.project,
///     name: myHiveCatalog.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.biglake.get_hive_catalog_iam_policy(project=my_hive_catalog["project"],
///     name=my_hive_catalog["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.BigLake.GetHiveCatalogIamPolicy.Invoke(new()
///     {
///         Project = myHiveCatalog.Project,
///         Name = myHiveCatalog.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := biglake.LookupHiveCatalogIamPolicy(ctx, &biglake.LookupHiveCatalogIamPolicyArgs{
/// 			Project: pulumi.StringRef(myHiveCatalog.Project),
/// 			Name:    myHiveCatalog.Name,
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
/// data "gcp_biglake_gethivecatalogiampolicy" "policy" {
///   project = myHiveCatalog.project
///   name    = myHiveCatalog.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.BiglakeFunctions;
/// import com.pulumi.gcp.biglake.inputs.GetHiveCatalogIamPolicyArgs;
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
///         final var policy = BiglakeFunctions.getHiveCatalogIamPolicy(GetHiveCatalogIamPolicyArgs.builder()
///             .project(myHiveCatalog.get("project"))
///             .name(myHiveCatalog.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:biglake:getHiveCatalogIamPolicy
///       arguments:
///         project: ${myHiveCatalog.project}
///         name: ${myHiveCatalog.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_biglake_get_hive_catalog_iam_policy_get_hive_catalog_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHiveCatalogIamPolicyResult> getHiveCatalogIamPolicy(
  GetHiveCatalogIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:biglake/getHiveCatalogIamPolicy:getHiveCatalogIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHiveCatalogIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for hivedatabase
/// &gt; **Warning:** This datasource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.biglake.getHiveDatabaseIamPolicy({
///     project: myHiveDatabase.project,
///     catalog: myHiveDatabase.catalog,
///     name: myHiveDatabase.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.biglake.get_hive_database_iam_policy(project=my_hive_database["project"],
///     catalog=my_hive_database["catalog"],
///     name=my_hive_database["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.BigLake.GetHiveDatabaseIamPolicy.Invoke(new()
///     {
///         Project = myHiveDatabase.Project,
///         Catalog = myHiveDatabase.Catalog,
///         Name = myHiveDatabase.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := biglake.LookupHiveDatabaseIamPolicy(ctx, &biglake.LookupHiveDatabaseIamPolicyArgs{
/// 			Project: pulumi.StringRef(myHiveDatabase.Project),
/// 			Catalog: myHiveDatabase.Catalog,
/// 			Name:    myHiveDatabase.Name,
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
/// data "gcp_biglake_gethivedatabaseiampolicy" "policy" {
///   project = myHiveDatabase.project
///   catalog = myHiveDatabase.catalog
///   name    = myHiveDatabase.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.BiglakeFunctions;
/// import com.pulumi.gcp.biglake.inputs.GetHiveDatabaseIamPolicyArgs;
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
///         final var policy = BiglakeFunctions.getHiveDatabaseIamPolicy(GetHiveDatabaseIamPolicyArgs.builder()
///             .project(myHiveDatabase.get("project"))
///             .catalog(myHiveDatabase.get("catalog"))
///             .name(myHiveDatabase.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:biglake:getHiveDatabaseIamPolicy
///       arguments:
///         project: ${myHiveDatabase.project}
///         catalog: ${myHiveDatabase.catalog}
///         name: ${myHiveDatabase.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_biglake_get_hive_database_iam_policy_get_hive_database_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHiveDatabaseIamPolicyResult> getHiveDatabaseIamPolicy(
  GetHiveDatabaseIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:biglake/getHiveDatabaseIamPolicy:getHiveDatabaseIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHiveDatabaseIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for hivetable
/// &gt; **Warning:** This datasource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.biglake.getHiveTableIamPolicy({
///     project: myHiveTable.project,
///     catalog: myHiveTable.catalog,
///     database: myHiveTable.database,
///     name: myHiveTable.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.biglake.get_hive_table_iam_policy(project=my_hive_table["project"],
///     catalog=my_hive_table["catalog"],
///     database=my_hive_table["database"],
///     name=my_hive_table["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.BigLake.GetHiveTableIamPolicy.Invoke(new()
///     {
///         Project = myHiveTable.Project,
///         Catalog = myHiveTable.Catalog,
///         Database = myHiveTable.Database,
///         Name = myHiveTable.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := biglake.LookupHiveTableIamPolicy(ctx, &biglake.LookupHiveTableIamPolicyArgs{
/// 			Project:  pulumi.StringRef(myHiveTable.Project),
/// 			Catalog:  myHiveTable.Catalog,
/// 			Database: myHiveTable.Database,
/// 			Name:     myHiveTable.Name,
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
/// data "gcp_biglake_gethivetableiampolicy" "policy" {
///   project  = myHiveTable.project
///   catalog  = myHiveTable.catalog
///   database = myHiveTable.database
///   name     = myHiveTable.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.BiglakeFunctions;
/// import com.pulumi.gcp.biglake.inputs.GetHiveTableIamPolicyArgs;
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
///         final var policy = BiglakeFunctions.getHiveTableIamPolicy(GetHiveTableIamPolicyArgs.builder()
///             .project(myHiveTable.get("project"))
///             .catalog(myHiveTable.get("catalog"))
///             .database(myHiveTable.get("database"))
///             .name(myHiveTable.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:biglake:getHiveTableIamPolicy
///       arguments:
///         project: ${myHiveTable.project}
///         catalog: ${myHiveTable.catalog}
///         database: ${myHiveTable.database}
///         name: ${myHiveTable.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_biglake_get_hive_table_iam_policy_get_hive_table_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHiveTableIamPolicyResult> getHiveTableIamPolicy(
  GetHiveTableIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:biglake/getHiveTableIamPolicy:getHiveTableIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHiveTableIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for icebergcatalog
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.biglake.getIcebergCatalogIamPolicy({
///     project: myIcebergCatalog.project,
///     name: myIcebergCatalog.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.biglake.get_iceberg_catalog_iam_policy(project=my_iceberg_catalog["project"],
///     name=my_iceberg_catalog["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.BigLake.GetIcebergCatalogIamPolicy.Invoke(new()
///     {
///         Project = myIcebergCatalog.Project,
///         Name = myIcebergCatalog.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := biglake.LookupIcebergCatalogIamPolicy(ctx, &biglake.LookupIcebergCatalogIamPolicyArgs{
/// 			Project: pulumi.StringRef(myIcebergCatalog.Project),
/// 			Name:    myIcebergCatalog.Name,
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
/// data "gcp_biglake_geticebergcatalogiampolicy" "policy" {
///   project = myIcebergCatalog.project
///   name    = myIcebergCatalog.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.BiglakeFunctions;
/// import com.pulumi.gcp.biglake.inputs.GetIcebergCatalogIamPolicyArgs;
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
///         final var policy = BiglakeFunctions.getIcebergCatalogIamPolicy(GetIcebergCatalogIamPolicyArgs.builder()
///             .project(myIcebergCatalog.get("project"))
///             .name(myIcebergCatalog.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:biglake:getIcebergCatalogIamPolicy
///       arguments:
///         project: ${myIcebergCatalog.project}
///         name: ${myIcebergCatalog.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_biglake_get_iceberg_catalog_iam_policy_get_iceberg_catalog_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIcebergCatalogIamPolicyResult> getIcebergCatalogIamPolicy(
  GetIcebergCatalogIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:biglake/getIcebergCatalogIamPolicy:getIcebergCatalogIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIcebergCatalogIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for icebergnamespace
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.biglake.getIcebergNamespaceIamPolicy({
///     project: myIcebergNamespace.project,
///     catalog: myIcebergNamespace.catalog,
///     namespaceId: myIcebergNamespace.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.biglake.get_iceberg_namespace_iam_policy(project=my_iceberg_namespace["project"],
///     catalog=my_iceberg_namespace["catalog"],
///     namespace_id=my_iceberg_namespace["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.BigLake.GetIcebergNamespaceIamPolicy.Invoke(new()
///     {
///         Project = myIcebergNamespace.Project,
///         Catalog = myIcebergNamespace.Catalog,
///         NamespaceId = myIcebergNamespace.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := biglake.LookupIcebergNamespaceIamPolicy(ctx, &biglake.LookupIcebergNamespaceIamPolicyArgs{
/// 			Project:     pulumi.StringRef(myIcebergNamespace.Project),
/// 			Catalog:     myIcebergNamespace.Catalog,
/// 			NamespaceId: myIcebergNamespace.Id,
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
/// data "gcp_biglake_geticebergnamespaceiampolicy" "policy" {
///   project      = myIcebergNamespace.project
///   catalog      = myIcebergNamespace.catalog
///   namespace_id = myIcebergNamespace.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.BiglakeFunctions;
/// import com.pulumi.gcp.biglake.inputs.GetIcebergNamespaceIamPolicyArgs;
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
///         final var policy = BiglakeFunctions.getIcebergNamespaceIamPolicy(GetIcebergNamespaceIamPolicyArgs.builder()
///             .project(myIcebergNamespace.get("project"))
///             .catalog(myIcebergNamespace.get("catalog"))
///             .namespaceId(myIcebergNamespace.get("id"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:biglake:getIcebergNamespaceIamPolicy
///       arguments:
///         project: ${myIcebergNamespace.project}
///         catalog: ${myIcebergNamespace.catalog}
///         namespaceId: ${myIcebergNamespace.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_biglake_get_iceberg_namespace_iam_policy_get_iceberg_namespace_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIcebergNamespaceIamPolicyResult> getIcebergNamespaceIamPolicy(
  GetIcebergNamespaceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:biglake/getIcebergNamespaceIamPolicy:getIcebergNamespaceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIcebergNamespaceIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for icebergtable
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.biglake.getIcebergTableIamPolicy({
///     project: myIcebergTable.project,
///     catalog: myIcebergTable.catalog,
///     namespace: myIcebergTable.namespace,
///     name: myIcebergTable.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.biglake.get_iceberg_table_iam_policy(project=my_iceberg_table["project"],
///     catalog=my_iceberg_table["catalog"],
///     namespace=my_iceberg_table["namespace"],
///     name=my_iceberg_table["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.BigLake.GetIcebergTableIamPolicy.Invoke(new()
///     {
///         Project = myIcebergTable.Project,
///         Catalog = myIcebergTable.Catalog,
///         Namespace = myIcebergTable.Namespace,
///         Name = myIcebergTable.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := biglake.LookupIcebergTableIamPolicy(ctx, &biglake.LookupIcebergTableIamPolicyArgs{
/// 			Project:   pulumi.StringRef(myIcebergTable.Project),
/// 			Catalog:   myIcebergTable.Catalog,
/// 			Namespace: myIcebergTable.Namespace,
/// 			Name:      myIcebergTable.Name,
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
/// data "gcp_biglake_geticebergtableiampolicy" "policy" {
///   project   = myIcebergTable.project
///   catalog   = myIcebergTable.catalog
///   namespace = myIcebergTable.namespace
///   name      = myIcebergTable.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.BiglakeFunctions;
/// import com.pulumi.gcp.biglake.inputs.GetIcebergTableIamPolicyArgs;
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
///         final var policy = BiglakeFunctions.getIcebergTableIamPolicy(GetIcebergTableIamPolicyArgs.builder()
///             .project(myIcebergTable.get("project"))
///             .catalog(myIcebergTable.get("catalog"))
///             .namespace(myIcebergTable.get("namespace"))
///             .name(myIcebergTable.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:biglake:getIcebergTableIamPolicy
///       arguments:
///         project: ${myIcebergTable.project}
///         catalog: ${myIcebergTable.catalog}
///         namespace: ${myIcebergTable.namespace}
///         name: ${myIcebergTable.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_biglake_get_iceberg_table_iam_policy_get_iceberg_table_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIcebergTableIamPolicyResult> getIcebergTableIamPolicy(
  GetIcebergTableIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:biglake/getIcebergTableIamPolicy:getIcebergTableIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIcebergTableIamPolicyResult.fromMap(result);
}
