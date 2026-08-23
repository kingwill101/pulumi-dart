import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_docker_image_args.dart';
import 'get_docker_image_result.dart';
import 'get_docker_images_args.dart';
import 'get_docker_images_result.dart';
import 'get_file_args.dart';
import 'get_file_result.dart';
import 'get_locations_args.dart';
import 'get_locations_result.dart';
import 'get_maven_artifact_args.dart';
import 'get_maven_artifact_result.dart';
import 'get_maven_artifacts_args.dart';
import 'get_maven_artifacts_result.dart';
import 'get_npm_package_args.dart';
import 'get_npm_package_result.dart';
import 'get_npm_packages_args.dart';
import 'get_npm_packages_result.dart';
import 'get_package_args.dart';
import 'get_package_result.dart';
import 'get_packages_args.dart';
import 'get_packages_result.dart';
import 'get_python_package_args.dart';
import 'get_python_package_result.dart';
import 'get_python_packages_args.dart';
import 'get_python_packages_result.dart';
import 'get_repositories_args.dart';
import 'get_repositories_result.dart';
import 'get_repository_args.dart';
import 'get_repository_iam_policy_args.dart';
import 'get_repository_iam_policy_result.dart';
import 'get_repository_result.dart';
import 'get_tag_args.dart';
import 'get_tag_result.dart';
import 'get_tags_args.dart';
import 'get_tags_result.dart';
import 'get_version_args.dart';
import 'get_version_result.dart';
import 'get_versions_args.dart';
import 'get_versions_result.dart';

/// This data source fetches information from a provided Artifact Registry repository, including the fully qualified name and URI for an image, based on a the latest version of image name and optional digest or tag.
///
/// &gt; **Note**
/// Requires one of the following OAuth scopes: `https://www.googleapis.com/auth/cloud-platform` or `https://www.googleapis.com/auth/cloud-platform.read-only`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myRepo = new gcp.artifactregistry.Repository("my_repo", {
///     location: "us-west1",
///     repositoryId: "my-repository",
///     format: "DOCKER",
/// });
/// const myImage = gcp.artifactregistry.getDockerImageOutput({
///     location: myRepo.location,
///     repositoryId: myRepo.repositoryId,
///     imageName: "my-image:my-tag",
/// });
/// const _default = new gcp.cloudrunv2.Service("default", {template: {
///     containers: [{
///         image: myImage.selfLink,
///     }],
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_repo = gcp.artifactregistry.Repository("my_repo",
///     location="us-west1",
///     repository_id="my-repository",
///     format="DOCKER")
/// my_image = gcp.artifactregistry.get_docker_image_output(location=my_repo.location,
///     repository_id=my_repo.repository_id,
///     image_name="my-image:my-tag")
/// default = gcp.cloudrunv2.Service("default", template={
///     "containers": [{
///         "image": my_image.self_link,
///     }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myRepo = new Gcp.ArtifactRegistry.Repository("my_repo", new()
///     {
///         Location = "us-west1",
///         RepositoryId = "my-repository",
///         Format = "DOCKER",
///     });
///
///     var myImage = Gcp.ArtifactRegistry.GetDockerImage.Invoke(new()
///     {
///         Location = myRepo.Location,
///         RepositoryId = myRepo.RepositoryId,
///         ImageName = "my-image:my-tag",
///     });
///
///     var @default = new Gcp.CloudRunV2.Service("default", new()
///     {
///         Template = new Gcp.CloudRunV2.Inputs.ServiceTemplateArgs
///         {
///             Containers = new[]
///             {
///                 new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
///                 {
///                     Image = myImage.Apply(getDockerImageResult => getDockerImageResult.SelfLink),
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myRepo, err := artifactregistry.NewRepository(ctx, "my_repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-west1"),
/// 			RepositoryId: pulumi.String("my-repository"),
/// 			Format:       pulumi.String("DOCKER"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myImage := artifactregistry.GetDockerImageOutput(ctx, artifactregistry.GetDockerImageOutputArgs{
/// 			Location:     myRepo.Location,
/// 			RepositoryId: myRepo.RepositoryId,
/// 			ImageName:    pulumi.String("my-image:my-tag"),
/// 		}, nil)
/// 		_, err = cloudrunv2.NewService(ctx, "default", &cloudrunv2.ServiceArgs{
/// 			Template: &cloudrunv2.ServiceTemplateArgs{
/// 				Containers: cloudrunv2.ServiceTemplateContainerArray{
/// 					&cloudrunv2.ServiceTemplateContainerArgs{
/// 						Image: myImage.SelfLink(),
/// 					},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_artifactregistry_getdockerimage" "myImage" {
///   location      = gcp_artifactregistry_repository.my_repo.location
///   repository_id = gcp_artifactregistry_repository.my_repo.repository_id
///   image_name    = "my-image:my-tag"
/// }
///
/// resource "gcp_artifactregistry_repository" "my_repo" {
///   location      = "us-west1"
///   repository_id = "my-repository"
///   format        = "DOCKER"
/// }
/// resource "gcp_cloudrunv2_service" "default" {
///   template = {
///     containers = [{
///       "image" = data.gcp_artifactregistry_getdockerimage.myImage.self_link
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.ArtifactregistryFunctions;
/// import com.pulumi.gcp.artifactregistry.inputs.GetDockerImageArgs;
/// import com.pulumi.gcp.cloudrunv2.Service;
/// import com.pulumi.gcp.cloudrunv2.ServiceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateContainerArgs;
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
///         var myRepo = new Repository("myRepo", RepositoryArgs.builder()
///             .location("us-west1")
///             .repositoryId("my-repository")
///             .format("DOCKER")
///             .build());
///
///         final var myImage = ArtifactregistryFunctions.getDockerImage(GetDockerImageArgs.builder()
///             .location(myRepo.location())
///             .repositoryId(myRepo.repositoryId())
///             .imageName("my-image:my-tag")
///             .build());
///
///         var default_ = new Service("default", ServiceArgs.builder()
///             .template(ServiceTemplateArgs.builder()
///                 .containers(ServiceTemplateContainerArgs.builder()
///                     .image(myImage.applyValue(_myImage -> _myImage.selfLink()))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myRepo:
///     type: gcp:artifactregistry:Repository
///     name: my_repo
///     properties:
///       location: us-west1
///       repositoryId: my-repository
///       format: DOCKER
///   default:
///     type: gcp:cloudrunv2:Service
///     properties:
///       template:
///         containers:
///           - image: ${myImage.selfLink}
/// variables:
///   myImage:
///     fn::invoke:
///       function: gcp:artifactregistry:getDockerImage
///       arguments:
///         location: ${myRepo.location}
///         repositoryId: ${myRepo.repositoryId}
///         imageName: my-image:my-tag
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_get_docker_image_get_docker_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDockerImageResult> getDockerImage(
  GetDockerImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getDockerImage:getDockerImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDockerImageResult.fromMap(result);
}

/// Get information about Artifact Registry Docker images.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs/docker)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.dockerImages/list).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myImages = gcp.artifactregistry.getDockerImages({
///     location: "us-central1",
///     repositoryId: "example-repo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_images = gcp.artifactregistry.get_docker_images(location="us-central1",
///     repository_id="example-repo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myImages = Gcp.ArtifactRegistry.GetDockerImages.Invoke(new()
///     {
///         Location = "us-central1",
///         RepositoryId = "example-repo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.GetDockerImages(ctx, &artifactregistry.GetDockerImagesArgs{
/// 			Location:     "us-central1",
/// 			RepositoryId: "example-repo",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_artifactregistry_getdockerimages" "myImages" {
///   location      = "us-central1"
///   repository_id = "example-repo"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.ArtifactregistryFunctions;
/// import com.pulumi.gcp.artifactregistry.inputs.GetDockerImagesArgs;
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
///         final var myImages = ArtifactregistryFunctions.getDockerImages(GetDockerImagesArgs.builder()
///             .location("us-central1")
///             .repositoryId("example-repo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myImages:
///     fn::invoke:
///       function: gcp:artifactregistry:getDockerImages
///       arguments:
///         location: us-central1
///         repositoryId: example-repo
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_get_docker_images_get_docker_images_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDockerImagesResult> getDockerImages(
  GetDockerImagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getDockerImages:getDockerImages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDockerImagesResult.fromMap(result);
}

/// Downloads a single file from a Google Artifact Registry repository to a local
/// path and exposes its metadata and content hashes. Applies to file-based
/// Artifact Registry formats (Generic, Maven, npm, Python, Apt, Yum, Go). For
/// Docker/OCI images, use
/// `gcp.artifactregistry.getDockerImage`.
///
/// &gt; **Note:** This data source downloads the file on every Terraform read
/// (i.e. every `plan` and `apply`). For large files this can add significant
/// time to each run. Use `overwrite = false` to skip the download when the
/// local file already matches the remote — see the `overwrite` argument below.
///
/// To get more information about Artifact Registry files, see:
///
/// * [API documentation](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.files)
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_get_file_get_file_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFileResult> getFile(
  GetFileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getFile:getFile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFileResult.fromMap(result);
}

/// Get Artifact Registry locations available for a project.
///
/// To get more information about Artifact Registry, see:
///
/// * [API documentation](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations/list)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/artifact-registry/docs/overview)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const available = gcp.artifactregistry.getLocations({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// available = gcp.artifactregistry.get_locations()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = Gcp.ArtifactRegistry.GetLocations.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.GetLocations(ctx, &artifactregistry.GetLocationsArgs{}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_artifactregistry_getlocations" "available" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.ArtifactregistryFunctions;
/// import com.pulumi.gcp.artifactregistry.inputs.GetLocationsArgs;
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
///         final var available = ArtifactregistryFunctions.getLocations(GetLocationsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   available:
///     fn::invoke:
///       function: gcp:artifactregistry:getLocations
///       arguments: {}
/// ```
///
///
///
/// ### Multi-Regional Artifact Registry Deployment
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const available = gcp.artifactregistry.getLocations({});
/// const repoOne = new gcp.artifactregistry.Repository("repo_one", {
///     location: available.then(available => available.locations?.[0]),
///     repositoryId: "repo-one",
///     format: "apt",
/// });
/// const repoTwo = new gcp.artifactregistry.Repository("repo_two", {
///     location: available.then(available => available.locations?.[1]),
///     repositoryId: "repo-two",
///     format: "apt",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// available = gcp.artifactregistry.get_locations()
/// repo_one = gcp.artifactregistry.Repository("repo_one",
///     location=available.locations[0],
///     repository_id="repo-one",
///     format="apt")
/// repo_two = gcp.artifactregistry.Repository("repo_two",
///     location=available.locations[1],
///     repository_id="repo-two",
///     format="apt")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = Gcp.ArtifactRegistry.GetLocations.Invoke();
///
///     var repoOne = new Gcp.ArtifactRegistry.Repository("repo_one", new()
///     {
///         Location = available.Apply(getLocationsResult => getLocationsResult.Locations[0]),
///         RepositoryId = "repo-one",
///         Format = "apt",
///     });
///
///     var repoTwo = new Gcp.ArtifactRegistry.Repository("repo_two", new()
///     {
///         Location = available.Apply(getLocationsResult => getLocationsResult.Locations[1]),
///         RepositoryId = "repo-two",
///         Format = "apt",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		available, err := artifactregistry.GetLocations(ctx, &artifactregistry.GetLocationsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = artifactregistry.NewRepository(ctx, "repo_one", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String(available.Locations[0]),
/// 			RepositoryId: pulumi.String("repo-one"),
/// 			Format:       pulumi.String("apt"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = artifactregistry.NewRepository(ctx, "repo_two", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String(available.Locations[1]),
/// 			RepositoryId: pulumi.String("repo-two"),
/// 			Format:       pulumi.String("apt"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_artifactregistry_getlocations" "available" {
/// }
///
/// resource "gcp_artifactregistry_repository" "repo_one" {
///   location      = data.gcp_artifactregistry_getlocations.available.locations[0]
///   repository_id = "repo-one"
///   format        = "apt"
/// }
/// resource "gcp_artifactregistry_repository" "repo_two" {
///   location      = data.gcp_artifactregistry_getlocations.available.locations[1]
///   repository_id = "repo-two"
///   format        = "apt"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.ArtifactregistryFunctions;
/// import com.pulumi.gcp.artifactregistry.inputs.GetLocationsArgs;
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
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
///         final var available = ArtifactregistryFunctions.getLocations(GetLocationsArgs.builder()
///             .build());
///
///         var repoOne = new Repository("repoOne", RepositoryArgs.builder()
///             .location(available.locations()[0])
///             .repositoryId("repo-one")
///             .format("apt")
///             .build());
///
///         var repoTwo = new Repository("repoTwo", RepositoryArgs.builder()
///             .location(available.locations()[1])
///             .repositoryId("repo-two")
///             .format("apt")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   repoOne:
///     type: gcp:artifactregistry:Repository
///     name: repo_one
///     properties:
///       location: ${available.locations[0]}
///       repositoryId: repo-one
///       format: apt
///   repoTwo:
///     type: gcp:artifactregistry:Repository
///     name: repo_two
///     properties:
///       location: ${available.locations[1]}
///       repositoryId: repo-two
///       format: apt
/// variables:
///   available:
///     fn::invoke:
///       function: gcp:artifactregistry:getLocations
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_get_locations_get_locations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocationsResult> getLocations(
  GetLocationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getLocations:getLocations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocationsResult.fromMap(result);
}

/// This data source fetches information from a provided Artifact Registry repository, based on a the latest version of the artifact and optional version.
///
/// ## Example Usage
///
///
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_artifactregistry_getmavenartifact" "latest" {
///   location      = gcp_artifactregistry_repository.maven_repo.location
///   repository_id = gcp_artifactregistry_repository.maven_repo.repository_id
///   group_id      = "com.example"
///   artifact_id   = "my-artifact"
/// }
/// data "gcp_artifactregistry_getmavenartifact" "withVersion" {
///   location      = gcp_artifactregistry_repository.maven_repo.location
///   repository_id = gcp_artifactregistry_repository.maven_repo.repository_id
///   artifact_name = "my-artifact:1.0.0"
/// }
///
/// resource "gcp_artifactregistry_repository" "maven_repo" {
///   location      = "us-central1"
///   repository_id = "my-maven-repo"
///   format        = "MAVEN"
/// }
/// ```
/// ```yaml
/// resources:
///   mavenRepo:
///     type: gcp:artifactregistry:Repository
///     name: maven_repo
///     properties:
///       location: us-central1
///       repositoryId: my-maven-repo
///       format: MAVEN
/// variables:
///   latest:
///     fn::invoke:
///       function: gcp:artifactregistry:getMavenArtifact
///       arguments:
///         location: ${mavenRepo.location}
///         repositoryId: ${mavenRepo.repositoryId}
///         groupId: com.example
///         artifactId: my-artifact
///   withVersion:
///     fn::invoke:
///       function: gcp:artifactregistry:getMavenArtifact
///       arguments:
///         location: ${mavenRepo.location}
///         repositoryId: ${mavenRepo.repositoryId}
///         artifactName: my-artifact:1.0.0
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_get_maven_artifact_get_maven_artifact_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMavenArtifactResult> getMavenArtifact(
  GetMavenArtifactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getMavenArtifact:getMavenArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMavenArtifactResult.fromMap(result);
}

/// Get information about Artifact Registry Maven artifacts.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs/java)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.mavenArtifacts/list).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myArtifacts = gcp.artifactregistry.getMavenArtifacts({
///     location: "us-central1",
///     repositoryId: "example-repo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_artifacts = gcp.artifactregistry.get_maven_artifacts(location="us-central1",
///     repository_id="example-repo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myArtifacts = Gcp.ArtifactRegistry.GetMavenArtifacts.Invoke(new()
///     {
///         Location = "us-central1",
///         RepositoryId = "example-repo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.GetMavenArtifacts(ctx, &artifactregistry.GetMavenArtifactsArgs{
/// 			Location:     "us-central1",
/// 			RepositoryId: "example-repo",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_artifactregistry_getmavenartifacts" "myArtifacts" {
///   location      = "us-central1"
///   repository_id = "example-repo"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.ArtifactregistryFunctions;
/// import com.pulumi.gcp.artifactregistry.inputs.GetMavenArtifactsArgs;
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
///         final var myArtifacts = ArtifactregistryFunctions.getMavenArtifacts(GetMavenArtifactsArgs.builder()
///             .location("us-central1")
///             .repositoryId("example-repo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myArtifacts:
///     fn::invoke:
///       function: gcp:artifactregistry:getMavenArtifacts
///       arguments:
///         location: us-central1
///         repositoryId: example-repo
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_get_maven_artifacts_get_maven_artifacts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMavenArtifactsResult> getMavenArtifacts(
  GetMavenArtifactsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getMavenArtifacts:getMavenArtifacts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMavenArtifactsResult.fromMap(result);
}

/// This data source fetches information from a provided Artifact Registry repository, based on a the latest version of the package and optional version.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const npmRepo = new gcp.artifactregistry.Repository("npm_repo", {
///     location: "us-central1",
///     repositoryId: "my-npm-repo",
///     format: "NPM",
/// });
/// const latest = gcp.artifactregistry.getNpmPackageOutput({
///     location: npmRepo.location,
///     repositoryId: npmRepo.repositoryId,
///     packageName: "example-pkg",
/// });
/// const withVersion = gcp.artifactregistry.getNpmPackageOutput({
///     location: npmRepo.location,
///     repositoryId: npmRepo.repositoryId,
///     packageName: "example-pkg:1.0.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// npm_repo = gcp.artifactregistry.Repository("npm_repo",
///     location="us-central1",
///     repository_id="my-npm-repo",
///     format="NPM")
/// latest = gcp.artifactregistry.get_npm_package_output(location=npm_repo.location,
///     repository_id=npm_repo.repository_id,
///     package_name="example-pkg")
/// with_version = gcp.artifactregistry.get_npm_package_output(location=npm_repo.location,
///     repository_id=npm_repo.repository_id,
///     package_name="example-pkg:1.0.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var npmRepo = new Gcp.ArtifactRegistry.Repository("npm_repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "my-npm-repo",
///         Format = "NPM",
///     });
///
///     var latest = Gcp.ArtifactRegistry.GetNpmPackage.Invoke(new()
///     {
///         Location = npmRepo.Location,
///         RepositoryId = npmRepo.RepositoryId,
///         PackageName = "example-pkg",
///     });
///
///     var withVersion = Gcp.ArtifactRegistry.GetNpmPackage.Invoke(new()
///     {
///         Location = npmRepo.Location,
///         RepositoryId = npmRepo.RepositoryId,
///         PackageName = "example-pkg:1.0.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		npmRepo, err := artifactregistry.NewRepository(ctx, "npm_repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("my-npm-repo"),
/// 			Format:       pulumi.String("NPM"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = artifactregistry.GetNpmPackageOutput(ctx, artifactregistry.GetNpmPackageOutputArgs{
/// 			Location:     npmRepo.Location,
/// 			RepositoryId: npmRepo.RepositoryId,
/// 			PackageName:  pulumi.String("example-pkg"),
/// 		}, nil)
/// 		_ = artifactregistry.GetNpmPackageOutput(ctx, artifactregistry.GetNpmPackageOutputArgs{
/// 			Location:     npmRepo.Location,
/// 			RepositoryId: npmRepo.RepositoryId,
/// 			PackageName:  pulumi.String("example-pkg:1.0.0"),
/// 		}, nil)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_artifactregistry_getnpmpackage" "latest" {
///   location      = gcp_artifactregistry_repository.npm_repo.location
///   repository_id = gcp_artifactregistry_repository.npm_repo.repository_id
///   package_name  = "example-pkg"
/// }
/// data "gcp_artifactregistry_getnpmpackage" "withVersion" {
///   location      = gcp_artifactregistry_repository.npm_repo.location
///   repository_id = gcp_artifactregistry_repository.npm_repo.repository_id
///   package_name  = "example-pkg:1.0.0"
/// }
///
/// resource "gcp_artifactregistry_repository" "npm_repo" {
///   location      = "us-central1"
///   repository_id = "my-npm-repo"
///   format        = "NPM"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.ArtifactregistryFunctions;
/// import com.pulumi.gcp.artifactregistry.inputs.GetNpmPackageArgs;
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
///         var npmRepo = new Repository("npmRepo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("my-npm-repo")
///             .format("NPM")
///             .build());
///
///         final var latest = ArtifactregistryFunctions.getNpmPackage(GetNpmPackageArgs.builder()
///             .location(npmRepo.location())
///             .repositoryId(npmRepo.repositoryId())
///             .packageName("example-pkg")
///             .build());
///
///         final var withVersion = ArtifactregistryFunctions.getNpmPackage(GetNpmPackageArgs.builder()
///             .location(npmRepo.location())
///             .repositoryId(npmRepo.repositoryId())
///             .packageName("example-pkg:1.0.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   npmRepo:
///     type: gcp:artifactregistry:Repository
///     name: npm_repo
///     properties:
///       location: us-central1
///       repositoryId: my-npm-repo
///       format: NPM
/// variables:
///   latest:
///     fn::invoke:
///       function: gcp:artifactregistry:getNpmPackage
///       arguments:
///         location: ${npmRepo.location}
///         repositoryId: ${npmRepo.repositoryId}
///         packageName: example-pkg
///   withVersion:
///     fn::invoke:
///       function: gcp:artifactregistry:getNpmPackage
///       arguments:
///         location: ${npmRepo.location}
///         repositoryId: ${npmRepo.repositoryId}
///         packageName: example-pkg:1.0.0
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_get_npm_package_get_npm_package_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNpmPackageResult> getNpmPackage(
  GetNpmPackageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getNpmPackage:getNpmPackage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNpmPackageResult.fromMap(result);
}

/// Get information about Artifact Registry Npm packages.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs/nodejs)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.npmPackages/list).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myPackages = gcp.artifactregistry.getNpmPackages({
///     location: "us-central1",
///     repositoryId: "example-repo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_packages = gcp.artifactregistry.get_npm_packages(location="us-central1",
///     repository_id="example-repo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myPackages = Gcp.ArtifactRegistry.GetNpmPackages.Invoke(new()
///     {
///         Location = "us-central1",
///         RepositoryId = "example-repo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.GetNpmPackages(ctx, &artifactregistry.GetNpmPackagesArgs{
/// 			Location:     "us-central1",
/// 			RepositoryId: "example-repo",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_artifactregistry_getnpmpackages" "myPackages" {
///   location      = "us-central1"
///   repository_id = "example-repo"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.ArtifactregistryFunctions;
/// import com.pulumi.gcp.artifactregistry.inputs.GetNpmPackagesArgs;
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
///         final var myPackages = ArtifactregistryFunctions.getNpmPackages(GetNpmPackagesArgs.builder()
///             .location("us-central1")
///             .repositoryId("example-repo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myPackages:
///     fn::invoke:
///       function: gcp:artifactregistry:getNpmPackages
///       arguments:
///         location: us-central1
///         repositoryId: example-repo
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_get_npm_packages_get_npm_packages_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNpmPackagesResult> getNpmPackages(
  GetNpmPackagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getNpmPackages:getNpmPackages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNpmPackagesResult.fromMap(result);
}

/// This data source fetches information of a package from a provided Artifact Registry repository.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as google from "@pulumi/google";
///
/// const myPackage = new google.index.ArtifactRegistryPackage("my_package", {
///     location: "us-west1",
///     repositoryId: "my-repository",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_google as google
///
/// my_package = google.ArtifactRegistryPackage("my_package",
///     location=us-west1,
///     repository_id=my-repository)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Google = Pulumi.Google;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myPackage = new Google.ArtifactRegistryPackage("my_package", new()
///     {
///         Location = "us-west1",
///         RepositoryId = "my-repository",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-google/sdk/go/google"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := google.NewArtifactRegistryPackage(ctx, "my_package", &google.ArtifactRegistryPackageArgs{
/// 			Location:     "us-west1",
/// 			RepositoryId: "my-repository",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// resource "google_artifactregistrypackage" "my_package" {
///   location      = "us-west1"
///   repository_id = "my-repository"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.google.ArtifactRegistryPackage;
/// import com.pulumi.google.ArtifactRegistryPackageArgs;
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
///         var myPackage = new ArtifactRegistryPackage("myPackage", ArtifactRegistryPackageArgs.builder()
///             .location("us-west1")
///             .repositoryId("my-repository")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myPackage:
///     type: google:ArtifactRegistryPackage
///     name: my_package
///     properties:
///       location: us-west1
///       repositoryId: my-repository
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_get_package_get_package_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPackageResult> getPackage(
  GetPackageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getPackage:getPackage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPackageResult.fromMap(result);
}

/// Get information about Artifact Registry packages.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs/overview)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.packages/list).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myImages = gcp.artifactregistry.getPackages({
///     location: "us-central1",
///     repositoryId: "example-repo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_images = gcp.artifactregistry.get_packages(location="us-central1",
///     repository_id="example-repo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myImages = Gcp.ArtifactRegistry.GetPackages.Invoke(new()
///     {
///         Location = "us-central1",
///         RepositoryId = "example-repo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.GetPackages(ctx, &artifactregistry.GetPackagesArgs{
/// 			Location:     "us-central1",
/// 			RepositoryId: "example-repo",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_artifactregistry_getpackages" "myImages" {
///   location      = "us-central1"
///   repository_id = "example-repo"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.ArtifactregistryFunctions;
/// import com.pulumi.gcp.artifactregistry.inputs.GetPackagesArgs;
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
///         final var myImages = ArtifactregistryFunctions.getPackages(GetPackagesArgs.builder()
///             .location("us-central1")
///             .repositoryId("example-repo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myImages:
///     fn::invoke:
///       function: gcp:artifactregistry:getPackages
///       arguments:
///         location: us-central1
///         repositoryId: example-repo
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_get_packages_get_packages_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPackagesResult> getPackages(
  GetPackagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getPackages:getPackages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPackagesResult.fromMap(result);
}

/// This data source fetches information from a provided Artifact Registry repository, based on a the latest version of the package and optional version.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pythonRepo = new gcp.artifactregistry.Repository("python_repo", {
///     location: "us-central1",
///     repositoryId: "my-python-repo",
///     format: "PYTHON",
/// });
/// const latest = gcp.artifactregistry.getPythonPackageOutput({
///     location: pythonRepo.location,
///     repositoryId: pythonRepo.repositoryId,
///     packageName: "example_pkg",
/// });
/// const withVersion = gcp.artifactregistry.getPythonPackageOutput({
///     location: pythonRepo.location,
///     repositoryId: pythonRepo.repositoryId,
///     packageName: "example_pkg:1.0.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// python_repo = gcp.artifactregistry.Repository("python_repo",
///     location="us-central1",
///     repository_id="my-python-repo",
///     format="PYTHON")
/// latest = gcp.artifactregistry.get_python_package_output(location=python_repo.location,
///     repository_id=python_repo.repository_id,
///     package_name="example_pkg")
/// with_version = gcp.artifactregistry.get_python_package_output(location=python_repo.location,
///     repository_id=python_repo.repository_id,
///     package_name="example_pkg:1.0.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pythonRepo = new Gcp.ArtifactRegistry.Repository("python_repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "my-python-repo",
///         Format = "PYTHON",
///     });
///
///     var latest = Gcp.ArtifactRegistry.GetPythonPackage.Invoke(new()
///     {
///         Location = pythonRepo.Location,
///         RepositoryId = pythonRepo.RepositoryId,
///         PackageName = "example_pkg",
///     });
///
///     var withVersion = Gcp.ArtifactRegistry.GetPythonPackage.Invoke(new()
///     {
///         Location = pythonRepo.Location,
///         RepositoryId = pythonRepo.RepositoryId,
///         PackageName = "example_pkg:1.0.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		pythonRepo, err := artifactregistry.NewRepository(ctx, "python_repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("my-python-repo"),
/// 			Format:       pulumi.String("PYTHON"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = artifactregistry.GetPythonPackageOutput(ctx, artifactregistry.GetPythonPackageOutputArgs{
/// 			Location:     pythonRepo.Location,
/// 			RepositoryId: pythonRepo.RepositoryId,
/// 			PackageName:  pulumi.String("example_pkg"),
/// 		}, nil)
/// 		_ = artifactregistry.GetPythonPackageOutput(ctx, artifactregistry.GetPythonPackageOutputArgs{
/// 			Location:     pythonRepo.Location,
/// 			RepositoryId: pythonRepo.RepositoryId,
/// 			PackageName:  pulumi.String("example_pkg:1.0.0"),
/// 		}, nil)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_artifactregistry_getpythonpackage" "latest" {
///   location      = gcp_artifactregistry_repository.python_repo.location
///   repository_id = gcp_artifactregistry_repository.python_repo.repository_id
///   package_name  = "example_pkg"
/// }
/// data "gcp_artifactregistry_getpythonpackage" "withVersion" {
///   location      = gcp_artifactregistry_repository.python_repo.location
///   repository_id = gcp_artifactregistry_repository.python_repo.repository_id
///   package_name  = "example_pkg:1.0.0"
/// }
///
/// resource "gcp_artifactregistry_repository" "python_repo" {
///   location      = "us-central1"
///   repository_id = "my-python-repo"
///   format        = "PYTHON"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.ArtifactregistryFunctions;
/// import com.pulumi.gcp.artifactregistry.inputs.GetPythonPackageArgs;
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
///         var pythonRepo = new Repository("pythonRepo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("my-python-repo")
///             .format("PYTHON")
///             .build());
///
///         final var latest = ArtifactregistryFunctions.getPythonPackage(GetPythonPackageArgs.builder()
///             .location(pythonRepo.location())
///             .repositoryId(pythonRepo.repositoryId())
///             .packageName("example_pkg")
///             .build());
///
///         final var withVersion = ArtifactregistryFunctions.getPythonPackage(GetPythonPackageArgs.builder()
///             .location(pythonRepo.location())
///             .repositoryId(pythonRepo.repositoryId())
///             .packageName("example_pkg:1.0.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pythonRepo:
///     type: gcp:artifactregistry:Repository
///     name: python_repo
///     properties:
///       location: us-central1
///       repositoryId: my-python-repo
///       format: PYTHON
/// variables:
///   latest:
///     fn::invoke:
///       function: gcp:artifactregistry:getPythonPackage
///       arguments:
///         location: ${pythonRepo.location}
///         repositoryId: ${pythonRepo.repositoryId}
///         packageName: example_pkg
///   withVersion:
///     fn::invoke:
///       function: gcp:artifactregistry:getPythonPackage
///       arguments:
///         location: ${pythonRepo.location}
///         repositoryId: ${pythonRepo.repositoryId}
///         packageName: example_pkg:1.0.0
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_get_python_package_get_python_package_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPythonPackageResult> getPythonPackage(
  GetPythonPackageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getPythonPackage:getPythonPackage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPythonPackageResult.fromMap(result);
}

/// Get information about Artifact Registry Python packages.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs/python)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.pythonPackages/list).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myPackages = gcp.artifactregistry.getPythonPackages({
///     location: "us-central1",
///     repositoryId: "example-repo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_packages = gcp.artifactregistry.get_python_packages(location="us-central1",
///     repository_id="example-repo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myPackages = Gcp.ArtifactRegistry.GetPythonPackages.Invoke(new()
///     {
///         Location = "us-central1",
///         RepositoryId = "example-repo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.GetPythonPackages(ctx, &artifactregistry.GetPythonPackagesArgs{
/// 			Location:     "us-central1",
/// 			RepositoryId: "example-repo",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_artifactregistry_getpythonpackages" "myPackages" {
///   location      = "us-central1"
///   repository_id = "example-repo"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.ArtifactregistryFunctions;
/// import com.pulumi.gcp.artifactregistry.inputs.GetPythonPackagesArgs;
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
///         final var myPackages = ArtifactregistryFunctions.getPythonPackages(GetPythonPackagesArgs.builder()
///             .location("us-central1")
///             .repositoryId("example-repo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myPackages:
///     fn::invoke:
///       function: gcp:artifactregistry:getPythonPackages
///       arguments:
///         location: us-central1
///         repositoryId: example-repo
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_get_python_packages_get_python_packages_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPythonPackagesResult> getPythonPackages(
  GetPythonPackagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getPythonPackages:getPythonPackages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPythonPackagesResult.fromMap(result);
}

/// Get information about Artifact Registry repositories.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories/list).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.artifactregistry.getRepositories({
///     location: "us-central1",
///     project: "my-project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.artifactregistry.get_repositories(location="us-central1",
///     project="my-project")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Gcp.ArtifactRegistry.GetRepositories.Invoke(new()
///     {
///         Location = "us-central1",
///         Project = "my-project",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.GetRepositories(ctx, &artifactregistry.GetRepositoriesArgs{
/// 			Location: "us-central1",
/// 			Project:  pulumi.StringRef("my-project"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_artifactregistry_getrepositories" "example" {
///   location = "us-central1"
///   project  = "my-project"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.ArtifactregistryFunctions;
/// import com.pulumi.gcp.artifactregistry.inputs.GetRepositoriesArgs;
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
///         final var example = ArtifactregistryFunctions.getRepositories(GetRepositoriesArgs.builder()
///             .location("us-central1")
///             .project("my-project")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: gcp:artifactregistry:getRepositories
///       arguments:
///         location: us-central1
///         project: my-project
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_get_repositories_get_repositories_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoriesResult> getRepositories(
  GetRepositoriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getRepositories:getRepositories',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoriesResult.fromMap(result);
}

/// Get information about a Google Artifact Registry Repository. For more information see
/// the [official documentation](https://cloud.google.com/artifact-registry/docs/)
/// and [API](https://cloud.google.com/artifact-registry/docs/apis).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_repo = gcp.artifactregistry.getRepository({
///     location: "us-central1",
///     repositoryId: "my-repository",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_repo = gcp.artifactregistry.get_repository(location="us-central1",
///     repository_id="my-repository")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_repo = Gcp.ArtifactRegistry.GetRepository.Invoke(new()
///     {
///         Location = "us-central1",
///         RepositoryId = "my-repository",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.LookupRepository(ctx, &artifactregistry.LookupRepositoryArgs{
/// 			Location:     "us-central1",
/// 			RepositoryId: "my-repository",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_artifactregistry_getrepository" "my-repo" {
///   location      = "us-central1"
///   repository_id = "my-repository"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.ArtifactregistryFunctions;
/// import com.pulumi.gcp.artifactregistry.inputs.GetRepositoryArgs;
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
///         final var my-repo = ArtifactregistryFunctions.getRepository(GetRepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("my-repository")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-repo:
///     fn::invoke:
///       function: gcp:artifactregistry:getRepository
///       arguments:
///         location: us-central1
///         repositoryId: my-repository
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_get_repository_get_repository_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryResult> getRepository(
  GetRepositoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getRepository:getRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryResult.fromMap(result);
}

/// Retrieves the current IAM policy data for repository
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.artifactregistry.getRepositoryIamPolicy({
///     project: my_repo.project,
///     location: my_repo.location,
///     repository: my_repo.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.artifactregistry.get_repository_iam_policy(project=my_repo["project"],
///     location=my_repo["location"],
///     repository=my_repo["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.ArtifactRegistry.GetRepositoryIamPolicy.Invoke(new()
///     {
///         Project = my_repo.Project,
///         Location = my_repo.Location,
///         Repository = my_repo.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.LookupRepositoryIamPolicy(ctx, &artifactregistry.LookupRepositoryIamPolicyArgs{
/// 			Project:    pulumi.StringRef(my_repo.Project),
/// 			Location:   pulumi.StringRef(my_repo.Location),
/// 			Repository: my_repo.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_artifactregistry_getrepositoryiampolicy" "policy" {
///   project    = my-repo.project
///   location   = my-repo.location
///   repository = my-repo.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.ArtifactregistryFunctions;
/// import com.pulumi.gcp.artifactregistry.inputs.GetRepositoryIamPolicyArgs;
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
///         final var policy = ArtifactregistryFunctions.getRepositoryIamPolicy(GetRepositoryIamPolicyArgs.builder()
///             .project(my_repo.get("project"))
///             .location(my_repo.get("location"))
///             .repository(my_repo.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:artifactregistry:getRepositoryIamPolicy
///       arguments:
///         project: ${["my-repo"].project}
///         location: ${["my-repo"].location}
///         repository: ${["my-repo"].name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_get_repository_iam_policy_get_repository_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryIamPolicyResult> getRepositoryIamPolicy(
  GetRepositoryIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getRepositoryIamPolicy:getRepositoryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyResult.fromMap(result);
}

/// This data source fetches information of a tag from a provided Artifact Registry repository.
///
/// ## Example Usage
///
///
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_artifactregistry_gettags" "myTags" {
///   location      = "us-central1"
///   repository_id = "example-repo"
///   package_name  = "example-package"
///   tag_name      = "latest"
/// }
/// ```
/// ```yaml
/// variables:
///   myTags:
///     fn::invoke:
///       function: gcp:artifactregistry:getTags
///       arguments:
///         location: us-central1
///         repositoryId: example-repo
///         packageName: example-package
///         tagName: latest
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_get_tag_get_tag_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagResult> getTag(
  GetTagArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getTag:getTag',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagResult.fromMap(result);
}

/// Get information about Artifact Registry tags.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs/overview)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.packages.tags/list).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myTags = gcp.artifactregistry.getTags({
///     location: "us-central1",
///     repositoryId: "example-repo",
///     packageName: "example-package",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_tags = gcp.artifactregistry.get_tags(location="us-central1",
///     repository_id="example-repo",
///     package_name="example-package")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myTags = Gcp.ArtifactRegistry.GetTags.Invoke(new()
///     {
///         Location = "us-central1",
///         RepositoryId = "example-repo",
///         PackageName = "example-package",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.GetTags(ctx, &artifactregistry.GetTagsArgs{
/// 			Location:     "us-central1",
/// 			RepositoryId: "example-repo",
/// 			PackageName:  "example-package",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_artifactregistry_gettags" "myTags" {
///   location      = "us-central1"
///   repository_id = "example-repo"
///   package_name  = "example-package"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.ArtifactregistryFunctions;
/// import com.pulumi.gcp.artifactregistry.inputs.GetTagsArgs;
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
///         final var myTags = ArtifactregistryFunctions.getTags(GetTagsArgs.builder()
///             .location("us-central1")
///             .repositoryId("example-repo")
///             .packageName("example-package")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myTags:
///     fn::invoke:
///       function: gcp:artifactregistry:getTags
///       arguments:
///         location: us-central1
///         repositoryId: example-repo
///         packageName: example-package
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_get_tags_get_tags_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagsResult> getTags(
  GetTagsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getTags:getTags',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagsResult.fromMap(result);
}

/// This data source fetches information of a version from a provided Artifact Registry repository.
///
/// ## Example Usage
///
///
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_artifactregistry_getversions" "myVersions" {
///   location      = "us-central1"
///   repository_id = "example-repo"
///   package_name  = "example-package"
///   version_name  = "latest"
/// }
/// ```
/// ```yaml
/// variables:
///   myVersions:
///     fn::invoke:
///       function: gcp:artifactregistry:getVersions
///       arguments:
///         location: us-central1
///         repositoryId: example-repo
///         packageName: example-package
///         versionName: latest
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_get_version_get_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVersionResult> getVersion(
  GetVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getVersion:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionResult.fromMap(result);
}

/// Get information about Artifact Registry versions.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs/overview)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.packages.versions/list).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myVersions = gcp.artifactregistry.getVersions({
///     location: "us-central1",
///     repositoryId: "example-repo",
///     packageName: "example-package",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_versions = gcp.artifactregistry.get_versions(location="us-central1",
///     repository_id="example-repo",
///     package_name="example-package")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myVersions = Gcp.ArtifactRegistry.GetVersions.Invoke(new()
///     {
///         Location = "us-central1",
///         RepositoryId = "example-repo",
///         PackageName = "example-package",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.GetVersions(ctx, &artifactregistry.GetVersionsArgs{
/// 			Location:     "us-central1",
/// 			RepositoryId: "example-repo",
/// 			PackageName:  "example-package",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_artifactregistry_getversions" "myVersions" {
///   location      = "us-central1"
///   repository_id = "example-repo"
///   package_name  = "example-package"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.ArtifactregistryFunctions;
/// import com.pulumi.gcp.artifactregistry.inputs.GetVersionsArgs;
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
///         final var myVersions = ArtifactregistryFunctions.getVersions(GetVersionsArgs.builder()
///             .location("us-central1")
///             .repositoryId("example-repo")
///             .packageName("example-package")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myVersions:
///     fn::invoke:
///       function: gcp:artifactregistry:getVersions
///       arguments:
///         location: us-central1
///         repositoryId: example-repo
///         packageName: example-package
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_get_versions_get_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVersionsResult> getVersions(
  GetVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getVersions:getVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionsResult.fromMap(result);
}
