import 'package:pulumi/pulumi.dart' as pulumi;
import 'change_stream_args.dart';
import 'change_stream_collection_group_scope.dart';
import 'change_stream_state.dart';

/// A change stream resource for a Cloud Firestore Database.
/// Change streams enable real-time tracking of document changes (creates, updates, deletes)
/// across collections within a Cloud Firestore database.
///
///
/// To get more information about ChangeStream, see:
///
/// * API documentation
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/firestore/docs/)
///
/// &gt; **Warning:** This resource creates a Firestore Change Stream on a project that already has
/// a Firestore database.
///
/// ## Example Usage
///
/// ### Firestore Change Stream Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "database-id",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
///     databaseEdition: "ENTERPRISE",
///     deletionPolicy: "DELETE",
/// });
/// const wait30Seconds = new time.Sleep("wait_30_seconds", {createDuration: "30s"}, {
///     dependsOn: [database],
/// });
/// const changeStream = new gcp.firestore.ChangeStream("change_stream", {
///     project: "my-project-name",
///     database: database.name,
///     name: "my-change-stream",
///     retentionPeriod: "86400s",
///     databaseScope: {},
/// }, {
///     dependsOn: [wait30Seconds],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="database-id",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     database_edition="ENTERPRISE",
///     deletion_policy="DELETE")
/// wait30_seconds = time.Sleep("wait_30_seconds", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[database]))
/// change_stream = gcp.firestore.ChangeStream("change_stream",
///     project="my-project-name",
///     database=database.name,
///     name="my-change-stream",
///     retention_period="86400s",
///     database_scope={},
///     opts = pulumi.ResourceOptions(depends_on=[wait30_seconds]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new Gcp.Firestore.Database("database", new()
///     {
///         Project = "my-project-name",
///         Name = "database-id",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///         DatabaseEdition = "ENTERPRISE",
///         DeletionPolicy = "DELETE",
///     });
///
///     var wait30Seconds = new Time.Sleep("wait_30_seconds", new()
///     {
///         CreateDuration = "30s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             database,
///         },
///     });
///
///     var changeStream = new Gcp.Firestore.ChangeStream("change_stream", new()
///     {
///         Project = "my-project-name",
///         Database = database.Name,
///         Name = "my-change-stream",
///         RetentionPeriod = "86400s",
///         DatabaseScope = null,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait30Seconds,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		database, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			Name:            pulumi.String("database-id"),
/// 			LocationId:      pulumi.String("nam5"),
/// 			Type:            pulumi.String("FIRESTORE_NATIVE"),
/// 			DatabaseEdition: pulumi.String("ENTERPRISE"),
/// 			DeletionPolicy:  pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait30Seconds, err := time.NewSleep(ctx, "wait_30_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			database,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firestore.NewChangeStream(ctx, "change_stream", &firestore.ChangeStreamArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			Database:        database.Name,
/// 			Name:            pulumi.String("my-change-stream"),
/// 			RetentionPeriod: pulumi.String("86400s"),
/// 			DatabaseScope:   &firestore.ChangeStreamDatabaseScopeArgs{},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait30Seconds,
/// 		}))
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// resource "gcp_firestore_database" "database" {
///   project          = "my-project-name"
///   name             = "database-id"
///   location_id      = "nam5"
///   type             = "FIRESTORE_NATIVE"
///   database_edition = "ENTERPRISE"
///   deletion_policy  = "DELETE"
/// }
/// resource "time_sleep" "wait_30_seconds" {
///   depends_on      = [gcp_firestore_database.database]
///   create_duration = "30s"
/// }
/// resource "gcp_firestore_changestream" "change_stream" {
///   depends_on       = [time_sleep.wait_30_seconds]
///   project          = "my-project-name"
///   database         = gcp_firestore_database.database.name
///   name             = "my-change-stream"
///   retention_period = "86400s"
///   database_scope   = {}
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.firestore.ChangeStream;
/// import com.pulumi.gcp.firestore.ChangeStreamArgs;
/// import com.pulumi.gcp.firestore.inputs.ChangeStreamDatabaseScopeArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("database-id")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .databaseEdition("ENTERPRISE")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var wait30Seconds = new Sleep("wait30Seconds", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(database)
///                 .build());
///
///         var changeStream = new ChangeStream("changeStream", ChangeStreamArgs.builder()
///             .project("my-project-name")
///             .database(database.name())
///             .name("my-change-stream")
///             .retentionPeriod("86400s")
///             .databaseScope(ChangeStreamDatabaseScopeArgs.builder()
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait30Seconds)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:firestore:Database
///     properties:
///       project: my-project-name
///       name: database-id
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///       databaseEdition: ENTERPRISE
///       deletionPolicy: DELETE
///   wait30Seconds:
///     type: time:Sleep
///     name: wait_30_seconds
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${database}
///   changeStream:
///     type: gcp:firestore:ChangeStream
///     name: change_stream
///     properties:
///       project: my-project-name
///       database: ${database.name}
///       name: my-change-stream
///       retentionPeriod: 86400s
///       databaseScope: {}
///     options:
///       dependsOn:
///         - ${wait30Seconds}
/// ```
///
/// ### Firestore Change Stream Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "database-id",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
///     databaseEdition: "ENTERPRISE",
///     deletionPolicy: "DELETE",
/// });
/// const wait30Seconds = new time.Sleep("wait_30_seconds", {createDuration: "30s"}, {
///     dependsOn: [database],
/// });
/// const changeStream = new gcp.firestore.ChangeStream("change_stream", {
///     project: "my-project-name",
///     database: database.name,
///     name: "my-change-stream",
///     retentionPeriod: "604800s",
///     collectionGroupScope: {
///         collectionGroupId: "users",
///     },
/// }, {
///     dependsOn: [wait30Seconds],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="database-id",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     database_edition="ENTERPRISE",
///     deletion_policy="DELETE")
/// wait30_seconds = time.Sleep("wait_30_seconds", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[database]))
/// change_stream = gcp.firestore.ChangeStream("change_stream",
///     project="my-project-name",
///     database=database.name,
///     name="my-change-stream",
///     retention_period="604800s",
///     collection_group_scope={
///         "collection_group_id": "users",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[wait30_seconds]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new Gcp.Firestore.Database("database", new()
///     {
///         Project = "my-project-name",
///         Name = "database-id",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///         DatabaseEdition = "ENTERPRISE",
///         DeletionPolicy = "DELETE",
///     });
///
///     var wait30Seconds = new Time.Sleep("wait_30_seconds", new()
///     {
///         CreateDuration = "30s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             database,
///         },
///     });
///
///     var changeStream = new Gcp.Firestore.ChangeStream("change_stream", new()
///     {
///         Project = "my-project-name",
///         Database = database.Name,
///         Name = "my-change-stream",
///         RetentionPeriod = "604800s",
///         CollectionGroupScope = new Gcp.Firestore.Inputs.ChangeStreamCollectionGroupScopeArgs
///         {
///             CollectionGroupId = "users",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait30Seconds,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		database, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			Name:            pulumi.String("database-id"),
/// 			LocationId:      pulumi.String("nam5"),
/// 			Type:            pulumi.String("FIRESTORE_NATIVE"),
/// 			DatabaseEdition: pulumi.String("ENTERPRISE"),
/// 			DeletionPolicy:  pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait30Seconds, err := time.NewSleep(ctx, "wait_30_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			database,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firestore.NewChangeStream(ctx, "change_stream", &firestore.ChangeStreamArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			Database:        database.Name,
/// 			Name:            pulumi.String("my-change-stream"),
/// 			RetentionPeriod: pulumi.String("604800s"),
/// 			CollectionGroupScope: &firestore.ChangeStreamCollectionGroupScopeArgs{
/// 				CollectionGroupId: pulumi.String("users"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait30Seconds,
/// 		}))
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// resource "gcp_firestore_database" "database" {
///   project          = "my-project-name"
///   name             = "database-id"
///   location_id      = "nam5"
///   type             = "FIRESTORE_NATIVE"
///   database_edition = "ENTERPRISE"
///   deletion_policy  = "DELETE"
/// }
/// resource "time_sleep" "wait_30_seconds" {
///   depends_on      = [gcp_firestore_database.database]
///   create_duration = "30s"
/// }
/// resource "gcp_firestore_changestream" "change_stream" {
///   depends_on       = [time_sleep.wait_30_seconds]
///   project          = "my-project-name"
///   database         = gcp_firestore_database.database.name
///   name             = "my-change-stream"
///   retention_period = "604800s"
///   collection_group_scope = {
///     collection_group_id = "users"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.firestore.ChangeStream;
/// import com.pulumi.gcp.firestore.ChangeStreamArgs;
/// import com.pulumi.gcp.firestore.inputs.ChangeStreamCollectionGroupScopeArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("database-id")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .databaseEdition("ENTERPRISE")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var wait30Seconds = new Sleep("wait30Seconds", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(database)
///                 .build());
///
///         var changeStream = new ChangeStream("changeStream", ChangeStreamArgs.builder()
///             .project("my-project-name")
///             .database(database.name())
///             .name("my-change-stream")
///             .retentionPeriod("604800s")
///             .collectionGroupScope(ChangeStreamCollectionGroupScopeArgs.builder()
///                 .collectionGroupId("users")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait30Seconds)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:firestore:Database
///     properties:
///       project: my-project-name
///       name: database-id
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///       databaseEdition: ENTERPRISE
///       deletionPolicy: DELETE
///   wait30Seconds:
///     type: time:Sleep
///     name: wait_30_seconds
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${database}
///   changeStream:
///     type: gcp:firestore:ChangeStream
///     name: change_stream
///     properties:
///       project: my-project-name
///       database: ${database.name}
///       name: my-change-stream
///       retentionPeriod: 604800s
///       collectionGroupScope:
///         collectionGroupId: users
///     options:
///       dependsOn:
///         - ${wait30Seconds}
/// ```
///
///
/// ## Import
///
/// ChangeStream can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/databases/{{database}}/changeStreams/{{name}}`
/// * `{{project}}/{{database}}/{{name}}`
/// * `{{database}}/{{name}}`
///
///
/// When using the `pulumi import` command, ChangeStream can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firestore/changeStream:ChangeStream default projects/{{project}}/databases/{{database}}/changeStreams/{{name}}
/// $ pulumi import gcp:firestore/changeStream:ChangeStream default {{project}}/{{database}}/{{name}}
/// $ pulumi import gcp:firestore/changeStream:ChangeStream default {{database}}/{{name}}
/// ```
class ChangeStream extends pulumi.CustomResource {
  /// Tracks changes for a specific collection group.
  /// Structure is documented below.
  late final pulumi.Output<ChangeStreamCollectionGroupScope?> collectionGroupScope;
  /// The creation timestamp of the change stream.
  late final pulumi.Output<String> createTime;
  /// The Firestore database ID. Defaults to `"(default)"`.
  late final pulumi.Output<String?> database;
  /// Tracks changes across all collections in the database.
  late final pulumi.Output<Map<String, dynamic>?> databaseScope;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Output only. This checksum is computed by the server based on the value of other fields,
  /// and may be sent on delete request to ensure the client has an
  /// up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// The ID to use for the change stream, which will become the final component
  /// of the change stream's resource name.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The duration for which change stream data is retained.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "86400s".
  late final pulumi.Output<String> retentionPeriod;
  /// The time the Change Stream started recording events.
  late final pulumi.Output<String> startTime;
  /// The last update timestamp of the change stream.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ChangeStream].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ChangeStream]. {@macro pulumi_firestore_change_stream_change_stream_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ChangeStream(
    String name, {
    ChangeStreamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firestore/changeStream:ChangeStream',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    collectionGroupScope = registerOutput<ChangeStreamCollectionGroupScope?>('collectionGroupScope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChangeStreamCollectionGroupScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    database = registerOutput<String?>('database');
    databaseScope = registerOutput<Map<String, dynamic>?>('databaseScope');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    retentionPeriod = registerOutput<String>('retentionPeriod');
    startTime = registerOutput<String>('startTime');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [ChangeStream] resource's state with the given [name] and [id].
  static ChangeStream get(
    String name,
    pulumi.Input<String> id, {
    ChangeStreamState? state,
  }) {
    return ChangeStream._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ChangeStream._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firestore/changeStream:ChangeStream',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    collectionGroupScope = registerOutput<ChangeStreamCollectionGroupScope?>('collectionGroupScope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChangeStreamCollectionGroupScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    database = registerOutput<String?>('database');
    databaseScope = registerOutput<Map<String, dynamic>?>('databaseScope');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    retentionPeriod = registerOutput<String>('retentionPeriod');
    startTime = registerOutput<String>('startTime');
    updateTime = registerOutput<String>('updateTime');
  }
}
