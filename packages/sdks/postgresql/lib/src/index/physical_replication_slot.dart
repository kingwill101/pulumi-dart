import 'package:pulumi/pulumi.dart' as pulumi;
import 'physical_replication_slot_args.dart';
import 'physical_replication_slot_state.dart';

/// The ``postgresql.PhysicalReplicationSlot`` resource creates and manages a physical replication slot on a PostgreSQL
/// server. This is useful to setup a cross datacenter replication, with Patroni for example, or permit
/// any stand-by cluster to replicate physically data.
///
///
/// ## Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const mySlot = new postgresql.PhysicalReplicationSlot("my_slot", {name: "my_slot"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// my_slot = postgresql.PhysicalReplicationSlot("my_slot", name="my_slot")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mySlot = new PostgreSql.PhysicalReplicationSlot("my_slot", new()
///     {
///         Name = "my_slot",
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
/// 		_, err := postgresql.NewPhysicalReplicationSlot(ctx, "my_slot", &postgresql.PhysicalReplicationSlotArgs{
/// 			Name: pulumi.String("my_slot"),
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
/// import com.pulumi.postgresql.PhysicalReplicationSlot;
/// import com.pulumi.postgresql.PhysicalReplicationSlotArgs;
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
///         var mySlot = new PhysicalReplicationSlot("mySlot", PhysicalReplicationSlotArgs.builder()
///             .name("my_slot")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mySlot:
///     type: postgresql:PhysicalReplicationSlot
///     name: my_slot
///     properties:
///       name: my_slot
/// ```
class PhysicalReplicationSlot extends pulumi.CustomResource {
  /// The name of the replication slot.
  late final pulumi.Output<String> name;

  /// Creates a new [PhysicalReplicationSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PhysicalReplicationSlot]. {@macro pulumi_index_physical_replication_slot_physical_replication_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PhysicalReplicationSlot(
    String name, {
    PhysicalReplicationSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/physicalReplicationSlot:PhysicalReplicationSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [PhysicalReplicationSlot] resource's state with the given [name] and [id].
  static PhysicalReplicationSlot get(
    String name,
    pulumi.Input<String> id, {
    PhysicalReplicationSlotState? state,
  }) {
    return PhysicalReplicationSlot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PhysicalReplicationSlot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/physicalReplicationSlot:PhysicalReplicationSlot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
  }
}
