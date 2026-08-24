import 'package:pulumi/pulumi.dart' as pulumi;
import 'd1_database_args.dart';
import 'd1_database_read_replication.dart';
import 'd1_database_state.dart';

/// Accepted Permissions
///
/// - `D1 Read`
/// - `D1 Write`
///
/// &gt; When a D1 Database is replaced all the data is lost. Please ensure you have a
/// backup of your data before replacing a D1 Database.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleD1Database = new cloudflare.D1Database("example_d1_database", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "my-database",
///     jurisdiction: "eu",
///     primaryLocationHint: "wnam",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_d1_database = cloudflare.D1Database("example_d1_database",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="my-database",
///     jurisdiction="eu",
///     primary_location_hint="wnam")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleD1Database = new Cloudflare.D1Database("example_d1_database", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "my-database",
///         Jurisdiction = "eu",
///         PrimaryLocationHint = "wnam",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewD1Database(ctx, "example_d1_database", &cloudflare.D1DatabaseArgs{
/// 			AccountId:           pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:                pulumi.String("my-database"),
/// 			Jurisdiction:        pulumi.String("eu"),
/// 			PrimaryLocationHint: pulumi.String("wnam"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_d1database" "example_d1_database" {
///   account_id            = "023e105f4ecef8ad9ca31a8372d0c353"
///   name                  = "my-database"
///   jurisdiction          = "eu"
///   primary_location_hint = "wnam"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.D1Database;
/// import com.pulumi.cloudflare.D1DatabaseArgs;
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
///         var exampleD1Database = new D1Database("exampleD1Database", D1DatabaseArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("my-database")
///             .jurisdiction("eu")
///             .primaryLocationHint("wnam")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleD1Database:
///     type: cloudflare:D1Database
///     name: example_d1_database
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: my-database
///       jurisdiction: eu
///       primaryLocationHint: wnam
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/d1Database:D1Database example '<account_id>/<database_id>'
/// ```
class D1Database extends pulumi.CustomResource {
  /// Account identifier tag.
  late final pulumi.Output<String> accountId;
  /// Specifies the timestamp the resource was created as an ISO8601 string.
  late final pulumi.Output<String> createdAt;
  /// The D1 database's size, in bytes.
  late final pulumi.Output<double> fileSize;
  /// Specify the location to restrict the D1 database to run and store data. If this option is present, the location hint is ignored.
  /// Available values: "eu", "fedramp".
  late final pulumi.Output<String?> jurisdiction;
  /// D1 database name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<double> numTables;
  /// Specify the region to create the D1 primary, if available. If this option is omitted, the D1 will be created as close as possible to the current user.
  /// Available values: "wnam", "enam", "weur", "eeur", "apac", "oc".
  late final pulumi.Output<String?> primaryLocationHint;
  /// Configuration for D1 read replication.
  late final pulumi.Output<D1DatabaseReadReplication?> readReplication;
  /// D1 database identifier (UUID).
  late final pulumi.Output<String> uuid;
  late final pulumi.Output<String> version;

  /// Creates a new [D1Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [D1Database]. {@macro pulumi_index_d1_database_d1_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  D1Database(
    String name, {
    D1DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/d1Database:D1Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    fileSize = registerOutput<double>('fileSize');
    jurisdiction = registerOutput<String?>('jurisdiction');
    this.name = registerOutput<String>('name');
    numTables = registerOutput<double>('numTables');
    primaryLocationHint = registerOutput<String?>('primaryLocationHint');
    readReplication = registerOutput<D1DatabaseReadReplication?>('readReplication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return D1DatabaseReadReplication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uuid = registerOutput<String>('uuid');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [D1Database] resource's state with the given [name] and [id].
  static D1Database get(
    String name,
    pulumi.Input<String> id, {
    D1DatabaseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return D1Database._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  D1Database._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/d1Database:D1Database',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    fileSize = registerOutput<double>('fileSize');
    jurisdiction = registerOutput<String?>('jurisdiction');
    this.name = registerOutput<String>('name');
    numTables = registerOutput<double>('numTables');
    primaryLocationHint = registerOutput<String?>('primaryLocationHint');
    readReplication = registerOutput<D1DatabaseReadReplication?>('readReplication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return D1DatabaseReadReplication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uuid = registerOutput<String>('uuid');
    version = registerOutput<String>('version');
  }

  /// Creates a typed reference to an existing [D1Database] resource.
  D1Database.reference(String urn)
    : super(
        'cloudflare:index/d1Database:D1Database',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    fileSize = registerOutput<double>('fileSize');
    jurisdiction = registerOutput<String?>('jurisdiction');
    this.name = registerOutput<String>('name');
    numTables = registerOutput<double>('numTables');
    primaryLocationHint = registerOutput<String?>('primaryLocationHint');
    readReplication = registerOutput<D1DatabaseReadReplication?>('readReplication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return D1DatabaseReadReplication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uuid = registerOutput<String>('uuid');
    version = registerOutput<String>('version');
  }
}
