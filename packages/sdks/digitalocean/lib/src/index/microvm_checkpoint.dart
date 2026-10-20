import 'package:pulumi/pulumi.dart' as pulumi;
import 'microvm_checkpoint_args.dart';
import 'microvm_checkpoint_size.dart';
import 'microvm_checkpoint_state.dart';

/// Provides a DigitalOcean MicroVM checkpoint resource. A checkpoint captures the
/// memory and disk state of a running MicroVM, and can be used as the source of a
/// new `digitalocean.Microvm`.
///
/// &gt; **Note:** MicroVMs are in public preview.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const web = new digitalocean.Microvm("web", {
///     name: "example-microvm",
///     region: "nyc3",
///     size: {
///         cpu: 2,
///         memory: 4096,
///     },
///     source: {
///         ociRef: "docker.io/library/nginx:latest",
///     },
/// });
/// const webMicrovmCheckpoint = new digitalocean.MicrovmCheckpoint("web", {
///     microvmId: web.id,
///     name: "web-checkpoint",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// web = digitalocean.Microvm("web",
///     name="example-microvm",
///     region="nyc3",
///     size={
///         "cpu": 2,
///         "memory": 4096,
///     },
///     source={
///         "oci_ref": "docker.io/library/nginx:latest",
///     })
/// web_microvm_checkpoint = digitalocean.MicrovmCheckpoint("web",
///     microvm_id=web.id,
///     name="web-checkpoint")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var web = new DigitalOcean.Microvm("web", new()
///     {
///         Name = "example-microvm",
///         Region = "nyc3",
///         Size = new DigitalOcean.Inputs.MicrovmSizeArgs
///         {
///             Cpu = 2,
///             Memory = 4096,
///         },
///         Source = new DigitalOcean.Inputs.MicrovmSourceArgs
///         {
///             OciRef = "docker.io/library/nginx:latest",
///         },
///     });
///
///     var webMicrovmCheckpoint = new DigitalOcean.MicrovmCheckpoint("web", new()
///     {
///         MicrovmId = web.Id,
///         Name = "web-checkpoint",
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
/// 		web, err := digitalocean.NewMicrovm(ctx, "web", &digitalocean.MicrovmArgs{
/// 			Name:   pulumi.String("example-microvm"),
/// 			Region: pulumi.String("nyc3"),
/// 			Size: &digitalocean.MicrovmSizeArgs{
/// 				Cpu:    pulumi.Int(2),
/// 				Memory: pulumi.Int(4096),
/// 			},
/// 			Source: &digitalocean.MicrovmSourceArgs{
/// 				OciRef: pulumi.String("docker.io/library/nginx:latest"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewMicrovmCheckpoint(ctx, "web", &digitalocean.MicrovmCheckpointArgs{
/// 			MicrovmId: web.ID().ToIDOutput().ToStringOutput(),
/// 			Name:      pulumi.String("web-checkpoint"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_microvm" "web" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name   = "example-microvm"
///   region = "nyc3"
///   size = {
///     cpu    = 2
///     memory = 4096
///   }
///   source = {
///     oci_ref = "docker.io/library/nginx:latest"
///   }
/// }
/// resource "digitalocean_microvm_checkpoint" "web" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   microvm_id = digitalocean_microvm.web.id
///   name       = "web-checkpoint"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.Microvm;
/// import com.pulumi.digitalocean.MicrovmArgs;
/// import com.pulumi.digitalocean.inputs.MicrovmSizeArgs;
/// import com.pulumi.digitalocean.inputs.MicrovmSourceArgs;
/// import com.pulumi.digitalocean.MicrovmCheckpoint;
/// import com.pulumi.digitalocean.MicrovmCheckpointArgs;
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
///         var web = new Microvm("web", MicrovmArgs.builder()
///             .name("example-microvm")
///             .region("nyc3")
///             .size(MicrovmSizeArgs.builder()
///                 .cpu(2)
///                 .memory(4096)
///                 .build())
///             .source(MicrovmSourceArgs.builder()
///                 .ociRef("docker.io/library/nginx:latest")
///                 .build())
///             .build());
///
///         var webMicrovmCheckpoint = new MicrovmCheckpoint("webMicrovmCheckpoint", MicrovmCheckpointArgs.builder()
///             .microvmId(web.id())
///             .name("web-checkpoint")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   web:
///     type: digitalocean:Microvm
///     properties:
///       name: example-microvm
///       region: nyc3
///       size:
///         cpu: 2
///         memory: 4096
///       source:
///         ociRef: docker.io/library/nginx:latest
///   webMicrovmCheckpoint:
///     type: digitalocean:MicrovmCheckpoint
///     name: web
///     properties:
///       microvmId: ${web.id}
///       name: web-checkpoint
/// ```
///
///
/// ## Import
///
/// A MicroVM checkpoint can be imported using its `id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/microvmCheckpoint:MicrovmCheckpoint web 506f78a4-e098-11e5-ad9f-000f53306ae1
/// ```
class MicrovmCheckpoint extends pulumi.CustomResource {
  /// The date and time the checkpoint was created.
  late final pulumi.Output<String> createdAt;
  /// The size of the persisted disk image in bytes.
  late final pulumi.Output<int> diskBytes;
  /// The size of the persisted memory image in bytes.
  late final pulumi.Output<int> memoryBytes;
  /// The ID of the running MicroVM to checkpoint. Changing this forces a new checkpoint.
  late final pulumi.Output<String> microvmId;
  /// The name of the MicroVM the checkpoint was captured from.
  late final pulumi.Output<String> microvmName;
  /// A name for the checkpoint. Changing this forces a new checkpoint.
  late final pulumi.Output<String> name;
  /// The slug of the region the checkpoint is stored in.
  late final pulumi.Output<String> region;
  /// The size a MicroVM restored from this checkpoint inherits. Empty when the checkpoint does not record one, in which case the restored MicroVM must set `size`.
  late final pulumi.Output<List<MicrovmCheckpointSize>> sizes;
  /// The status of the checkpoint, such as `CHECKPOINT_AVAILABLE`.
  late final pulumi.Output<String> status;

  /// Creates a new [MicrovmCheckpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MicrovmCheckpoint]. {@macro pulumi_index_microvm_checkpoint_microvm_checkpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MicrovmCheckpoint(
    String name, {
    MicrovmCheckpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/microvmCheckpoint:MicrovmCheckpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.84.1').merge(options),
        ) {
    createdAt = registerOutput<String>('createdAt');
    diskBytes = registerOutput<int>('diskBytes');
    memoryBytes = registerOutput<int>('memoryBytes');
    microvmId = registerOutput<String>('microvmId');
    microvmName = registerOutput<String>('microvmName');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    sizes = registerOutput<List<MicrovmCheckpointSize>>('sizes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MicrovmCheckpointSize>(guardedValue, (value) => MicrovmCheckpointSize.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
  }

  /// Gets an existing [MicrovmCheckpoint] resource's state with the given [name] and [id].
  static MicrovmCheckpoint get(
    String name,
    pulumi.Input<String> id, {
    MicrovmCheckpointState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MicrovmCheckpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MicrovmCheckpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/microvmCheckpoint:MicrovmCheckpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    diskBytes = registerOutput<int>('diskBytes');
    memoryBytes = registerOutput<int>('memoryBytes');
    microvmId = registerOutput<String>('microvmId');
    microvmName = registerOutput<String>('microvmName');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    sizes = registerOutput<List<MicrovmCheckpointSize>>('sizes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MicrovmCheckpointSize>(guardedValue, (value) => MicrovmCheckpointSize.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
  }

  /// Creates a typed reference to an existing [MicrovmCheckpoint] resource.
  MicrovmCheckpoint.reference(String urn)
    : super(
        'digitalocean:index/microvmCheckpoint:MicrovmCheckpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdAt = registerOutput<String>('createdAt');
    diskBytes = registerOutput<int>('diskBytes');
    memoryBytes = registerOutput<int>('memoryBytes');
    microvmId = registerOutput<String>('microvmId');
    microvmName = registerOutput<String>('microvmName');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    sizes = registerOutput<List<MicrovmCheckpointSize>>('sizes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MicrovmCheckpointSize>(guardedValue, (value) => MicrovmCheckpointSize.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
  }
}
