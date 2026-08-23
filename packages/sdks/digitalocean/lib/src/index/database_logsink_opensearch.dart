import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_logsink_opensearch_args.dart';
import 'database_logsink_opensearch_state.dart';

/// Provides a DigitalOcean database logsink resource allowing you to forward logs from a managed database cluster to an external OpenSearch cluster or Elasticsearch endpoint.
///
/// This resource is compatible with both OpenSearch and Elasticsearch endpoints due to API compatibility. You can use this resource to connect to either service.
///
/// This resource supports the following DigitalOcean managed database engines:
///
/// * PostgreSQL
/// * MySQL
/// * Kafka
/// * Valkey
///
/// **Note**: MongoDB databases use a different log forwarding mechanism and require Datadog logsinks (not currently available in this provider).
///
/// ## Example Usage
///
/// ### Basic OpenSearch configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const postgres_example = new digitalocean.DatabaseCluster("postgres-example", {
///     name: "example-postgres-cluster",
///     engine: "pg",
///     version: "15",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC1,
///     nodeCount: 1,
/// });
/// const example = new digitalocean.DatabaseLogsinkOpensearch("example", {
///     clusterId: postgres_example.id,
///     name: "opensearch-logs",
///     endpoint: "https://opensearch.example.com:9200",
///     indexPrefix: "db-logs",
///     indexDaysMax: 7,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// postgres_example = digitalocean.DatabaseCluster("postgres-example",
///     name="example-postgres-cluster",
///     engine="pg",
///     version="15",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC1,
///     node_count=1)
/// example = digitalocean.DatabaseLogsinkOpensearch("example",
///     cluster_id=postgres_example.id,
///     name="opensearch-logs",
///     endpoint="https://opensearch.example.com:9200",
///     index_prefix="db-logs",
///     index_days_max=7)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var postgres_example = new DigitalOcean.DatabaseCluster("postgres-example", new()
///     {
///         Name = "example-postgres-cluster",
///         Engine = "pg",
///         Version = "15",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC1,
///         NodeCount = 1,
///     });
///
///     var example = new DigitalOcean.DatabaseLogsinkOpensearch("example", new()
///     {
///         ClusterId = postgres_example.Id,
///         Name = "opensearch-logs",
///         Endpoint = "https://opensearch.example.com:9200",
///         IndexPrefix = "db-logs",
///         IndexDaysMax = 7,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		postgres_example, err := digitalocean.NewDatabaseCluster(ctx, "postgres-example", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("example-postgres-cluster"),
/// 			Engine:    pulumi.String("pg"),
/// 			Version:   pulumi.String("15"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 			NodeCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseLogsinkOpensearch(ctx, "example", &digitalocean.DatabaseLogsinkOpensearchArgs{
/// 			ClusterId:    postgres_example.ID().ToIDOutput().ToStringOutput(),
/// 			Name:         pulumi.String("opensearch-logs"),
/// 			Endpoint:     pulumi.String("https://opensearch.example.com:9200"),
/// 			IndexPrefix:  pulumi.String("db-logs"),
/// 			IndexDaysMax: pulumi.Int(7),
/// 		})
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_databaselogsinkopensearch" "example" {
///   cluster_id     = digitalocean_databasecluster.postgres-example.id
///   name           = "opensearch-logs"
///   endpoint       = "https://opensearch.example.com:9200"
///   index_prefix   = "db-logs"
///   index_days_max = 7
/// }
/// resource "digitalocean_databasecluster" "postgres-example" {
///   name       = "example-postgres-cluster"
///   engine     = "pg"
///   version    = "15"
///   size       = "db-s-1vcpu-1gb"
///   region     = "nyc1"
///   node_count = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DatabaseCluster;
/// import com.pulumi.digitalocean.DatabaseClusterArgs;
/// import com.pulumi.digitalocean.DatabaseLogsinkOpensearch;
/// import com.pulumi.digitalocean.DatabaseLogsinkOpensearchArgs;
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
///         var postgres_example = new DatabaseCluster("postgres-example", DatabaseClusterArgs.builder()
///             .name("example-postgres-cluster")
///             .engine("pg")
///             .version("15")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc1")
///             .nodeCount(1)
///             .build());
///
///         var example = new DatabaseLogsinkOpensearch("example", DatabaseLogsinkOpensearchArgs.builder()
///             .clusterId(postgres_example.id())
///             .name("opensearch-logs")
///             .endpoint("https://opensearch.example.com:9200")
///             .indexPrefix("db-logs")
///             .indexDaysMax(7)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:DatabaseLogsinkOpensearch
///     properties:
///       clusterId: ${["postgres-example"].id}
///       name: opensearch-logs
///       endpoint: https://opensearch.example.com:9200
///       indexPrefix: db-logs
///       indexDaysMax: 7
///   postgres-example:
///     type: digitalocean:DatabaseCluster
///     properties:
///       name: example-postgres-cluster
///       engine: pg
///       version: '15'
///       size: db-s-1vcpu-1gb
///       region: nyc1
///       nodeCount: 1
/// ```
///
///
/// ### OpenSearch with authentication and CA certificate
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
/// import * as std from "@pulumi/std";
///
/// const example_secure = new digitalocean.DatabaseLogsinkOpensearch("example-secure", {
///     clusterId: postgres_example.id,
///     name: "opensearch-secure",
///     endpoint: "https://user:password@opensearch.example.com:9200",
///     indexPrefix: "secure-logs",
///     indexDaysMax: 14,
///     caCert: std.file({
///         input: "/path/to/ca.pem",
///     }).then(invoke => invoke.result),
///     timeoutSeconds: 30,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
/// import pulumi_std as std
///
/// example_secure = digitalocean.DatabaseLogsinkOpensearch("example-secure",
///     cluster_id=postgres_example["id"],
///     name="opensearch-secure",
///     endpoint="https://user:password@opensearch.example.com:9200",
///     index_prefix="secure-logs",
///     index_days_max=14,
///     ca_cert=std.file(input="/path/to/ca.pem").result,
///     timeout_seconds=30)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example_secure = new DigitalOcean.DatabaseLogsinkOpensearch("example-secure", new()
///     {
///         ClusterId = postgres_example.Id,
///         Name = "opensearch-secure",
///         Endpoint = "https://user:password@opensearch.example.com:9200",
///         IndexPrefix = "secure-logs",
///         IndexDaysMax = 14,
///         CaCert = Std.File.Invoke(new()
///         {
///             Input = "/path/to/ca.pem",
///         }).Apply(invoke => invoke.Result),
///         TimeoutSeconds = 30,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "/path/to/ca.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseLogsinkOpensearch(ctx, "example-secure", &digitalocean.DatabaseLogsinkOpensearchArgs{
/// 			ClusterId:      pulumi.Any(postgres_example.Id),
/// 			Name:           pulumi.String("opensearch-secure"),
/// 			Endpoint:       pulumi.String("https://user:password@opensearch.example.com:9200"),
/// 			IndexPrefix:    pulumi.String("secure-logs"),
/// 			IndexDaysMax:   pulumi.Int(14),
/// 			CaCert:         pulumi.String(invokeFile.Result),
/// 			TimeoutSeconds: pulumi.Int(30),
/// 		})
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "digitalocean_databaselogsinkopensearch" "example-secure" {
///   cluster_id      = postgres-example.id
///   name            = "opensearch-secure"
///   endpoint        = "https://user:password@opensearch.example.com:9200"
///   index_prefix    = "secure-logs"
///   index_days_max  = 14
///   ca_cert         = file("/path/to/ca.pem")
///   timeout_seconds = 30
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DatabaseLogsinkOpensearch;
/// import com.pulumi.digitalocean.DatabaseLogsinkOpensearchArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var example_secure = new DatabaseLogsinkOpensearch("example-secure", DatabaseLogsinkOpensearchArgs.builder()
///             .clusterId(postgres_example.id())
///             .name("opensearch-secure")
///             .endpoint("https://user:password@opensearch.example.com:9200")
///             .indexPrefix("secure-logs")
///             .indexDaysMax(14)
///             .caCert(StdFunctions.file(FileArgs.builder()
///                 .input("/path/to/ca.pem")
///                 .build()).result())
///             .timeoutSeconds(30)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-secure:
///     type: digitalocean:DatabaseLogsinkOpensearch
///     properties:
///       clusterId: ${["postgres-example"].id}
///       name: opensearch-secure
///       endpoint: https://user:password@opensearch.example.com:9200
///       indexPrefix: secure-logs
///       indexDaysMax: 14
///       caCert:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: /path/to/ca.pem
///           return: result
///       timeoutSeconds: 30
/// ```
///
///
/// ### Elasticsearch endpoint configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const elasticsearch = new digitalocean.DatabaseLogsinkOpensearch("elasticsearch", {
///     clusterId: postgres_example.id,
///     name: "elasticsearch-logs",
///     endpoint: "https://elasticsearch.example.com:9243",
///     indexPrefix: "es-logs",
///     indexDaysMax: 30,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// elasticsearch = digitalocean.DatabaseLogsinkOpensearch("elasticsearch",
///     cluster_id=postgres_example["id"],
///     name="elasticsearch-logs",
///     endpoint="https://elasticsearch.example.com:9243",
///     index_prefix="es-logs",
///     index_days_max=30)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticsearch = new DigitalOcean.DatabaseLogsinkOpensearch("elasticsearch", new()
///     {
///         ClusterId = postgres_example.Id,
///         Name = "elasticsearch-logs",
///         Endpoint = "https://elasticsearch.example.com:9243",
///         IndexPrefix = "es-logs",
///         IndexDaysMax = 30,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.NewDatabaseLogsinkOpensearch(ctx, "elasticsearch", &digitalocean.DatabaseLogsinkOpensearchArgs{
/// 			ClusterId:    pulumi.Any(postgres_example.Id),
/// 			Name:         pulumi.String("elasticsearch-logs"),
/// 			Endpoint:     pulumi.String("https://elasticsearch.example.com:9243"),
/// 			IndexPrefix:  pulumi.String("es-logs"),
/// 			IndexDaysMax: pulumi.Int(30),
/// 		})
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_databaselogsinkopensearch" "elasticsearch" {
///   cluster_id     = postgres-example.id
///   name           = "elasticsearch-logs"
///   endpoint       = "https://elasticsearch.example.com:9243"
///   index_prefix   = "es-logs"
///   index_days_max = 30
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DatabaseLogsinkOpensearch;
/// import com.pulumi.digitalocean.DatabaseLogsinkOpensearchArgs;
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
///         var elasticsearch = new DatabaseLogsinkOpensearch("elasticsearch", DatabaseLogsinkOpensearchArgs.builder()
///             .clusterId(postgres_example.id())
///             .name("elasticsearch-logs")
///             .endpoint("https://elasticsearch.example.com:9243")
///             .indexPrefix("es-logs")
///             .indexDaysMax(30)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   elasticsearch:
///     type: digitalocean:DatabaseLogsinkOpensearch
///     properties:
///       clusterId: ${["postgres-example"].id}
///       name: elasticsearch-logs
///       endpoint: https://elasticsearch.example.com:9243
///       indexPrefix: es-logs
///       indexDaysMax: 30
/// ```
///
///
/// ### MySQL to OpenSearch configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const mysql_example = new digitalocean.DatabaseCluster("mysql-example", {
///     name: "example-mysql-cluster",
///     engine: "mysql",
///     version: "8",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC1,
///     nodeCount: 1,
/// });
/// const mysql = new digitalocean.DatabaseLogsinkOpensearch("mysql", {
///     clusterId: mysql_example.id,
///     name: "mysql-logs",
///     endpoint: "https://opensearch.example.com:9200",
///     indexPrefix: "mysql-logs",
///     indexDaysMax: 7,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// mysql_example = digitalocean.DatabaseCluster("mysql-example",
///     name="example-mysql-cluster",
///     engine="mysql",
///     version="8",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC1,
///     node_count=1)
/// mysql = digitalocean.DatabaseLogsinkOpensearch("mysql",
///     cluster_id=mysql_example.id,
///     name="mysql-logs",
///     endpoint="https://opensearch.example.com:9200",
///     index_prefix="mysql-logs",
///     index_days_max=7)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mysql_example = new DigitalOcean.DatabaseCluster("mysql-example", new()
///     {
///         Name = "example-mysql-cluster",
///         Engine = "mysql",
///         Version = "8",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC1,
///         NodeCount = 1,
///     });
///
///     var mysql = new DigitalOcean.DatabaseLogsinkOpensearch("mysql", new()
///     {
///         ClusterId = mysql_example.Id,
///         Name = "mysql-logs",
///         Endpoint = "https://opensearch.example.com:9200",
///         IndexPrefix = "mysql-logs",
///         IndexDaysMax = 7,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		mysql_example, err := digitalocean.NewDatabaseCluster(ctx, "mysql-example", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("example-mysql-cluster"),
/// 			Engine:    pulumi.String("mysql"),
/// 			Version:   pulumi.String("8"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 			NodeCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseLogsinkOpensearch(ctx, "mysql", &digitalocean.DatabaseLogsinkOpensearchArgs{
/// 			ClusterId:    mysql_example.ID().ToIDOutput().ToStringOutput(),
/// 			Name:         pulumi.String("mysql-logs"),
/// 			Endpoint:     pulumi.String("https://opensearch.example.com:9200"),
/// 			IndexPrefix:  pulumi.String("mysql-logs"),
/// 			IndexDaysMax: pulumi.Int(7),
/// 		})
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_databaselogsinkopensearch" "mysql" {
///   cluster_id     = digitalocean_databasecluster.mysql-example.id
///   name           = "mysql-logs"
///   endpoint       = "https://opensearch.example.com:9200"
///   index_prefix   = "mysql-logs"
///   index_days_max = 7
/// }
/// resource "digitalocean_databasecluster" "mysql-example" {
///   name       = "example-mysql-cluster"
///   engine     = "mysql"
///   version    = "8"
///   size       = "db-s-1vcpu-1gb"
///   region     = "nyc1"
///   node_count = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DatabaseCluster;
/// import com.pulumi.digitalocean.DatabaseClusterArgs;
/// import com.pulumi.digitalocean.DatabaseLogsinkOpensearch;
/// import com.pulumi.digitalocean.DatabaseLogsinkOpensearchArgs;
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
///         var mysql_example = new DatabaseCluster("mysql-example", DatabaseClusterArgs.builder()
///             .name("example-mysql-cluster")
///             .engine("mysql")
///             .version("8")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc1")
///             .nodeCount(1)
///             .build());
///
///         var mysql = new DatabaseLogsinkOpensearch("mysql", DatabaseLogsinkOpensearchArgs.builder()
///             .clusterId(mysql_example.id())
///             .name("mysql-logs")
///             .endpoint("https://opensearch.example.com:9200")
///             .indexPrefix("mysql-logs")
///             .indexDaysMax(7)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mysql:
///     type: digitalocean:DatabaseLogsinkOpensearch
///     properties:
///       clusterId: ${["mysql-example"].id}
///       name: mysql-logs
///       endpoint: https://opensearch.example.com:9200
///       indexPrefix: mysql-logs
///       indexDaysMax: 7
///   mysql-example:
///     type: digitalocean:DatabaseCluster
///     properties:
///       name: example-mysql-cluster
///       engine: mysql
///       version: '8'
///       size: db-s-1vcpu-1gb
///       region: nyc1
///       nodeCount: 1
/// ```
///
///
/// ## Important Notes
///
/// ### Elasticsearch Compatibility
/// This resource works with both OpenSearch and Elasticsearch endpoints due to their API compatibility. Use the same resource type regardless of whether you're connecting to OpenSearch or Elasticsearch.
///
/// ### Managed OpenSearch with Trusted Sources
/// When forwarding logs to a DigitalOcean Managed OpenSearch cluster with trusted sources enabled, you must manually allow-list the IP addresses of your database cluster nodes.
///
/// ### Authentication
/// Include authentication credentials directly in the endpoint URL using the format `https://username:password@host:port`. Alternatively, configure authentication on your OpenSearch/Elasticsearch cluster to accept connections from your database cluster's IP addresses.
///
/// ## Import
///
/// Database logsink OpenSearch resources can be imported using the composite ID format `cluster_id,logsink_id`. For example:
///
/// ```sh
/// $ pulumi import digitalocean:index/databaseLogsinkOpensearch:DatabaseLogsinkOpensearch example 245bcfd0-7f31-4ce6-a2bc-475a116cca97,f38db7c8-1f31-4ce6-a2bc-475a116cca97
/// ```
///
/// **Note**: The cluster ID and logsink ID must be separated by a comma.
class DatabaseLogsinkOpensearch extends pulumi.CustomResource {
  /// CA certificate for TLS verification in PEM format. Can be specified using `file()` function. This field is marked as sensitive.
  late final pulumi.Output<String?> caCert;
  /// UUID of the source database cluster that will forward logs.
  late final pulumi.Output<String> clusterId;
  /// HTTPS URL to the OpenSearch or Elasticsearch cluster (e.g., `https://host:port`). **Note**: Only HTTPS URLs are supported.
  late final pulumi.Output<String> endpoint;
  /// Maximum number of days to retain indices. Must be 1 or greater.
  late final pulumi.Output<int?> indexDaysMax;
  /// Prefix for the indices where logs will be stored.
  late final pulumi.Output<String> indexPrefix;
  /// The unique identifier for the logsink as returned by the DigitalOcean API.
  late final pulumi.Output<String> logsinkId;
  /// Display name for the logsink. **Note**: This is immutable; changing it will force recreation of the resource.
  late final pulumi.Output<String> name;
  /// Request timeout for log deliveries in seconds. Must be 1 or greater.
  late final pulumi.Output<int?> timeoutSeconds;

  /// Creates a new [DatabaseLogsinkOpensearch].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseLogsinkOpensearch]. {@macro pulumi_index_database_logsink_opensearch_database_logsink_opensearch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseLogsinkOpensearch(
    String name, {
    DatabaseLogsinkOpensearchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/databaseLogsinkOpensearch:DatabaseLogsinkOpensearch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    caCert = registerOutput<String?>('caCert');
    clusterId = registerOutput<String>('clusterId');
    endpoint = registerOutput<String>('endpoint');
    indexDaysMax = registerOutput<int?>('indexDaysMax');
    indexPrefix = registerOutput<String>('indexPrefix');
    logsinkId = registerOutput<String>('logsinkId');
    this.name = registerOutput<String>('name');
    timeoutSeconds = registerOutput<int?>('timeoutSeconds');
  }

  /// Gets an existing [DatabaseLogsinkOpensearch] resource's state with the given [name] and [id].
  static DatabaseLogsinkOpensearch get(
    String name,
    pulumi.Input<String> id, {
    DatabaseLogsinkOpensearchState? state,
  }) {
    return DatabaseLogsinkOpensearch._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabaseLogsinkOpensearch._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/databaseLogsinkOpensearch:DatabaseLogsinkOpensearch',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    caCert = registerOutput<String?>('caCert');
    clusterId = registerOutput<String>('clusterId');
    endpoint = registerOutput<String>('endpoint');
    indexDaysMax = registerOutput<int?>('indexDaysMax');
    indexPrefix = registerOutput<String>('indexPrefix');
    logsinkId = registerOutput<String>('logsinkId');
    this.name = registerOutput<String>('name');
    timeoutSeconds = registerOutput<int?>('timeoutSeconds');
  }
}
