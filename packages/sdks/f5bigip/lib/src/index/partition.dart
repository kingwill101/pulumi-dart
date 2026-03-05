import 'package:pulumi/pulumi.dart' as pulumi;
import 'partition_args.dart';
import 'partition_state.dart';

/// `f5bigip.Partition` Manages F5 BIG-IP partitions
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const test_partition = new f5bigip.Partition("test-partition", {
///     name: "test-partition",
///     description: "created by terraform",
///     routeDomainId: 2,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// test_partition = f5bigip.Partition("test-partition",
///     name="test-partition",
///     description="created by terraform",
///     route_domain_id=2)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test_partition = new F5BigIP.Partition("test-partition", new()
///     {
///         Name = "test-partition",
///         Description = "created by terraform",
///         RouteDomainId = 2,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := f5bigip.NewPartition(ctx, "test-partition", &f5bigip.PartitionArgs{
/// 			Name:          pulumi.String("test-partition"),
/// 			Description:   pulumi.String("created by terraform"),
/// 			RouteDomainId: pulumi.Int(2),
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
/// import com.pulumi.f5bigip.Partition;
/// import com.pulumi.f5bigip.PartitionArgs;
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
///         var test_partition = new Partition("test-partition", PartitionArgs.builder()
///             .name("test-partition")
///             .description("created by terraform")
///             .routeDomainId(2)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-partition:
///     type: f5bigip:Partition
///     properties:
///       name: test-partition
///       description: created by terraform
///       routeDomainId: 2
/// ```
///
///
/// ## Importing
///
/// An existing cipher group can be imported into this resource by supplying the cipher rule full path name ex : `/partition/name`
///
/// An example is below:
///
/// ```sh
/// $ terraform import bigip_partition.test_partition test_partition
///
/// ```
class Partition extends pulumi.CustomResource {
  /// Description of the partition.
  late final pulumi.Output<String?> description;
  /// Name of the partition.
  late final pulumi.Output<String> name;
  /// Route domain id of the partition.
  late final pulumi.Output<int?> routeDomainId;

  /// Creates a new [Partition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Partition]. {@macro pulumi_index_partition_partition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Partition(
    String name, {
    PartitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/partition:Partition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    routeDomainId = registerOutput<int?>('routeDomainId');
  }

  /// Gets an existing [Partition] resource's state with the given [name] and [id].
  static Partition get(
    String name,
    pulumi.Input<String> id, {
    PartitionState? state,
  }) {
    return Partition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Partition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/partition:Partition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    routeDomainId = registerOutput<int?>('routeDomainId');
  }
}
