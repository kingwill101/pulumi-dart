import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_image_args.dart';
import 'registry_image_auth_config.dart';
import 'registry_image_build.dart';
import 'registry_image_state.dart';

/// &lt;!-- Bug: Type and Name are switched --&gt;
/// Manages the lifecycle of docker image in a registry. You can upload images to a registry (= `docker push`) and also delete them again
///
/// ## Example Usage
///
/// Build an image with the `docker.RemoteImage` resource and then push it to a registry:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// const image = new docker.RemoteImage("image", {
///     name: "registry.com/somename:1.0",
///     build: {
///         context: `${process.cwd()}/absolutePathToContextFolder`,
///     },
/// });
/// const helloworld = new docker.RegistryImage("helloworld", {
///     name: image.name,
///     keepRemotely: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import os
/// import pulumi_docker as docker
///
/// image = docker.RemoteImage("image",
///     name="registry.com/somename:1.0",
///     build={
///         "context": f"{os.getcwd()}/absolutePathToContextFolder",
///     })
/// helloworld = docker.RegistryImage("helloworld",
///     name=image.name,
///     keep_remotely=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.IO;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new Docker.RemoteImage("image", new()
///     {
///         Name = "registry.com/somename:1.0",
///         Build = new Docker.Inputs.RemoteImageBuildArgs
///         {
///             Context = $"{Directory.GetCurrentDirectory()}/absolutePathToContextFolder",
///         },
///     });
///
///     var helloworld = new Docker.RegistryImage("helloworld", new()
///     {
///         Name = image.Name,
///         KeepRemotely = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"os"
///
/// 	"github.com/pulumi/pulumi-docker/sdk/v5/go/docker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		image, err := docker.NewRemoteImage(ctx, "image", &docker.RemoteImageArgs{
/// 			Name: pulumi.String("registry.com/somename:1.0"),
/// 			Build: &docker.RemoteImageBuildArgs{
/// 				Context: pulumi.Sprintf("%v/absolutePathToContextFolder", func(cwd string, err error) string {
/// 					if err != nil {
/// 						panic(err)
/// 					}
/// 					return cwd
/// 				}(os.Getwd())),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = docker.NewRegistryImage(ctx, "helloworld", &docker.RegistryImageArgs{
/// 			Name:         image.Name,
/// 			KeepRemotely: pulumi.Bool(true),
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
/// resource "docker_registryimage" "helloworld" {
///   name          = docker_remoteimage.image.name
///   keep_remotely = true
/// }
/// resource "docker_remoteimage" "image" {
///   name = "registry.com/somename:1.0"
///   build = {
///     context ="${path.cwd}/absolutePathToContextFolder"
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
/// import com.pulumi.docker.RegistryImage;
/// import com.pulumi.docker.RegistryImageArgs;
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
///         var image = new RemoteImage("image", RemoteImageArgs.builder()
///             .name("registry.com/somename:1.0")
///             .build(RemoteImageBuildArgs.builder()
///                 .context(String.format("%s/absolutePathToContextFolder", System.getProperty("user.dir")))
///                 .build())
///             .build());
///
///         var helloworld = new RegistryImage("helloworld", RegistryImageArgs.builder()
///             .name(image.name())
///             .keepRemotely(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   helloworld:
///     type: docker:RegistryImage
///     properties:
///       name: ${image.name}
///       keepRemotely: true
///   image:
///     type: docker:RemoteImage
///     properties:
///       name: registry.com/somename:1.0
///       build:
///         context: ${pulumi.cwd}/absolutePathToContextFolder
/// ```
class RegistryImage extends pulumi.CustomResource {
  /// Authentication configuration for the Docker registry. It is only used for this resource.
  late final pulumi.Output<RegistryImageAuthConfig?> authConfig;
  /// Configuration to build an image. Requires the `Use containerd for pulling and storing images` option to be disabled in the Docker Host(https://github.com/kreuzwerker/terraform-provider-docker/issues/534). Please see [docker build command reference](https://docs.docker.com/engine/reference/commandline/build/#options) too.
  late final pulumi.Output<RegistryImageBuild?> build;
  /// If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
  late final pulumi.Output<bool?> insecureSkipVerify;
  /// If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker registry on destroy operation. Defaults to `false`
  late final pulumi.Output<bool?> keepRemotely;
  /// The name of the Docker image.
  late final pulumi.Output<String> name;
  /// The sha256 digest of the image.
  late final pulumi.Output<String> sha256Digest;
  /// A map of arbitrary strings that, when changed, will force the `docker.RegistryImage` resource to be replaced. This can be used to repush a local image
  late final pulumi.Output<Map<String, String>?> triggers;

  /// Creates a new [RegistryImage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryImage]. {@macro pulumi_index_registry_image_registry_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryImage(
    String name, {
    RegistryImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/registryImage:RegistryImage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authConfig = registerOutput<RegistryImageAuthConfig?>('authConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryImageAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    build = registerOutput<RegistryImageBuild?>('build', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryImageBuild.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    insecureSkipVerify = registerOutput<bool?>('insecureSkipVerify');
    keepRemotely = registerOutput<bool?>('keepRemotely');
    this.name = registerOutput<String>('name');
    sha256Digest = registerOutput<String>('sha256Digest');
    triggers = registerOutput<Map<String, String>?>('triggers');
  }

  /// Gets an existing [RegistryImage] resource's state with the given [name] and [id].
  static RegistryImage get(
    String name,
    pulumi.Input<String> id, {
    RegistryImageState? state,
  }) {
    return RegistryImage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegistryImage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/registryImage:RegistryImage',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authConfig = registerOutput<RegistryImageAuthConfig?>('authConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryImageAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    build = registerOutput<RegistryImageBuild?>('build', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryImageBuild.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    insecureSkipVerify = registerOutput<bool?>('insecureSkipVerify');
    keepRemotely = registerOutput<bool?>('keepRemotely');
    this.name = registerOutput<String>('name');
    sha256Digest = registerOutput<String>('sha256Digest');
    triggers = registerOutput<Map<String, String>?>('triggers');
  }
}
