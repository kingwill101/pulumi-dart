import 'package:pulumi/pulumi.dart' as pulumi;
import 'qos_v3_args.dart';
import 'qos_v3_state.dart';

/// Manages a V3 block storage Quality-Of-Servirce (qos) resource within OpenStack.
///
/// &gt; **Note:** This usually requires admin privileges.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const qos = new openstack.blockstorage.QosV3("qos", {
///     name: "foo",
///     consumer: "back-end",
///     specs: {
///         read_iops_sec: "40000",
///         write_iops_sec: "40000",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// qos = openstack.blockstorage.QosV3("qos",
///     name="foo",
///     consumer="back-end",
///     specs={
///         "read_iops_sec": "40000",
///         "write_iops_sec": "40000",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qos = new OpenStack.BlockStorage.QosV3("qos", new()
///     {
///         Name = "foo",
///         Consumer = "back-end",
///         Specs =
///         {
///             { "read_iops_sec", "40000" },
///             { "write_iops_sec", "40000" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/blockstorage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blockstorage.NewQosV3(ctx, "qos", &blockstorage.QosV3Args{
/// 			Name:     pulumi.String("foo"),
/// 			Consumer: pulumi.String("back-end"),
/// 			Specs: pulumi.StringMap{
/// 				"read_iops_sec":  pulumi.String("40000"),
/// 				"write_iops_sec": pulumi.String("40000"),
/// 			},
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
/// import com.pulumi.openstack.blockstorage.QosV3;
/// import com.pulumi.openstack.blockstorage.QosV3Args;
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
///         var qos = new QosV3("qos", QosV3Args.builder()
///             .name("foo")
///             .consumer("back-end")
///             .specs(Map.ofEntries(
///                 Map.entry("read_iops_sec", "40000"),
///                 Map.entry("write_iops_sec", "40000")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   qos:
///     type: openstack:blockstorage:QosV3
///     properties:
///       name: foo
///       consumer: back-end
///       specs:
///         read_iops_sec: '40000'
///         write_iops_sec: '40000'
/// ```
///
///
/// ## Import
///
/// Qos can be imported using the `qos_id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:blockstorage/qosV3:QosV3 qos 941793f0-0a34-4bc4-b72e-a6326ae58283
/// ```
class QosV3 extends pulumi.CustomResource {
  /// The consumer of qos. Can be one of `front-end`,
  /// `back-end` or `both`. Changing this updates the `consumer` of an
  /// existing qos.
  late final pulumi.Output<String?> consumer;

  /// Name of the qos.  Changing this creates a new qos.
  late final pulumi.Output<String> name;

  /// The region in which to create the qos. If omitted,
  /// the `region` argument of the provider is used. Changing this creates
  /// a new qos.
  late final pulumi.Output<String> region;

  /// Key/Value pairs of specs for the qos.
  late final pulumi.Output<Map<String, String>?> specs;

  /// Creates a new [QosV3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QosV3]. {@macro pulumi_blockstorage_qos_v3_qos_v3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QosV3(String name, {QosV3Args? args, pulumi.CustomResourceOptions? options})
    : super(
        'openstack:blockstorage/qosV3:QosV3',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    consumer = registerOutput<String?>('consumer');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    specs = registerOutput<Map<String, String>?>('specs');
  }

  /// Gets an existing [QosV3] resource's state with the given [name] and [id].
  static QosV3 get(String name, pulumi.Input<String> id, {QosV3State? state}) {
    return QosV3._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  QosV3._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:blockstorage/qosV3:QosV3',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    consumer = registerOutput<String?>('consumer');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    specs = registerOutput<Map<String, String>?>('specs');
  }
}
