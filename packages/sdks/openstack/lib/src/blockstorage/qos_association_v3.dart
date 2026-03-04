import 'package:pulumi/pulumi.dart' as pulumi;
import 'qos_association_v3_args.dart';
import 'qos_association_v3_state.dart';

/// Manages a V3 block storage Qos Association resource within OpenStack.
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
///     name: "%s",
///     consumer: "front-end",
///     specs: {
///         read_iops_sec: "20000",
///     },
/// });
/// const volumeType = new openstack.blockstorage.VolumeTypeV3("volume_type", {name: "%s"});
/// const qosAssociation = new openstack.blockstorage.QosAssociationV3("qos_association", {
///     qosId: qos.id,
///     volumeTypeId: volumeType.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// qos = openstack.blockstorage.QosV3("qos",
///     name="%s",
///     consumer="front-end",
///     specs={
///         "read_iops_sec": "20000",
///     })
/// volume_type = openstack.blockstorage.VolumeTypeV3("volume_type", name="%s")
/// qos_association = openstack.blockstorage.QosAssociationV3("qos_association",
///     qos_id=qos.id,
///     volume_type_id=volume_type.id)
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
///         Name = "%s",
///         Consumer = "front-end",
///         Specs =
///         {
///             { "read_iops_sec", "20000" },
///         },
///     });
///
///     var volumeType = new OpenStack.BlockStorage.VolumeTypeV3("volume_type", new()
///     {
///         Name = "%s",
///     });
///
///     var qosAssociation = new OpenStack.BlockStorage.QosAssociationV3("qos_association", new()
///     {
///         QosId = qos.Id,
///         VolumeTypeId = volumeType.Id,
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
/// 		qos, err := blockstorage.NewQosV3(ctx, "qos", &blockstorage.QosV3Args{
/// 			Name:     pulumi.String("%s"),
/// 			Consumer: pulumi.String("front-end"),
/// 			Specs: pulumi.StringMap{
/// 				"read_iops_sec": pulumi.String("20000"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		volumeType, err := blockstorage.NewVolumeTypeV3(ctx, "volume_type", &blockstorage.VolumeTypeV3Args{
/// 			Name: pulumi.String("%s"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = blockstorage.NewQosAssociationV3(ctx, "qos_association", &blockstorage.QosAssociationV3Args{
/// 			QosId:        qos.ID(),
/// 			VolumeTypeId: volumeType.ID(),
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
/// import com.pulumi.openstack.blockstorage.VolumeTypeV3;
/// import com.pulumi.openstack.blockstorage.VolumeTypeV3Args;
/// import com.pulumi.openstack.blockstorage.QosAssociationV3;
/// import com.pulumi.openstack.blockstorage.QosAssociationV3Args;
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
///             .name("%s")
///             .consumer("front-end")
///             .specs(Map.of("read_iops_sec", "20000"))
///             .build());
///
///         var volumeType = new VolumeTypeV3("volumeType", VolumeTypeV3Args.builder()
///             .name("%s")
///             .build());
///
///         var qosAssociation = new QosAssociationV3("qosAssociation", QosAssociationV3Args.builder()
///             .qosId(qos.id())
///             .volumeTypeId(volumeType.id())
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
///       name: '%s'
///       consumer: front-end
///       specs:
///         read_iops_sec: '20000'
///   volumeType:
///     type: openstack:blockstorage:VolumeTypeV3
///     name: volume_type
///     properties:
///       name: '%s'
///   qosAssociation:
///     type: openstack:blockstorage:QosAssociationV3
///     name: qos_association
///     properties:
///       qosId: ${qos.id}
///       volumeTypeId: ${volumeType.id}
/// ```
///
///
/// ## Import
///
/// Qos association can be imported using the `qos_id/volume_type_id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:blockstorage/qosAssociationV3:QosAssociationV3 qos_association 941793f0-0a34-4bc4-b72e-a6326ae58283/ea257959-eeb1-4c10-8d33-26f0409a755d
/// ```
class QosAssociationV3 extends pulumi.CustomResource {
  /// ID of the qos to associate. Changing this creates
  /// a new qos association.
  late final pulumi.Output<String> qosId;

  /// The region in which to create the qos association.
  /// If omitted, the `region` argument of the provider is used. Changing
  /// this creates a new qos association.
  late final pulumi.Output<String> region;

  /// ID of the volume_type to associate.
  /// Changing this creates a new qos association.
  late final pulumi.Output<String> volumeTypeId;

  /// Creates a new [QosAssociationV3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QosAssociationV3]. {@macro pulumi_blockstorage_qos_association_v3_qos_association_v3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QosAssociationV3(
    String name, {
    QosAssociationV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:blockstorage/qosAssociationV3:QosAssociationV3',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    qosId = registerOutput<String>('qosId');
    region = registerOutput<String>('region');
    volumeTypeId = registerOutput<String>('volumeTypeId');
  }

  /// Gets an existing [QosAssociationV3] resource's state with the given [name] and [id].
  static QosAssociationV3 get(
    String name,
    pulumi.Input<String> id, {
    QosAssociationV3State? state,
  }) {
    return QosAssociationV3._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  QosAssociationV3._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:blockstorage/qosAssociationV3:QosAssociationV3',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    qosId = registerOutput<String>('qosId');
    region = registerOutput<String>('region');
    volumeTypeId = registerOutput<String>('volumeTypeId');
  }
}
