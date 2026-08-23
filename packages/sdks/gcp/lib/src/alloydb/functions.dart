import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';
import 'get_instance_args.dart';
import 'get_instance_result.dart';
import 'get_locations_args.dart';
import 'get_locations_result.dart';
import 'get_supported_database_flags_args.dart';
import 'get_supported_database_flags_result.dart';

/// Use this data source to get information about the available cluster. For more details refer the [API docs](https://cloud.google.com/alloydb/docs/reference/rest/v1/projects.locations.clusters).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const qa = gcp.alloydb.getCluster({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// qa = gcp.alloydb.get_cluster()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qa = Gcp.Alloydb.GetCluster.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/alloydb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := alloydb.LookupCluster(ctx, &alloydb.LookupClusterArgs{}, nil)
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
/// data "gcp_alloydb_getcluster" "qa" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.alloydb.AlloydbFunctions;
/// import com.pulumi.gcp.alloydb.inputs.GetClusterArgs;
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
///         final var qa = AlloydbFunctions.getCluster(GetClusterArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   qa:
///     fn::invoke:
///       function: gcp:alloydb:getCluster
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_alloydb_get_cluster_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:alloydb/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

/// Use this data source to get information about the available instance. For more details refer the [API docs](https://cloud.google.com/alloydb/docs/reference/rest/v1/projects.locations.clusters.instances).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const qa = gcp.alloydb.getInstance({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// qa = gcp.alloydb.get_instance()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qa = Gcp.Alloydb.GetInstance.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/alloydb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := alloydb.LookupInstance(ctx, &alloydb.LookupInstanceArgs{}, nil)
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
/// data "gcp_alloydb_getinstance" "qa" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.alloydb.AlloydbFunctions;
/// import com.pulumi.gcp.alloydb.inputs.GetInstanceArgs;
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
///         final var qa = AlloydbFunctions.getInstance(GetInstanceArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   qa:
///     fn::invoke:
///       function: gcp:alloydb:getInstance
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_alloydb_get_instance_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:alloydb/getInstance:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

/// Use this data source to get information about the available locations. For more details refer the [API docs](https://cloud.google.com/alloydb/docs/reference/rest/v1/projects.locations).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const qa = gcp.alloydb.getLocations({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// qa = gcp.alloydb.get_locations()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qa = Gcp.Alloydb.GetLocations.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/alloydb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := alloydb.GetLocations(ctx, &alloydb.GetLocationsArgs{}, nil)
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
/// data "gcp_alloydb_getlocations" "qa" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.alloydb.AlloydbFunctions;
/// import com.pulumi.gcp.alloydb.inputs.GetLocationsArgs;
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
///         final var qa = AlloydbFunctions.getLocations(GetLocationsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   qa:
///     fn::invoke:
///       function: gcp:alloydb:getLocations
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_alloydb_get_locations_get_locations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocationsResult> getLocations(
  GetLocationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:alloydb/getLocations:getLocations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocationsResult.fromMap(result);
}

/// Use this data source to get information about the supported alloydb database flags in a location.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const qa = gcp.alloydb.getSupportedDatabaseFlags({
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// qa = gcp.alloydb.get_supported_database_flags(location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qa = Gcp.Alloydb.GetSupportedDatabaseFlags.Invoke(new()
///     {
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/alloydb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := alloydb.GetSupportedDatabaseFlags(ctx, &alloydb.GetSupportedDatabaseFlagsArgs{
/// 			Location: "us-central1",
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
/// data "gcp_alloydb_getsupporteddatabaseflags" "qa" {
///   location = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.alloydb.AlloydbFunctions;
/// import com.pulumi.gcp.alloydb.inputs.GetSupportedDatabaseFlagsArgs;
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
///         final var qa = AlloydbFunctions.getSupportedDatabaseFlags(GetSupportedDatabaseFlagsArgs.builder()
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
///       function: gcp:alloydb:getSupportedDatabaseFlags
///       arguments:
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_alloydb_get_supported_database_flags_get_supported_database_flags_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSupportedDatabaseFlagsResult> getSupportedDatabaseFlags(
  GetSupportedDatabaseFlagsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:alloydb/getSupportedDatabaseFlags:getSupportedDatabaseFlags',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSupportedDatabaseFlagsResult.fromMap(result);
}
