import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_image_args.dart';
import 'remote_image_build.dart';
import 'remote_image_state.dart';

/// &lt;!-- Bug: Type and Name are switched --&gt;
/// Manages the lifecycle of a docker image in your docker host. It can be used to build a new docker image or to pull an existing one from a registry.
/// This resource will *not* pull new layers of the image automatically unless used in conjunction with docker.RegistryImage data source to update the `pullTriggers` field.
///
/// ## Example Usage
///
/// ### Basic
///
/// Finds and downloads the latest `ubuntu:precise` image but does not check
/// for further updates of the image
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// const ubuntu = new docker.RemoteImage("ubuntu", {name: "ubuntu:precise"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker as docker
///
/// ubuntu = docker.RemoteImage("ubuntu", name="ubuntu:precise")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ubuntu = new Docker.RemoteImage("ubuntu", new()
///     {
///         Name = "ubuntu:precise",
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
/// 		_, err := docker.NewRemoteImage(ctx, "ubuntu", &docker.RemoteImageArgs{
/// 			Name: pulumi.String("ubuntu:precise"),
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
/// resource "docker_remoteimage" "ubuntu" {
///   name = "ubuntu:precise"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.docker.RemoteImage;
/// import com.pulumi.docker.RemoteImageArgs;
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
///         var ubuntu = new RemoteImage("ubuntu", RemoteImageArgs.builder()
///             .name("ubuntu:precise")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ubuntu:
///     type: docker:RemoteImage
///     properties:
///       name: ubuntu:precise
/// ```
///
///
/// ### Dynamic updates
///
/// To be able to update an image dynamically when the `sha256` sum changes,
/// you need to use it in combination with `docker.RegistryImage` as follows:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// const ubuntu = docker.getRegistryImage({
///     name: "ubuntu:precise",
/// });
/// const ubuntuRemoteImage = new docker.RemoteImage("ubuntu", {
///     name: ubuntu.then(ubuntu => ubuntu.name),
///     pullTriggers: [ubuntu.then(ubuntu => ubuntu.sha256Digest)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker as docker
///
/// ubuntu = docker.get_registry_image(name="ubuntu:precise")
/// ubuntu_remote_image = docker.RemoteImage("ubuntu",
///     name=ubuntu.name,
///     pull_triggers=[ubuntu.sha256_digest])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ubuntu = Docker.GetRegistryImage.Invoke(new()
///     {
///         Name = "ubuntu:precise",
///     });
///
///     var ubuntuRemoteImage = new Docker.RemoteImage("ubuntu", new()
///     {
///         Name = ubuntu.Apply(getRegistryImageResult => getRegistryImageResult.Name),
///         PullTriggers = new[]
///         {
///             ubuntu.Apply(getRegistryImageResult => getRegistryImageResult.Sha256Digest),
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
/// 		ubuntu, err := docker.GetRegistryImage(ctx, &docker.LookupRegistryImageArgs{
/// 			Name: "ubuntu:precise",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = docker.NewRemoteImage(ctx, "ubuntu", &docker.RemoteImageArgs{
/// 			Name: pulumi.String(ubuntu.Name),
/// 			PullTriggers: pulumi.StringArray{
/// 				pulumi.String(ubuntu.Sha256Digest),
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
/// data "docker_getregistryimage" "ubuntu" {
///   name = "ubuntu:precise"
/// }
///
/// resource "docker_remoteimage" "ubuntu" {
///   name          = data.docker_getregistryimage.ubuntu.name
///   pull_triggers = [data.docker_getregistryimage.ubuntu.sha256_digest]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.docker.DockerFunctions;
/// import com.pulumi.docker.inputs.GetRegistryImageArgs;
/// import com.pulumi.docker.RemoteImage;
/// import com.pulumi.docker.RemoteImageArgs;
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
///         final var ubuntu = DockerFunctions.getRegistryImage(GetRegistryImageArgs.builder()
///             .name("ubuntu:precise")
///             .build());
///
///         var ubuntuRemoteImage = new RemoteImage("ubuntuRemoteImage", RemoteImageArgs.builder()
///             .name(ubuntu.name())
///             .pullTriggers(ubuntu.sha256Digest())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ubuntuRemoteImage:
///     type: docker:RemoteImage
///     name: ubuntu
///     properties:
///       name: ${ubuntu.name}
///       pullTriggers:
///         - ${ubuntu.sha256Digest}
/// variables:
///   ubuntu:
///     fn::invoke:
///       function: docker:getRegistryImage
///       arguments:
///         name: ubuntu:precise
/// ```
///
///
/// ## Build
///
/// You can also use the resource to build an image. If you want to use a buildx builder with all of its features, please read the section below.
///
/// &gt; **Note**: The default timeout for the building is 20 minutes. If you need to increase this, you can use operation timeouts.
///
/// In this case the image "zoo" and "zoo:develop" are built.
/// The `context` path is resolved on the machine running Terraform (relative paths are relative to the current working directory, i.e. `path.cwd`).
/// If `dockerfile` is not an absolute path, it is resolved relative to `context`.
/// There is no need to copy the files to remote hosts before creating the resource.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// const zoo = new docker.RemoteImage("zoo", {
///     name: "zoo",
///     build: {
///         context: ".",
///         tags: ["zoo:develop"],
///         buildArgs: {
///             foo: "zoo",
///         },
///         label: {
///             author: "zoo",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker as docker
///
/// zoo = docker.RemoteImage("zoo",
///     name="zoo",
///     build={
///         "context": ".",
///         "tags": ["zoo:develop"],
///         "build_args": {
///             "foo": "zoo",
///         },
///         "label": {
///             "author": "zoo",
///         },
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
///     var zoo = new Docker.RemoteImage("zoo", new()
///     {
///         Name = "zoo",
///         Build = new Docker.Inputs.RemoteImageBuildArgs
///         {
///             Context = ".",
///             Tags = new[]
///             {
///                 "zoo:develop",
///             },
///             BuildArgs =
///             {
///                 { "foo", "zoo" },
///             },
///             Label =
///             {
///                 { "author", "zoo" },
///             },
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
/// 		_, err := docker.NewRemoteImage(ctx, "zoo", &docker.RemoteImageArgs{
/// 			Name: pulumi.String("zoo"),
/// 			Build: &docker.RemoteImageBuildArgs{
/// 				Context: pulumi.String("."),
/// 				Tags: pulumi.StringArray{
/// 					pulumi.String("zoo:develop"),
/// 				},
/// 				BuildArgs: pulumi.StringMap{
/// 					"foo": pulumi.String("zoo"),
/// 				},
/// 				Label: pulumi.StringMap{
/// 					"author": pulumi.String("zoo"),
/// 				},
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
/// resource "docker_remoteimage" "zoo" {
///   name = "zoo"
///   build = {
///     context = "."
///     tags    = ["zoo:develop"]
///     build_args = {
///       "foo" = "zoo"
///     }
///     label = {
///       "author" = "zoo"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.docker.RemoteImage;
/// import com.pulumi.docker.RemoteImageArgs;
/// import com.pulumi.docker.inputs.RemoteImageBuildArgs;
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
///         var zoo = new RemoteImage("zoo", RemoteImageArgs.builder()
///             .name("zoo")
///             .build(RemoteImageBuildArgs.builder()
///                 .context(".")
///                 .tags("zoo:develop")
///                 .buildArgs(Map.of("foo", "zoo"))
///                 .label(Map.of("author", "zoo"))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   zoo:
///     type: docker:RemoteImage
///     properties:
///       name: zoo
///       build:
///         context: .
///         tags:
///           - zoo:develop
///         buildArgs:
///           foo: zoo
///         label:
///           author: zoo
/// ```
///
///
/// You can use the `triggers` argument to specify when the image should be rebuild. This is for example helpful when you want to rebuild the docker image whenever the source code changes.
class RemoteImage extends pulumi.CustomResource {
  /// Configuration to build an image. Requires the `Use containerd for pulling and storing images` option to be disabled in the Docker Host(https://github.com/kreuzwerker/terraform-provider-docker/issues/534). Please see [docker build command reference](https://docs.docker.com/engine/reference/commandline/build/#options) too.
  late final pulumi.Output<RemoteImageBuild?> build;
  /// If true, then the image is removed forcibly when the resource is destroyed.
  late final pulumi.Output<bool?> forceRemove;
  /// The ID of the image (as seen when executing `docker inspect` on the image). Can be used to reference the image via its ID in other resources.
  late final pulumi.Output<String> imageId;
  /// If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker local storage on destroy operation.
  late final pulumi.Output<bool?> keepLocally;
  /// The name of the Docker image, including any tags or SHA256 repo digests.
  late final pulumi.Output<String> name;
  /// The platform to use when pulling the image. Defaults to the platform of the current machine.
  late final pulumi.Output<String?> platform;
  /// List of values which cause an image pull when changed. This is used to store the image digest from the registry when using the docker*registry*image.
  late final pulumi.Output<List<String>?> pullTriggers;
  /// The image sha256 digest in the form of `repo[:tag]@sha256:&lt;hash&gt;`. This may not be populated when building an image, because it is read from the local Docker client and so may be available only when the image was either pulled from the repo or pushed to the repo (perhaps using `docker.RegistryImage`) in a previous run.
  late final pulumi.Output<String> repoDigest;
  /// A map of arbitrary strings that, when changed, will force the `docker.RemoteImage` resource to be replaced. This can be used to rebuild an image when contents of source code folders change
  late final pulumi.Output<Map<String, String>?> triggers;

  /// Creates a new [RemoteImage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RemoteImage]. {@macro pulumi_index_remote_image_remote_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RemoteImage(
    String name, {
    RemoteImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/remoteImage:RemoteImage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '5.2.0').merge(options),
        ) {
    build = registerOutput<RemoteImageBuild?>('build', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RemoteImageBuild.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forceRemove = registerOutput<bool?>('forceRemove');
    imageId = registerOutput<String>('imageId');
    keepLocally = registerOutput<bool?>('keepLocally');
    this.name = registerOutput<String>('name');
    platform = registerOutput<String?>('platform');
    pullTriggers = registerOutput<List<String>?>('pullTriggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    repoDigest = registerOutput<String>('repoDigest');
    triggers = registerOutput<Map<String, String>?>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [RemoteImage] resource's state with the given [name] and [id].
  static RemoteImage get(
    String name,
    pulumi.Input<String> id, {
    RemoteImageState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RemoteImage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RemoteImage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/remoteImage:RemoteImage',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    build = registerOutput<RemoteImageBuild?>('build', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RemoteImageBuild.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forceRemove = registerOutput<bool?>('forceRemove');
    imageId = registerOutput<String>('imageId');
    keepLocally = registerOutput<bool?>('keepLocally');
    this.name = registerOutput<String>('name');
    platform = registerOutput<String?>('platform');
    pullTriggers = registerOutput<List<String>?>('pullTriggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    repoDigest = registerOutput<String>('repoDigest');
    triggers = registerOutput<Map<String, String>?>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [RemoteImage] resource.
  RemoteImage.reference(String urn)
    : super(
        'docker:index/remoteImage:RemoteImage',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    build = registerOutput<RemoteImageBuild?>('build', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RemoteImageBuild.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forceRemove = registerOutput<bool?>('forceRemove');
    imageId = registerOutput<String>('imageId');
    keepLocally = registerOutput<bool?>('keepLocally');
    this.name = registerOutput<String>('name');
    platform = registerOutput<String?>('platform');
    pullTriggers = registerOutput<List<String>?>('pullTriggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    repoDigest = registerOutput<String>('repoDigest');
    triggers = registerOutput<Map<String, String>?>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
