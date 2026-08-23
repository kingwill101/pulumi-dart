import 'package:pulumi/pulumi.dart' as pulumi;
import 'vector_database_args.dart';
import 'vector_database_config.dart';
import 'vector_database_state.dart';

/// Provides a DigitalOcean vector database resource. Vector databases are powered by
/// [Weaviate](https://weaviate.io/) and are managed independently from standard
/// managed database clusters.
///
/// ## Example Usage
///
/// ### Create a new vector database
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = new digitalocean.VectorDatabase("example", {
///     name: "example-vector-db",
///     region: "nyc1",
///     size: "db-s-1vcpu-1gb",
///     tags: ["production"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.VectorDatabase("example",
///     name="example-vector-db",
///     region="nyc1",
///     size="db-s-1vcpu-1gb",
///     tags=["production"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new DigitalOcean.VectorDatabase("example", new()
///     {
///         Name = "example-vector-db",
///         Region = "nyc1",
///         Size = "db-s-1vcpu-1gb",
///         Tags = new[]
///         {
///             "production",
///         },
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
/// 		_, err := digitalocean.NewVectorDatabase(ctx, "example", &digitalocean.VectorDatabaseArgs{
/// 			Name:   pulumi.String("example-vector-db"),
/// 			Region: pulumi.String("nyc1"),
/// 			Size:   pulumi.String("db-s-1vcpu-1gb"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("production"),
/// 			},
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
/// resource "digitalocean_vectordatabase" "example" {
///   name   = "example-vector-db"
///   region = "nyc1"
///   size   = "db-s-1vcpu-1gb"
///   tags   = ["production"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.VectorDatabase;
/// import com.pulumi.digitalocean.VectorDatabaseArgs;
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
///         var example = new VectorDatabase("example", VectorDatabaseArgs.builder()
///             .name("example-vector-db")
///             .region("nyc1")
///             .size("db-s-1vcpu-1gb")
///             .tags("production")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:VectorDatabase
///     properties:
///       name: example-vector-db
///       region: nyc1
///       size: db-s-1vcpu-1gb
///       tags:
///         - production
/// ```
///
///
/// ### Create a vector database with advanced configuration
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = new digitalocean.VectorDatabase("example", {
///     name: "example-vector-db",
///     region: "nyc1",
///     size: "db-s-2vcpu-2gb",
///     config: {
///         defaultQuantization: "none",
///         enableAutoSchema: true,
///         weaviateVersion: "1.25.0",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.VectorDatabase("example",
///     name="example-vector-db",
///     region="nyc1",
///     size="db-s-2vcpu-2gb",
///     config={
///         "default_quantization": "none",
///         "enable_auto_schema": True,
///         "weaviate_version": "1.25.0",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new DigitalOcean.VectorDatabase("example", new()
///     {
///         Name = "example-vector-db",
///         Region = "nyc1",
///         Size = "db-s-2vcpu-2gb",
///         Config = new DigitalOcean.Inputs.VectorDatabaseConfigArgs
///         {
///             DefaultQuantization = "none",
///             EnableAutoSchema = true,
///             WeaviateVersion = "1.25.0",
///         },
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
/// 		_, err := digitalocean.NewVectorDatabase(ctx, "example", &digitalocean.VectorDatabaseArgs{
/// 			Name:   pulumi.String("example-vector-db"),
/// 			Region: pulumi.String("nyc1"),
/// 			Size:   pulumi.String("db-s-2vcpu-2gb"),
/// 			Config: &digitalocean.VectorDatabaseConfigArgs{
/// 				DefaultQuantization: pulumi.String("none"),
/// 				EnableAutoSchema:    pulumi.Bool(true),
/// 				WeaviateVersion:     pulumi.String("1.25.0"),
/// 			},
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
/// resource "digitalocean_vectordatabase" "example" {
///   name   = "example-vector-db"
///   region = "nyc1"
///   size   = "db-s-2vcpu-2gb"
///   config = {
///     default_quantization = "none"
///     enable_auto_schema   = true
///     weaviate_version     = "1.25.0"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.VectorDatabase;
/// import com.pulumi.digitalocean.VectorDatabaseArgs;
/// import com.pulumi.digitalocean.inputs.VectorDatabaseConfigArgs;
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
///         var example = new VectorDatabase("example", VectorDatabaseArgs.builder()
///             .name("example-vector-db")
///             .region("nyc1")
///             .size("db-s-2vcpu-2gb")
///             .config(VectorDatabaseConfigArgs.builder()
///                 .defaultQuantization("none")
///                 .enableAutoSchema(true)
///                 .weaviateVersion("1.25.0")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:VectorDatabase
///     properties:
///       name: example-vector-db
///       region: nyc1
///       size: db-s-2vcpu-2gb
///       config:
///         defaultQuantization: none
///         enableAutoSchema: true
///         weaviateVersion: 1.25.0
/// ```
///
///
/// ## Import
///
/// Vector databases can be imported using their `id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/vectorDatabase:VectorDatabase example 245bcfd0-7f31-4ce6-a2bc-475a116cca97
/// ```
class VectorDatabase extends pulumi.CustomResource {
  /// Advanced configuration for the vector database. The structure is documented below.
  late final pulumi.Output<VectorDatabaseConfig> config;
  /// The date and time when the vector database was created.
  late final pulumi.Output<String> createdAt;
  /// The connection endpoints for the vector database. The structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> endpoints;
  /// The name of the vector database. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The UUID of the account that owns the vector database.
  late final pulumi.Output<String> ownerUuid;
  /// The ID of the project that the vector database is assigned to. If excluded, the database will be assigned to your default project. Changing this forces a new resource to be created.
  late final pulumi.Output<String> projectId;
  /// The slug identifier for the region where the vector database will be created (ex. `nyc1`). Changing this forces a new resource to be created.
  late final pulumi.Output<String> region;
  /// The slug identifier representing the size of the vector database (ex. `db-s-1vcpu-1gb`).
  late final pulumi.Output<String> size;
  /// The current status of the vector database (ex. `active`).
  late final pulumi.Output<String> status;
  /// A list of tag names to be applied to the vector database.
  late final pulumi.Output<List<String>?> tags;
  /// The date and time when the vector database was last updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [VectorDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VectorDatabase]. {@macro pulumi_index_vector_database_vector_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VectorDatabase(
    String name, {
    VectorDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/vectorDatabase:VectorDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    config = registerOutput<VectorDatabaseConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VectorDatabaseConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    endpoints = registerOutput<List<Map<String, dynamic>>>('endpoints');
    this.name = registerOutput<String>('name');
    ownerUuid = registerOutput<String>('ownerUuid');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    size = registerOutput<String>('size');
    status = registerOutput<String>('status');
    tags = registerOutput<List<String>?>('tags');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [VectorDatabase] resource's state with the given [name] and [id].
  static VectorDatabase get(
    String name,
    pulumi.Input<String> id, {
    VectorDatabaseState? state,
  }) {
    return VectorDatabase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VectorDatabase._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/vectorDatabase:VectorDatabase',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    config = registerOutput<VectorDatabaseConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VectorDatabaseConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    endpoints = registerOutput<List<Map<String, dynamic>>>('endpoints');
    this.name = registerOutput<String>('name');
    ownerUuid = registerOutput<String>('ownerUuid');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    size = registerOutput<String>('size');
    status = registerOutput<String>('status');
    tags = registerOutput<List<String>?>('tags');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
