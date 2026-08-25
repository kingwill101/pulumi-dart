import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_database_args.dart';
import 'get_autonomous_database_result.dart';
import 'get_autonomous_databases_args.dart';
import 'get_autonomous_databases_result.dart';
import 'get_cloud_exadata_infrastructure_args.dart';
import 'get_cloud_exadata_infrastructure_result.dart';
import 'get_cloud_exadata_infrastructures_args.dart';
import 'get_cloud_exadata_infrastructures_result.dart';
import 'get_cloud_vm_cluster_args.dart';
import 'get_cloud_vm_cluster_result.dart';
import 'get_cloud_vm_clusters_args.dart';
import 'get_cloud_vm_clusters_result.dart';
import 'get_db_nodes_args.dart';
import 'get_db_nodes_result.dart';
import 'get_db_servers_args.dart';
import 'get_db_servers_result.dart';
import 'get_exascale_db_storage_vault_args.dart';
import 'get_exascale_db_storage_vault_result.dart';
import 'get_exascale_db_storage_vaults_args.dart';
import 'get_exascale_db_storage_vaults_result.dart';
import 'get_goldengate_connection_types_args.dart';
import 'get_goldengate_connection_types_result.dart';
import 'get_goldengate_deployment_environments_args.dart';
import 'get_goldengate_deployment_environments_result.dart';
import 'get_goldengate_deployment_types_args.dart';
import 'get_goldengate_deployment_types_result.dart';
import 'get_goldengate_deployment_versions_args.dart';
import 'get_goldengate_deployment_versions_result.dart';
import 'get_odb_network_args.dart';
import 'get_odb_network_result.dart';
import 'get_odb_subnet_args.dart';
import 'get_odb_subnet_result.dart';

/// Get information about an AutonomousDatabase.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.autonomousDatabases).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_instance = gcp.oracledatabase.getAutonomousDatabase({
///     location: "us-east4",
///     autonomousDatabaseId: "autonomous_database_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_instance = gcp.oracledatabase.get_autonomous_database(location="us-east4",
///     autonomous_database_id="autonomous_database_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_instance = Gcp.OracleDatabase.GetAutonomousDatabase.Invoke(new()
///     {
///         Location = "us-east4",
///         AutonomousDatabaseId = "autonomous_database_id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.LookupAutonomousDatabase(ctx, &oracledatabase.LookupAutonomousDatabaseArgs{
/// 			Location:             "us-east4",
/// 			AutonomousDatabaseId: "autonomous_database_id",
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
/// data "gcp_oracledatabase_getautonomousdatabase" "my-instance" {
///   location               = "us-east4"
///   autonomous_database_id = "autonomous_database_id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetAutonomousDatabaseArgs;
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
///         final var my-instance = OracledatabaseFunctions.getAutonomousDatabase(GetAutonomousDatabaseArgs.builder()
///             .location("us-east4")
///             .autonomousDatabaseId("autonomous_database_id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-instance:
///     fn::invoke:
///       function: gcp:oracledatabase:getAutonomousDatabase
///       arguments:
///         location: us-east4
///         autonomousDatabaseId: autonomous_database_id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oracledatabase_get_autonomous_database_get_autonomous_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutonomousDatabaseResult> getAutonomousDatabase(
  GetAutonomousDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getAutonomousDatabase:getAutonomousDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutonomousDatabaseResult.fromMap(result);
}

pulumi.Output<GetAutonomousDatabaseResult> getAutonomousDatabaseOutput(
  GetAutonomousDatabaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:oracledatabase/getAutonomousDatabase:getAutonomousDatabase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAutonomousDatabaseResult.fromMap);
}

/// List all AutonomousDatabases.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.autonomousDatabases).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_adbs = gcp.oracledatabase.getAutonomousDatabases({
///     location: "us-east4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_adbs = gcp.oracledatabase.get_autonomous_databases(location="us-east4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_adbs = Gcp.OracleDatabase.GetAutonomousDatabases.Invoke(new()
///     {
///         Location = "us-east4",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.GetAutonomousDatabases(ctx, &oracledatabase.GetAutonomousDatabasesArgs{
/// 			Location: "us-east4",
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
/// data "gcp_oracledatabase_getautonomousdatabases" "my-adbs" {
///   location = "us-east4"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetAutonomousDatabasesArgs;
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
///         final var my-adbs = OracledatabaseFunctions.getAutonomousDatabases(GetAutonomousDatabasesArgs.builder()
///             .location("us-east4")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-adbs:
///     fn::invoke:
///       function: gcp:oracledatabase:getAutonomousDatabases
///       arguments:
///         location: us-east4
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oracledatabase_get_autonomous_databases_get_autonomous_databases_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutonomousDatabasesResult> getAutonomousDatabases(
  GetAutonomousDatabasesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getAutonomousDatabases:getAutonomousDatabases',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutonomousDatabasesResult.fromMap(result);
}

pulumi.Output<GetAutonomousDatabasesResult> getAutonomousDatabasesOutput(
  GetAutonomousDatabasesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:oracledatabase/getAutonomousDatabases:getAutonomousDatabases',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAutonomousDatabasesResult.fromMap);
}

/// Get information about an ExadataInfrastructure.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.cloudExadataInfrastructures).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_instance = gcp.oracledatabase.getCloudExadataInfrastructure({
///     location: "us-east4",
///     cloudExadataInfrastructureId: "exadata-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_instance = gcp.oracledatabase.get_cloud_exadata_infrastructure(location="us-east4",
///     cloud_exadata_infrastructure_id="exadata-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_instance = Gcp.OracleDatabase.GetCloudExadataInfrastructure.Invoke(new()
///     {
///         Location = "us-east4",
///         CloudExadataInfrastructureId = "exadata-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.LookupCloudExadataInfrastructure(ctx, &oracledatabase.LookupCloudExadataInfrastructureArgs{
/// 			Location:                     "us-east4",
/// 			CloudExadataInfrastructureId: "exadata-id",
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
/// data "gcp_oracledatabase_getcloudexadatainfrastructure" "my-instance" {
///   location                        = "us-east4"
///   cloud_exadata_infrastructure_id = "exadata-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetCloudExadataInfrastructureArgs;
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
///         final var my-instance = OracledatabaseFunctions.getCloudExadataInfrastructure(GetCloudExadataInfrastructureArgs.builder()
///             .location("us-east4")
///             .cloudExadataInfrastructureId("exadata-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-instance:
///     fn::invoke:
///       function: gcp:oracledatabase:getCloudExadataInfrastructure
///       arguments:
///         location: us-east4
///         cloudExadataInfrastructureId: exadata-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oracledatabase_get_cloud_exadata_infrastructure_get_cloud_exadata_infrastructure_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudExadataInfrastructureResult> getCloudExadataInfrastructure(
  GetCloudExadataInfrastructureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getCloudExadataInfrastructure:getCloudExadataInfrastructure',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudExadataInfrastructureResult.fromMap(result);
}

pulumi.Output<GetCloudExadataInfrastructureResult> getCloudExadataInfrastructureOutput(
  GetCloudExadataInfrastructureArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:oracledatabase/getCloudExadataInfrastructure:getCloudExadataInfrastructure',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudExadataInfrastructureResult.fromMap);
}

/// List all ExadataInfrastructures.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.cloudExadataInfrastructures).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myExadatas = gcp.oracledatabase.getCloudExadataInfrastructures({
///     location: "us-east4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_exadatas = gcp.oracledatabase.get_cloud_exadata_infrastructures(location="us-east4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myExadatas = Gcp.OracleDatabase.GetCloudExadataInfrastructures.Invoke(new()
///     {
///         Location = "us-east4",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.GetCloudExadataInfrastructures(ctx, &oracledatabase.GetCloudExadataInfrastructuresArgs{
/// 			Location: "us-east4",
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
/// data "gcp_oracledatabase_getcloudexadatainfrastructures" "myExadatas" {
///   location = "us-east4"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetCloudExadataInfrastructuresArgs;
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
///         final var myExadatas = OracledatabaseFunctions.getCloudExadataInfrastructures(GetCloudExadataInfrastructuresArgs.builder()
///             .location("us-east4")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myExadatas:
///     fn::invoke:
///       function: gcp:oracledatabase:getCloudExadataInfrastructures
///       arguments:
///         location: us-east4
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oracledatabase_get_cloud_exadata_infrastructures_get_cloud_exadata_infrastructures_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudExadataInfrastructuresResult> getCloudExadataInfrastructures(
  GetCloudExadataInfrastructuresArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getCloudExadataInfrastructures:getCloudExadataInfrastructures',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudExadataInfrastructuresResult.fromMap(result);
}

pulumi.Output<GetCloudExadataInfrastructuresResult> getCloudExadataInfrastructuresOutput(
  GetCloudExadataInfrastructuresArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:oracledatabase/getCloudExadataInfrastructures:getCloudExadataInfrastructures',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudExadataInfrastructuresResult.fromMap);
}

/// Get information about a CloudVmCluster.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.cloudVmClusters).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_vmcluster = gcp.oracledatabase.getCloudVmCluster({
///     location: "us-east4",
///     cloudVmClusterId: "vmcluster-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_vmcluster = gcp.oracledatabase.get_cloud_vm_cluster(location="us-east4",
///     cloud_vm_cluster_id="vmcluster-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_vmcluster = Gcp.OracleDatabase.GetCloudVmCluster.Invoke(new()
///     {
///         Location = "us-east4",
///         CloudVmClusterId = "vmcluster-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.LookupCloudVmCluster(ctx, &oracledatabase.LookupCloudVmClusterArgs{
/// 			Location:         "us-east4",
/// 			CloudVmClusterId: "vmcluster-id",
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
/// data "gcp_oracledatabase_getcloudvmcluster" "my-vmcluster" {
///   location            = "us-east4"
///   cloud_vm_cluster_id = "vmcluster-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetCloudVmClusterArgs;
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
///         final var my-vmcluster = OracledatabaseFunctions.getCloudVmCluster(GetCloudVmClusterArgs.builder()
///             .location("us-east4")
///             .cloudVmClusterId("vmcluster-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-vmcluster:
///     fn::invoke:
///       function: gcp:oracledatabase:getCloudVmCluster
///       arguments:
///         location: us-east4
///         cloudVmClusterId: vmcluster-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oracledatabase_get_cloud_vm_cluster_get_cloud_vm_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudVmClusterResult> getCloudVmCluster(
  GetCloudVmClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getCloudVmCluster:getCloudVmCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudVmClusterResult.fromMap(result);
}

pulumi.Output<GetCloudVmClusterResult> getCloudVmClusterOutput(
  GetCloudVmClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:oracledatabase/getCloudVmCluster:getCloudVmCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudVmClusterResult.fromMap);
}

/// List all CloudVmClusters.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.cloudVmClusters).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myVmclusters = gcp.oracledatabase.getCloudVmClusters({
///     location: "us-east4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_vmclusters = gcp.oracledatabase.get_cloud_vm_clusters(location="us-east4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myVmclusters = Gcp.OracleDatabase.GetCloudVmClusters.Invoke(new()
///     {
///         Location = "us-east4",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.GetCloudVmClusters(ctx, &oracledatabase.GetCloudVmClustersArgs{
/// 			Location: "us-east4",
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
/// data "gcp_oracledatabase_getcloudvmclusters" "myVmclusters" {
///   location = "us-east4"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetCloudVmClustersArgs;
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
///         final var myVmclusters = OracledatabaseFunctions.getCloudVmClusters(GetCloudVmClustersArgs.builder()
///             .location("us-east4")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myVmclusters:
///     fn::invoke:
///       function: gcp:oracledatabase:getCloudVmClusters
///       arguments:
///         location: us-east4
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oracledatabase_get_cloud_vm_clusters_get_cloud_vm_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudVmClustersResult> getCloudVmClusters(
  GetCloudVmClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getCloudVmClusters:getCloudVmClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudVmClustersResult.fromMap(result);
}

pulumi.Output<GetCloudVmClustersResult> getCloudVmClustersOutput(
  GetCloudVmClustersArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:oracledatabase/getCloudVmClusters:getCloudVmClusters',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudVmClustersResult.fromMap);
}

/// List all DbNodes of a Cloud VmCluster.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.cloudVmClusters.dbNodes).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myDbNodes = gcp.oracledatabase.getDbNodes({
///     location: "us-east4",
///     cloudVmCluster: "vmcluster-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_db_nodes = gcp.oracledatabase.get_db_nodes(location="us-east4",
///     cloud_vm_cluster="vmcluster-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myDbNodes = Gcp.OracleDatabase.GetDbNodes.Invoke(new()
///     {
///         Location = "us-east4",
///         CloudVmCluster = "vmcluster-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.GetDbNodes(ctx, &oracledatabase.GetDbNodesArgs{
/// 			Location:       "us-east4",
/// 			CloudVmCluster: "vmcluster-id",
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
/// data "gcp_oracledatabase_getdbnodes" "myDbNodes" {
///   location         = "us-east4"
///   cloud_vm_cluster = "vmcluster-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetDbNodesArgs;
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
///         final var myDbNodes = OracledatabaseFunctions.getDbNodes(GetDbNodesArgs.builder()
///             .location("us-east4")
///             .cloudVmCluster("vmcluster-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myDbNodes:
///     fn::invoke:
///       function: gcp:oracledatabase:getDbNodes
///       arguments:
///         location: us-east4
///         cloudVmCluster: vmcluster-id
/// ```
///
///
/// ## Attributes reference
///
/// The following attributes are exported:
///
/// * `dbNodes` - List of dbNodes. Structure is documented below.
///
/// &lt;a name="nestedDbnodes"&gt;&lt;/a&gt; The `dbNodes` block supports:
///
/// * `name` - The name of the database node resource in the following format: projects/{project}/locations/{location}/cloudVmClusters/{cloudVmCluster}/dbNodes/{db_node}
///
/// * `properties` - Various properties of the database node. Structure is documented below.
///
/// &lt;a name="nestedProperties"&gt;&lt;/a&gt; The `properties` block supports:
///
/// * `ocid`- OCID of database node.
///
/// * `ocpuCount` - OCPU count per database node.
///
/// * `memorySizeGb` - The allocated memory in GBs on the database node.
///
/// * `dbNodeStorageSizeGb` - The allocated local node storage in GBs on the database node.
///
/// * `dbServerOcid` - The OCID of the Database server associated with the database node.
///
/// * `hostname` - The host name for the database node.
///
/// * `state` - State of the database node.
/// &lt;a name="nestedStates"&gt;&lt;/a&gt;Possible values for `state` are:&lt;br&gt;
/// `PROVISIONING` - Indicates that the resource is being provisioned.&lt;br&gt;
/// `AVAILABLE` - Indicates that the resource is available.&lt;br&gt;
/// `UPDATING` - Indicates that the resource is being updated.&lt;br&gt;
/// `STOPPING` - Indicates that the resource is being stopped.&lt;br&gt;
/// `STOPPED` - Indicates that the resource is stopped.&lt;br&gt;
/// `STARTING` - Indicates that the resource is being started.&lt;br&gt;
/// `TERMINATING` - Indicates that the resource is being terminated.&lt;br&gt;
/// `TERMINATED` - Indicates that the resource is terminated.&lt;br&gt;
/// `FAILED` - Indicates that the resource has failed.&lt;br&gt;
///
/// * `totalCpuCoreCount` - The total number of CPU cores reserved on the database node.
/// [args] Arguments passed to this invoke. {@macro pulumi_oracledatabase_get_db_nodes_get_db_nodes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDbNodesResult> getDbNodes(
  GetDbNodesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getDbNodes:getDbNodes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDbNodesResult.fromMap(result);
}

pulumi.Output<GetDbNodesResult> getDbNodesOutput(
  GetDbNodesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:oracledatabase/getDbNodes:getDbNodes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDbNodesResult.fromMap);
}

/// List all DbServers of a Cloud Exdata Infrastructure.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.cloudExadataInfrastructures.dbServers).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myDbServers = gcp.oracledatabase.getDbServers({
///     location: "us-east4",
///     cloudExadataInfrastructure: "exadata-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_db_servers = gcp.oracledatabase.get_db_servers(location="us-east4",
///     cloud_exadata_infrastructure="exadata-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myDbServers = Gcp.OracleDatabase.GetDbServers.Invoke(new()
///     {
///         Location = "us-east4",
///         CloudExadataInfrastructure = "exadata-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.GetDbServers(ctx, &oracledatabase.GetDbServersArgs{
/// 			Location:                   "us-east4",
/// 			CloudExadataInfrastructure: "exadata-id",
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
/// data "gcp_oracledatabase_getdbservers" "myDbServers" {
///   location                     = "us-east4"
///   cloud_exadata_infrastructure = "exadata-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetDbServersArgs;
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
///         final var myDbServers = OracledatabaseFunctions.getDbServers(GetDbServersArgs.builder()
///             .location("us-east4")
///             .cloudExadataInfrastructure("exadata-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myDbServers:
///     fn::invoke:
///       function: gcp:oracledatabase:getDbServers
///       arguments:
///         location: us-east4
///         cloudExadataInfrastructure: exadata-id
/// ```
///
///
/// ## Attributes reference
///
/// The following attributes are exported:
///
/// * `dbServers` - List of dbServers. Structure is documented below.
///
/// &lt;a name="nestedDbservers"&gt;&lt;/a&gt; The `dbServers` block supports:
///
/// * `displayName` - User friendly name for the resource.
///
/// * `properties` - Various properties of the databse server. Structure is documented below.
///
/// &lt;a name="nestedProperties"&gt;&lt;/a&gt; The `properties` block supports:
///
/// * `ocid` - The OCID of database server.
///
/// * `ocpuCount` - The OCPU count per database.
///
/// * `maxOcpuCount` - The total number of CPU cores available.
///
/// * `memorySizeGb` - The allocated memory in gigabytes on the database server.
///
/// * `maxMemorySizeGb` - The total memory available in gigabytes.
///
/// * `dbNodeStorageSizeGb` - The local storage per VM.
///
/// * `maxDbNodeStorageSizeGb` - The total local node storage available in GBs.
///
/// * `vmCount` - The VM count per database.
///
/// * `state` - The current state of the database server.
/// &lt;a name="nestedStates"&gt;&lt;/a&gt;Allowed values for `state` are:&lt;br&gt;
/// `CREATING` - Indicates that the resource is being created.&lt;br&gt;
/// `AVAILABLE` - Indicates that the resource is available.&lt;br&gt;
/// `UNAVAILABLE` - Indicates that the resource is unavailable.&lt;br&gt;
/// `DELETING` - Indicates that the resource is being deleted.&lt;br&gt;
/// `DELETED` - Indicates that the resource has been deleted.&lt;br&gt;
///
/// * `dbNodeIds` - The OCID of database nodes associated with the database server.
/// [args] Arguments passed to this invoke. {@macro pulumi_oracledatabase_get_db_servers_get_db_servers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDbServersResult> getDbServers(
  GetDbServersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getDbServers:getDbServers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDbServersResult.fromMap(result);
}

pulumi.Output<GetDbServersResult> getDbServersOutput(
  GetDbServersArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:oracledatabase/getDbServers:getDbServers',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDbServersResult.fromMap);
}

/// Get information about an ExascaleDbStorageVault.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.exascaleDbStorageVaults).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_vault = gcp.oracledatabase.getExascaleDbStorageVault({
///     location: "us-east4",
///     exascaleDbStorageVaultId: "vault-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_vault = gcp.oracledatabase.get_exascale_db_storage_vault(location="us-east4",
///     exascale_db_storage_vault_id="vault-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_vault = Gcp.OracleDatabase.GetExascaleDbStorageVault.Invoke(new()
///     {
///         Location = "us-east4",
///         ExascaleDbStorageVaultId = "vault-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.LookupExascaleDbStorageVault(ctx, &oracledatabase.LookupExascaleDbStorageVaultArgs{
/// 			Location:                 "us-east4",
/// 			ExascaleDbStorageVaultId: "vault-id",
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
/// data "gcp_oracledatabase_getexascaledbstoragevault" "my-vault" {
///   location                     = "us-east4"
///   exascale_db_storage_vault_id = "vault-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetExascaleDbStorageVaultArgs;
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
///         final var my-vault = OracledatabaseFunctions.getExascaleDbStorageVault(GetExascaleDbStorageVaultArgs.builder()
///             .location("us-east4")
///             .exascaleDbStorageVaultId("vault-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-vault:
///     fn::invoke:
///       function: gcp:oracledatabase:getExascaleDbStorageVault
///       arguments:
///         location: us-east4
///         exascaleDbStorageVaultId: vault-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oracledatabase_get_exascale_db_storage_vault_get_exascale_db_storage_vault_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExascaleDbStorageVaultResult> getExascaleDbStorageVault(
  GetExascaleDbStorageVaultArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getExascaleDbStorageVault:getExascaleDbStorageVault',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExascaleDbStorageVaultResult.fromMap(result);
}

pulumi.Output<GetExascaleDbStorageVaultResult> getExascaleDbStorageVaultOutput(
  GetExascaleDbStorageVaultArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:oracledatabase/getExascaleDbStorageVault:getExascaleDbStorageVault',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExascaleDbStorageVaultResult.fromMap);
}

/// List all ExascaleDbStorageVaults.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.exascaleDbStorageVaults).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myVaults = gcp.oracledatabase.getExascaleDbStorageVaults({
///     location: "us-east4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_vaults = gcp.oracledatabase.get_exascale_db_storage_vaults(location="us-east4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myVaults = Gcp.OracleDatabase.GetExascaleDbStorageVaults.Invoke(new()
///     {
///         Location = "us-east4",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.GetExascaleDbStorageVaults(ctx, &oracledatabase.GetExascaleDbStorageVaultsArgs{
/// 			Location: "us-east4",
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
/// data "gcp_oracledatabase_getexascaledbstoragevaults" "myVaults" {
///   location = "us-east4"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetExascaleDbStorageVaultsArgs;
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
///         final var myVaults = OracledatabaseFunctions.getExascaleDbStorageVaults(GetExascaleDbStorageVaultsArgs.builder()
///             .location("us-east4")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myVaults:
///     fn::invoke:
///       function: gcp:oracledatabase:getExascaleDbStorageVaults
///       arguments:
///         location: us-east4
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oracledatabase_get_exascale_db_storage_vaults_get_exascale_db_storage_vaults_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExascaleDbStorageVaultsResult> getExascaleDbStorageVaults(
  GetExascaleDbStorageVaultsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getExascaleDbStorageVaults:getExascaleDbStorageVaults',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExascaleDbStorageVaultsResult.fromMap(result);
}

pulumi.Output<GetExascaleDbStorageVaultsResult> getExascaleDbStorageVaultsOutput(
  GetExascaleDbStorageVaultsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:oracledatabase/getExascaleDbStorageVaults:getExascaleDbStorageVaults',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExascaleDbStorageVaultsResult.fromMap);
}

/// List all GoldenGate Connection Types in a location.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.goldengateConnectionTypes).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myConnectionTypes = gcp.oracledatabase.getGoldengateConnectionTypes({
///     location: "us-east4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_connection_types = gcp.oracledatabase.get_goldengate_connection_types(location="us-east4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myConnectionTypes = Gcp.OracleDatabase.GetGoldengateConnectionTypes.Invoke(new()
///     {
///         Location = "us-east4",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.GetGoldengateConnectionTypes(ctx, &oracledatabase.GetGoldengateConnectionTypesArgs{
/// 			Location: "us-east4",
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
/// data "gcp_oracledatabase_getgoldengateconnectiontypes" "myConnectionTypes" {
///   location = "us-east4"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetGoldengateConnectionTypesArgs;
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
///         final var myConnectionTypes = OracledatabaseFunctions.getGoldengateConnectionTypes(GetGoldengateConnectionTypesArgs.builder()
///             .location("us-east4")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myConnectionTypes:
///     fn::invoke:
///       function: gcp:oracledatabase:getGoldengateConnectionTypes
///       arguments:
///         location: us-east4
/// ```
///
///
/// ## Attributes reference
///
/// The following attributes are exported:
///
/// * `goldengateConnectionTypes` - List of GoldenGate Connection Types. Structure is documented below.
///
/// &lt;a name="nestedGoldengateConnectionTypes"&gt;&lt;/a&gt; The `goldengateConnectionTypes` block supports:
///
/// * `name` - The name of the GoldenGate Connection Type resource. Format: `projects/{project}/locations/{location}/goldenGateConnectionTypes/{golden_gate_connection_type}`
///
/// * `connectionType` - The connection type of the GoldenGate Connection Type resource.
///
/// * `technologyTypes` - An array of technologyTypes supported for the connection type.
/// [args] Arguments passed to this invoke. {@macro pulumi_oracledatabase_get_goldengate_connection_types_get_goldengate_connection_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGoldengateConnectionTypesResult> getGoldengateConnectionTypes(
  GetGoldengateConnectionTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getGoldengateConnectionTypes:getGoldengateConnectionTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGoldengateConnectionTypesResult.fromMap(result);
}

pulumi.Output<GetGoldengateConnectionTypesResult> getGoldengateConnectionTypesOutput(
  GetGoldengateConnectionTypesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:oracledatabase/getGoldengateConnectionTypes:getGoldengateConnectionTypes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGoldengateConnectionTypesResult.fromMap);
}

/// List all GoldenGate Deployment Environments in a location.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.goldengateDeploymentEnvironments).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myEnvironments = gcp.oracledatabase.getGoldengateDeploymentEnvironments({
///     location: "us-east4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_environments = gcp.oracledatabase.get_goldengate_deployment_environments(location="us-east4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myEnvironments = Gcp.OracleDatabase.GetGoldengateDeploymentEnvironments.Invoke(new()
///     {
///         Location = "us-east4",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.GetGoldengateDeploymentEnvironments(ctx, &oracledatabase.GetGoldengateDeploymentEnvironmentsArgs{
/// 			Location: "us-east4",
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
/// data "gcp_oracledatabase_getgoldengatedeploymentenvironments" "myEnvironments" {
///   location = "us-east4"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetGoldengateDeploymentEnvironmentsArgs;
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
///         final var myEnvironments = OracledatabaseFunctions.getGoldengateDeploymentEnvironments(GetGoldengateDeploymentEnvironmentsArgs.builder()
///             .location("us-east4")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myEnvironments:
///     fn::invoke:
///       function: gcp:oracledatabase:getGoldengateDeploymentEnvironments
///       arguments:
///         location: us-east4
/// ```
///
///
/// ## Attributes reference
///
/// The following attributes are exported:
///
/// * `goldengateDeploymentEnvironments` - List of GoldenGate Deployment Environments. Structure is documented below.
///
/// &lt;a name="nestedGoldengateDeploymentEnvironments"&gt;&lt;/a&gt; The `goldengateDeploymentEnvironments` block supports:
///
/// * `name` - The name of the GoldenGate Deployment Environment resource. Format: `projects/{project}/locations/{location}/goldenGateDeploymentEnvironments/{golden_gate_deployment_environment}`
///
/// * `category` - The category of the GoldenGate Deployment Environment resource.
///
/// * `displayName` - The display name of the GoldenGate Deployment Environment resource.
///
/// * `defaultCpuCoreCount` - The default CPU core count of the GoldenGate Deployment Environment resource.
///
/// * `environmentType` - The environment type of the GoldenGate Deployment Environment resource.
///
/// * `autoScalingEnabled` - Whether auto scaling is enabled by default for the GoldenGate Deployment Environment resource.
///
/// * `maxCpuCoreCount` - The max CPU core count of the GoldenGate Deployment Environment resource.
///
/// * `memoryGbPerCpuCore` - The memory per CPU core in GBs of the GoldenGate Deployment Environment resource.
///
/// * `minCpuCoreCount` - The min CPU core count of the GoldenGate Deployment Environment resource.
///
/// * `networkBandwidthGbpsPerCpuCore` - The network bandwidth per CPU core in Gbps of the GoldenGate Deployment Environment resource.
///
/// * `storageUsageLimitGbPerCpuCore` - The storage usage limit per CPU core in GBs of the GoldenGate Deployment Environment resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_oracledatabase_get_goldengate_deployment_environments_get_goldengate_deployment_environments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGoldengateDeploymentEnvironmentsResult> getGoldengateDeploymentEnvironments(
  GetGoldengateDeploymentEnvironmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getGoldengateDeploymentEnvironments:getGoldengateDeploymentEnvironments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGoldengateDeploymentEnvironmentsResult.fromMap(result);
}

pulumi.Output<GetGoldengateDeploymentEnvironmentsResult> getGoldengateDeploymentEnvironmentsOutput(
  GetGoldengateDeploymentEnvironmentsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:oracledatabase/getGoldengateDeploymentEnvironments:getGoldengateDeploymentEnvironments',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGoldengateDeploymentEnvironmentsResult.fromMap);
}

/// List all GoldenGate Deployment Types in a location.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.goldengateDeploymentTypes).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myDeploymentTypes = gcp.oracledatabase.getGoldengateDeploymentTypes({
///     location: "us-east4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_deployment_types = gcp.oracledatabase.get_goldengate_deployment_types(location="us-east4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myDeploymentTypes = Gcp.OracleDatabase.GetGoldengateDeploymentTypes.Invoke(new()
///     {
///         Location = "us-east4",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.GetGoldengateDeploymentTypes(ctx, &oracledatabase.GetGoldengateDeploymentTypesArgs{
/// 			Location: "us-east4",
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
/// data "gcp_oracledatabase_getgoldengatedeploymenttypes" "myDeploymentTypes" {
///   location = "us-east4"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetGoldengateDeploymentTypesArgs;
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
///         final var myDeploymentTypes = OracledatabaseFunctions.getGoldengateDeploymentTypes(GetGoldengateDeploymentTypesArgs.builder()
///             .location("us-east4")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myDeploymentTypes:
///     fn::invoke:
///       function: gcp:oracledatabase:getGoldengateDeploymentTypes
///       arguments:
///         location: us-east4
/// ```
///
///
/// ## Attributes reference
///
/// The following attributes are exported:
///
/// * `goldengateDeploymentTypes` - List of GoldenGate Deployment Types. Structure is documented below.
///
/// &lt;a name="nestedGoldengateDeploymentTypes"&gt;&lt;/a&gt; The `goldengateDeploymentTypes` block supports:
///
/// * `name` - The name of the GoldenGate Deployment Type resource. Format: `projects/{project}/locations/{location}/goldenGateDeploymentTypes/{golden_gate_deployment_type}`
///
/// * `deploymentType` - The deployment type of the GoldenGate Deployment Type resource.
///
/// * `category` - The category of the GoldenGate Deployment Type resource.
///
/// * `connectionTypes` - The connection types of the GoldenGate Deployment Type resource.
///
/// * `displayName` - The display name of the GoldenGate Deployment Type resource.
///
/// * `oggVersion` - The OGG version of the GoldenGate Deployment Type resource.
///
/// * `sourceTechnologies` - The source technologies of the GoldenGate Deployment Type resource.
///
/// * `targetTechnologies` - The target technologies of the GoldenGate Deployment Type resource.
///
/// * `supportedCapabilities` - The supported capabilities of the GoldenGate Deployment Type resource.
///
/// * `supportedTechnologiesUrl` - The supported technologies URL of the GoldenGate Deployment Type resource.
///
/// * `defaultUsername` - The default username of the GoldenGate Deployment Type resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_oracledatabase_get_goldengate_deployment_types_get_goldengate_deployment_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGoldengateDeploymentTypesResult> getGoldengateDeploymentTypes(
  GetGoldengateDeploymentTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getGoldengateDeploymentTypes:getGoldengateDeploymentTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGoldengateDeploymentTypesResult.fromMap(result);
}

pulumi.Output<GetGoldengateDeploymentTypesResult> getGoldengateDeploymentTypesOutput(
  GetGoldengateDeploymentTypesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:oracledatabase/getGoldengateDeploymentTypes:getGoldengateDeploymentTypes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGoldengateDeploymentTypesResult.fromMap);
}

/// List all Goldengate Deployment Versions in a location.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.goldengateDeploymentVersions).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myDeploymentVersions = gcp.oracledatabase.getGoldengateDeploymentVersions({
///     location: "us-east4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_deployment_versions = gcp.oracledatabase.get_goldengate_deployment_versions(location="us-east4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myDeploymentVersions = Gcp.OracleDatabase.GetGoldengateDeploymentVersions.Invoke(new()
///     {
///         Location = "us-east4",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.GetGoldengateDeploymentVersions(ctx, &oracledatabase.GetGoldengateDeploymentVersionsArgs{
/// 			Location: "us-east4",
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
/// data "gcp_oracledatabase_getgoldengatedeploymentversions" "myDeploymentVersions" {
///   location = "us-east4"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetGoldengateDeploymentVersionsArgs;
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
///         final var myDeploymentVersions = OracledatabaseFunctions.getGoldengateDeploymentVersions(GetGoldengateDeploymentVersionsArgs.builder()
///             .location("us-east4")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myDeploymentVersions:
///     fn::invoke:
///       function: gcp:oracledatabase:getGoldengateDeploymentVersions
///       arguments:
///         location: us-east4
/// ```
///
///
/// ## Attributes reference
///
/// The following attributes are exported:
///
/// * `goldengateDeploymentVersions` - List of Goldengate Deployment Versions. Structure is documented below.
///
/// &lt;a name="nestedGoldengateDeploymentVersions"&gt;&lt;/a&gt; The `goldengateDeploymentVersions` block supports:
///
/// * `name` - The name of the Goldengate Deployment Version resource. Format: `projects/{project}/locations/{location}/goldengateDeploymentVersions/{goldengate_deployment_version}`
///
/// * `ocid` - The Oracle Cloud Infrastructure OCID of the Goldengate Deployment Version resource.
///
/// * `properties` - The properties of the Goldengate Deployment Version resource. Structure is documented below.
///
/// &lt;a name="nestedProperties"&gt;&lt;/a&gt; The `properties` block supports:
///
/// * `deploymentType` - The deployment type of the Goldengate Deployment Version resource.
///
/// * `securityFix` - Specifies whether this version has a security fix.
///
/// * `oggVersion` - The OGG version of the Goldengate Deployment Version resource.
///
/// * `releaseType` - The release type of the Goldengate Deployment Version resource.
///
/// * `releaseTime` - The release time of the Goldengate Deployment Version resource.
///
/// * `supportEndTime` - The support end time of the Goldengate Deployment Version resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_oracledatabase_get_goldengate_deployment_versions_get_goldengate_deployment_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGoldengateDeploymentVersionsResult> getGoldengateDeploymentVersions(
  GetGoldengateDeploymentVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getGoldengateDeploymentVersions:getGoldengateDeploymentVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGoldengateDeploymentVersionsResult.fromMap(result);
}

pulumi.Output<GetGoldengateDeploymentVersionsResult> getGoldengateDeploymentVersionsOutput(
  GetGoldengateDeploymentVersionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:oracledatabase/getGoldengateDeploymentVersions:getGoldengateDeploymentVersions',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGoldengateDeploymentVersionsResult.fromMap);
}

/// Get information about an ODB Network.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.odbNetworks).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_network = gcp.oracledatabase.getOdbNetwork({
///     location: "us-east4",
///     odbNetworkId: "my-network-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_network = gcp.oracledatabase.get_odb_network(location="us-east4",
///     odb_network_id="my-network-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_network = Gcp.OracleDatabase.GetOdbNetwork.Invoke(new()
///     {
///         Location = "us-east4",
///         OdbNetworkId = "my-network-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.LookupOdbNetwork(ctx, &oracledatabase.LookupOdbNetworkArgs{
/// 			Location:     "us-east4",
/// 			OdbNetworkId: "my-network-id",
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
/// data "gcp_oracledatabase_getodbnetwork" "my-network" {
///   location       = "us-east4"
///   odb_network_id = "my-network-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetOdbNetworkArgs;
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
///         final var my-network = OracledatabaseFunctions.getOdbNetwork(GetOdbNetworkArgs.builder()
///             .location("us-east4")
///             .odbNetworkId("my-network-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-network:
///     fn::invoke:
///       function: gcp:oracledatabase:getOdbNetwork
///       arguments:
///         location: us-east4
///         odbNetworkId: my-network-id
/// ```
///
///
/// ## Attributes reference
///
/// See gcp.oracledatabase.OdbNetwork resource for details of the available attributes.
/// [args] Arguments passed to this invoke. {@macro pulumi_oracledatabase_get_odb_network_get_odb_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOdbNetworkResult> getOdbNetwork(
  GetOdbNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getOdbNetwork:getOdbNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOdbNetworkResult.fromMap(result);
}

pulumi.Output<GetOdbNetworkResult> getOdbNetworkOutput(
  GetOdbNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:oracledatabase/getOdbNetwork:getOdbNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOdbNetworkResult.fromMap);
}

/// Get information about an ODB Subnet.
///
/// For more information see the
/// * [API documentation](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.odbNetworks.odbSubnets)
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_subnet = gcp.oracledatabase.getOdbSubnet({
///     location: "us-east4",
///     odbnetwork: "my-network-id",
///     odbSubnetId: "my-subnet-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_subnet = gcp.oracledatabase.get_odb_subnet(location="us-east4",
///     odbnetwork="my-network-id",
///     odb_subnet_id="my-subnet-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_subnet = Gcp.OracleDatabase.GetOdbSubnet.Invoke(new()
///     {
///         Location = "us-east4",
///         Odbnetwork = "my-network-id",
///         OdbSubnetId = "my-subnet-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.LookupOdbSubnet(ctx, &oracledatabase.LookupOdbSubnetArgs{
/// 			Location:    "us-east4",
/// 			Odbnetwork:  "my-network-id",
/// 			OdbSubnetId: "my-subnet-id",
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
/// data "gcp_oracledatabase_getodbsubnet" "my-subnet" {
///   location      = "us-east4"
///   odbnetwork    = "my-network-id"
///   odb_subnet_id = "my-subnet-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetOdbSubnetArgs;
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
///         final var my-subnet = OracledatabaseFunctions.getOdbSubnet(GetOdbSubnetArgs.builder()
///             .location("us-east4")
///             .odbnetwork("my-network-id")
///             .odbSubnetId("my-subnet-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-subnet:
///     fn::invoke:
///       function: gcp:oracledatabase:getOdbSubnet
///       arguments:
///         location: us-east4
///         odbnetwork: my-network-id
///         odbSubnetId: my-subnet-id
/// ```
///
///
/// ## Attributes reference
///
/// See gcp.oracledatabase.OdbSubnet resource for details of the available attributes.
/// [args] Arguments passed to this invoke. {@macro pulumi_oracledatabase_get_odb_subnet_get_odb_subnet_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOdbSubnetResult> getOdbSubnet(
  GetOdbSubnetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getOdbSubnet:getOdbSubnet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOdbSubnetResult.fromMap(result);
}

pulumi.Output<GetOdbSubnetResult> getOdbSubnetOutput(
  GetOdbSubnetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:oracledatabase/getOdbSubnet:getOdbSubnet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOdbSubnetResult.fromMap);
}
