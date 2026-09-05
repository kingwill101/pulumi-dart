import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_args.dart';
import 'volume_cluster.dart';
import 'volume_label.dart';
import 'volume_state.dart';

/// &lt;!-- Bug: Type and Name are switched --&gt;
/// Creates and destroys a volume in Docker. This can be used alongside docker.Container to prepare volumes that can be shared across containers.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// const sharedVolume = new docker.Volume("shared_volume", {name: "shared_volume"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker as docker
///
/// shared_volume = docker.Volume("shared_volume", name="shared_volume")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sharedVolume = new Docker.Volume("shared_volume", new()
///     {
///         Name = "shared_volume",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker/sdk/v5/go/docker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := docker.NewVolume(ctx, "shared_volume", &docker.VolumeArgs{
/// 			Name: pulumi.String("shared_volume"),
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
///     docker = {
///       source = "pulumi/docker"
///     }
///   }
/// }
///
/// resource "docker_volume" "shared_volume" {
///   name = "shared_volume"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.docker.Volume;
/// import com.pulumi.docker.VolumeArgs;
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
///         var sharedVolume = new Volume("sharedVolume", VolumeArgs.builder()
///             .name("shared_volume")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sharedVolume:
///     type: docker:Volume
///     name: shared_volume
///     properties:
///       name: shared_volume
/// ```
///
///
/// ## Import
///
/// !/bin/bash
///
/// ```sh
/// $ pulumi import docker:index/volume:Volume foo id
/// ```
///
/// ### Example
///
/// Assuming you created a `volume` as follows
///
/// ```sh
/// #!/bin/bash
/// docker volume create
/// # prints the long ID
/// 524b0457aa2a87dd2b75c74c3e4e53f406974249e63ab3ed9bf21e5644f9dc7d
/// ```
///
/// you provide the definition for the resource as follows
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// const foo = new docker.Volume("foo", {name: "524b0457aa2a87dd2b75c74c3e4e53f406974249e63ab3ed9bf21e5644f9dc7d"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker as docker
///
/// foo = docker.Volume("foo", name="524b0457aa2a87dd2b75c74c3e4e53f406974249e63ab3ed9bf21e5644f9dc7d")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Docker.Volume("foo", new()
///     {
///         Name = "524b0457aa2a87dd2b75c74c3e4e53f406974249e63ab3ed9bf21e5644f9dc7d",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker/sdk/v5/go/docker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := docker.NewVolume(ctx, "foo", &docker.VolumeArgs{
/// 			Name: pulumi.String("524b0457aa2a87dd2b75c74c3e4e53f406974249e63ab3ed9bf21e5644f9dc7d"),
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
///     docker = {
///       source = "pulumi/docker"
///     }
///   }
/// }
///
/// resource "docker_volume" "foo" {
///   name = "524b0457aa2a87dd2b75c74c3e4e53f406974249e63ab3ed9bf21e5644f9dc7d"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.docker.Volume;
/// import com.pulumi.docker.VolumeArgs;
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
///         var foo = new Volume("foo", VolumeArgs.builder()
///             .name("524b0457aa2a87dd2b75c74c3e4e53f406974249e63ab3ed9bf21e5644f9dc7d")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: docker:Volume
///     properties:
///       name: 524b0457aa2a87dd2b75c74c3e4e53f406974249e63ab3ed9bf21e5644f9dc7d
/// ```
///
///
/// then the import command is as follows
///
/// !/bin/bash
///
/// ```sh
/// $ pulumi import docker:index/volume:Volume foo 524b0457aa2a87dd2b75c74c3e4e53f406974249e63ab3ed9bf21e5644f9dc7d
/// ```
class Volume extends pulumi.CustomResource {
  /// Cluster-specific options for volume creation. Only works if the Docker daemon is running in swarm mode and is the swarm manager.
  late final pulumi.Output<VolumeCluster?> cluster;
  /// Driver type for the volume. Defaults to `local`.
  late final pulumi.Output<String> driver;
  /// Options specific to the driver.
  late final pulumi.Output<Map<String, String>?> driverOpts;
  /// User-defined key/value metadata
  late final pulumi.Output<List<VolumeLabel>?> labels;
  /// The mountpoint of the volume.
  late final pulumi.Output<String> mountpoint;
  /// The name of the Docker volume (will be generated if not provided).
  late final pulumi.Output<String> name;

  /// Creates a new [Volume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Volume]. {@macro pulumi_index_volume_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Volume(
    String name, {
    VolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/volume:Volume',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '5.2.0').merge(options),
        ) {
    cluster = registerOutput<VolumeCluster?>('cluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeCluster.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    driver = registerOutput<String>('driver');
    driverOpts = registerOutput<Map<String, String>?>('driverOpts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    labels = registerOutput<List<VolumeLabel>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VolumeLabel>(guardedValue, (value) => VolumeLabel.fromMap((value as Map).cast<String, dynamic>())); });
    mountpoint = registerOutput<String>('mountpoint');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [Volume] resource's state with the given [name] and [id].
  static Volume get(
    String name,
    pulumi.Input<String> id, {
    VolumeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Volume._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Volume._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/volume:Volume',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cluster = registerOutput<VolumeCluster?>('cluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeCluster.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    driver = registerOutput<String>('driver');
    driverOpts = registerOutput<Map<String, String>?>('driverOpts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    labels = registerOutput<List<VolumeLabel>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VolumeLabel>(guardedValue, (value) => VolumeLabel.fromMap((value as Map).cast<String, dynamic>())); });
    mountpoint = registerOutput<String>('mountpoint');
    this.name = registerOutput<String>('name');
  }

  /// Creates a typed reference to an existing [Volume] resource.
  Volume.reference(String urn)
    : super(
        'docker:index/volume:Volume',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cluster = registerOutput<VolumeCluster?>('cluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeCluster.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    driver = registerOutput<String>('driver');
    driverOpts = registerOutput<Map<String, String>?>('driverOpts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    labels = registerOutput<List<VolumeLabel>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VolumeLabel>(guardedValue, (value) => VolumeLabel.fromMap((value as Map).cast<String, dynamic>())); });
    mountpoint = registerOutput<String>('mountpoint');
    this.name = registerOutput<String>('name');
  }
}
