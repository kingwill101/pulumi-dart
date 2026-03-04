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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetAutonomousDatabaseArgs;
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetAutonomousDatabasesArgs;
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetCloudExadataInfrastructureArgs;
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetCloudExadataInfrastructuresArgs;
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetCloudVmClusterArgs;
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetCloudVmClustersArgs;
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetDbNodesArgs;
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
/// * `db_nodes` - List of dbNodes. Structure is documented below.
///
/// &lt;a name="nested_dbnodes"&gt;&lt;/a&gt; The `db_nodes` block supports:
///
/// * `name` - The name of the database node resource in the following format: projects/{project}/locations/{location}/cloudVmClusters/{cloudVmCluster}/dbNodes/{db_node}
///
/// * `properties` - Various properties of the database node. Structure is documented below.
///
/// &lt;a name="nested_properties"&gt;&lt;/a&gt; The `properties` block supports:
///
/// * `ocid`- OCID of database node.
///
/// * `ocpu_count` - OCPU count per database node.
///
/// * `memory_size_gb` - The allocated memory in GBs on the database node.
///
/// * `db_node_storage_size_gb` - The allocated local node storage in GBs on the database node.
///
/// * `db_server_ocid` - The OCID of the Database server associated with the database node.
///
/// * `hostname` - The host name for the database node.
///
/// * `state` - State of the database node.
/// &lt;a name="nested_states"&gt;&lt;/a&gt;Possible values for `state` are:&lt;br&gt;
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
/// * `total_cpu_core_count` - The total number of CPU cores reserved on the database node.
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetDbServersArgs;
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
/// * `db_servers` - List of dbServers. Structure is documented below.
///
/// &lt;a name="nested_dbservers"&gt;&lt;/a&gt; The `db_servers` block supports:
///
/// * `display_name` - User friendly name for the resource.
///
/// * `properties` - Various properties of the databse server. Structure is documented below.
///
/// &lt;a name="nested_properties"&gt;&lt;/a&gt; The `properties` block supports:
///
/// * `ocid` - The OCID of database server.
///
/// * `ocpu_count` - The OCPU count per database.
///
/// * `max_ocpu_count` - The total number of CPU cores available.
///
/// * `memory_size_gb` - The allocated memory in gigabytes on the database server.
///
/// * `max_memory_size_gb` - The total memory available in gigabytes.
///
/// * `db_node_storage_size_gb` - The local storage per VM.
///
/// * `max_db_node_storage_size_gb` - The total local node storage available in GBs.
///
/// * `vm_count` - The VM count per database.
///
/// * `state` - The current state of the database server.
/// &lt;a name="nested_states"&gt;&lt;/a&gt;Allowed values for `state` are:&lt;br&gt;
/// `CREATING` - Indicates that the resource is being created.&lt;br&gt;
/// `AVAILABLE` - Indicates that the resource is available.&lt;br&gt;
/// `UNAVAILABLE` - Indicates that the resource is unavailable.&lt;br&gt;
/// `DELETING` - Indicates that the resource is being deleted.&lt;br&gt;
/// `DELETED` - Indicates that the resource has been deleted.&lt;br&gt;
///
/// * `db_node_ids` - The OCID of database nodes associated with the database server.
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
