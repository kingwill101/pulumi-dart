import 'package:pulumi/pulumi.dart' as pulumi;
import 'microvm_args.dart';
import 'microvm_auto_pause.dart';
import 'microvm_size.dart';
import 'microvm_source.dart';
import 'microvm_state.dart';
import 'microvm_url.dart';

/// Provides a DigitalOcean MicroVM resource. MicroVMs are lightweight sandboxes
/// that run an OCI container image, pause when idle, and resume on demand.
///
/// &gt; **Note:** MicroVMs are in public preview.
///
/// ## Example Usage
///
/// Create a MicroVM from an OCI image:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const web = new digitalocean.Microvm("web", {
///     name: "example-microvm",
///     region: "nyc3",
///     httpPort: 8080,
///     size: {
///         cpu: 2,
///         memory: 4096,
///     },
///     source: {
///         ociRef: "docker.io/library/nginx:latest",
///     },
///     autoPause: {
///         enabled: true,
///         idleTimeout: "5m",
///     },
///     environment: {
///         LOG_LEVEL: "info",
///     },
///     tags: ["web"],
/// });
/// export const url = web.urls[0].hostname;
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// web = digitalocean.Microvm("web",
///     name="example-microvm",
///     region="nyc3",
///     http_port=8080,
///     size={
///         "cpu": 2,
///         "memory": 4096,
///     },
///     source={
///         "oci_ref": "docker.io/library/nginx:latest",
///     },
///     auto_pause={
///         "enabled": True,
///         "idle_timeout": "5m",
///     },
///     environment={
///         "LOG_LEVEL": "info",
///     },
///     tags=["web"])
/// pulumi.export("url", web.urls[0].hostname)
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
///         HttpPort = 8080,
///         Size = new DigitalOcean.Inputs.MicrovmSizeArgs
///         {
///             Cpu = 2,
///             Memory = 4096,
///         },
///         Source = new DigitalOcean.Inputs.MicrovmSourceArgs
///         {
///             OciRef = "docker.io/library/nginx:latest",
///         },
///         AutoPause = new DigitalOcean.Inputs.MicrovmAutoPauseArgs
///         {
///             Enabled = true,
///             IdleTimeout = "5m",
///         },
///         Environment =
///         {
///             { "LOG_LEVEL", "info" },
///         },
///         Tags = new[]
///         {
///             "web",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["url"] = web.Urls.Apply(urls => urls[0].Hostname),
///     };
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
/// 			Name:     pulumi.String("example-microvm"),
/// 			Region:   pulumi.String("nyc3"),
/// 			HttpPort: pulumi.Int(8080),
/// 			Size: &digitalocean.MicrovmSizeArgs{
/// 				Cpu:    pulumi.Int(2),
/// 				Memory: pulumi.Int(4096),
/// 			},
/// 			Source: &digitalocean.MicrovmSourceArgs{
/// 				OciRef: pulumi.String("docker.io/library/nginx:latest"),
/// 			},
/// 			AutoPause: &digitalocean.MicrovmAutoPauseArgs{
/// 				Enabled:     pulumi.Bool(true),
/// 				IdleTimeout: pulumi.String("5m"),
/// 			},
/// 			Environment: pulumi.StringMap{
/// 				"LOG_LEVEL": pulumi.String("info"),
/// 			},
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("web"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("url", web.Urls.ApplyT(func(urls []digitalocean.MicrovmUrl) (*string, error) {
/// 			return urls[0].Hostname, nil
/// 		}).(pulumi.StringPtrOutput))
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
///   name      = "example-microvm"
///   region    = "nyc3"
///   http_port = 8080
///   size = {
///     cpu    = 2
///     memory = 4096
///   }
///   source = {
///     oci_ref = "docker.io/library/nginx:latest"
///   }
///   auto_pause = {
///     enabled      = true
///     idle_timeout = "5m"
///   }
///   environment = {
///     "LOG_LEVEL" = "info"
///   }
///   tags = ["web"]
/// }
/// output "url" {
///   value = digitalocean_microvm.web.urls[0].hostname
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
/// import com.pulumi.digitalocean.inputs.MicrovmAutoPauseArgs;
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
///             .httpPort(8080)
///             .size(MicrovmSizeArgs.builder()
///                 .cpu(2)
///                 .memory(4096)
///                 .build())
///             .source(MicrovmSourceArgs.builder()
///                 .ociRef("docker.io/library/nginx:latest")
///                 .build())
///             .autoPause(MicrovmAutoPauseArgs.builder()
///                 .enabled(true)
///                 .idleTimeout("5m")
///                 .build())
///             .environment(Map.of("LOG_LEVEL", "info"))
///             .tags("web")
///             .build());
///
///         ctx.export("url", web.urls().applyValue(_urls -> _urls.get(0).hostname()));
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
///       httpPort: 8080
///       size:
///         cpu: 2
///         memory: 4096
///       source:
///         ociRef: docker.io/library/nginx:latest
///       autoPause:
///         enabled: true
///         idleTimeout: 5m
///       environment:
///         LOG_LEVEL: info
///       tags:
///         - web
/// outputs:
///   url: ${web.urls[0].hostname}
/// ```
///
///
/// ### Pause and Resume
///
/// Set `state` to `paused` to pause a running MicroVM, and back to `running` to
/// resume it. This is the only change that is applied in place; every other
/// argument forces a new MicroVM.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const worker = new digitalocean.Microvm("worker", {
///     name: "example-worker",
///     region: "nyc3",
///     state: "paused",
///     size: {
///         cpu: 1,
///         memory: 2048,
///     },
///     source: {
///         ociRef: "docker.io/library/alpine:latest",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// worker = digitalocean.Microvm("worker",
///     name="example-worker",
///     region="nyc3",
///     state="paused",
///     size={
///         "cpu": 1,
///         "memory": 2048,
///     },
///     source={
///         "oci_ref": "docker.io/library/alpine:latest",
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
///     var worker = new DigitalOcean.Microvm("worker", new()
///     {
///         Name = "example-worker",
///         Region = "nyc3",
///         State = "paused",
///         Size = new DigitalOcean.Inputs.MicrovmSizeArgs
///         {
///             Cpu = 1,
///             Memory = 2048,
///         },
///         Source = new DigitalOcean.Inputs.MicrovmSourceArgs
///         {
///             OciRef = "docker.io/library/alpine:latest",
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
/// 		_, err := digitalocean.NewMicrovm(ctx, "worker", &digitalocean.MicrovmArgs{
/// 			Name:   pulumi.String("example-worker"),
/// 			Region: pulumi.String("nyc3"),
/// 			State:  pulumi.String("paused"),
/// 			Size: &digitalocean.MicrovmSizeArgs{
/// 				Cpu:    pulumi.Int(1),
/// 				Memory: pulumi.Int(2048),
/// 			},
/// 			Source: &digitalocean.MicrovmSourceArgs{
/// 				OciRef: pulumi.String("docker.io/library/alpine:latest"),
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
/// terraform {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_microvm" "worker" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name   = "example-worker"
///   region = "nyc3"
///   state  = "paused"
///   size = {
///     cpu    = 1
///     memory = 2048
///   }
///   source = {
///     oci_ref = "docker.io/library/alpine:latest"
///   }
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
///         var worker = new Microvm("worker", MicrovmArgs.builder()
///             .name("example-worker")
///             .region("nyc3")
///             .state("paused")
///             .size(MicrovmSizeArgs.builder()
///                 .cpu(1)
///                 .memory(2048)
///                 .build())
///             .source(MicrovmSourceArgs.builder()
///                 .ociRef("docker.io/library/alpine:latest")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   worker:
///     type: digitalocean:Microvm
///     properties:
///       name: example-worker
///       region: nyc3
///       state: paused
///       size:
///         cpu: 1
///         memory: 2048
///       source:
///         ociRef: docker.io/library/alpine:latest
/// ```
///
///
/// ### Restore from a Checkpoint
///
/// When `source.checkpoint_id` is set, `region` and `size` may be omitted and are
/// inherited from the checkpoint.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const snapshot = new digitalocean.MicrovmCheckpoint("snapshot", {
///     microvmId: web.id,
///     name: "web-checkpoint",
/// });
/// const restored = new digitalocean.Microvm("restored", {
///     name: "example-restored",
///     source: {
///         checkpointId: snapshot.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// snapshot = digitalocean.MicrovmCheckpoint("snapshot",
///     microvm_id=web["id"],
///     name="web-checkpoint")
/// restored = digitalocean.Microvm("restored",
///     name="example-restored",
///     source={
///         "checkpoint_id": snapshot.id,
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
///     var snapshot = new DigitalOcean.MicrovmCheckpoint("snapshot", new()
///     {
///         MicrovmId = web.Id,
///         Name = "web-checkpoint",
///     });
///
///     var restored = new DigitalOcean.Microvm("restored", new()
///     {
///         Name = "example-restored",
///         Source = new DigitalOcean.Inputs.MicrovmSourceArgs
///         {
///             CheckpointId = snapshot.Id,
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
/// 		snapshot, err := digitalocean.NewMicrovmCheckpoint(ctx, "snapshot", &digitalocean.MicrovmCheckpointArgs{
/// 			MicrovmId: pulumi.Any(web.Id),
/// 			Name:      pulumi.String("web-checkpoint"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewMicrovm(ctx, "restored", &digitalocean.MicrovmArgs{
/// 			Name: pulumi.String("example-restored"),
/// 			Source: &digitalocean.MicrovmSourceArgs{
/// 				CheckpointId: snapshot.ID().ToIDOutput().ToStringOutput(),
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
/// terraform {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_microvm_checkpoint" "snapshot" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   microvm_id = web.id
///   name       = "web-checkpoint"
/// }
/// resource "digitalocean_microvm" "restored" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name = "example-restored"
///   source = {
///     checkpoint_id = digitalocean_microvm_checkpoint.snapshot.id
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.MicrovmCheckpoint;
/// import com.pulumi.digitalocean.MicrovmCheckpointArgs;
/// import com.pulumi.digitalocean.Microvm;
/// import com.pulumi.digitalocean.MicrovmArgs;
/// import com.pulumi.digitalocean.inputs.MicrovmSourceArgs;
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
///         var snapshot = new MicrovmCheckpoint("snapshot", MicrovmCheckpointArgs.builder()
///             .microvmId(web.get("id"))
///             .name("web-checkpoint")
///             .build());
///
///         var restored = new Microvm("restored", MicrovmArgs.builder()
///             .name("example-restored")
///             .source(MicrovmSourceArgs.builder()
///                 .checkpointId(snapshot.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   snapshot:
///     type: digitalocean:MicrovmCheckpoint
///     properties:
///       microvmId: ${web.id}
///       name: web-checkpoint
///   restored:
///     type: digitalocean:Microvm
///     properties:
///       name: example-restored
///       source:
///         checkpointId: ${snapshot.id}
/// ```
///
///
/// ## Import
///
/// A MicroVM can be imported using its `id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/microvm:Microvm web 506f78a4-e098-11e5-ad9f-000f53306ae1
/// ```
class Microvm extends pulumi.CustomResource {
  /// Auto-pause configuration. When omitted, the product default (enabled) applies.
  late final pulumi.Output<MicrovmAutoPause> autoPause;
  /// Whether the MicroVM resumes automatically on incoming HTTP traffic. When omitted, the product default (enabled) applies.
  late final pulumi.Output<bool> autoResume;
  /// The date and time the MicroVM was created.
  late final pulumi.Output<String> createdAt;
  /// The observed lifecycle state of the MicroVM, such as `running` or `paused`.
  late final pulumi.Output<String> currentState;
  /// The uniform resource name (URN) for the MicroVM.
  late final pulumi.Output<String> digitaloceanUrn;
  /// A map of environment variables to pass to the workload.
  late final pulumi.Output<Map<String, String>?> environment;
  /// A description of the failure when `currentState` is `failed`.
  late final pulumi.Output<String> failureReason;
  /// The port the workload serves HTTP on.
  late final pulumi.Output<int?> httpPort;
  /// The HTTP protocol the workload serves: `http` or `http2`.
  late final pulumi.Output<String> httpProtocol;
  /// The name of the MicroVM.
  late final pulumi.Output<String> name;
  /// The networking mode: `public` or `vpc`.
  late final pulumi.Output<String> networking;
  /// A list of guest ports to open for ingress. Defaults to `httpPort` only.
  late final pulumi.Output<List<int>> ports;
  /// The slug of the region to create the MicroVM in. Required when creating from `source.oci_ref`; inherited from the checkpoint when omitted on a restore.
  late final pulumi.Output<String> region;
  /// The compute size of the MicroVM. Required when creating from `source.oci_ref`; inherited from the checkpoint when omitted on a restore.
  late final pulumi.Output<MicrovmSize> size;
  /// What the MicroVM runs. Exactly one of the following must be set:
  late final pulumi.Output<MicrovmSource> source;
  /// The desired lifecycle state: `running` or `paused`. Defaults to `running`. When `autoPause` is enabled, a MicroVM that the platform has paused is not resumed to match `running`.
  late final pulumi.Output<String?> state;
  /// A list of tag names to apply to the MicroVM.
  late final pulumi.Output<List<String>?> tags;
  /// A list of ingress URLs for the MicroVM:
  late final pulumi.Output<List<MicrovmUrl>> urls;
  /// The ID of the VPC to place the MicroVM in. Only valid when `networking` is `vpc`.
  late final pulumi.Output<String> vpcUuid;

  /// Creates a new [Microvm].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Microvm]. {@macro pulumi_index_microvm_microvm_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Microvm(
    String name, {
    MicrovmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/microvm:Microvm',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.84.1').merge(options),
        ) {
    autoPause = registerOutput<MicrovmAutoPause>('autoPause', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmAutoPause.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoResume = registerOutput<bool>('autoResume');
    createdAt = registerOutput<String>('createdAt');
    currentState = registerOutput<String>('currentState');
    digitaloceanUrn = registerOutput<String>('digitaloceanUrn');
    environment = registerOutput<Map<String, String>?>('environment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    failureReason = registerOutput<String>('failureReason');
    httpPort = registerOutput<int?>('httpPort');
    httpProtocol = registerOutput<String>('httpProtocol');
    this.name = registerOutput<String>('name');
    networking = registerOutput<String>('networking');
    ports = registerOutput<List<int>>('ports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); });
    region = registerOutput<String>('region');
    size = registerOutput<MicrovmSize>('size', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmSize.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    source = registerOutput<MicrovmSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String?>('state');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    urls = registerOutput<List<MicrovmUrl>>('urls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MicrovmUrl>(guardedValue, (value) => MicrovmUrl.fromMap((value as Map).cast<String, dynamic>())); });
    vpcUuid = registerOutput<String>('vpcUuid');
  }

  /// Gets an existing [Microvm] resource's state with the given [name] and [id].
  static Microvm get(
    String name,
    pulumi.Input<String> id, {
    MicrovmState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Microvm._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Microvm._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/microvm:Microvm',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoPause = registerOutput<MicrovmAutoPause>('autoPause', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmAutoPause.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoResume = registerOutput<bool>('autoResume');
    createdAt = registerOutput<String>('createdAt');
    currentState = registerOutput<String>('currentState');
    digitaloceanUrn = registerOutput<String>('digitaloceanUrn');
    environment = registerOutput<Map<String, String>?>('environment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    failureReason = registerOutput<String>('failureReason');
    httpPort = registerOutput<int?>('httpPort');
    httpProtocol = registerOutput<String>('httpProtocol');
    this.name = registerOutput<String>('name');
    networking = registerOutput<String>('networking');
    ports = registerOutput<List<int>>('ports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); });
    region = registerOutput<String>('region');
    size = registerOutput<MicrovmSize>('size', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmSize.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    source = registerOutput<MicrovmSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.state = registerOutput<String?>('state');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    urls = registerOutput<List<MicrovmUrl>>('urls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MicrovmUrl>(guardedValue, (value) => MicrovmUrl.fromMap((value as Map).cast<String, dynamic>())); });
    vpcUuid = registerOutput<String>('vpcUuid');
  }

  /// Creates a typed reference to an existing [Microvm] resource.
  Microvm.reference(String urn)
    : super(
        'digitalocean:index/microvm:Microvm',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    autoPause = registerOutput<MicrovmAutoPause>('autoPause', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmAutoPause.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoResume = registerOutput<bool>('autoResume');
    createdAt = registerOutput<String>('createdAt');
    currentState = registerOutput<String>('currentState');
    digitaloceanUrn = registerOutput<String>('digitaloceanUrn');
    environment = registerOutput<Map<String, String>?>('environment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    failureReason = registerOutput<String>('failureReason');
    httpPort = registerOutput<int?>('httpPort');
    httpProtocol = registerOutput<String>('httpProtocol');
    this.name = registerOutput<String>('name');
    networking = registerOutput<String>('networking');
    ports = registerOutput<List<int>>('ports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); });
    region = registerOutput<String>('region');
    size = registerOutput<MicrovmSize>('size', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmSize.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    source = registerOutput<MicrovmSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String?>('state');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    urls = registerOutput<List<MicrovmUrl>>('urls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MicrovmUrl>(guardedValue, (value) => MicrovmUrl.fromMap((value as Map).cast<String, dynamic>())); });
    vpcUuid = registerOutput<String>('vpcUuid');
  }
}
