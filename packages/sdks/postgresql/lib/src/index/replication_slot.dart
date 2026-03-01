import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_slot_args.dart';
import 'replication_slot_state.dart';

/// The ``postgresql.ReplicationSlot`` resource creates and manages a replication slot on a PostgreSQL
/// server.
///
///
/// ## Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const mySlot = new postgresql.ReplicationSlot("my_slot", {
///     name: "my_slot",
///     plugin: "test_decoding",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// my_slot = postgresql.ReplicationSlot("my_slot",
///     name="my_slot",
///     plugin="test_decoding")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mySlot = new PostgreSql.ReplicationSlot("my_slot", new()
///     {
///         Name = "my_slot",
///         Plugin = "test_decoding",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-postgresql/sdk/v3/go/postgresql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := postgresql.NewReplicationSlot(ctx, "my_slot", &postgresql.ReplicationSlotArgs{
/// 			Name:   pulumi.String("my_slot"),
/// 			Plugin: pulumi.String("test_decoding"),
/// 		})
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
/// import com.pulumi.postgresql.ReplicationSlot;
/// import com.pulumi.postgresql.ReplicationSlotArgs;
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
///         var mySlot = new ReplicationSlot("mySlot", ReplicationSlotArgs.builder()
///             .name("my_slot")
///             .plugin("test_decoding")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mySlot:
///     type: postgresql:ReplicationSlot
///     name: my_slot
///     properties:
///       name: my_slot
///       plugin: test_decoding
/// ```
class ReplicationSlot extends pulumi.CustomResource {
  /// Which database to create the replication slot on. Defaults to provider database.
  late final pulumi.Output<String> database;
  /// The name of the replication slot.
  late final pulumi.Output<String> name;
  /// Sets the output plugin.
  late final pulumi.Output<String> plugin;

  /// Creates a new [ReplicationSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationSlot]. {@macro pulumi_index_replication_slot_replication_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationSlot(
    String name, {
    ReplicationSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/replicationSlot:ReplicationSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.database = registerOutput<String>('database');
    this.name = registerOutput<String>('name');
    this.plugin = registerOutput<String>('plugin');
  }

  /// Gets an existing [ReplicationSlot] resource's state with the given [name] and [id].
  static ReplicationSlot get(
    String name,
    pulumi.Input<String> id, {
    ReplicationSlotState? state,
  }) {
    return ReplicationSlot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReplicationSlot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/replicationSlot:ReplicationSlot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.database = registerOutput<String>('database');
    this.name = registerOutput<String>('name');
    this.plugin = registerOutput<String>('plugin');
  }
}
