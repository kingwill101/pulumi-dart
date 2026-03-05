import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_context.dart';
import 'builder_config.dart';
import 'dockerfile.dart';
import 'image_args.dart';
import 'network_mode.dart';
import 'platform.dart';

/// A Docker image built using buildx -- Docker's interface to the improved
/// BuildKit backend.
///
/// ## Stability
///
/// **This resource is pre-1.0 and in public preview.**
///
/// We will strive to keep APIs and behavior as stable as possible, but we
/// cannot guarantee stability until version 1.0.
///
/// ## Migrating Pulumi Docker v3 and v4 Image resources
///
/// This provider's `Image` resource provides a superset of functionality over the `Image` resources available in versions 3 and 4 of the Pulumi Docker provider.
/// Existing `Image` resources can be converted to the docker-build `Image` resources with minor modifications.
///
/// ### Behavioral differences
///
/// There are several key behavioral differences to keep in mind when transitioning images to the new `Image` resource.
///
/// #### Previews
///
/// Version `3.x` of the Pulumi Docker provider always builds images during preview operations.
/// This is helpful as a safeguard to prevent "broken" images from merging, but users found the behavior unnecessarily redundant when running previews and updates locally.
///
/// Version `4.x` changed build-on-preview behavior to be opt-in.
/// By default, `v4.x` `Image` resources do _not_ build during previews, but this behavior can be toggled with the `buildOnPreview` option.
/// Several users reported outages due to the default behavior allowing bad images to accidentally sneak through CI.
///
/// The default behavior of this provider's `Image` resource is similar to `3.x` and will build images during previews.
/// This behavior can be changed by specifying `buildOnPreview`.
///
/// #### Push behavior
///
/// Versions `3.x` and `4.x` of the Pulumi Docker provider attempt to push images to remote registries by default.
/// They expose a `skipPush: true` option to disable pushing.
///
/// This provider's `Image` resource matches the Docker CLI's behavior and does not push images anywhere by default.
///
/// To push images to a registry you can include `push: true` (equivalent to Docker's `--push` flag) or configure an `export` of type `registry` (equivalent to Docker's `--output type=registry`).
/// Like Docker, if an image is configured without exports you will see a warning with instructions for how to enable pushing, but the build will still proceed normally.
///
/// #### Secrets
///
/// Version `3.x` of the Pulumi Docker provider supports secrets by way of the `extraOptions` field.
///
/// Version `4.x` of the Pulumi Docker provider does not support secrets.
///
/// The `Image` resource supports secrets but does not require those secrets to exist on-disk or in environment variables.
/// Instead, they should be passed directly as values.
/// (Please be sure to familiarize yourself with Pulumi's [native secret handling](https://www.pulumi.com/docs/concepts/secrets/).)
/// Pulumi also provides [ESC](https://www.pulumi.com/product/esc/) to make it easier to share secrets across stacks and environments.
///
/// #### Caching
///
/// Version `3.x` of the Pulumi Docker provider exposes `cacheFrom: bool | { stages: [...] }`.
/// It builds targets individually and pushes them to separate images for caching.
///
/// Version `4.x` exposes a similar parameter `cacheFrom: { images: [...] }` which pushes and pulls inline caches.
///
/// Both versions 3 and 4 require specific environment variables to be set and deviate from Docker's native caching behavior.
/// This can result in inefficient builds due to unnecessary image pulls, repeated file transfers, etc.
///
/// The `Image` resource delegates all caching behavior to Docker.
/// `cacheFrom` and `cacheTo` options (equivalent to Docker's `--cache-to` and `--cache-from`) are exposed and provide additional cache targets, such as local disk, S3 storage, etc.
///
/// #### Outputs
///
/// Versions `3.x` and `4.x` of the provider exposed a `repoDigest` output which was a fully qualified tag with digest.
/// In `4.x` this could also be a single sha256 hash if the image wasn't pushed.
///
/// Unlike earlier providers the `Image` resource can push multiple tags.
/// As a convenience, it exposes a `ref` output consisting of a tag with digest as long as the image was pushed.
/// If multiple tags were pushed this uses one at random.
///
/// If you need more control over tag references you can use the `digest` output, which is always a single sha256 hash as long as the image was exported somewhere.
///
/// #### Tag deletion and refreshes
///
/// Versions 3 and 4 of Pulumi Docker provider do not delete tags when the `Image` resource is deleted, nor do they confirm expected tags exist during `refresh` operations.
///
/// The `buidx.Image` will query your registries during `refresh` to ensure the expected tags exist.
/// If any are missing a subsequent `update` will push them.
///
/// When a `Image` is deleted, it will _attempt_ to also delete any pushed tags.
/// Deletion of remote tags is not guaranteed because not all registries support the manifest `DELETE` API (`docker.io` in particular).
/// Manifests are _not_ deleted in the same way during updates -- to do so safely would require a full build to determine whether a Pulumi operation should be an update or update-replace.
///
/// Use the [`retainOnDelete: true`](https://www.pulumi.com/docs/concepts/options/retainondelete/) option if you do not want tags deleted.
///
/// ### Example migration
///
/// Examples of "fully-featured" `v3` and `v4` `Image` resources are shown below, along with an example `Image` resource showing how they would look after migration.
///
/// The `v3` resource leverages `buildx` via a `DOCKER_BUILDKIT` environment variable and CLI flags passed in with `extraOption`.
/// After migration, the environment variable is no longer needed and CLI flags are now properties on the `Image`.
/// In almost all cases, properties of `Image` are named after the Docker CLI flag they correspond to.
///
/// The `v4` resource is less functional than its `v3` counterpart because it lacks the flexibility of `extraOptions`.
/// It it is shown with parameters similar to the `v3` example for completeness.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### v3/v4 migration
///
/// ```typescript
///
/// // v3 Image
/// const v3 = new docker.Image("v3-image", {
///   imageName: "myregistry.com/user/repo:latest",
///   localImageName: "local-tag",
///   skipPush: false,
///   build: {
///     dockerfile: "./Dockerfile",
///     context: "../app",
///     target: "mytarget",
///     args: {
///       MY_BUILD_ARG: "foo",
///     },
///     env: {
///       DOCKER_BUILDKIT: "1",
///     },
///     extraOptions: [
///       "--cache-from",
///       "type=registry,myregistry.com/user/repo:cache",
///       "--cache-to",
///       "type=registry,myregistry.com/user/repo:cache",
///       "--add-host",
///       "metadata.google.internal:169.254.169.254",
///       "--secret",
///       "id=mysecret,src=/local/secret",
///       "--ssh",
///       "default=/home/runner/.ssh/id_ed25519",
///       "--network",
///       "host",
///       "--platform",
///       "linux/amd64",
///     ],
///   },
///   registry: {
///     server: "myregistry.com",
///     username: "username",
///     password: pulumi.secret("password"),
///   },
/// });
///
/// // v3 Image after migrating to docker-build.Image
/// const v3Migrated = new dockerbuild.Image("v3-to-buildx", {
///     tags: ["myregistry.com/user/repo:latest", "local-tag"],
///     push: true,
///     dockerfile: {
///         location: "./Dockerfile",
///     },
///     context: {
///         location: "../app",
///     },
///     target: "mytarget",
///     buildArgs: {
///         MY_BUILD_ARG: "foo",
///     },
///     cacheFrom: [{ registry: { ref: "myregistry.com/user/repo:cache" } }],
///     cacheTo: [{ registry: { ref: "myregistry.com/user/repo:cache" } }],
///     secrets: {
///         mysecret: "value",
///     },
///     addHosts: ["metadata.google.internal:169.254.169.254"],
///     ssh: {
///         default: ["/home/runner/.ssh/id_ed25519"],
///     },
///     network: "host",
///     platforms: ["linux/amd64"],
///     registries: [{
///         address: "myregistry.com",
///         username: "username",
///         password: pulumi.secret("password"),
///     }],
/// });
///
///
/// // v4 Image
/// const v4 = new docker.Image("v4-image", {
///     imageName: "myregistry.com/user/repo:latest",
///     skipPush: false,
///     build: {
///         dockerfile: "./Dockerfile",
///         context: "../app",
///         target: "mytarget",
///         args: {
///             MY_BUILD_ARG: "foo",
///         },
///         cacheFrom: {
///             images: ["myregistry.com/user/repo:cache"],
///         },
///         addHosts: ["metadata.google.internal:169.254.169.254"],
///         network: "host",
///         platform: "linux/amd64",
///     },
///     buildOnPreview: true,
///     registry: {
///         server: "myregistry.com",
///         username: "username",
///         password: pulumi.secret("password"),
///     },
/// });
///
/// // v4 Image after migrating to docker-build.Image
/// const v4Migrated = new dockerbuild.Image("v4-to-buildx", {
///     tags: ["myregistry.com/user/repo:latest"],
///     push: true,
///     dockerfile: {
///         location: "./Dockerfile",
///     },
///     context: {
///         location: "../app",
///     },
///     target: "mytarget",
///     buildArgs: {
///         MY_BUILD_ARG: "foo",
///     },
///     cacheFrom: [{ registry: { ref: "myregistry.com/user/repo:cache" } }],
///     cacheTo: [{ registry: { ref: "myregistry.com/user/repo:cache" } }],
///     addHosts: ["metadata.google.internal:169.254.169.254"],
///     network: "host",
///     platforms: ["linux/amd64"],
///     registries: [{
///         address: "myregistry.com",
///         username: "username",
///         password: pulumi.secret("password"),
///     }],
/// });
///
/// ```
///
/// {{% /example %}}
///
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Push to AWS ECR with caching
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as docker_build from "@pulumi/docker-build";
///
/// const ecrRepository = new aws.ecr.Repository("ecr-repository", {});
/// const authToken = aws.ecr.getAuthorizationTokenOutput({
///     registryId: ecrRepository.registryId,
/// });
/// const myImage = new docker_build.Image("my-image", {
///     cacheFrom: [{
///         registry: {
///             ref: pulumi.interpolate`${ecrRepository.repositoryUrl}:cache`,
///         },
///     }],
///     cacheTo: [{
///         registry: {
///             imageManifest: true,
///             ociMediaTypes: true,
///             ref: pulumi.interpolate`${ecrRepository.repositoryUrl}:cache`,
///         },
///     }],
///     context: {
///         location: "./app",
///     },
///     push: true,
///     registries: [{
///         address: ecrRepository.repositoryUrl,
///         password: authToken.apply(authToken => authToken.password),
///         username: authToken.apply(authToken => authToken.userName),
///     }],
///     tags: [pulumi.interpolate`${ecrRepository.repositoryUrl}:latest`],
/// });
/// export const ref = myImage.ref;
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_docker_build as docker_build
///
/// ecr_repository = aws.ecr.Repository("ecr-repository")
/// auth_token = aws.ecr.get_authorization_token_output(registry_id=ecr_repository.registry_id)
/// my_image = docker_build.Image("my-image",
///     cache_from=[{
///         "registry": {
///             "ref": ecr_repository.repository_url.apply(lambda repository_url: f"{repository_url}:cache"),
///         },
///     }],
///     cache_to=[{
///         "registry": {
///             "image_manifest": True,
///             "oci_media_types": True,
///             "ref": ecr_repository.repository_url.apply(lambda repository_url: f"{repository_url}:cache"),
///         },
///     }],
///     context={
///         "location": "./app",
///     },
///     push=True,
///     registries=[{
///         "address": ecr_repository.repository_url,
///         "password": auth_token.password,
///         "username": auth_token.user_name,
///     }],
///     tags=[ecr_repository.repository_url.apply(lambda repository_url: f"{repository_url}:latest")])
/// pulumi.export("ref", my_image.ref)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using DockerBuild = Pulumi.DockerBuild;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ecrRepository = new Aws.Ecr.Repository("ecr-repository");
///
///     var authToken = Aws.Ecr.GetAuthorizationToken.Invoke(new()
///     {
///         RegistryId = ecrRepository.RegistryId,
///     });
///
///     var myImage = new DockerBuild.Image("my-image", new()
///     {
///         CacheFrom = new[]
///         {
///             new DockerBuild.Inputs.CacheFromArgs
///             {
///                 Registry = new DockerBuild.Inputs.CacheFromRegistryArgs
///                 {
///                     Ref = ecrRepository.RepositoryUrl.Apply(repositoryUrl => $"{repositoryUrl}:cache"),
///                 },
///             },
///         },
///         CacheTo = new[]
///         {
///             new DockerBuild.Inputs.CacheToArgs
///             {
///                 Registry = new DockerBuild.Inputs.CacheToRegistryArgs
///                 {
///                     ImageManifest = true,
///                     OciMediaTypes = true,
///                     Ref = ecrRepository.RepositoryUrl.Apply(repositoryUrl => $"{repositoryUrl}:cache"),
///                 },
///             },
///         },
///         Context = new DockerBuild.Inputs.BuildContextArgs
///         {
///             Location = "./app",
///         },
///         Push = true,
///         Registries = new[]
///         {
///             new DockerBuild.Inputs.RegistryArgs
///             {
///                 Address = ecrRepository.RepositoryUrl,
///                 Password = authToken.Apply(getAuthorizationTokenResult => getAuthorizationTokenResult.Password),
///                 Username = authToken.Apply(getAuthorizationTokenResult => getAuthorizationTokenResult.UserName),
///             },
///         },
///         Tags = new[]
///         {
///             ecrRepository.RepositoryUrl.Apply(repositoryUrl => $"{repositoryUrl}:latest"),
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ref"] = myImage.Ref,
///     };
/// });
///
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v6/go/aws/ecr"
/// 	"github.com/pulumi/pulumi-docker-build/sdk/go/dockerbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ecrRepository, err := ecr.NewRepository(ctx, "ecr-repository", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		authToken := ecr.GetAuthorizationTokenOutput(ctx, ecr.GetAuthorizationTokenOutputArgs{
/// 			RegistryId: ecrRepository.RegistryId,
/// 		}, nil)
/// 		myImage, err := dockerbuild.NewImage(ctx, "my-image", &dockerbuild.ImageArgs{
/// 			CacheFrom: dockerbuild.CacheFromArray{
/// 				&dockerbuild.CacheFromArgs{
/// 					Registry: &dockerbuild.CacheFromRegistryArgs{
/// 						Ref: ecrRepository.RepositoryUrl.ApplyT(func(repositoryUrl string) (string, error) {
/// 							return fmt.Sprintf("%v:cache", repositoryUrl), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 			CacheTo: dockerbuild.CacheToArray{
/// 				&dockerbuild.CacheToArgs{
/// 					Registry: &dockerbuild.CacheToRegistryArgs{
/// 						ImageManifest: pulumi.Bool(true),
/// 						OciMediaTypes: pulumi.Bool(true),
/// 						Ref: ecrRepository.RepositoryUrl.ApplyT(func(repositoryUrl string) (string, error) {
/// 							return fmt.Sprintf("%v:cache", repositoryUrl), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 			Context: &dockerbuild.BuildContextArgs{
/// 				Location: pulumi.String("./app"),
/// 			},
/// 			Push: pulumi.Bool(true),
/// 			Registries: dockerbuild.RegistryArray{
/// 				&dockerbuild.RegistryArgs{
/// 					Address: ecrRepository.RepositoryUrl,
/// 					Password: authToken.ApplyT(func(authToken ecr.GetAuthorizationTokenResult) (*string, error) {
/// 						return &authToken.Password, nil
/// 					}).(pulumi.StringPtrOutput),
/// 					Username: authToken.ApplyT(func(authToken ecr.GetAuthorizationTokenResult) (*string, error) {
/// 						return &authToken.UserName, nil
/// 					}).(pulumi.StringPtrOutput),
/// 				},
/// 			},
/// 			Tags: pulumi.StringArray{
/// 				ecrRepository.RepositoryUrl.ApplyT(func(repositoryUrl string) (string, error) {
/// 					return fmt.Sprintf("%v:latest", repositoryUrl), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ref", myImage.Ref)
/// 		return nil
/// 	})
/// }
/// ```
/// ```yaml
/// description: Push to AWS ECR with caching
/// name: ecr
/// outputs:
///     ref: ${my-image.ref}
/// resources:
///     ecr-repository:
///         type: aws:ecr:Repository
///     my-image:
///         properties:
///             cacheFrom:
///                 - registry:
///                     ref: ${ecr-repository.repositoryUrl}:cache
///             cacheTo:
///                 - registry:
///                     imageManifest: true
///                     ociMediaTypes: true
///                     ref: ${ecr-repository.repositoryUrl}:cache
///             context:
///                 location: ./app
///             push: true
///             registries:
///                 - address: ${ecr-repository.repositoryUrl}
///                   password: ${auth-token.password}
///                   username: ${auth-token.userName}
///             tags:
///                 - ${ecr-repository.repositoryUrl}:latest
///         type: docker-build:Image
/// runtime: yaml
/// variables:
///     auth-token:
///         fn::aws:ecr:getAuthorizationToken:
///             registryId: ${ecr-repository.registryId}
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecr.Repository;
/// import com.pulumi.aws.ecr.EcrFunctions;
/// import com.pulumi.aws.ecr.inputs.GetAuthorizationTokenArgs;
/// import com.pulumi.dockerbuild.Image;
/// import com.pulumi.dockerbuild.ImageArgs;
/// import com.pulumi.dockerbuild.inputs.CacheFromArgs;
/// import com.pulumi.dockerbuild.inputs.CacheFromRegistryArgs;
/// import com.pulumi.dockerbuild.inputs.CacheToArgs;
/// import com.pulumi.dockerbuild.inputs.CacheToRegistryArgs;
/// import com.pulumi.dockerbuild.inputs.BuildContextArgs;
/// import com.pulumi.dockerbuild.inputs.RegistryArgs;
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
///         var ecrRepository = new Repository("ecrRepository");
///
///         final var authToken = EcrFunctions.getAuthorizationToken(GetAuthorizationTokenArgs.builder()
///             .registryId(ecrRepository.registryId())
///             .build());
///
///         var myImage = new Image("myImage", ImageArgs.builder()
///             .cacheFrom(CacheFromArgs.builder()
///                 .registry(CacheFromRegistryArgs.builder()
///                     .ref(ecrRepository.repositoryUrl().applyValue(repositoryUrl -> String.format("%s:cache", repositoryUrl)))
///                     .build())
///                 .build())
///             .cacheTo(CacheToArgs.builder()
///                 .registry(CacheToRegistryArgs.builder()
///                     .imageManifest(true)
///                     .ociMediaTypes(true)
///                     .ref(ecrRepository.repositoryUrl().applyValue(repositoryUrl -> String.format("%s:cache", repositoryUrl)))
///                     .build())
///                 .build())
///             .context(BuildContextArgs.builder()
///                 .location("./app")
///                 .build())
///             .push(true)
///             .registries(RegistryArgs.builder()
///                 .address(ecrRepository.repositoryUrl())
///                 .password(authToken.applyValue(getAuthorizationTokenResult -> getAuthorizationTokenResult).applyValue(authToken -> authToken.applyValue(getAuthorizationTokenResult -> getAuthorizationTokenResult.password())))
///                 .username(authToken.applyValue(getAuthorizationTokenResult -> getAuthorizationTokenResult).applyValue(authToken -> authToken.applyValue(getAuthorizationTokenResult -> getAuthorizationTokenResult.userName())))
///                 .build())
///             .tags(ecrRepository.repositoryUrl().applyValue(repositoryUrl -> String.format("%s:latest", repositoryUrl)))
///             .build());
///
///         ctx.export("ref", myImage.ref());
///     }
/// }
/// ```
/// {{% /example %}}
/// {{% example %}}
/// ### Multi-platform image
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker_build from "@pulumi/docker-build";
///
/// const image = new docker_build.Image("image", {
///     context: {
///         location: "app",
///     },
///     platforms: [
///         docker_build.Platform.Plan9_amd64,
///         docker_build.Platform.Plan9_386,
///     ],
///     push: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker_build as docker_build
///
/// image = docker_build.Image("image",
///     context={
///         "location": "app",
///     },
///     platforms=[
///         docker_build.Platform.PLAN9_AMD64,
///         docker_build.Platform.PLAN9_386,
///     ],
///     push=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DockerBuild = Pulumi.DockerBuild;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new DockerBuild.Image("image", new()
///     {
///         Context = new DockerBuild.Inputs.BuildContextArgs
///         {
///             Location = "app",
///         },
///         Platforms = new[]
///         {
///             DockerBuild.Platform.Plan9_amd64,
///             DockerBuild.Platform.Plan9_386,
///         },
///         Push = false,
///     });
///
/// });
///
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker-build/sdk/go/dockerbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dockerbuild.NewImage(ctx, "image", &dockerbuild.ImageArgs{
/// 			Context: &dockerbuild.BuildContextArgs{
/// 				Location: pulumi.String("app"),
/// 			},
/// 			Platforms: docker - build.PlatformArray{
/// 				dockerbuild.Platform_Plan9_amd64,
/// 				dockerbuild.Platform_Plan9_386,
/// 			},
/// 			Push: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```yaml
/// description: Multi-platform image
/// name: multi-platform
/// resources:
///     image:
///         properties:
///             context:
///                 location: app
///             platforms:
///                 - plan9/amd64
///                 - plan9/386
///             push: false
///         type: docker-build:Image
/// runtime: yaml
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.dockerbuild.Image;
/// import com.pulumi.dockerbuild.ImageArgs;
/// import com.pulumi.dockerbuild.inputs.BuildContextArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .context(BuildContextArgs.builder()
///                 .location("app")
///                 .build())
///             .platforms(
///                 "plan9/amd64",
///                 "plan9/386")
///             .push(false)
///             .build());
///
///     }
/// }
/// ```
/// {{% /example %}}
/// {{% example %}}
/// ### Registry export
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker_build from "@pulumi/docker-build";
///
/// const image = new docker_build.Image("image", {
///     context: {
///         location: "app",
///     },
///     push: true,
///     registries: [{
///         address: "docker.io",
///         password: dockerHubPassword,
///         username: "pulumibot",
///     }],
///     tags: ["docker.io/pulumi/pulumi:3.107.0"],
/// });
/// export const ref = myImage.ref;
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker_build as docker_build
///
/// image = docker_build.Image("image",
///     context={
///         "location": "app",
///     },
///     push=True,
///     registries=[{
///         "address": "docker.io",
///         "password": docker_hub_password,
///         "username": "pulumibot",
///     }],
///     tags=["docker.io/pulumi/pulumi:3.107.0"])
/// pulumi.export("ref", my_image["ref"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DockerBuild = Pulumi.DockerBuild;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new DockerBuild.Image("image", new()
///     {
///         Context = new DockerBuild.Inputs.BuildContextArgs
///         {
///             Location = "app",
///         },
///         Push = true,
///         Registries = new[]
///         {
///             new DockerBuild.Inputs.RegistryArgs
///             {
///                 Address = "docker.io",
///                 Password = dockerHubPassword,
///                 Username = "pulumibot",
///             },
///         },
///         Tags = new[]
///         {
///             "docker.io/pulumi/pulumi:3.107.0",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ref"] = myImage.Ref,
///     };
/// });
///
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker-build/sdk/go/dockerbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dockerbuild.NewImage(ctx, "image", &dockerbuild.ImageArgs{
/// 			Context: &dockerbuild.BuildContextArgs{
/// 				Location: pulumi.String("app"),
/// 			},
/// 			Push: pulumi.Bool(true),
/// 			Registries: dockerbuild.RegistryArray{
/// 				&dockerbuild.RegistryArgs{
/// 					Address:  pulumi.String("docker.io"),
/// 					Password: pulumi.Any(dockerHubPassword),
/// 					Username: pulumi.String("pulumibot"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("docker.io/pulumi/pulumi:3.107.0"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ref", myImage.Ref)
/// 		return nil
/// 	})
/// }
/// ```
/// ```yaml
/// description: Registry export
/// name: registry
/// outputs:
///     ref: ${my-image.ref}
/// resources:
///     image:
///         properties:
///             context:
///                 location: app
///             push: true
///             registries:
///                 - address: docker.io
///                   password: ${dockerHubPassword}
///                   username: pulumibot
///             tags:
///                 - docker.io/pulumi/pulumi:3.107.0
///         type: docker-build:Image
/// runtime: yaml
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.dockerbuild.Image;
/// import com.pulumi.dockerbuild.ImageArgs;
/// import com.pulumi.dockerbuild.inputs.BuildContextArgs;
/// import com.pulumi.dockerbuild.inputs.RegistryArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .context(BuildContextArgs.builder()
///                 .location("app")
///                 .build())
///             .push(true)
///             .registries(RegistryArgs.builder()
///                 .address("docker.io")
///                 .password(dockerHubPassword)
///                 .username("pulumibot")
///                 .build())
///             .tags("docker.io/pulumi/pulumi:3.107.0")
///             .build());
///
///         ctx.export("ref", myImage.ref());
///     }
/// }
/// ```
/// {{% /example %}}
/// {{% example %}}
/// ### Caching
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker_build from "@pulumi/docker-build";
///
/// const image = new docker_build.Image("image", {
///     cacheFrom: [{
///         local: {
///             src: "tmp/cache",
///         },
///     }],
///     cacheTo: [{
///         local: {
///             dest: "tmp/cache",
///             mode: docker_build.CacheMode.Max,
///         },
///     }],
///     context: {
///         location: "app",
///     },
///     push: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker_build as docker_build
///
/// image = docker_build.Image("image",
///     cache_from=[{
///         "local": {
///             "src": "tmp/cache",
///         },
///     }],
///     cache_to=[{
///         "local": {
///             "dest": "tmp/cache",
///             "mode": docker_build.CacheMode.MAX,
///         },
///     }],
///     context={
///         "location": "app",
///     },
///     push=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DockerBuild = Pulumi.DockerBuild;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new DockerBuild.Image("image", new()
///     {
///         CacheFrom = new[]
///         {
///             new DockerBuild.Inputs.CacheFromArgs
///             {
///                 Local = new DockerBuild.Inputs.CacheFromLocalArgs
///                 {
///                     Src = "tmp/cache",
///                 },
///             },
///         },
///         CacheTo = new[]
///         {
///             new DockerBuild.Inputs.CacheToArgs
///             {
///                 Local = new DockerBuild.Inputs.CacheToLocalArgs
///                 {
///                     Dest = "tmp/cache",
///                     Mode = DockerBuild.CacheMode.Max,
///                 },
///             },
///         },
///         Context = new DockerBuild.Inputs.BuildContextArgs
///         {
///             Location = "app",
///         },
///         Push = false,
///     });
///
/// });
///
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker-build/sdk/go/dockerbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dockerbuild.NewImage(ctx, "image", &dockerbuild.ImageArgs{
/// 			CacheFrom: dockerbuild.CacheFromArray{
/// 				&dockerbuild.CacheFromArgs{
/// 					Local: &dockerbuild.CacheFromLocalArgs{
/// 						Src: pulumi.String("tmp/cache"),
/// 					},
/// 				},
/// 			},
/// 			CacheTo: dockerbuild.CacheToArray{
/// 				&dockerbuild.CacheToArgs{
/// 					Local: &dockerbuild.CacheToLocalArgs{
/// 						Dest: pulumi.String("tmp/cache"),
/// 						Mode: dockerbuild.CacheModeMax,
/// 					},
/// 				},
/// 			},
/// 			Context: &dockerbuild.BuildContextArgs{
/// 				Location: pulumi.String("app"),
/// 			},
/// 			Push: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```yaml
/// description: Caching
/// name: caching
/// resources:
///     image:
///         properties:
///             cacheFrom:
///                 - local:
///                     src: tmp/cache
///             cacheTo:
///                 - local:
///                     dest: tmp/cache
///                     mode: max
///             context:
///                 location: app
///             push: false
///         type: docker-build:Image
/// runtime: yaml
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.dockerbuild.Image;
/// import com.pulumi.dockerbuild.ImageArgs;
/// import com.pulumi.dockerbuild.inputs.CacheFromArgs;
/// import com.pulumi.dockerbuild.inputs.CacheFromLocalArgs;
/// import com.pulumi.dockerbuild.inputs.CacheToArgs;
/// import com.pulumi.dockerbuild.inputs.CacheToLocalArgs;
/// import com.pulumi.dockerbuild.inputs.BuildContextArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .cacheFrom(CacheFromArgs.builder()
///                 .local(CacheFromLocalArgs.builder()
///                     .src("tmp/cache")
///                     .build())
///                 .build())
///             .cacheTo(CacheToArgs.builder()
///                 .local(CacheToLocalArgs.builder()
///                     .dest("tmp/cache")
///                     .mode("max")
///                     .build())
///                 .build())
///             .context(BuildContextArgs.builder()
///                 .location("app")
///                 .build())
///             .push(false)
///             .build());
///
///     }
/// }
/// ```
/// {{% /example %}}
/// {{% example %}}
/// ### Docker Build Cloud
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker_build from "@pulumi/docker-build";
///
/// const image = new docker_build.Image("image", {
///     builder: {
///         name: "cloud-builder-name",
///     },
///     context: {
///         location: "app",
///     },
///     exec: true,
///     push: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker_build as docker_build
///
/// image = docker_build.Image("image",
///     builder={
///         "name": "cloud-builder-name",
///     },
///     context={
///         "location": "app",
///     },
///     exec_=True,
///     push=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DockerBuild = Pulumi.DockerBuild;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new DockerBuild.Image("image", new()
///     {
///         Builder = new DockerBuild.Inputs.BuilderConfigArgs
///         {
///             Name = "cloud-builder-name",
///         },
///         Context = new DockerBuild.Inputs.BuildContextArgs
///         {
///             Location = "app",
///         },
///         Exec = true,
///         Push = false,
///     });
///
/// });
///
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker-build/sdk/go/dockerbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dockerbuild.NewImage(ctx, "image", &dockerbuild.ImageArgs{
/// 			Builder: &dockerbuild.BuilderConfigArgs{
/// 				Name: pulumi.String("cloud-builder-name"),
/// 			},
/// 			Context: &dockerbuild.BuildContextArgs{
/// 				Location: pulumi.String("app"),
/// 			},
/// 			Exec: pulumi.Bool(true),
/// 			Push: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```yaml
/// description: Docker Build Cloud
/// name: dbc
/// resources:
///     image:
///         properties:
///             builder:
///                 name: cloud-builder-name
///             context:
///                 location: app
///             exec: true
///             push: false
///         type: docker-build:Image
/// runtime: yaml
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.dockerbuild.Image;
/// import com.pulumi.dockerbuild.ImageArgs;
/// import com.pulumi.dockerbuild.inputs.BuilderConfigArgs;
/// import com.pulumi.dockerbuild.inputs.BuildContextArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .builder(BuilderConfigArgs.builder()
///                 .name("cloud-builder-name")
///                 .build())
///             .context(BuildContextArgs.builder()
///                 .location("app")
///                 .build())
///             .exec(true)
///             .push(false)
///             .build());
///
///     }
/// }
/// ```
/// {{% /example %}}
/// {{% example %}}
/// ### Build arguments
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker_build from "@pulumi/docker-build";
///
/// const image = new docker_build.Image("image", {
///     buildArgs: {
///         SET_ME_TO_TRUE: "true",
///     },
///     context: {
///         location: "app",
///     },
///     push: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker_build as docker_build
///
/// image = docker_build.Image("image",
///     build_args={
///         "SET_ME_TO_TRUE": "true",
///     },
///     context={
///         "location": "app",
///     },
///     push=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DockerBuild = Pulumi.DockerBuild;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new DockerBuild.Image("image", new()
///     {
///         BuildArgs =
///         {
///             { "SET_ME_TO_TRUE", "true" },
///         },
///         Context = new DockerBuild.Inputs.BuildContextArgs
///         {
///             Location = "app",
///         },
///         Push = false,
///     });
///
/// });
///
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker-build/sdk/go/dockerbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dockerbuild.NewImage(ctx, "image", &dockerbuild.ImageArgs{
/// 			BuildArgs: pulumi.StringMap{
/// 				"SET_ME_TO_TRUE": pulumi.String("true"),
/// 			},
/// 			Context: &dockerbuild.BuildContextArgs{
/// 				Location: pulumi.String("app"),
/// 			},
/// 			Push: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```yaml
/// description: Build arguments
/// name: build-args
/// resources:
///     image:
///         properties:
///             buildArgs:
///                 SET_ME_TO_TRUE: "true"
///             context:
///                 location: app
///             push: false
///         type: docker-build:Image
/// runtime: yaml
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.dockerbuild.Image;
/// import com.pulumi.dockerbuild.ImageArgs;
/// import com.pulumi.dockerbuild.inputs.BuildContextArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .buildArgs(Map.of("SET_ME_TO_TRUE", "true"))
///             .context(BuildContextArgs.builder()
///                 .location("app")
///                 .build())
///             .push(false)
///             .build());
///
///     }
/// }
/// ```
/// {{% /example %}}
/// {{% example %}}
/// ### Build target
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker_build from "@pulumi/docker-build";
///
/// const image = new docker_build.Image("image", {
///     context: {
///         location: "app",
///     },
///     push: false,
///     target: "build-me",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker_build as docker_build
///
/// image = docker_build.Image("image",
///     context={
///         "location": "app",
///     },
///     push=False,
///     target="build-me")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DockerBuild = Pulumi.DockerBuild;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new DockerBuild.Image("image", new()
///     {
///         Context = new DockerBuild.Inputs.BuildContextArgs
///         {
///             Location = "app",
///         },
///         Push = false,
///         Target = "build-me",
///     });
///
/// });
///
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker-build/sdk/go/dockerbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dockerbuild.NewImage(ctx, "image", &dockerbuild.ImageArgs{
/// 			Context: &dockerbuild.BuildContextArgs{
/// 				Location: pulumi.String("app"),
/// 			},
/// 			Push:   pulumi.Bool(false),
/// 			Target: pulumi.String("build-me"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```yaml
/// description: Build target
/// name: build-target
/// resources:
///     image:
///         properties:
///             context:
///                 location: app
///             push: false
///             target: build-me
///         type: docker-build:Image
/// runtime: yaml
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.dockerbuild.Image;
/// import com.pulumi.dockerbuild.ImageArgs;
/// import com.pulumi.dockerbuild.inputs.BuildContextArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .context(BuildContextArgs.builder()
///                 .location("app")
///                 .build())
///             .push(false)
///             .target("build-me")
///             .build());
///
///     }
/// }
/// ```
/// {{% /example %}}
/// {{% example %}}
/// ### Named contexts
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker_build from "@pulumi/docker-build";
///
/// const image = new docker_build.Image("image", {
///     context: {
///         location: "app",
///         named: {
///             "golang:latest": {
///                 location: "docker-image://golang@sha256:b8e62cf593cdaff36efd90aa3a37de268e6781a2e68c6610940c48f7cdf36984",
///             },
///         },
///     },
///     push: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker_build as docker_build
///
/// image = docker_build.Image("image",
///     context={
///         "location": "app",
///         "named": {
///             "golang:latest": {
///                 "location": "docker-image://golang@sha256:b8e62cf593cdaff36efd90aa3a37de268e6781a2e68c6610940c48f7cdf36984",
///             },
///         },
///     },
///     push=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DockerBuild = Pulumi.DockerBuild;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new DockerBuild.Image("image", new()
///     {
///         Context = new DockerBuild.Inputs.BuildContextArgs
///         {
///             Location = "app",
///             Named =
///             {
///                 { "golang:latest", new DockerBuild.Inputs.ContextArgs
///                 {
///                     Location = "docker-image://golang@sha256:b8e62cf593cdaff36efd90aa3a37de268e6781a2e68c6610940c48f7cdf36984",
///                 } },
///             },
///         },
///         Push = false,
///     });
///
/// });
///
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker-build/sdk/go/dockerbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dockerbuild.NewImage(ctx, "image", &dockerbuild.ImageArgs{
/// 			Context: &dockerbuild.BuildContextArgs{
/// 				Location: pulumi.String("app"),
/// 				Named: dockerbuild.ContextMap{
/// 					"golang:latest": &dockerbuild.ContextArgs{
/// 						Location: pulumi.String("docker-image://golang@sha256:b8e62cf593cdaff36efd90aa3a37de268e6781a2e68c6610940c48f7cdf36984"),
/// 					},
/// 				},
/// 			},
/// 			Push: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```yaml
/// description: Named contexts
/// name: named-contexts
/// resources:
///     image:
///         properties:
///             context:
///                 location: app
///                 named:
///                     golang:latest:
///                         location: docker-image://golang@sha256:b8e62cf593cdaff36efd90aa3a37de268e6781a2e68c6610940c48f7cdf36984
///             push: false
///         type: docker-build:Image
/// runtime: yaml
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.dockerbuild.Image;
/// import com.pulumi.dockerbuild.ImageArgs;
/// import com.pulumi.dockerbuild.inputs.BuildContextArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .context(BuildContextArgs.builder()
///                 .location("app")
///                 .named(Map.of("golang:latest", Map.of("location", "docker-image://golang@sha256:b8e62cf593cdaff36efd90aa3a37de268e6781a2e68c6610940c48f7cdf36984")))
///                 .build())
///             .push(false)
///             .build());
///
///     }
/// }
/// ```
/// {{% /example %}}
/// {{% example %}}
/// ### Remote context
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker_build from "@pulumi/docker-build";
///
/// const image = new docker_build.Image("image", {
///     context: {
///         location: "https://raw.githubusercontent.com/pulumi/pulumi-docker/api-types/provider/testdata/Dockerfile",
///     },
///     push: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker_build as docker_build
///
/// image = docker_build.Image("image",
///     context={
///         "location": "https://raw.githubusercontent.com/pulumi/pulumi-docker/api-types/provider/testdata/Dockerfile",
///     },
///     push=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DockerBuild = Pulumi.DockerBuild;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new DockerBuild.Image("image", new()
///     {
///         Context = new DockerBuild.Inputs.BuildContextArgs
///         {
///             Location = "https://raw.githubusercontent.com/pulumi/pulumi-docker/api-types/provider/testdata/Dockerfile",
///         },
///         Push = false,
///     });
///
/// });
///
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker-build/sdk/go/dockerbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dockerbuild.NewImage(ctx, "image", &dockerbuild.ImageArgs{
/// 			Context: &dockerbuild.BuildContextArgs{
/// 				Location: pulumi.String("https://raw.githubusercontent.com/pulumi/pulumi-docker/api-types/provider/testdata/Dockerfile"),
/// 			},
/// 			Push: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```yaml
/// description: Remote context
/// name: remote-context
/// resources:
///     image:
///         properties:
///             context:
///                 location: https://raw.githubusercontent.com/pulumi/pulumi-docker/api-types/provider/testdata/Dockerfile
///             push: false
///         type: docker-build:Image
/// runtime: yaml
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.dockerbuild.Image;
/// import com.pulumi.dockerbuild.ImageArgs;
/// import com.pulumi.dockerbuild.inputs.BuildContextArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .context(BuildContextArgs.builder()
///                 .location("https://raw.githubusercontent.com/pulumi/pulumi-docker/api-types/provider/testdata/Dockerfile")
///                 .build())
///             .push(false)
///             .build());
///
///     }
/// }
/// ```
/// {{% /example %}}
/// {{% example %}}
/// ### Inline Dockerfile
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker_build from "@pulumi/docker-build";
///
/// const image = new docker_build.Image("image", {
///     context: {
///         location: "app",
///     },
///     dockerfile: {
///         inline: `FROM busybox
/// COPY hello.c ./
/// `,
///     },
///     push: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker_build as docker_build
///
/// image = docker_build.Image("image",
///     context={
///         "location": "app",
///     },
///     dockerfile={
///         "inline": """FROM busybox
/// COPY hello.c ./
/// """,
///     },
///     push=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DockerBuild = Pulumi.DockerBuild;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new DockerBuild.Image("image", new()
///     {
///         Context = new DockerBuild.Inputs.BuildContextArgs
///         {
///             Location = "app",
///         },
///         Dockerfile = new DockerBuild.Inputs.DockerfileArgs
///         {
///             Inline = @"FROM busybox
/// COPY hello.c ./
/// ",
///         },
///         Push = false,
///     });
///
/// });
///
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker-build/sdk/go/dockerbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dockerbuild.NewImage(ctx, "image", &dockerbuild.ImageArgs{
/// 			Context: &dockerbuild.BuildContextArgs{
/// 				Location: pulumi.String("app"),
/// 			},
/// 			Dockerfile: &dockerbuild.DockerfileArgs{
/// 				Inline: pulumi.String("FROM busybox\nCOPY hello.c ./\n"),
/// 			},
/// 			Push: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```yaml
/// description: Inline Dockerfile
/// name: inline
/// resources:
///     image:
///         properties:
///             context:
///                 location: app
///             dockerfile:
///                 inline: |
///                     FROM busybox
///                     COPY hello.c ./
///             push: false
///         type: docker-build:Image
/// runtime: yaml
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.dockerbuild.Image;
/// import com.pulumi.dockerbuild.ImageArgs;
/// import com.pulumi.dockerbuild.inputs.BuildContextArgs;
/// import com.pulumi.dockerbuild.inputs.DockerfileArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .context(BuildContextArgs.builder()
///                 .location("app")
///                 .build())
///             .dockerfile(DockerfileArgs.builder()
///                 .inline("""
/// FROM busybox
/// COPY hello.c ./
///                 """)
///                 .build())
///             .push(false)
///             .build());
///
///     }
/// }
/// ```
/// {{% /example %}}
/// {{% example %}}
/// ### Remote context
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker_build from "@pulumi/docker-build";
///
/// const image = new docker_build.Image("image", {
///     context: {
///         location: "https://github.com/docker-library/hello-world.git",
///     },
///     dockerfile: {
///         location: "app/Dockerfile",
///     },
///     push: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker_build as docker_build
///
/// image = docker_build.Image("image",
///     context={
///         "location": "https://github.com/docker-library/hello-world.git",
///     },
///     dockerfile={
///         "location": "app/Dockerfile",
///     },
///     push=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DockerBuild = Pulumi.DockerBuild;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new DockerBuild.Image("image", new()
///     {
///         Context = new DockerBuild.Inputs.BuildContextArgs
///         {
///             Location = "https://github.com/docker-library/hello-world.git",
///         },
///         Dockerfile = new DockerBuild.Inputs.DockerfileArgs
///         {
///             Location = "app/Dockerfile",
///         },
///         Push = false,
///     });
///
/// });
///
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker-build/sdk/go/dockerbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dockerbuild.NewImage(ctx, "image", &dockerbuild.ImageArgs{
/// 			Context: &dockerbuild.BuildContextArgs{
/// 				Location: pulumi.String("https://github.com/docker-library/hello-world.git"),
/// 			},
/// 			Dockerfile: &dockerbuild.DockerfileArgs{
/// 				Location: pulumi.String("app/Dockerfile"),
/// 			},
/// 			Push: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```yaml
/// description: Remote context
/// name: remote-context
/// resources:
///     image:
///         properties:
///             context:
///                 location: https://github.com/docker-library/hello-world.git
///             dockerfile:
///                 location: app/Dockerfile
///             push: false
///         type: docker-build:Image
/// runtime: yaml
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.dockerbuild.Image;
/// import com.pulumi.dockerbuild.ImageArgs;
/// import com.pulumi.dockerbuild.inputs.BuildContextArgs;
/// import com.pulumi.dockerbuild.inputs.DockerfileArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .context(BuildContextArgs.builder()
///                 .location("https://github.com/docker-library/hello-world.git")
///                 .build())
///             .dockerfile(DockerfileArgs.builder()
///                 .location("app/Dockerfile")
///                 .build())
///             .push(false)
///             .build());
///
///     }
/// }
/// ```
/// {{% /example %}}
/// {{% example %}}
/// ### Local export
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker_build from "@pulumi/docker-build";
///
/// const image = new docker_build.Image("image", {
///     context: {
///         location: "app",
///     },
///     exports: [{
///         docker: {
///             tar: true,
///         },
///     }],
///     push: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker_build as docker_build
///
/// image = docker_build.Image("image",
///     context={
///         "location": "app",
///     },
///     exports=[{
///         "docker": {
///             "tar": True,
///         },
///     }],
///     push=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DockerBuild = Pulumi.DockerBuild;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new DockerBuild.Image("image", new()
///     {
///         Context = new DockerBuild.Inputs.BuildContextArgs
///         {
///             Location = "app",
///         },
///         Exports = new[]
///         {
///             new DockerBuild.Inputs.ExportArgs
///             {
///                 Docker = new DockerBuild.Inputs.ExportDockerArgs
///                 {
///                     Tar = true,
///                 },
///             },
///         },
///         Push = false,
///     });
///
/// });
///
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker-build/sdk/go/dockerbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dockerbuild.NewImage(ctx, "image", &dockerbuild.ImageArgs{
/// 			Context: &dockerbuild.BuildContextArgs{
/// 				Location: pulumi.String("app"),
/// 			},
/// 			Exports: dockerbuild.ExportArray{
/// 				&dockerbuild.ExportArgs{
/// 					Docker: &dockerbuild.ExportDockerArgs{
/// 						Tar: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			Push: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```yaml
/// description: Local export
/// name: docker-load
/// resources:
///     image:
///         properties:
///             context:
///                 location: app
///             exports:
///                 - docker:
///                     tar: true
///             push: false
///         type: docker-build:Image
/// runtime: yaml
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.dockerbuild.Image;
/// import com.pulumi.dockerbuild.ImageArgs;
/// import com.pulumi.dockerbuild.inputs.BuildContextArgs;
/// import com.pulumi.dockerbuild.inputs.ExportArgs;
/// import com.pulumi.dockerbuild.inputs.ExportDockerArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .context(BuildContextArgs.builder()
///                 .location("app")
///                 .build())
///             .exports(ExportArgs.builder()
///                 .docker(ExportDockerArgs.builder()
///                     .tar(true)
///                     .build())
///                 .build())
///             .push(false)
///             .build());
///
///     }
/// }
/// ```
/// {{% /example %}}
/// {{% /examples %}}
class Image extends pulumi.CustomResource {
  /// Custom `host:ip` mappings to use during the build.
  ///
  /// Equivalent to Docker's `--add-host` flag.
  late final pulumi.Output<List<String>?> addHosts;
  /// `ARG` names and values to set during the build.
  ///
  /// These variables are accessed like environment variables inside `RUN`
  /// instructions.
  ///
  /// Build arguments are persisted in the image, so you should use `secrets`
  /// if these arguments are sensitive.
  ///
  /// Equivalent to Docker's `--build-arg` flag.
  late final pulumi.Output<Map<String, String>?> buildArgs;
  /// Setting this to `false` will always skip image builds during previews,
  /// and setting it to `true` will always build images during previews.
  ///
  /// Images built during previews are never exported to registries, however
  /// cache manifests are still exported.
  ///
  /// On-disk Dockerfiles are always validated for syntactic correctness
  /// regardless of this setting.
  ///
  /// Defaults to `true` as a safeguard against broken images merging as part
  /// of CI pipelines.
  late final pulumi.Output<bool?> buildOnPreview;
  /// Builder configuration.
  late final pulumi.Output<BuilderConfig?> builder;
  /// Cache export configuration.
  ///
  /// Equivalent to Docker's `--cache-from` flag.
  late final pulumi.Output<List<Map<String, dynamic>>?> cacheFrom;
  /// Cache import configuration.
  ///
  /// Equivalent to Docker's `--cache-to` flag.
  late final pulumi.Output<List<Map<String, dynamic>>?> cacheTo;
  /// Build context settings. Defaults to the current directory.
  ///
  /// Equivalent to Docker's `PATH | URL | -` positional argument.
  late final pulumi.Output<BuildContext?> context;
  /// A preliminary hash of the image's build context.
  ///
  /// Pulumi uses this to determine if an image _may_ need to be re-built.
  late final pulumi.Output<String> contextHash;
  /// A SHA256 digest of the image if it was exported to a registry or
  /// elsewhere.
  ///
  /// Empty if the image was not exported.
  ///
  /// Registry images can be referenced precisely as `&lt;tag&gt;@&lt;digest&gt;`. The
  /// `ref` output provides one such reference as a convenience.
  late final pulumi.Output<String> digest;
  /// Dockerfile settings.
  ///
  /// Equivalent to Docker's `--file` flag.
  late final pulumi.Output<Dockerfile?> dockerfile;
  /// Use `exec` mode to build this image.
  ///
  /// By default the provider embeds a v25 Docker client with v0.12 buildx
  /// support. This helps ensure consistent behavior across environments and
  /// is compatible with alternative build backends (e.g. `buildkitd`), but
  /// it may not be desirable if you require a specific version of buildx.
  /// For example you may want to run a custom `docker-buildx` binary with
  /// support for [Docker Build
  /// Cloud](https://docs.docker.com/build/cloud/setup/) (DBC).
  ///
  /// When this is set to `true` the provider will instead execute the
  /// `docker-buildx` binary directly to perform its operations. The user is
  /// responsible for ensuring this binary exists, with correct permissions
  /// and pre-configured builders, at a path Docker expects (e.g.
  /// `~/.docker/cli-plugins`).
  ///
  /// Debugging `exec` mode may be more difficult as Pulumi will not be able
  /// to surface fine-grained errors and warnings. Additionally credentials
  /// are temporarily written to disk in order to provide them to the
  /// `docker-buildx` binary.
  late final pulumi.Output<bool?> exec;
  /// Controls where images are persisted after building.
  ///
  /// Images are only stored in the local cache unless `exports` are
  /// explicitly configured.
  ///
  /// Exporting to multiple destinations requires a daemon running BuildKit
  /// 0.13 or later.
  ///
  /// Equivalent to Docker's `--output` flag.
  late final pulumi.Output<List<Map<String, dynamic>>?> exports;
  /// Attach arbitrary key/value metadata to the image.
  ///
  /// Equivalent to Docker's `--label` flag.
  late final pulumi.Output<Map<String, String>?> labels;
  /// When `true` the build will automatically include a `docker` export.
  ///
  /// Defaults to `false`.
  ///
  /// Equivalent to Docker's `--load` flag.
  late final pulumi.Output<bool?> load;
  /// Set the network mode for `RUN` instructions. Defaults to `default`.
  ///
  /// For custom networks, configure your builder with `--driver-opt network=...`.
  ///
  /// Equivalent to Docker's `--network` flag.
  late final pulumi.Output<NetworkMode?> network;
  /// Do not import cache manifests when building the image.
  ///
  /// Equivalent to Docker's `--no-cache` flag.
  late final pulumi.Output<bool?> noCache;
  /// Set target platform(s) for the build. Defaults to the host's platform.
  ///
  /// Equivalent to Docker's `--platform` flag.
  late final pulumi.Output<List<Platform>?> platforms;
  /// Always pull referenced images.
  ///
  /// Equivalent to Docker's `--pull` flag.
  late final pulumi.Output<bool?> pull;
  /// When `true` the build will automatically include a `registry` export.
  ///
  /// Defaults to `false`.
  ///
  /// Equivalent to Docker's `--push` flag.
  late final pulumi.Output<bool> push;
  /// If the image was pushed to any registries then this will contain a
  /// single fully-qualified tag including the build's digest.
  ///
  /// If the image had tags but was not exported, this will take on a value
  /// of one of those tags.
  ///
  /// This will be empty if the image had no exports and no tags.
  ///
  /// This is only for convenience and may not be appropriate for situations
  /// where multiple tags or registries are involved. In those cases this
  /// output is not guaranteed to be stable.
  ///
  /// For more control over tags consumed by downstream resources you should
  /// use the `digest` output.
  late final pulumi.Output<String> ref;
  /// Registry credentials. Required if reading or exporting to private
  /// repositories.
  ///
  /// Credentials are kept in-memory and do not pollute pre-existing
  /// credentials on the host.
  ///
  /// Similar to `docker login`.
  late final pulumi.Output<List<Map<String, dynamic>>?> registries;
  /// A mapping of secret names to their corresponding values.
  ///
  /// Unlike the Docker CLI, these can be passed by value and do not need to
  /// exist on-disk or in environment variables.
  ///
  /// Build arguments and environment variables are persistent in the final
  /// image, so you should use this for sensitive values.
  ///
  /// Similar to Docker's `--secret` flag.
  late final pulumi.Output<Map<String, String>?> secrets;
  /// SSH agent socket or keys to expose to the build.
  ///
  /// Equivalent to Docker's `--ssh` flag.
  late final pulumi.Output<List<Map<String, dynamic>>?> ssh;
  /// Name and optionally a tag (format: `name:tag`).
  ///
  /// If exporting to a registry, the name should include the fully qualified
  /// registry address (e.g. `docker.io/pulumi/pulumi:latest`).
  ///
  /// Equivalent to Docker's `--tag` flag.
  late final pulumi.Output<List<String>?> tags;
  /// Set the target build stage(s) to build.
  ///
  /// If not specified all targets will be built by default.
  ///
  /// Equivalent to Docker's `--target` flag.
  late final pulumi.Output<String?> target;

  /// Creates a new [Image].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Image]. {@macro pulumi_index_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Image(
    String name, {
    ImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker-build:index:Image',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addHosts = registerOutput<List<String>?>('addHosts');
    buildArgs = registerOutput<Map<String, String>?>('buildArgs');
    buildOnPreview = registerOutput<bool?>('buildOnPreview');
    builder = registerOutput<BuilderConfig?>('builder', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuilderConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cacheFrom = registerOutput<List<Map<String, dynamic>>?>('cacheFrom');
    cacheTo = registerOutput<List<Map<String, dynamic>>?>('cacheTo');
    context = registerOutput<BuildContext?>('context', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuildContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    contextHash = registerOutput<String>('contextHash');
    digest = registerOutput<String>('digest');
    dockerfile = registerOutput<Dockerfile?>('dockerfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Dockerfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    exec = registerOutput<bool?>('exec');
    exports = registerOutput<List<Map<String, dynamic>>?>('exports');
    labels = registerOutput<Map<String, String>?>('labels');
    load = registerOutput<bool?>('load');
    network = registerOutput<NetworkMode?>('network', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkMode.fromValue(guardedValue as String); });
    noCache = registerOutput<bool?>('noCache');
    platforms = registerOutput<List<Platform>?>('platforms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<Platform>(guardedValue, (value) => Platform.fromValue(value as String)); });
    pull = registerOutput<bool?>('pull');
    push = registerOutput<bool>('push');
    ref = registerOutput<String>('ref');
    registries = registerOutput<List<Map<String, dynamic>>?>('registries');
    secrets = registerOutput<Map<String, String>?>('secrets');
    ssh = registerOutput<List<Map<String, dynamic>>?>('ssh');
    tags = registerOutput<List<String>?>('tags');
    target = registerOutput<String?>('target');
  }
}
