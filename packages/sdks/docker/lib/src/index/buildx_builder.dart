import 'package:pulumi/pulumi.dart' as pulumi;
import 'buildx_builder_args.dart';
import 'buildx_builder_docker_container.dart';
import 'buildx_builder_kubernetes.dart';
import 'buildx_builder_remote.dart';
import 'buildx_builder_state.dart';

/// &lt;!-- Bug: Type and Name are switched --&gt;
/// Manages a Docker Buildx builder instance. This resource allows you to create a  buildx builder with various configurations such as driver, nodes, and platform settings. Please see https://github.com/docker/buildx/blob/master/docs/reference/buildx_create.md for more documentation
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// const example = new docker.BuildxBuilder("example", {
///     name: "example-builder",
///     driver: "docker-container",
///     use: true,
///     dockerContainer: {
///         image: "moby/buildkit:latest",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker as docker
///
/// example = docker.BuildxBuilder("example",
///     name="example-builder",
///     driver="docker-container",
///     use=True,
///     docker_container={
///         "image": "moby/buildkit:latest",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Docker.BuildxBuilder("example", new()
///     {
///         Name = "example-builder",
///         Driver = "docker-container",
///         Use = true,
///         DockerContainer = new Docker.Inputs.BuildxBuilderDockerContainerArgs
///         {
///             Image = "moby/buildkit:latest",
///         },
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
/// 		_, err := docker.NewBuildxBuilder(ctx, "example", &docker.BuildxBuilderArgs{
/// 			Name:   pulumi.String("example-builder"),
/// 			Driver: pulumi.String("docker-container"),
/// 			Use:    pulumi.Bool(true),
/// 			DockerContainer: &docker.BuildxBuilderDockerContainerArgs{
/// 				Image: pulumi.String("moby/buildkit:latest"),
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
/// pulumi {
///   required_providers {
///     docker = {
///       source = "pulumi/docker"
///     }
///   }
/// }
///
/// resource "docker_buildxbuilder" "example" {
///   name   = "example-builder"
///   driver = "docker-container"
///   use    = true
///   docker_container = {
///     image = "moby/buildkit:latest"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.docker.BuildxBuilder;
/// import com.pulumi.docker.BuildxBuilderArgs;
/// import com.pulumi.docker.inputs.BuildxBuilderDockerContainerArgs;
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
///         var example = new BuildxBuilder("example", BuildxBuilderArgs.builder()
///             .name("example-builder")
///             .driver("docker-container")
///             .use(true)
///             .dockerContainer(BuildxBuilderDockerContainerArgs.builder()
///                 .image("moby/buildkit:latest")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: docker:BuildxBuilder
///     properties:
///       name: example-builder
///       driver: docker-container
///       use: true
///       dockerContainer:
///         image: moby/buildkit:latest
/// ```
class BuildxBuilder extends pulumi.CustomResource {
  /// Append a node to builder instead of changing it
  late final pulumi.Output<bool?> append;
  /// Automatically boot the builder after creation. Defaults to `false`
  late final pulumi.Output<bool?> bootstrap;
  /// BuildKit daemon config file
  late final pulumi.Output<String?> buildkitConfig;
  /// BuildKit flags to set for the builder.
  late final pulumi.Output<String?> buildkitFlags;
  /// Configuration block for the Docker-Container driver.
  late final pulumi.Output<BuildxBuilderDockerContainer?> dockerContainer;
  /// The driver to use for the Buildx builder (e.g., docker-container, kubernetes).
  late final pulumi.Output<String?> driver;
  /// Additional options for the Buildx driver in the form of `key=value,...`. These options are driver-specific.
  late final pulumi.Output<Map<String, String>?> driverOptions;
  /// The endpoint or context to use for the Buildx builder, where context is the name of a context from docker context ls and endpoint is the address for Docker socket (eg. DOCKER_HOST value). By default, the current Docker configuration is used for determining the context/endpoint value.
  late final pulumi.Output<String?> endpoint;
  /// Configuration block for the Kubernetes driver.
  late final pulumi.Output<BuildxBuilderKubernetes?> kubernetes;
  /// The name of the Buildx builder. IF not specified, a random name will be generated.
  late final pulumi.Output<String> name;
  /// Create/modify node with given name
  late final pulumi.Output<String?> node;
  /// Fixed platforms for current node
  late final pulumi.Output<List<String>?> platforms;
  /// Configuration block for the Remote driver.
  late final pulumi.Output<BuildxBuilderRemote?> remote;
  /// Set the current builder instance as the default for the current context.
  late final pulumi.Output<bool?> use;

  /// Creates a new [BuildxBuilder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BuildxBuilder]. {@macro pulumi_index_buildx_builder_buildx_builder_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BuildxBuilder(
    String name, {
    BuildxBuilderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/buildxBuilder:BuildxBuilder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '5.2.0').merge(options),
        ) {
    append = registerOutput<bool?>('append');
    bootstrap = registerOutput<bool?>('bootstrap');
    buildkitConfig = registerOutput<String?>('buildkitConfig');
    buildkitFlags = registerOutput<String?>('buildkitFlags');
    dockerContainer = registerOutput<BuildxBuilderDockerContainer?>('dockerContainer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuildxBuilderDockerContainer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    driver = registerOutput<String?>('driver');
    driverOptions = registerOutput<Map<String, String>?>('driverOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    endpoint = registerOutput<String?>('endpoint');
    kubernetes = registerOutput<BuildxBuilderKubernetes?>('kubernetes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuildxBuilderKubernetes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    node = registerOutput<String?>('node');
    platforms = registerOutput<List<String>?>('platforms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    remote = registerOutput<BuildxBuilderRemote?>('remote', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuildxBuilderRemote.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    use = registerOutput<bool?>('use');
  }

  /// Gets an existing [BuildxBuilder] resource's state with the given [name] and [id].
  static BuildxBuilder get(
    String name,
    pulumi.Input<String> id, {
    BuildxBuilderState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BuildxBuilder._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BuildxBuilder._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/buildxBuilder:BuildxBuilder',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    append = registerOutput<bool?>('append');
    bootstrap = registerOutput<bool?>('bootstrap');
    buildkitConfig = registerOutput<String?>('buildkitConfig');
    buildkitFlags = registerOutput<String?>('buildkitFlags');
    dockerContainer = registerOutput<BuildxBuilderDockerContainer?>('dockerContainer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuildxBuilderDockerContainer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    driver = registerOutput<String?>('driver');
    driverOptions = registerOutput<Map<String, String>?>('driverOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    endpoint = registerOutput<String?>('endpoint');
    kubernetes = registerOutput<BuildxBuilderKubernetes?>('kubernetes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuildxBuilderKubernetes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    node = registerOutput<String?>('node');
    platforms = registerOutput<List<String>?>('platforms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    remote = registerOutput<BuildxBuilderRemote?>('remote', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuildxBuilderRemote.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    use = registerOutput<bool?>('use');
  }

  /// Creates a typed reference to an existing [BuildxBuilder] resource.
  BuildxBuilder.reference(String urn)
    : super(
        'docker:index/buildxBuilder:BuildxBuilder',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    append = registerOutput<bool?>('append');
    bootstrap = registerOutput<bool?>('bootstrap');
    buildkitConfig = registerOutput<String?>('buildkitConfig');
    buildkitFlags = registerOutput<String?>('buildkitFlags');
    dockerContainer = registerOutput<BuildxBuilderDockerContainer?>('dockerContainer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuildxBuilderDockerContainer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    driver = registerOutput<String?>('driver');
    driverOptions = registerOutput<Map<String, String>?>('driverOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    endpoint = registerOutput<String?>('endpoint');
    kubernetes = registerOutput<BuildxBuilderKubernetes?>('kubernetes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuildxBuilderKubernetes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    node = registerOutput<String?>('node');
    platforms = registerOutput<List<String>?>('platforms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    remote = registerOutput<BuildxBuilderRemote?>('remote', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuildxBuilderRemote.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    use = registerOutput<bool?>('use');
  }
}
