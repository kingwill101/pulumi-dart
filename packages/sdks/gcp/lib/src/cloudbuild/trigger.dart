import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_approval_config.dart';
import 'trigger_args.dart';
import 'trigger_bitbucket_server_trigger_config.dart';
import 'trigger_build.dart';
import 'trigger_developer_connect_event_config.dart';
import 'trigger_git_file_source.dart';
import 'trigger_github.dart';
import 'trigger_pubsub_config.dart';
import 'trigger_repository_event_config.dart';
import 'trigger_source_to_build.dart';
import 'trigger_state.dart';
import 'trigger_trigger_template.dart';
import 'trigger_webhook_config.dart';

/// Configuration for an automated build in response to source repository changes.
///
///
/// To get more information about Trigger, see:
///
/// * [API documentation](https://cloud.google.com/cloud-build/docs/api/reference/rest/v1/projects.triggers)
/// * How-to Guides
/// * [Automating builds using build triggers](https://cloud.google.com/cloud-build/docs/running-builds/automate-builds)
///
/// &gt; **Note:** You can retrieve the email of the Cloud Build Service Account used in jobs by using the `gcp.projects.ServiceIdentity` resource.
///
/// ## Example Usage
///
/// ### Cloudbuild Trigger Filename
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const filename_trigger = new gcp.cloudbuild.Trigger("filename-trigger", {
///     location: "us-central1",
///     triggerTemplate: {
///         branchName: "main",
///         repoName: "my-repo",
///     },
///     substitutions: {
///         _FOO: "bar",
///         _BAZ: "qux",
///     },
///     filename: "cloudbuild.yaml",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// filename_trigger = gcp.cloudbuild.Trigger("filename-trigger",
///     location="us-central1",
///     trigger_template={
///         "branch_name": "main",
///         "repo_name": "my-repo",
///     },
///     substitutions={
///         "_FOO": "bar",
///         "_BAZ": "qux",
///     },
///     filename="cloudbuild.yaml")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filename_trigger = new Gcp.CloudBuild.Trigger("filename-trigger", new()
///     {
///         Location = "us-central1",
///         TriggerTemplate = new Gcp.CloudBuild.Inputs.TriggerTriggerTemplateArgs
///         {
///             BranchName = "main",
///             RepoName = "my-repo",
///         },
///         Substitutions =
///         {
///             { "_FOO", "bar" },
///             { "_BAZ", "qux" },
///         },
///         Filename = "cloudbuild.yaml",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuild.NewTrigger(ctx, "filename-trigger", &cloudbuild.TriggerArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			TriggerTemplate: &cloudbuild.TriggerTriggerTemplateArgs{
/// 				BranchName: pulumi.String("main"),
/// 				RepoName:   pulumi.String("my-repo"),
/// 			},
/// 			Substitutions: pulumi.StringMap{
/// 				"_FOO": pulumi.String("bar"),
/// 				"_BAZ": pulumi.String("qux"),
/// 			},
/// 			Filename: pulumi.String("cloudbuild.yaml"),
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
/// import com.pulumi.gcp.cloudbuild.Trigger;
/// import com.pulumi.gcp.cloudbuild.TriggerArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerTriggerTemplateArgs;
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
///         var filename_trigger = new Trigger("filename-trigger", TriggerArgs.builder()
///             .location("us-central1")
///             .triggerTemplate(TriggerTriggerTemplateArgs.builder()
///                 .branchName("main")
///                 .repoName("my-repo")
///                 .build())
///             .substitutions(Map.ofEntries(
///                 Map.entry("_FOO", "bar"),
///                 Map.entry("_BAZ", "qux")
///             ))
///             .filename("cloudbuild.yaml")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   filename-trigger:
///     type: gcp:cloudbuild:Trigger
///     properties:
///       location: us-central1
///       triggerTemplate:
///         branchName: main
///         repoName: my-repo
///       substitutions:
///         _FOO: bar
///         _BAZ: qux
///       filename: cloudbuild.yaml
/// ```
///
/// ### Cloudbuild Trigger Build
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const build_trigger = new gcp.cloudbuild.Trigger("build-trigger", {
///     name: "my-trigger",
///     location: "global",
///     triggerTemplate: {
///         branchName: "main",
///         repoName: "my-repo",
///     },
///     build: {
///         steps: [
///             {
///                 name: "gcr.io/cloud-builders/gcloud",
///                 args: [
///                     "storage",
///                     "cp",
///                     "gs://mybucket/remotefile.zip",
///                     "localfile.zip",
///                 ],
///                 timeout: "120s",
///                 secretEnvs: ["MY_SECRET"],
///             },
///             {
///                 name: "ubuntu",
///                 script: "echo hello",
///             },
///         ],
///         source: {
///             storageSource: {
///                 bucket: "mybucket",
///                 object: "source_code.tar.gz",
///             },
///         },
///         tags: [
///             "build",
///             "newFeature",
///         ],
///         substitutions: {
///             _FOO: "bar",
///             _BAZ: "qux",
///         },
///         queueTtl: "20s",
///         logsBucket: "gs://mybucket/logs",
///         secrets: [{
///             kmsKeyName: "projects/myProject/locations/global/keyRings/keyring-name/cryptoKeys/key-name",
///             secretEnv: {
///                 PASSWORD: "ZW5jcnlwdGVkLXBhc3N3b3JkCg==",
///             },
///         }],
///         availableSecrets: {
///             secretManagers: [{
///                 env: "MY_SECRET",
///                 versionName: "projects/myProject/secrets/mySecret/versions/latest",
///             }],
///         },
///         artifacts: {
///             images: ["gcr.io/$PROJECT_ID/$REPO_NAME:$COMMIT_SHA"],
///             objects: {
///                 location: "gs://bucket/path/to/somewhere/",
///                 paths: ["path"],
///             },
///             npmPackages: [{
///                 packagePath: "package.json",
///                 repository: "https://us-west1-npm.pkg.dev/myProject/quickstart-nodejs-repo",
///             }],
///             pythonPackages: [{
///                 paths: ["dist/*"],
///                 repository: "https://us-west1-python.pkg.dev/myProject/quickstart-python-repo",
///             }],
///             mavenArtifacts: [{
///                 repository: "https://us-west1-maven.pkg.dev/myProject/quickstart-java-repo",
///                 path: "/workspace/my-app/target/my-app-1.0.SNAPSHOT.jar",
///                 artifactId: "my-app",
///                 groupId: "com.mycompany.app",
///                 version: "1.0",
///             }],
///         },
///         options: {
///             sourceProvenanceHashes: ["MD5"],
///             requestedVerifyOption: "VERIFIED",
///             machineType: "N1_HIGHCPU_8",
///             diskSizeGb: 100,
///             substitutionOption: "ALLOW_LOOSE",
///             dynamicSubstitutions: true,
///             logStreamingOption: "STREAM_OFF",
///             workerPool: "pool",
///             logging: "LEGACY",
///             envs: ["ekey = evalue"],
///             secretEnvs: ["secretenv = svalue"],
///             volumes: [{
///                 name: "v1",
///                 path: "v1",
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// build_trigger = gcp.cloudbuild.Trigger("build-trigger",
///     name="my-trigger",
///     location="global",
///     trigger_template={
///         "branch_name": "main",
///         "repo_name": "my-repo",
///     },
///     build={
///         "steps": [
///             {
///                 "name": "gcr.io/cloud-builders/gcloud",
///                 "args": [
///                     "storage",
///                     "cp",
///                     "gs://mybucket/remotefile.zip",
///                     "localfile.zip",
///                 ],
///                 "timeout": "120s",
///                 "secret_envs": ["MY_SECRET"],
///             },
///             {
///                 "name": "ubuntu",
///                 "script": "echo hello",
///             },
///         ],
///         "source": {
///             "storage_source": {
///                 "bucket": "mybucket",
///                 "object": "source_code.tar.gz",
///             },
///         },
///         "tags": [
///             "build",
///             "newFeature",
///         ],
///         "substitutions": {
///             "_FOO": "bar",
///             "_BAZ": "qux",
///         },
///         "queue_ttl": "20s",
///         "logs_bucket": "gs://mybucket/logs",
///         "secrets": [{
///             "kms_key_name": "projects/myProject/locations/global/keyRings/keyring-name/cryptoKeys/key-name",
///             "secret_env": {
///                 "PASSWORD": "ZW5jcnlwdGVkLXBhc3N3b3JkCg==",
///             },
///         }],
///         "available_secrets": {
///             "secret_managers": [{
///                 "env": "MY_SECRET",
///                 "version_name": "projects/myProject/secrets/mySecret/versions/latest",
///             }],
///         },
///         "artifacts": {
///             "images": ["gcr.io/$PROJECT_ID/$REPO_NAME:$COMMIT_SHA"],
///             "objects": {
///                 "location": "gs://bucket/path/to/somewhere/",
///                 "paths": ["path"],
///             },
///             "npm_packages": [{
///                 "package_path": "package.json",
///                 "repository": "https://us-west1-npm.pkg.dev/myProject/quickstart-nodejs-repo",
///             }],
///             "python_packages": [{
///                 "paths": ["dist/*"],
///                 "repository": "https://us-west1-python.pkg.dev/myProject/quickstart-python-repo",
///             }],
///             "maven_artifacts": [{
///                 "repository": "https://us-west1-maven.pkg.dev/myProject/quickstart-java-repo",
///                 "path": "/workspace/my-app/target/my-app-1.0.SNAPSHOT.jar",
///                 "artifact_id": "my-app",
///                 "group_id": "com.mycompany.app",
///                 "version": "1.0",
///             }],
///         },
///         "options": {
///             "source_provenance_hashes": ["MD5"],
///             "requested_verify_option": "VERIFIED",
///             "machine_type": "N1_HIGHCPU_8",
///             "disk_size_gb": 100,
///             "substitution_option": "ALLOW_LOOSE",
///             "dynamic_substitutions": True,
///             "log_streaming_option": "STREAM_OFF",
///             "worker_pool": "pool",
///             "logging": "LEGACY",
///             "envs": ["ekey = evalue"],
///             "secret_envs": ["secretenv = svalue"],
///             "volumes": [{
///                 "name": "v1",
///                 "path": "v1",
///             }],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var build_trigger = new Gcp.CloudBuild.Trigger("build-trigger", new()
///     {
///         Name = "my-trigger",
///         Location = "global",
///         TriggerTemplate = new Gcp.CloudBuild.Inputs.TriggerTriggerTemplateArgs
///         {
///             BranchName = "main",
///             RepoName = "my-repo",
///         },
///         Build = new Gcp.CloudBuild.Inputs.TriggerBuildArgs
///         {
///             Steps = new[]
///             {
///                 new Gcp.CloudBuild.Inputs.TriggerBuildStepArgs
///                 {
///                     Name = "gcr.io/cloud-builders/gcloud",
///                     Args = new[]
///                     {
///                         "storage",
///                         "cp",
///                         "gs://mybucket/remotefile.zip",
///                         "localfile.zip",
///                     },
///                     Timeout = "120s",
///                     SecretEnvs = new[]
///                     {
///                         "MY_SECRET",
///                     },
///                 },
///                 new Gcp.CloudBuild.Inputs.TriggerBuildStepArgs
///                 {
///                     Name = "ubuntu",
///                     Script = "echo hello",
///                 },
///             },
///             Source = new Gcp.CloudBuild.Inputs.TriggerBuildSourceArgs
///             {
///                 StorageSource = new Gcp.CloudBuild.Inputs.TriggerBuildSourceStorageSourceArgs
///                 {
///                     Bucket = "mybucket",
///                     Object = "source_code.tar.gz",
///                 },
///             },
///             Tags = new[]
///             {
///                 "build",
///                 "newFeature",
///             },
///             Substitutions =
///             {
///                 { "_FOO", "bar" },
///                 { "_BAZ", "qux" },
///             },
///             QueueTtl = "20s",
///             LogsBucket = "gs://mybucket/logs",
///             Secrets = new[]
///             {
///                 new Gcp.CloudBuild.Inputs.TriggerBuildSecretArgs
///                 {
///                     KmsKeyName = "projects/myProject/locations/global/keyRings/keyring-name/cryptoKeys/key-name",
///                     SecretEnv =
///                     {
///                         { "PASSWORD", "ZW5jcnlwdGVkLXBhc3N3b3JkCg==" },
///                     },
///                 },
///             },
///             AvailableSecrets = new Gcp.CloudBuild.Inputs.TriggerBuildAvailableSecretsArgs
///             {
///                 SecretManagers = new[]
///                 {
///                     new Gcp.CloudBuild.Inputs.TriggerBuildAvailableSecretsSecretManagerArgs
///                     {
///                         Env = "MY_SECRET",
///                         VersionName = "projects/myProject/secrets/mySecret/versions/latest",
///                     },
///                 },
///             },
///             Artifacts = new Gcp.CloudBuild.Inputs.TriggerBuildArtifactsArgs
///             {
///                 Images = new[]
///                 {
///                     "gcr.io/$PROJECT_ID/$REPO_NAME:$COMMIT_SHA",
///                 },
///                 Objects = new Gcp.CloudBuild.Inputs.TriggerBuildArtifactsObjectsArgs
///                 {
///                     Location = "gs://bucket/path/to/somewhere/",
///                     Paths = new[]
///                     {
///                         "path",
///                     },
///                 },
///                 NpmPackages = new[]
///                 {
///                     new Gcp.CloudBuild.Inputs.TriggerBuildArtifactsNpmPackageArgs
///                     {
///                         PackagePath = "package.json",
///                         Repository = "https://us-west1-npm.pkg.dev/myProject/quickstart-nodejs-repo",
///                     },
///                 },
///                 PythonPackages = new[]
///                 {
///                     new Gcp.CloudBuild.Inputs.TriggerBuildArtifactsPythonPackageArgs
///                     {
///                         Paths = new[]
///                         {
///                             "dist/*",
///                         },
///                         Repository = "https://us-west1-python.pkg.dev/myProject/quickstart-python-repo",
///                     },
///                 },
///                 MavenArtifacts = new[]
///                 {
///                     new Gcp.CloudBuild.Inputs.TriggerBuildArtifactsMavenArtifactArgs
///                     {
///                         Repository = "https://us-west1-maven.pkg.dev/myProject/quickstart-java-repo",
///                         Path = "/workspace/my-app/target/my-app-1.0.SNAPSHOT.jar",
///                         ArtifactId = "my-app",
///                         GroupId = "com.mycompany.app",
///                         Version = "1.0",
///                     },
///                 },
///             },
///             Options = new Gcp.CloudBuild.Inputs.TriggerBuildOptionsArgs
///             {
///                 SourceProvenanceHashes = new[]
///                 {
///                     "MD5",
///                 },
///                 RequestedVerifyOption = "VERIFIED",
///                 MachineType = "N1_HIGHCPU_8",
///                 DiskSizeGb = 100,
///                 SubstitutionOption = "ALLOW_LOOSE",
///                 DynamicSubstitutions = true,
///                 LogStreamingOption = "STREAM_OFF",
///                 WorkerPool = "pool",
///                 Logging = "LEGACY",
///                 Envs = new[]
///                 {
///                     "ekey = evalue",
///                 },
///                 SecretEnvs = new[]
///                 {
///                     "secretenv = svalue",
///                 },
///                 Volumes = new[]
///                 {
///                     new Gcp.CloudBuild.Inputs.TriggerBuildOptionsVolumeArgs
///                     {
///                         Name = "v1",
///                         Path = "v1",
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuild.NewTrigger(ctx, "build-trigger", &cloudbuild.TriggerArgs{
/// 			Name:     pulumi.String("my-trigger"),
/// 			Location: pulumi.String("global"),
/// 			TriggerTemplate: &cloudbuild.TriggerTriggerTemplateArgs{
/// 				BranchName: pulumi.String("main"),
/// 				RepoName:   pulumi.String("my-repo"),
/// 			},
/// 			Build: &cloudbuild.TriggerBuildArgs{
/// 				Steps: cloudbuild.TriggerBuildStepArray{
/// 					&cloudbuild.TriggerBuildStepArgs{
/// 						Name: pulumi.String("gcr.io/cloud-builders/gcloud"),
/// 						Args: pulumi.StringArray{
/// 							pulumi.String("storage"),
/// 							pulumi.String("cp"),
/// 							pulumi.String("gs://mybucket/remotefile.zip"),
/// 							pulumi.String("localfile.zip"),
/// 						},
/// 						Timeout: pulumi.String("120s"),
/// 						SecretEnvs: pulumi.StringArray{
/// 							pulumi.String("MY_SECRET"),
/// 						},
/// 					},
/// 					&cloudbuild.TriggerBuildStepArgs{
/// 						Name:   pulumi.String("ubuntu"),
/// 						Script: pulumi.String("echo hello"),
/// 					},
/// 				},
/// 				Source: &cloudbuild.TriggerBuildSourceArgs{
/// 					StorageSource: &cloudbuild.TriggerBuildSourceStorageSourceArgs{
/// 						Bucket: pulumi.String("mybucket"),
/// 						Object: pulumi.String("source_code.tar.gz"),
/// 					},
/// 				},
/// 				Tags: pulumi.StringArray{
/// 					pulumi.String("build"),
/// 					pulumi.String("newFeature"),
/// 				},
/// 				Substitutions: pulumi.StringMap{
/// 					"_FOO": pulumi.String("bar"),
/// 					"_BAZ": pulumi.String("qux"),
/// 				},
/// 				QueueTtl:   pulumi.String("20s"),
/// 				LogsBucket: pulumi.String("gs://mybucket/logs"),
/// 				Secrets: cloudbuild.TriggerBuildSecretArray{
/// 					&cloudbuild.TriggerBuildSecretArgs{
/// 						KmsKeyName: pulumi.String("projects/myProject/locations/global/keyRings/keyring-name/cryptoKeys/key-name"),
/// 						SecretEnv: pulumi.StringMap{
/// 							"PASSWORD": pulumi.String("ZW5jcnlwdGVkLXBhc3N3b3JkCg=="),
/// 						},
/// 					},
/// 				},
/// 				AvailableSecrets: &cloudbuild.TriggerBuildAvailableSecretsArgs{
/// 					SecretManagers: cloudbuild.TriggerBuildAvailableSecretsSecretManagerArray{
/// 						&cloudbuild.TriggerBuildAvailableSecretsSecretManagerArgs{
/// 							Env:         pulumi.String("MY_SECRET"),
/// 							VersionName: pulumi.String("projects/myProject/secrets/mySecret/versions/latest"),
/// 						},
/// 					},
/// 				},
/// 				Artifacts: &cloudbuild.TriggerBuildArtifactsArgs{
/// 					Images: pulumi.StringArray{
/// 						pulumi.String("gcr.io/$PROJECT_ID/$REPO_NAME:$COMMIT_SHA"),
/// 					},
/// 					Objects: &cloudbuild.TriggerBuildArtifactsObjectsArgs{
/// 						Location: pulumi.String("gs://bucket/path/to/somewhere/"),
/// 						Paths: pulumi.StringArray{
/// 							pulumi.String("path"),
/// 						},
/// 					},
/// 					NpmPackages: cloudbuild.TriggerBuildArtifactsNpmPackageArray{
/// 						&cloudbuild.TriggerBuildArtifactsNpmPackageArgs{
/// 							PackagePath: pulumi.String("package.json"),
/// 							Repository:  pulumi.String("https://us-west1-npm.pkg.dev/myProject/quickstart-nodejs-repo"),
/// 						},
/// 					},
/// 					PythonPackages: cloudbuild.TriggerBuildArtifactsPythonPackageArray{
/// 						&cloudbuild.TriggerBuildArtifactsPythonPackageArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("dist/*"),
/// 							},
/// 							Repository: pulumi.String("https://us-west1-python.pkg.dev/myProject/quickstart-python-repo"),
/// 						},
/// 					},
/// 					MavenArtifacts: cloudbuild.TriggerBuildArtifactsMavenArtifactArray{
/// 						&cloudbuild.TriggerBuildArtifactsMavenArtifactArgs{
/// 							Repository: pulumi.String("https://us-west1-maven.pkg.dev/myProject/quickstart-java-repo"),
/// 							Path:       pulumi.String("/workspace/my-app/target/my-app-1.0.SNAPSHOT.jar"),
/// 							ArtifactId: pulumi.String("my-app"),
/// 							GroupId:    pulumi.String("com.mycompany.app"),
/// 							Version:    pulumi.String("1.0"),
/// 						},
/// 					},
/// 				},
/// 				Options: &cloudbuild.TriggerBuildOptionsArgs{
/// 					SourceProvenanceHashes: pulumi.StringArray{
/// 						pulumi.String("MD5"),
/// 					},
/// 					RequestedVerifyOption: pulumi.String("VERIFIED"),
/// 					MachineType:           pulumi.String("N1_HIGHCPU_8"),
/// 					DiskSizeGb:            pulumi.Int(100),
/// 					SubstitutionOption:    pulumi.String("ALLOW_LOOSE"),
/// 					DynamicSubstitutions:  pulumi.Bool(true),
/// 					LogStreamingOption:    pulumi.String("STREAM_OFF"),
/// 					WorkerPool:            pulumi.String("pool"),
/// 					Logging:               pulumi.String("LEGACY"),
/// 					Envs: pulumi.StringArray{
/// 						pulumi.String("ekey = evalue"),
/// 					},
/// 					SecretEnvs: pulumi.StringArray{
/// 						pulumi.String("secretenv = svalue"),
/// 					},
/// 					Volumes: cloudbuild.TriggerBuildOptionsVolumeArray{
/// 						&cloudbuild.TriggerBuildOptionsVolumeArgs{
/// 							Name: pulumi.String("v1"),
/// 							Path: pulumi.String("v1"),
/// 						},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudbuild.Trigger;
/// import com.pulumi.gcp.cloudbuild.TriggerArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerTriggerTemplateArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildSourceArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildSourceStorageSourceArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildAvailableSecretsArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildArtifactsArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildArtifactsObjectsArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildOptionsArgs;
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
///         var build_trigger = new Trigger("build-trigger", TriggerArgs.builder()
///             .name("my-trigger")
///             .location("global")
///             .triggerTemplate(TriggerTriggerTemplateArgs.builder()
///                 .branchName("main")
///                 .repoName("my-repo")
///                 .build())
///             .build(TriggerBuildArgs.builder()
///                 .steps(
///                     TriggerBuildStepArgs.builder()
///                         .name("gcr.io/cloud-builders/gcloud")
///                         .args(
///                             "storage",
///                             "cp",
///                             "gs://mybucket/remotefile.zip",
///                             "localfile.zip")
///                         .timeout("120s")
///                         .secretEnvs("MY_SECRET")
///                         .build(),
///                     TriggerBuildStepArgs.builder()
///                         .name("ubuntu")
///                         .script("echo hello")
///                         .build())
///                 .source(TriggerBuildSourceArgs.builder()
///                     .storageSource(TriggerBuildSourceStorageSourceArgs.builder()
///                         .bucket("mybucket")
///                         .object("source_code.tar.gz")
///                         .build())
///                     .build())
///                 .tags(
///                     "build",
///                     "newFeature")
///                 .substitutions(Map.ofEntries(
///                     Map.entry("_FOO", "bar"),
///                     Map.entry("_BAZ", "qux")
///                 ))
///                 .queueTtl("20s")
///                 .logsBucket("gs://mybucket/logs")
///                 .secrets(TriggerBuildSecretArgs.builder()
///                     .kmsKeyName("projects/myProject/locations/global/keyRings/keyring-name/cryptoKeys/key-name")
///                     .secretEnv(Map.of("PASSWORD", "ZW5jcnlwdGVkLXBhc3N3b3JkCg=="))
///                     .build())
///                 .availableSecrets(TriggerBuildAvailableSecretsArgs.builder()
///                     .secretManagers(TriggerBuildAvailableSecretsSecretManagerArgs.builder()
///                         .env("MY_SECRET")
///                         .versionName("projects/myProject/secrets/mySecret/versions/latest")
///                         .build())
///                     .build())
///                 .artifacts(TriggerBuildArtifactsArgs.builder()
///                     .images("gcr.io/$PROJECT_ID/$REPO_NAME:$COMMIT_SHA")
///                     .objects(TriggerBuildArtifactsObjectsArgs.builder()
///                         .location("gs://bucket/path/to/somewhere/")
///                         .paths("path")
///                         .build())
///                     .npmPackages(TriggerBuildArtifactsNpmPackageArgs.builder()
///                         .packagePath("package.json")
///                         .repository("https://us-west1-npm.pkg.dev/myProject/quickstart-nodejs-repo")
///                         .build())
///                     .pythonPackages(TriggerBuildArtifactsPythonPackageArgs.builder()
///                         .paths("dist/*")
///                         .repository("https://us-west1-python.pkg.dev/myProject/quickstart-python-repo")
///                         .build())
///                     .mavenArtifacts(TriggerBuildArtifactsMavenArtifactArgs.builder()
///                         .repository("https://us-west1-maven.pkg.dev/myProject/quickstart-java-repo")
///                         .path("/workspace/my-app/target/my-app-1.0.SNAPSHOT.jar")
///                         .artifactId("my-app")
///                         .groupId("com.mycompany.app")
///                         .version("1.0")
///                         .build())
///                     .build())
///                 .options(TriggerBuildOptionsArgs.builder()
///                     .sourceProvenanceHashes("MD5")
///                     .requestedVerifyOption("VERIFIED")
///                     .machineType("N1_HIGHCPU_8")
///                     .diskSizeGb(100)
///                     .substitutionOption("ALLOW_LOOSE")
///                     .dynamicSubstitutions(true)
///                     .logStreamingOption("STREAM_OFF")
///                     .workerPool("pool")
///                     .logging("LEGACY")
///                     .envs("ekey = evalue")
///                     .secretEnvs("secretenv = svalue")
///                     .volumes(TriggerBuildOptionsVolumeArgs.builder()
///                         .name("v1")
///                         .path("v1")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   build-trigger:
///     type: gcp:cloudbuild:Trigger
///     properties:
///       name: my-trigger
///       location: global
///       triggerTemplate:
///         branchName: main
///         repoName: my-repo
///       build:
///         steps:
///           - name: gcr.io/cloud-builders/gcloud
///             args:
///               - storage
///               - cp
///               - gs://mybucket/remotefile.zip
///               - localfile.zip
///             timeout: 120s
///             secretEnvs:
///               - MY_SECRET
///           - name: ubuntu
///             script: echo hello
///         source:
///           storageSource:
///             bucket: mybucket
///             object: source_code.tar.gz
///         tags:
///           - build
///           - newFeature
///         substitutions:
///           _FOO: bar
///           _BAZ: qux
///         queueTtl: 20s
///         logsBucket: gs://mybucket/logs
///         secrets:
///           - kmsKeyName: projects/myProject/locations/global/keyRings/keyring-name/cryptoKeys/key-name
///             secretEnv:
///               PASSWORD: ZW5jcnlwdGVkLXBhc3N3b3JkCg==
///         availableSecrets:
///           secretManagers:
///             - env: MY_SECRET
///               versionName: projects/myProject/secrets/mySecret/versions/latest
///         artifacts:
///           images:
///             - gcr.io/$PROJECT_ID/$REPO_NAME:$COMMIT_SHA
///           objects:
///             location: gs://bucket/path/to/somewhere/
///             paths:
///               - path
///           npmPackages:
///             - packagePath: package.json
///               repository: https://us-west1-npm.pkg.dev/myProject/quickstart-nodejs-repo
///           pythonPackages:
///             - paths:
///                 - dist/*
///               repository: https://us-west1-python.pkg.dev/myProject/quickstart-python-repo
///           mavenArtifacts:
///             - repository: https://us-west1-maven.pkg.dev/myProject/quickstart-java-repo
///               path: /workspace/my-app/target/my-app-1.0.SNAPSHOT.jar
///               artifactId: my-app
///               groupId: com.mycompany.app
///               version: '1.0'
///         options:
///           sourceProvenanceHashes:
///             - MD5
///           requestedVerifyOption: VERIFIED
///           machineType: N1_HIGHCPU_8
///           diskSizeGb: 100
///           substitutionOption: ALLOW_LOOSE
///           dynamicSubstitutions: true
///           logStreamingOption: STREAM_OFF
///           workerPool: pool
///           logging: LEGACY
///           envs:
///             - ekey = evalue
///           secretEnvs:
///             - secretenv = svalue
///           volumes:
///             - name: v1
///               path: v1
/// ```
///
/// ### Cloudbuild Trigger Service Account
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const cloudbuildServiceAccount = new gcp.serviceaccount.Account("cloudbuild_service_account", {accountId: "cloud-sa"});
/// const actAs = new gcp.projects.IAMMember("act_as", {
///     project: project.then(project => project.projectId),
///     role: "roles/iam.serviceAccountUser",
///     member: pulumi.interpolate`serviceAccount:${cloudbuildServiceAccount.email}`,
/// });
/// const logsWriter = new gcp.projects.IAMMember("logs_writer", {
///     project: project.then(project => project.projectId),
///     role: "roles/logging.logWriter",
///     member: pulumi.interpolate`serviceAccount:${cloudbuildServiceAccount.email}`,
/// });
/// const service_account_trigger = new gcp.cloudbuild.Trigger("service-account-trigger", {
///     triggerTemplate: {
///         branchName: "main",
///         repoName: "my-repo",
///     },
///     serviceAccount: cloudbuildServiceAccount.id,
///     filename: "cloudbuild.yaml",
/// }, {
///     dependsOn: [
///         actAs,
///         logsWriter,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// cloudbuild_service_account = gcp.serviceaccount.Account("cloudbuild_service_account", account_id="cloud-sa")
/// act_as = gcp.projects.IAMMember("act_as",
///     project=project.project_id,
///     role="roles/iam.serviceAccountUser",
///     member=cloudbuild_service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// logs_writer = gcp.projects.IAMMember("logs_writer",
///     project=project.project_id,
///     role="roles/logging.logWriter",
///     member=cloudbuild_service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// service_account_trigger = gcp.cloudbuild.Trigger("service-account-trigger",
///     trigger_template={
///         "branch_name": "main",
///         "repo_name": "my-repo",
///     },
///     service_account=cloudbuild_service_account.id,
///     filename="cloudbuild.yaml",
///     opts = pulumi.ResourceOptions(depends_on=[
///             act_as,
///             logs_writer,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var cloudbuildServiceAccount = new Gcp.ServiceAccount.Account("cloudbuild_service_account", new()
///     {
///         AccountId = "cloud-sa",
///     });
///
///     var actAs = new Gcp.Projects.IAMMember("act_as", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Role = "roles/iam.serviceAccountUser",
///         Member = cloudbuildServiceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var logsWriter = new Gcp.Projects.IAMMember("logs_writer", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Role = "roles/logging.logWriter",
///         Member = cloudbuildServiceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var service_account_trigger = new Gcp.CloudBuild.Trigger("service-account-trigger", new()
///     {
///         TriggerTemplate = new Gcp.CloudBuild.Inputs.TriggerTriggerTemplateArgs
///         {
///             BranchName = "main",
///             RepoName = "my-repo",
///         },
///         ServiceAccount = cloudbuildServiceAccount.Id,
///         Filename = "cloudbuild.yaml",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             actAs,
///             logsWriter,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cloudbuildServiceAccount, err := serviceaccount.NewAccount(ctx, "cloudbuild_service_account", &serviceaccount.AccountArgs{
/// 			AccountId: pulumi.String("cloud-sa"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		actAs, err := projects.NewIAMMember(ctx, "act_as", &projects.IAMMemberArgs{
/// 			Project: pulumi.String(project.ProjectId),
/// 			Role:    pulumi.String("roles/iam.serviceAccountUser"),
/// 			Member: cloudbuildServiceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		logsWriter, err := projects.NewIAMMember(ctx, "logs_writer", &projects.IAMMemberArgs{
/// 			Project: pulumi.String(project.ProjectId),
/// 			Role:    pulumi.String("roles/logging.logWriter"),
/// 			Member: cloudbuildServiceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudbuild.NewTrigger(ctx, "service-account-trigger", &cloudbuild.TriggerArgs{
/// 			TriggerTemplate: &cloudbuild.TriggerTriggerTemplateArgs{
/// 				BranchName: pulumi.String("main"),
/// 				RepoName:   pulumi.String("my-repo"),
/// 			},
/// 			ServiceAccount: cloudbuildServiceAccount.ID(),
/// 			Filename:       pulumi.String("cloudbuild.yaml"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			actAs,
/// 			logsWriter,
/// 		}))
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.cloudbuild.Trigger;
/// import com.pulumi.gcp.cloudbuild.TriggerArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerTriggerTemplateArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var cloudbuildServiceAccount = new Account("cloudbuildServiceAccount", AccountArgs.builder()
///             .accountId("cloud-sa")
///             .build());
///
///         var actAs = new IAMMember("actAs", IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/iam.serviceAccountUser")
///             .member(cloudbuildServiceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var logsWriter = new IAMMember("logsWriter", IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/logging.logWriter")
///             .member(cloudbuildServiceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var service_account_trigger = new Trigger("service-account-trigger", TriggerArgs.builder()
///             .triggerTemplate(TriggerTriggerTemplateArgs.builder()
///                 .branchName("main")
///                 .repoName("my-repo")
///                 .build())
///             .serviceAccount(cloudbuildServiceAccount.id())
///             .filename("cloudbuild.yaml")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     actAs,
///                     logsWriter)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   service-account-trigger:
///     type: gcp:cloudbuild:Trigger
///     properties:
///       triggerTemplate:
///         branchName: main
///         repoName: my-repo
///       serviceAccount: ${cloudbuildServiceAccount.id}
///       filename: cloudbuild.yaml
///     options:
///       dependsOn:
///         - ${actAs}
///         - ${logsWriter}
///   cloudbuildServiceAccount:
///     type: gcp:serviceaccount:Account
///     name: cloudbuild_service_account
///     properties:
///       accountId: cloud-sa
///   actAs:
///     type: gcp:projects:IAMMember
///     name: act_as
///     properties:
///       project: ${project.projectId}
///       role: roles/iam.serviceAccountUser
///       member: serviceAccount:${cloudbuildServiceAccount.email}
///   logsWriter:
///     type: gcp:projects:IAMMember
///     name: logs_writer
///     properties:
///       project: ${project.projectId}
///       role: roles/logging.logWriter
///       member: serviceAccount:${cloudbuildServiceAccount.email}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Cloudbuild Trigger Include Build Logs
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const include_build_logs_trigger = new gcp.cloudbuild.Trigger("include-build-logs-trigger", {
///     location: "us-central1",
///     name: "include-build-logs-trigger",
///     filename: "cloudbuild.yaml",
///     github: {
///         owner: "hashicorp",
///         name: "terraform-provider-google-beta",
///         push: {
///             branch: "^main$",
///         },
///     },
///     includeBuildLogs: "INCLUDE_BUILD_LOGS_WITH_STATUS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// include_build_logs_trigger = gcp.cloudbuild.Trigger("include-build-logs-trigger",
///     location="us-central1",
///     name="include-build-logs-trigger",
///     filename="cloudbuild.yaml",
///     github={
///         "owner": "hashicorp",
///         "name": "terraform-provider-google-beta",
///         "push": {
///             "branch": "^main$",
///         },
///     },
///     include_build_logs="INCLUDE_BUILD_LOGS_WITH_STATUS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var include_build_logs_trigger = new Gcp.CloudBuild.Trigger("include-build-logs-trigger", new()
///     {
///         Location = "us-central1",
///         Name = "include-build-logs-trigger",
///         Filename = "cloudbuild.yaml",
///         Github = new Gcp.CloudBuild.Inputs.TriggerGithubArgs
///         {
///             Owner = "hashicorp",
///             Name = "terraform-provider-google-beta",
///             Push = new Gcp.CloudBuild.Inputs.TriggerGithubPushArgs
///             {
///                 Branch = "^main$",
///             },
///         },
///         IncludeBuildLogs = "INCLUDE_BUILD_LOGS_WITH_STATUS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuild.NewTrigger(ctx, "include-build-logs-trigger", &cloudbuild.TriggerArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Name:     pulumi.String("include-build-logs-trigger"),
/// 			Filename: pulumi.String("cloudbuild.yaml"),
/// 			Github: &cloudbuild.TriggerGithubArgs{
/// 				Owner: pulumi.String("hashicorp"),
/// 				Name:  pulumi.String("terraform-provider-google-beta"),
/// 				Push: &cloudbuild.TriggerGithubPushArgs{
/// 					Branch: pulumi.String("^main$"),
/// 				},
/// 			},
/// 			IncludeBuildLogs: pulumi.String("INCLUDE_BUILD_LOGS_WITH_STATUS"),
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
/// import com.pulumi.gcp.cloudbuild.Trigger;
/// import com.pulumi.gcp.cloudbuild.TriggerArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerGithubArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerGithubPushArgs;
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
///         var include_build_logs_trigger = new Trigger("include-build-logs-trigger", TriggerArgs.builder()
///             .location("us-central1")
///             .name("include-build-logs-trigger")
///             .filename("cloudbuild.yaml")
///             .github(TriggerGithubArgs.builder()
///                 .owner("hashicorp")
///                 .name("terraform-provider-google-beta")
///                 .push(TriggerGithubPushArgs.builder()
///                     .branch("^main$")
///                     .build())
///                 .build())
///             .includeBuildLogs("INCLUDE_BUILD_LOGS_WITH_STATUS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   include-build-logs-trigger:
///     type: gcp:cloudbuild:Trigger
///     properties:
///       location: us-central1
///       name: include-build-logs-trigger
///       filename: cloudbuild.yaml
///       github:
///         owner: hashicorp
///         name: terraform-provider-google-beta
///         push:
///           branch: ^main$
///       includeBuildLogs: INCLUDE_BUILD_LOGS_WITH_STATUS
/// ```
///
/// ### Cloudbuild Trigger Pubsub Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const mytopic = new gcp.pubsub.Topic("mytopic", {name: "my-topic"});
/// const pubsub_config_trigger = new gcp.cloudbuild.Trigger("pubsub-config-trigger", {
///     location: "us-central1",
///     name: "pubsub-trigger",
///     description: "acceptance test example pubsub build trigger",
///     pubsubConfig: {
///         topic: mytopic.id,
///     },
///     sourceToBuild: {
///         uri: "https://hashicorp/terraform-provider-google-beta",
///         ref: "refs/heads/main",
///         repoType: "GITHUB",
///     },
///     gitFileSource: {
///         path: "cloudbuild.yaml",
///         uri: "https://hashicorp/terraform-provider-google-beta",
///         revision: "refs/heads/main",
///         repoType: "GITHUB",
///     },
///     substitutions: {
///         _ACTION: "$(body.message.data.action)",
///     },
///     filter: "_ACTION.matches('INSERT')",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// mytopic = gcp.pubsub.Topic("mytopic", name="my-topic")
/// pubsub_config_trigger = gcp.cloudbuild.Trigger("pubsub-config-trigger",
///     location="us-central1",
///     name="pubsub-trigger",
///     description="acceptance test example pubsub build trigger",
///     pubsub_config={
///         "topic": mytopic.id,
///     },
///     source_to_build={
///         "uri": "https://hashicorp/terraform-provider-google-beta",
///         "ref": "refs/heads/main",
///         "repo_type": "GITHUB",
///     },
///     git_file_source={
///         "path": "cloudbuild.yaml",
///         "uri": "https://hashicorp/terraform-provider-google-beta",
///         "revision": "refs/heads/main",
///         "repo_type": "GITHUB",
///     },
///     substitutions={
///         "_ACTION": "$(body.message.data.action)",
///     },
///     filter="_ACTION.matches('INSERT')")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mytopic = new Gcp.PubSub.Topic("mytopic", new()
///     {
///         Name = "my-topic",
///     });
///
///     var pubsub_config_trigger = new Gcp.CloudBuild.Trigger("pubsub-config-trigger", new()
///     {
///         Location = "us-central1",
///         Name = "pubsub-trigger",
///         Description = "acceptance test example pubsub build trigger",
///         PubsubConfig = new Gcp.CloudBuild.Inputs.TriggerPubsubConfigArgs
///         {
///             Topic = mytopic.Id,
///         },
///         SourceToBuild = new Gcp.CloudBuild.Inputs.TriggerSourceToBuildArgs
///         {
///             Uri = "https://hashicorp/terraform-provider-google-beta",
///             Ref = "refs/heads/main",
///             RepoType = "GITHUB",
///         },
///         GitFileSource = new Gcp.CloudBuild.Inputs.TriggerGitFileSourceArgs
///         {
///             Path = "cloudbuild.yaml",
///             Uri = "https://hashicorp/terraform-provider-google-beta",
///             Revision = "refs/heads/main",
///             RepoType = "GITHUB",
///         },
///         Substitutions =
///         {
///             { "_ACTION", "$(body.message.data.action)" },
///         },
///         Filter = "_ACTION.matches('INSERT')",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		mytopic, err := pubsub.NewTopic(ctx, "mytopic", &pubsub.TopicArgs{
/// 			Name: pulumi.String("my-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudbuild.NewTrigger(ctx, "pubsub-config-trigger", &cloudbuild.TriggerArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			Name:        pulumi.String("pubsub-trigger"),
/// 			Description: pulumi.String("acceptance test example pubsub build trigger"),
/// 			PubsubConfig: &cloudbuild.TriggerPubsubConfigArgs{
/// 				Topic: mytopic.ID(),
/// 			},
/// 			SourceToBuild: &cloudbuild.TriggerSourceToBuildArgs{
/// 				Uri:      pulumi.String("https://hashicorp/terraform-provider-google-beta"),
/// 				Ref:      pulumi.String("refs/heads/main"),
/// 				RepoType: pulumi.String("GITHUB"),
/// 			},
/// 			GitFileSource: &cloudbuild.TriggerGitFileSourceArgs{
/// 				Path:     pulumi.String("cloudbuild.yaml"),
/// 				Uri:      pulumi.String("https://hashicorp/terraform-provider-google-beta"),
/// 				Revision: pulumi.String("refs/heads/main"),
/// 				RepoType: pulumi.String("GITHUB"),
/// 			},
/// 			Substitutions: pulumi.StringMap{
/// 				"_ACTION": pulumi.String("$(body.message.data.action)"),
/// 			},
/// 			Filter: pulumi.String("_ACTION.matches('INSERT')"),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.cloudbuild.Trigger;
/// import com.pulumi.gcp.cloudbuild.TriggerArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerPubsubConfigArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerSourceToBuildArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerGitFileSourceArgs;
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
///         var mytopic = new Topic("mytopic", TopicArgs.builder()
///             .name("my-topic")
///             .build());
///
///         var pubsub_config_trigger = new Trigger("pubsub-config-trigger", TriggerArgs.builder()
///             .location("us-central1")
///             .name("pubsub-trigger")
///             .description("acceptance test example pubsub build trigger")
///             .pubsubConfig(TriggerPubsubConfigArgs.builder()
///                 .topic(mytopic.id())
///                 .build())
///             .sourceToBuild(TriggerSourceToBuildArgs.builder()
///                 .uri("https://hashicorp/terraform-provider-google-beta")
///                 .ref("refs/heads/main")
///                 .repoType("GITHUB")
///                 .build())
///             .gitFileSource(TriggerGitFileSourceArgs.builder()
///                 .path("cloudbuild.yaml")
///                 .uri("https://hashicorp/terraform-provider-google-beta")
///                 .revision("refs/heads/main")
///                 .repoType("GITHUB")
///                 .build())
///             .substitutions(Map.of("_ACTION", "$(body.message.data.action)"))
///             .filter("_ACTION.matches('INSERT')")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mytopic:
///     type: gcp:pubsub:Topic
///     properties:
///       name: my-topic
///   pubsub-config-trigger:
///     type: gcp:cloudbuild:Trigger
///     properties:
///       location: us-central1
///       name: pubsub-trigger
///       description: acceptance test example pubsub build trigger
///       pubsubConfig:
///         topic: ${mytopic.id}
///       sourceToBuild:
///         uri: https://hashicorp/terraform-provider-google-beta
///         ref: refs/heads/main
///         repoType: GITHUB
///       gitFileSource:
///         path: cloudbuild.yaml
///         uri: https://hashicorp/terraform-provider-google-beta
///         revision: refs/heads/main
///         repoType: GITHUB
///       substitutions:
///         _ACTION: $(body.message.data.action)
///       filter: _ACTION.matches('INSERT')
/// ```
///
/// ### Cloudbuild Trigger Webhook Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const webhookTriggerSecretKey = new gcp.secretmanager.Secret("webhook_trigger_secret_key", {
///     secretId: "webhook-trigger-secret-key",
///     replication: {
///         userManaged: {
///             replicas: [{
///                 location: "us-central1",
///             }],
///         },
///     },
/// });
/// const webhookTriggerSecretKeyData = new gcp.secretmanager.SecretVersion("webhook_trigger_secret_key_data", {
///     secret: webhookTriggerSecretKey.id,
///     secretData: "secretkeygoeshere",
/// });
/// const project = gcp.organizations.getProject({});
/// const secretAccessor = project.then(project => gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/secretmanager.secretAccessor",
///         members: [`serviceAccount:service-${project.number}@gcp-sa-cloudbuild.iam.gserviceaccount.com`],
///     }],
/// }));
/// const policy = new gcp.secretmanager.SecretIamPolicy("policy", {
///     project: webhookTriggerSecretKey.project,
///     secretId: webhookTriggerSecretKey.secretId,
///     policyData: secretAccessor.then(secretAccessor => secretAccessor.policyData),
/// });
/// const webhook_config_trigger = new gcp.cloudbuild.Trigger("webhook-config-trigger", {
///     name: "webhook-trigger",
///     description: "acceptance test example webhook build trigger",
///     webhookConfig: {
///         secret: webhookTriggerSecretKeyData.id,
///     },
///     sourceToBuild: {
///         uri: "https://hashicorp/terraform-provider-google-beta",
///         ref: "refs/heads/main",
///         repoType: "GITHUB",
///     },
///     gitFileSource: {
///         path: "cloudbuild.yaml",
///         uri: "https://hashicorp/terraform-provider-google-beta",
///         revision: "refs/heads/main",
///         repoType: "GITHUB",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// webhook_trigger_secret_key = gcp.secretmanager.Secret("webhook_trigger_secret_key",
///     secret_id="webhook-trigger-secret-key",
///     replication={
///         "user_managed": {
///             "replicas": [{
///                 "location": "us-central1",
///             }],
///         },
///     })
/// webhook_trigger_secret_key_data = gcp.secretmanager.SecretVersion("webhook_trigger_secret_key_data",
///     secret=webhook_trigger_secret_key.id,
///     secret_data="secretkeygoeshere")
/// project = gcp.organizations.get_project()
/// secret_accessor = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/secretmanager.secretAccessor",
///     "members": [f"serviceAccount:service-{project.number}@gcp-sa-cloudbuild.iam.gserviceaccount.com"],
/// }])
/// policy = gcp.secretmanager.SecretIamPolicy("policy",
///     project=webhook_trigger_secret_key.project,
///     secret_id=webhook_trigger_secret_key.secret_id,
///     policy_data=secret_accessor.policy_data)
/// webhook_config_trigger = gcp.cloudbuild.Trigger("webhook-config-trigger",
///     name="webhook-trigger",
///     description="acceptance test example webhook build trigger",
///     webhook_config={
///         "secret": webhook_trigger_secret_key_data.id,
///     },
///     source_to_build={
///         "uri": "https://hashicorp/terraform-provider-google-beta",
///         "ref": "refs/heads/main",
///         "repo_type": "GITHUB",
///     },
///     git_file_source={
///         "path": "cloudbuild.yaml",
///         "uri": "https://hashicorp/terraform-provider-google-beta",
///         "revision": "refs/heads/main",
///         "repo_type": "GITHUB",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webhookTriggerSecretKey = new Gcp.SecretManager.Secret("webhook_trigger_secret_key", new()
///     {
///         SecretId = "webhook-trigger-secret-key",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             UserManaged = new Gcp.SecretManager.Inputs.SecretReplicationUserManagedArgs
///             {
///                 Replicas = new[]
///                 {
///                     new Gcp.SecretManager.Inputs.SecretReplicationUserManagedReplicaArgs
///                     {
///                         Location = "us-central1",
///                     },
///                 },
///             },
///         },
///     });
///
///     var webhookTriggerSecretKeyData = new Gcp.SecretManager.SecretVersion("webhook_trigger_secret_key_data", new()
///     {
///         Secret = webhookTriggerSecretKey.Id,
///         SecretData = "secretkeygoeshere",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var secretAccessor = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/secretmanager.secretAccessor",
///                 Members = new[]
///                 {
///                     $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-cloudbuild.iam.gserviceaccount.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.SecretManager.SecretIamPolicy("policy", new()
///     {
///         Project = webhookTriggerSecretKey.Project,
///         SecretId = webhookTriggerSecretKey.SecretId,
///         PolicyData = secretAccessor.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
///     var webhook_config_trigger = new Gcp.CloudBuild.Trigger("webhook-config-trigger", new()
///     {
///         Name = "webhook-trigger",
///         Description = "acceptance test example webhook build trigger",
///         WebhookConfig = new Gcp.CloudBuild.Inputs.TriggerWebhookConfigArgs
///         {
///             Secret = webhookTriggerSecretKeyData.Id,
///         },
///         SourceToBuild = new Gcp.CloudBuild.Inputs.TriggerSourceToBuildArgs
///         {
///             Uri = "https://hashicorp/terraform-provider-google-beta",
///             Ref = "refs/heads/main",
///             RepoType = "GITHUB",
///         },
///         GitFileSource = new Gcp.CloudBuild.Inputs.TriggerGitFileSourceArgs
///         {
///             Path = "cloudbuild.yaml",
///             Uri = "https://hashicorp/terraform-provider-google-beta",
///             Revision = "refs/heads/main",
///             RepoType = "GITHUB",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		webhookTriggerSecretKey, err := secretmanager.NewSecret(ctx, "webhook_trigger_secret_key", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("webhook-trigger-secret-key"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				UserManaged: &secretmanager.SecretReplicationUserManagedArgs{
/// 					Replicas: secretmanager.SecretReplicationUserManagedReplicaArray{
/// 						&secretmanager.SecretReplicationUserManagedReplicaArgs{
/// 							Location: pulumi.String("us-central1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		webhookTriggerSecretKeyData, err := secretmanager.NewSecretVersion(ctx, "webhook_trigger_secret_key_data", &secretmanager.SecretVersionArgs{
/// 			Secret:     webhookTriggerSecretKey.ID(),
/// 			SecretData: pulumi.String("secretkeygoeshere"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secretAccessor, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/secretmanager.secretAccessor",
/// 					Members: []string{
/// 						fmt.Sprintf("serviceAccount:service-%v@gcp-sa-cloudbuild.iam.gserviceaccount.com", project.Number),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretIamPolicy(ctx, "policy", &secretmanager.SecretIamPolicyArgs{
/// 			Project:    webhookTriggerSecretKey.Project,
/// 			SecretId:   webhookTriggerSecretKey.SecretId,
/// 			PolicyData: pulumi.String(secretAccessor.PolicyData),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudbuild.NewTrigger(ctx, "webhook-config-trigger", &cloudbuild.TriggerArgs{
/// 			Name:        pulumi.String("webhook-trigger"),
/// 			Description: pulumi.String("acceptance test example webhook build trigger"),
/// 			WebhookConfig: &cloudbuild.TriggerWebhookConfigArgs{
/// 				Secret: webhookTriggerSecretKeyData.ID(),
/// 			},
/// 			SourceToBuild: &cloudbuild.TriggerSourceToBuildArgs{
/// 				Uri:      pulumi.String("https://hashicorp/terraform-provider-google-beta"),
/// 				Ref:      pulumi.String("refs/heads/main"),
/// 				RepoType: pulumi.String("GITHUB"),
/// 			},
/// 			GitFileSource: &cloudbuild.TriggerGitFileSourceArgs{
/// 				Path:     pulumi.String("cloudbuild.yaml"),
/// 				Uri:      pulumi.String("https://hashicorp/terraform-provider-google-beta"),
/// 				Revision: pulumi.String("refs/heads/main"),
/// 				RepoType: pulumi.String("GITHUB"),
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationUserManagedArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamPolicy;
/// import com.pulumi.gcp.secretmanager.SecretIamPolicyArgs;
/// import com.pulumi.gcp.cloudbuild.Trigger;
/// import com.pulumi.gcp.cloudbuild.TriggerArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerWebhookConfigArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerSourceToBuildArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerGitFileSourceArgs;
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
///         var webhookTriggerSecretKey = new Secret("webhookTriggerSecretKey", SecretArgs.builder()
///             .secretId("webhook-trigger-secret-key")
///             .replication(SecretReplicationArgs.builder()
///                 .userManaged(SecretReplicationUserManagedArgs.builder()
///                     .replicas(SecretReplicationUserManagedReplicaArgs.builder()
///                         .location("us-central1")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var webhookTriggerSecretKeyData = new SecretVersion("webhookTriggerSecretKeyData", SecretVersionArgs.builder()
///             .secret(webhookTriggerSecretKey.id())
///             .secretData("secretkeygoeshere")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         final var secretAccessor = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/secretmanager.secretAccessor")
///                 .members(String.format("serviceAccount:service-%s@gcp-sa-cloudbuild.iam.gserviceaccount.com", project.number()))
///                 .build())
///             .build());
///
///         var policy = new SecretIamPolicy("policy", SecretIamPolicyArgs.builder()
///             .project(webhookTriggerSecretKey.project())
///             .secretId(webhookTriggerSecretKey.secretId())
///             .policyData(secretAccessor.policyData())
///             .build());
///
///         var webhook_config_trigger = new Trigger("webhook-config-trigger", TriggerArgs.builder()
///             .name("webhook-trigger")
///             .description("acceptance test example webhook build trigger")
///             .webhookConfig(TriggerWebhookConfigArgs.builder()
///                 .secret(webhookTriggerSecretKeyData.id())
///                 .build())
///             .sourceToBuild(TriggerSourceToBuildArgs.builder()
///                 .uri("https://hashicorp/terraform-provider-google-beta")
///                 .ref("refs/heads/main")
///                 .repoType("GITHUB")
///                 .build())
///             .gitFileSource(TriggerGitFileSourceArgs.builder()
///                 .path("cloudbuild.yaml")
///                 .uri("https://hashicorp/terraform-provider-google-beta")
///                 .revision("refs/heads/main")
///                 .repoType("GITHUB")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   webhookTriggerSecretKey:
///     type: gcp:secretmanager:Secret
///     name: webhook_trigger_secret_key
///     properties:
///       secretId: webhook-trigger-secret-key
///       replication:
///         userManaged:
///           replicas:
///             - location: us-central1
///   webhookTriggerSecretKeyData:
///     type: gcp:secretmanager:SecretVersion
///     name: webhook_trigger_secret_key_data
///     properties:
///       secret: ${webhookTriggerSecretKey.id}
///       secretData: secretkeygoeshere
///   policy:
///     type: gcp:secretmanager:SecretIamPolicy
///     properties:
///       project: ${webhookTriggerSecretKey.project}
///       secretId: ${webhookTriggerSecretKey.secretId}
///       policyData: ${secretAccessor.policyData}
///   webhook-config-trigger:
///     type: gcp:cloudbuild:Trigger
///     properties:
///       name: webhook-trigger
///       description: acceptance test example webhook build trigger
///       webhookConfig:
///         secret: ${webhookTriggerSecretKeyData.id}
///       sourceToBuild:
///         uri: https://hashicorp/terraform-provider-google-beta
///         ref: refs/heads/main
///         repoType: GITHUB
///       gitFileSource:
///         path: cloudbuild.yaml
///         uri: https://hashicorp/terraform-provider-google-beta
///         revision: refs/heads/main
///         repoType: GITHUB
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
///   secretAccessor:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/secretmanager.secretAccessor
///             members:
///               - serviceAccount:service-${project.number}@gcp-sa-cloudbuild.iam.gserviceaccount.com
/// ```
///
/// ### Cloudbuild Trigger Manual
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const manual_trigger = new gcp.cloudbuild.Trigger("manual-trigger", {
///     name: "manual-trigger",
///     sourceToBuild: {
///         uri: "https://hashicorp/terraform-provider-google-beta",
///         ref: "refs/heads/main",
///         repoType: "GITHUB",
///     },
///     gitFileSource: {
///         path: "cloudbuild.yaml",
///         uri: "https://hashicorp/terraform-provider-google-beta",
///         revision: "refs/heads/main",
///         repoType: "GITHUB",
///     },
///     approvalConfig: {
///         approvalRequired: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// manual_trigger = gcp.cloudbuild.Trigger("manual-trigger",
///     name="manual-trigger",
///     source_to_build={
///         "uri": "https://hashicorp/terraform-provider-google-beta",
///         "ref": "refs/heads/main",
///         "repo_type": "GITHUB",
///     },
///     git_file_source={
///         "path": "cloudbuild.yaml",
///         "uri": "https://hashicorp/terraform-provider-google-beta",
///         "revision": "refs/heads/main",
///         "repo_type": "GITHUB",
///     },
///     approval_config={
///         "approval_required": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var manual_trigger = new Gcp.CloudBuild.Trigger("manual-trigger", new()
///     {
///         Name = "manual-trigger",
///         SourceToBuild = new Gcp.CloudBuild.Inputs.TriggerSourceToBuildArgs
///         {
///             Uri = "https://hashicorp/terraform-provider-google-beta",
///             Ref = "refs/heads/main",
///             RepoType = "GITHUB",
///         },
///         GitFileSource = new Gcp.CloudBuild.Inputs.TriggerGitFileSourceArgs
///         {
///             Path = "cloudbuild.yaml",
///             Uri = "https://hashicorp/terraform-provider-google-beta",
///             Revision = "refs/heads/main",
///             RepoType = "GITHUB",
///         },
///         ApprovalConfig = new Gcp.CloudBuild.Inputs.TriggerApprovalConfigArgs
///         {
///             ApprovalRequired = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuild.NewTrigger(ctx, "manual-trigger", &cloudbuild.TriggerArgs{
/// 			Name: pulumi.String("manual-trigger"),
/// 			SourceToBuild: &cloudbuild.TriggerSourceToBuildArgs{
/// 				Uri:      pulumi.String("https://hashicorp/terraform-provider-google-beta"),
/// 				Ref:      pulumi.String("refs/heads/main"),
/// 				RepoType: pulumi.String("GITHUB"),
/// 			},
/// 			GitFileSource: &cloudbuild.TriggerGitFileSourceArgs{
/// 				Path:     pulumi.String("cloudbuild.yaml"),
/// 				Uri:      pulumi.String("https://hashicorp/terraform-provider-google-beta"),
/// 				Revision: pulumi.String("refs/heads/main"),
/// 				RepoType: pulumi.String("GITHUB"),
/// 			},
/// 			ApprovalConfig: &cloudbuild.TriggerApprovalConfigArgs{
/// 				ApprovalRequired: pulumi.Bool(true),
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
/// import com.pulumi.gcp.cloudbuild.Trigger;
/// import com.pulumi.gcp.cloudbuild.TriggerArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerSourceToBuildArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerGitFileSourceArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerApprovalConfigArgs;
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
///         var manual_trigger = new Trigger("manual-trigger", TriggerArgs.builder()
///             .name("manual-trigger")
///             .sourceToBuild(TriggerSourceToBuildArgs.builder()
///                 .uri("https://hashicorp/terraform-provider-google-beta")
///                 .ref("refs/heads/main")
///                 .repoType("GITHUB")
///                 .build())
///             .gitFileSource(TriggerGitFileSourceArgs.builder()
///                 .path("cloudbuild.yaml")
///                 .uri("https://hashicorp/terraform-provider-google-beta")
///                 .revision("refs/heads/main")
///                 .repoType("GITHUB")
///                 .build())
///             .approvalConfig(TriggerApprovalConfigArgs.builder()
///                 .approvalRequired(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   manual-trigger:
///     type: gcp:cloudbuild:Trigger
///     properties:
///       name: manual-trigger
///       sourceToBuild:
///         uri: https://hashicorp/terraform-provider-google-beta
///         ref: refs/heads/main
///         repoType: GITHUB
///       gitFileSource:
///         path: cloudbuild.yaml
///         uri: https://hashicorp/terraform-provider-google-beta
///         revision: refs/heads/main
///         repoType: GITHUB
///       approvalConfig:
///         approvalRequired: true
/// ```
///
/// ### Cloudbuild Trigger Manual Github Enterprise
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const manual_ghe_trigger = new gcp.cloudbuild.Trigger("manual-ghe-trigger", {
///     name: "my-trigger",
///     sourceToBuild: {
///         uri: "https://hashicorp/terraform-provider-google-beta",
///         ref: "refs/heads/main",
///         repoType: "GITHUB",
///         githubEnterpriseConfig: "projects/myProject/locations/global/githubEnterpriseConfigs/configID",
///     },
///     gitFileSource: {
///         path: "cloudbuild.yaml",
///         uri: "https://hashicorp/terraform-provider-google-beta",
///         revision: "refs/heads/main",
///         repoType: "GITHUB",
///         githubEnterpriseConfig: "projects/myProject/locations/global/githubEnterpriseConfigs/configID",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// manual_ghe_trigger = gcp.cloudbuild.Trigger("manual-ghe-trigger",
///     name="my-trigger",
///     source_to_build={
///         "uri": "https://hashicorp/terraform-provider-google-beta",
///         "ref": "refs/heads/main",
///         "repo_type": "GITHUB",
///         "github_enterprise_config": "projects/myProject/locations/global/githubEnterpriseConfigs/configID",
///     },
///     git_file_source={
///         "path": "cloudbuild.yaml",
///         "uri": "https://hashicorp/terraform-provider-google-beta",
///         "revision": "refs/heads/main",
///         "repo_type": "GITHUB",
///         "github_enterprise_config": "projects/myProject/locations/global/githubEnterpriseConfigs/configID",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var manual_ghe_trigger = new Gcp.CloudBuild.Trigger("manual-ghe-trigger", new()
///     {
///         Name = "my-trigger",
///         SourceToBuild = new Gcp.CloudBuild.Inputs.TriggerSourceToBuildArgs
///         {
///             Uri = "https://hashicorp/terraform-provider-google-beta",
///             Ref = "refs/heads/main",
///             RepoType = "GITHUB",
///             GithubEnterpriseConfig = "projects/myProject/locations/global/githubEnterpriseConfigs/configID",
///         },
///         GitFileSource = new Gcp.CloudBuild.Inputs.TriggerGitFileSourceArgs
///         {
///             Path = "cloudbuild.yaml",
///             Uri = "https://hashicorp/terraform-provider-google-beta",
///             Revision = "refs/heads/main",
///             RepoType = "GITHUB",
///             GithubEnterpriseConfig = "projects/myProject/locations/global/githubEnterpriseConfigs/configID",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuild.NewTrigger(ctx, "manual-ghe-trigger", &cloudbuild.TriggerArgs{
/// 			Name: pulumi.String("my-trigger"),
/// 			SourceToBuild: &cloudbuild.TriggerSourceToBuildArgs{
/// 				Uri:                    pulumi.String("https://hashicorp/terraform-provider-google-beta"),
/// 				Ref:                    pulumi.String("refs/heads/main"),
/// 				RepoType:               pulumi.String("GITHUB"),
/// 				GithubEnterpriseConfig: pulumi.String("projects/myProject/locations/global/githubEnterpriseConfigs/configID"),
/// 			},
/// 			GitFileSource: &cloudbuild.TriggerGitFileSourceArgs{
/// 				Path:                   pulumi.String("cloudbuild.yaml"),
/// 				Uri:                    pulumi.String("https://hashicorp/terraform-provider-google-beta"),
/// 				Revision:               pulumi.String("refs/heads/main"),
/// 				RepoType:               pulumi.String("GITHUB"),
/// 				GithubEnterpriseConfig: pulumi.String("projects/myProject/locations/global/githubEnterpriseConfigs/configID"),
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
/// import com.pulumi.gcp.cloudbuild.Trigger;
/// import com.pulumi.gcp.cloudbuild.TriggerArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerSourceToBuildArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerGitFileSourceArgs;
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
///         var manual_ghe_trigger = new Trigger("manual-ghe-trigger", TriggerArgs.builder()
///             .name("my-trigger")
///             .sourceToBuild(TriggerSourceToBuildArgs.builder()
///                 .uri("https://hashicorp/terraform-provider-google-beta")
///                 .ref("refs/heads/main")
///                 .repoType("GITHUB")
///                 .githubEnterpriseConfig("projects/myProject/locations/global/githubEnterpriseConfigs/configID")
///                 .build())
///             .gitFileSource(TriggerGitFileSourceArgs.builder()
///                 .path("cloudbuild.yaml")
///                 .uri("https://hashicorp/terraform-provider-google-beta")
///                 .revision("refs/heads/main")
///                 .repoType("GITHUB")
///                 .githubEnterpriseConfig("projects/myProject/locations/global/githubEnterpriseConfigs/configID")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   manual-ghe-trigger:
///     type: gcp:cloudbuild:Trigger
///     properties:
///       name: my-trigger
///       sourceToBuild:
///         uri: https://hashicorp/terraform-provider-google-beta
///         ref: refs/heads/main
///         repoType: GITHUB
///         githubEnterpriseConfig: projects/myProject/locations/global/githubEnterpriseConfigs/configID
///       gitFileSource:
///         path: cloudbuild.yaml
///         uri: https://hashicorp/terraform-provider-google-beta
///         revision: refs/heads/main
///         repoType: GITHUB
///         githubEnterpriseConfig: projects/myProject/locations/global/githubEnterpriseConfigs/configID
/// ```
///
/// ### Cloudbuild Trigger Manual Bitbucket Server
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const manual_bitbucket_trigger = new gcp.cloudbuild.Trigger("manual-bitbucket-trigger", {
///     name: "terraform-manual-bbs-trigger",
///     sourceToBuild: {
///         uri: "https://bbs.com/scm/stag/test-repo.git",
///         ref: "refs/heads/main",
///         repoType: "BITBUCKET_SERVER",
///         bitbucketServerConfig: "projects/myProject/locations/global/bitbucketServerConfigs/configID",
///     },
///     gitFileSource: {
///         path: "cloudbuild.yaml",
///         uri: "https://bbs.com/scm/stag/test-repo.git",
///         revision: "refs/heads/main",
///         repoType: "BITBUCKET_SERVER",
///         bitbucketServerConfig: "projects/myProject/locations/global/bitbucketServerConfigs/configID",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// manual_bitbucket_trigger = gcp.cloudbuild.Trigger("manual-bitbucket-trigger",
///     name="terraform-manual-bbs-trigger",
///     source_to_build={
///         "uri": "https://bbs.com/scm/stag/test-repo.git",
///         "ref": "refs/heads/main",
///         "repo_type": "BITBUCKET_SERVER",
///         "bitbucket_server_config": "projects/myProject/locations/global/bitbucketServerConfigs/configID",
///     },
///     git_file_source={
///         "path": "cloudbuild.yaml",
///         "uri": "https://bbs.com/scm/stag/test-repo.git",
///         "revision": "refs/heads/main",
///         "repo_type": "BITBUCKET_SERVER",
///         "bitbucket_server_config": "projects/myProject/locations/global/bitbucketServerConfigs/configID",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var manual_bitbucket_trigger = new Gcp.CloudBuild.Trigger("manual-bitbucket-trigger", new()
///     {
///         Name = "terraform-manual-bbs-trigger",
///         SourceToBuild = new Gcp.CloudBuild.Inputs.TriggerSourceToBuildArgs
///         {
///             Uri = "https://bbs.com/scm/stag/test-repo.git",
///             Ref = "refs/heads/main",
///             RepoType = "BITBUCKET_SERVER",
///             BitbucketServerConfig = "projects/myProject/locations/global/bitbucketServerConfigs/configID",
///         },
///         GitFileSource = new Gcp.CloudBuild.Inputs.TriggerGitFileSourceArgs
///         {
///             Path = "cloudbuild.yaml",
///             Uri = "https://bbs.com/scm/stag/test-repo.git",
///             Revision = "refs/heads/main",
///             RepoType = "BITBUCKET_SERVER",
///             BitbucketServerConfig = "projects/myProject/locations/global/bitbucketServerConfigs/configID",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuild.NewTrigger(ctx, "manual-bitbucket-trigger", &cloudbuild.TriggerArgs{
/// 			Name: pulumi.String("terraform-manual-bbs-trigger"),
/// 			SourceToBuild: &cloudbuild.TriggerSourceToBuildArgs{
/// 				Uri:                   pulumi.String("https://bbs.com/scm/stag/test-repo.git"),
/// 				Ref:                   pulumi.String("refs/heads/main"),
/// 				RepoType:              pulumi.String("BITBUCKET_SERVER"),
/// 				BitbucketServerConfig: pulumi.String("projects/myProject/locations/global/bitbucketServerConfigs/configID"),
/// 			},
/// 			GitFileSource: &cloudbuild.TriggerGitFileSourceArgs{
/// 				Path:                  pulumi.String("cloudbuild.yaml"),
/// 				Uri:                   pulumi.String("https://bbs.com/scm/stag/test-repo.git"),
/// 				Revision:              pulumi.String("refs/heads/main"),
/// 				RepoType:              pulumi.String("BITBUCKET_SERVER"),
/// 				BitbucketServerConfig: pulumi.String("projects/myProject/locations/global/bitbucketServerConfigs/configID"),
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
/// import com.pulumi.gcp.cloudbuild.Trigger;
/// import com.pulumi.gcp.cloudbuild.TriggerArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerSourceToBuildArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerGitFileSourceArgs;
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
///         var manual_bitbucket_trigger = new Trigger("manual-bitbucket-trigger", TriggerArgs.builder()
///             .name("terraform-manual-bbs-trigger")
///             .sourceToBuild(TriggerSourceToBuildArgs.builder()
///                 .uri("https://bbs.com/scm/stag/test-repo.git")
///                 .ref("refs/heads/main")
///                 .repoType("BITBUCKET_SERVER")
///                 .bitbucketServerConfig("projects/myProject/locations/global/bitbucketServerConfigs/configID")
///                 .build())
///             .gitFileSource(TriggerGitFileSourceArgs.builder()
///                 .path("cloudbuild.yaml")
///                 .uri("https://bbs.com/scm/stag/test-repo.git")
///                 .revision("refs/heads/main")
///                 .repoType("BITBUCKET_SERVER")
///                 .bitbucketServerConfig("projects/myProject/locations/global/bitbucketServerConfigs/configID")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   manual-bitbucket-trigger:
///     type: gcp:cloudbuild:Trigger
///     properties:
///       name: terraform-manual-bbs-trigger
///       sourceToBuild:
///         uri: https://bbs.com/scm/stag/test-repo.git
///         ref: refs/heads/main
///         repoType: BITBUCKET_SERVER
///         bitbucketServerConfig: projects/myProject/locations/global/bitbucketServerConfigs/configID
///       gitFileSource:
///         path: cloudbuild.yaml
///         uri: https://bbs.com/scm/stag/test-repo.git
///         revision: refs/heads/main
///         repoType: BITBUCKET_SERVER
///         bitbucketServerConfig: projects/myProject/locations/global/bitbucketServerConfigs/configID
/// ```
///
/// ### Cloudbuild Trigger Repo
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_connection = new gcp.cloudbuildv2.Connection("my-connection", {
///     location: "us-central1",
///     name: "my-connection",
///     githubConfig: {
///         appInstallationId: 123123,
///         authorizerCredential: {
///             oauthTokenSecretVersion: "projects/my-project/secrets/github-pat-secret/versions/latest",
///         },
///     },
/// });
/// const my_repository = new gcp.cloudbuildv2.Repository("my-repository", {
///     name: "my-repo",
///     parentConnection: my_connection.id,
///     remoteUri: "https://github.com/myuser/my-repo.git",
/// });
/// const repo_trigger = new gcp.cloudbuild.Trigger("repo-trigger", {
///     location: "us-central1",
///     repositoryEventConfig: {
///         repository: my_repository.id,
///         push: {
///             branch: "feature-.*",
///         },
///     },
///     filename: "cloudbuild.yaml",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_connection = gcp.cloudbuildv2.Connection("my-connection",
///     location="us-central1",
///     name="my-connection",
///     github_config={
///         "app_installation_id": 123123,
///         "authorizer_credential": {
///             "oauth_token_secret_version": "projects/my-project/secrets/github-pat-secret/versions/latest",
///         },
///     })
/// my_repository = gcp.cloudbuildv2.Repository("my-repository",
///     name="my-repo",
///     parent_connection=my_connection.id,
///     remote_uri="https://github.com/myuser/my-repo.git")
/// repo_trigger = gcp.cloudbuild.Trigger("repo-trigger",
///     location="us-central1",
///     repository_event_config={
///         "repository": my_repository.id,
///         "push": {
///             "branch": "feature-.*",
///         },
///     },
///     filename="cloudbuild.yaml")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_connection = new Gcp.CloudBuildV2.Connection("my-connection", new()
///     {
///         Location = "us-central1",
///         Name = "my-connection",
///         GithubConfig = new Gcp.CloudBuildV2.Inputs.ConnectionGithubConfigArgs
///         {
///             AppInstallationId = 123123,
///             AuthorizerCredential = new Gcp.CloudBuildV2.Inputs.ConnectionGithubConfigAuthorizerCredentialArgs
///             {
///                 OauthTokenSecretVersion = "projects/my-project/secrets/github-pat-secret/versions/latest",
///             },
///         },
///     });
///
///     var my_repository = new Gcp.CloudBuildV2.Repository("my-repository", new()
///     {
///         Name = "my-repo",
///         ParentConnection = my_connection.Id,
///         RemoteUri = "https://github.com/myuser/my-repo.git",
///     });
///
///     var repo_trigger = new Gcp.CloudBuild.Trigger("repo-trigger", new()
///     {
///         Location = "us-central1",
///         RepositoryEventConfig = new Gcp.CloudBuild.Inputs.TriggerRepositoryEventConfigArgs
///         {
///             Repository = my_repository.Id,
///             Push = new Gcp.CloudBuild.Inputs.TriggerRepositoryEventConfigPushArgs
///             {
///                 Branch = "feature-.*",
///             },
///         },
///         Filename = "cloudbuild.yaml",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuildv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		my_connection, err := cloudbuildv2.NewConnection(ctx, "my-connection", &cloudbuildv2.ConnectionArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Name:     pulumi.String("my-connection"),
/// 			GithubConfig: &cloudbuildv2.ConnectionGithubConfigArgs{
/// 				AppInstallationId: pulumi.Int(123123),
/// 				AuthorizerCredential: &cloudbuildv2.ConnectionGithubConfigAuthorizerCredentialArgs{
/// 					OauthTokenSecretVersion: pulumi.String("projects/my-project/secrets/github-pat-secret/versions/latest"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		my_repository, err := cloudbuildv2.NewRepository(ctx, "my-repository", &cloudbuildv2.RepositoryArgs{
/// 			Name:             pulumi.String("my-repo"),
/// 			ParentConnection: my_connection.ID(),
/// 			RemoteUri:        pulumi.String("https://github.com/myuser/my-repo.git"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudbuild.NewTrigger(ctx, "repo-trigger", &cloudbuild.TriggerArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			RepositoryEventConfig: &cloudbuild.TriggerRepositoryEventConfigArgs{
/// 				Repository: my_repository.ID(),
/// 				Push: &cloudbuild.TriggerRepositoryEventConfigPushArgs{
/// 					Branch: pulumi.String("feature-.*"),
/// 				},
/// 			},
/// 			Filename: pulumi.String("cloudbuild.yaml"),
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
/// import com.pulumi.gcp.cloudbuildv2.Connection;
/// import com.pulumi.gcp.cloudbuildv2.ConnectionArgs;
/// import com.pulumi.gcp.cloudbuildv2.inputs.ConnectionGithubConfigArgs;
/// import com.pulumi.gcp.cloudbuildv2.inputs.ConnectionGithubConfigAuthorizerCredentialArgs;
/// import com.pulumi.gcp.cloudbuildv2.Repository;
/// import com.pulumi.gcp.cloudbuildv2.RepositoryArgs;
/// import com.pulumi.gcp.cloudbuild.Trigger;
/// import com.pulumi.gcp.cloudbuild.TriggerArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerRepositoryEventConfigArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerRepositoryEventConfigPushArgs;
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
///         var my_connection = new Connection("my-connection", ConnectionArgs.builder()
///             .location("us-central1")
///             .name("my-connection")
///             .githubConfig(ConnectionGithubConfigArgs.builder()
///                 .appInstallationId(123123)
///                 .authorizerCredential(ConnectionGithubConfigAuthorizerCredentialArgs.builder()
///                     .oauthTokenSecretVersion("projects/my-project/secrets/github-pat-secret/versions/latest")
///                     .build())
///                 .build())
///             .build());
///
///         var my_repository = new Repository("my-repository", RepositoryArgs.builder()
///             .name("my-repo")
///             .parentConnection(my_connection.id())
///             .remoteUri("https://github.com/myuser/my-repo.git")
///             .build());
///
///         var repo_trigger = new Trigger("repo-trigger", TriggerArgs.builder()
///             .location("us-central1")
///             .repositoryEventConfig(TriggerRepositoryEventConfigArgs.builder()
///                 .repository(my_repository.id())
///                 .push(TriggerRepositoryEventConfigPushArgs.builder()
///                     .branch("feature-.*")
///                     .build())
///                 .build())
///             .filename("cloudbuild.yaml")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-connection:
///     type: gcp:cloudbuildv2:Connection
///     properties:
///       location: us-central1
///       name: my-connection
///       githubConfig:
///         appInstallationId: 123123
///         authorizerCredential:
///           oauthTokenSecretVersion: projects/my-project/secrets/github-pat-secret/versions/latest
///   my-repository:
///     type: gcp:cloudbuildv2:Repository
///     properties:
///       name: my-repo
///       parentConnection: ${["my-connection"].id}
///       remoteUri: https://github.com/myuser/my-repo.git
///   repo-trigger:
///     type: gcp:cloudbuild:Trigger
///     properties:
///       location: us-central1
///       repositoryEventConfig:
///         repository: ${["my-repository"].id}
///         push:
///           branch: feature-.*
///       filename: cloudbuild.yaml
/// ```
///
/// ### Cloudbuild Trigger Bitbucket Server Push
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bbs_push_trigger = new gcp.cloudbuild.Trigger("bbs-push-trigger", {
///     name: "bbs-push-trigger",
///     location: "us-central1",
///     bitbucketServerTriggerConfig: {
///         repoSlug: "bbs-push-trigger",
///         projectKey: "STAG",
///         bitbucketServerConfigResource: "projects/123456789/locations/us-central1/bitbucketServerConfigs/myBitbucketConfig",
///         push: {
///             tag: "^0.1.*",
///             invertRegex: true,
///         },
///     },
///     filename: "cloudbuild.yaml",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bbs_push_trigger = gcp.cloudbuild.Trigger("bbs-push-trigger",
///     name="bbs-push-trigger",
///     location="us-central1",
///     bitbucket_server_trigger_config={
///         "repo_slug": "bbs-push-trigger",
///         "project_key": "STAG",
///         "bitbucket_server_config_resource": "projects/123456789/locations/us-central1/bitbucketServerConfigs/myBitbucketConfig",
///         "push": {
///             "tag": "^0.1.*",
///             "invert_regex": True,
///         },
///     },
///     filename="cloudbuild.yaml")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bbs_push_trigger = new Gcp.CloudBuild.Trigger("bbs-push-trigger", new()
///     {
///         Name = "bbs-push-trigger",
///         Location = "us-central1",
///         BitbucketServerTriggerConfig = new Gcp.CloudBuild.Inputs.TriggerBitbucketServerTriggerConfigArgs
///         {
///             RepoSlug = "bbs-push-trigger",
///             ProjectKey = "STAG",
///             BitbucketServerConfigResource = "projects/123456789/locations/us-central1/bitbucketServerConfigs/myBitbucketConfig",
///             Push = new Gcp.CloudBuild.Inputs.TriggerBitbucketServerTriggerConfigPushArgs
///             {
///                 Tag = "^0.1.*",
///                 InvertRegex = true,
///             },
///         },
///         Filename = "cloudbuild.yaml",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuild.NewTrigger(ctx, "bbs-push-trigger", &cloudbuild.TriggerArgs{
/// 			Name:     pulumi.String("bbs-push-trigger"),
/// 			Location: pulumi.String("us-central1"),
/// 			BitbucketServerTriggerConfig: &cloudbuild.TriggerBitbucketServerTriggerConfigArgs{
/// 				RepoSlug:                      pulumi.String("bbs-push-trigger"),
/// 				ProjectKey:                    pulumi.String("STAG"),
/// 				BitbucketServerConfigResource: pulumi.String("projects/123456789/locations/us-central1/bitbucketServerConfigs/myBitbucketConfig"),
/// 				Push: &cloudbuild.TriggerBitbucketServerTriggerConfigPushArgs{
/// 					Tag:         pulumi.String("^0.1.*"),
/// 					InvertRegex: pulumi.Bool(true),
/// 				},
/// 			},
/// 			Filename: pulumi.String("cloudbuild.yaml"),
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
/// import com.pulumi.gcp.cloudbuild.Trigger;
/// import com.pulumi.gcp.cloudbuild.TriggerArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBitbucketServerTriggerConfigArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBitbucketServerTriggerConfigPushArgs;
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
///         var bbs_push_trigger = new Trigger("bbs-push-trigger", TriggerArgs.builder()
///             .name("bbs-push-trigger")
///             .location("us-central1")
///             .bitbucketServerTriggerConfig(TriggerBitbucketServerTriggerConfigArgs.builder()
///                 .repoSlug("bbs-push-trigger")
///                 .projectKey("STAG")
///                 .bitbucketServerConfigResource("projects/123456789/locations/us-central1/bitbucketServerConfigs/myBitbucketConfig")
///                 .push(TriggerBitbucketServerTriggerConfigPushArgs.builder()
///                     .tag("^0.1.*")
///                     .invertRegex(true)
///                     .build())
///                 .build())
///             .filename("cloudbuild.yaml")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bbs-push-trigger:
///     type: gcp:cloudbuild:Trigger
///     properties:
///       name: bbs-push-trigger
///       location: us-central1
///       bitbucketServerTriggerConfig:
///         repoSlug: bbs-push-trigger
///         projectKey: STAG
///         bitbucketServerConfigResource: projects/123456789/locations/us-central1/bitbucketServerConfigs/myBitbucketConfig
///         push:
///           tag: ^0.1.*
///           invertRegex: true
///       filename: cloudbuild.yaml
/// ```
///
/// ### Cloudbuild Trigger Bitbucket Server Pull Request
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bbs_pull_request_trigger = new gcp.cloudbuild.Trigger("bbs-pull-request-trigger", {
///     name: "ghe-trigger",
///     location: "us-central1",
///     bitbucketServerTriggerConfig: {
///         repoSlug: "terraform-provider-google",
///         projectKey: "STAG",
///         bitbucketServerConfigResource: "projects/123456789/locations/us-central1/bitbucketServerConfigs/myBitbucketConfig",
///         pullRequest: {
///             branch: "^master$",
///             invertRegex: false,
///             commentControl: "COMMENTS_ENABLED",
///         },
///     },
///     filename: "cloudbuild.yaml",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bbs_pull_request_trigger = gcp.cloudbuild.Trigger("bbs-pull-request-trigger",
///     name="ghe-trigger",
///     location="us-central1",
///     bitbucket_server_trigger_config={
///         "repo_slug": "terraform-provider-google",
///         "project_key": "STAG",
///         "bitbucket_server_config_resource": "projects/123456789/locations/us-central1/bitbucketServerConfigs/myBitbucketConfig",
///         "pull_request": {
///             "branch": "^master$",
///             "invert_regex": False,
///             "comment_control": "COMMENTS_ENABLED",
///         },
///     },
///     filename="cloudbuild.yaml")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bbs_pull_request_trigger = new Gcp.CloudBuild.Trigger("bbs-pull-request-trigger", new()
///     {
///         Name = "ghe-trigger",
///         Location = "us-central1",
///         BitbucketServerTriggerConfig = new Gcp.CloudBuild.Inputs.TriggerBitbucketServerTriggerConfigArgs
///         {
///             RepoSlug = "terraform-provider-google",
///             ProjectKey = "STAG",
///             BitbucketServerConfigResource = "projects/123456789/locations/us-central1/bitbucketServerConfigs/myBitbucketConfig",
///             PullRequest = new Gcp.CloudBuild.Inputs.TriggerBitbucketServerTriggerConfigPullRequestArgs
///             {
///                 Branch = "^master$",
///                 InvertRegex = false,
///                 CommentControl = "COMMENTS_ENABLED",
///             },
///         },
///         Filename = "cloudbuild.yaml",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuild.NewTrigger(ctx, "bbs-pull-request-trigger", &cloudbuild.TriggerArgs{
/// 			Name:     pulumi.String("ghe-trigger"),
/// 			Location: pulumi.String("us-central1"),
/// 			BitbucketServerTriggerConfig: &cloudbuild.TriggerBitbucketServerTriggerConfigArgs{
/// 				RepoSlug:                      pulumi.String("terraform-provider-google"),
/// 				ProjectKey:                    pulumi.String("STAG"),
/// 				BitbucketServerConfigResource: pulumi.String("projects/123456789/locations/us-central1/bitbucketServerConfigs/myBitbucketConfig"),
/// 				PullRequest: &cloudbuild.TriggerBitbucketServerTriggerConfigPullRequestArgs{
/// 					Branch:         pulumi.String("^master$"),
/// 					InvertRegex:    pulumi.Bool(false),
/// 					CommentControl: pulumi.String("COMMENTS_ENABLED"),
/// 				},
/// 			},
/// 			Filename: pulumi.String("cloudbuild.yaml"),
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
/// import com.pulumi.gcp.cloudbuild.Trigger;
/// import com.pulumi.gcp.cloudbuild.TriggerArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBitbucketServerTriggerConfigArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBitbucketServerTriggerConfigPullRequestArgs;
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
///         var bbs_pull_request_trigger = new Trigger("bbs-pull-request-trigger", TriggerArgs.builder()
///             .name("ghe-trigger")
///             .location("us-central1")
///             .bitbucketServerTriggerConfig(TriggerBitbucketServerTriggerConfigArgs.builder()
///                 .repoSlug("terraform-provider-google")
///                 .projectKey("STAG")
///                 .bitbucketServerConfigResource("projects/123456789/locations/us-central1/bitbucketServerConfigs/myBitbucketConfig")
///                 .pullRequest(TriggerBitbucketServerTriggerConfigPullRequestArgs.builder()
///                     .branch("^master$")
///                     .invertRegex(false)
///                     .commentControl("COMMENTS_ENABLED")
///                     .build())
///                 .build())
///             .filename("cloudbuild.yaml")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bbs-pull-request-trigger:
///     type: gcp:cloudbuild:Trigger
///     properties:
///       name: ghe-trigger
///       location: us-central1
///       bitbucketServerTriggerConfig:
///         repoSlug: terraform-provider-google
///         projectKey: STAG
///         bitbucketServerConfigResource: projects/123456789/locations/us-central1/bitbucketServerConfigs/myBitbucketConfig
///         pullRequest:
///           branch: ^master$
///           invertRegex: false
///           commentControl: COMMENTS_ENABLED
///       filename: cloudbuild.yaml
/// ```
///
/// ### Cloudbuild Trigger Github Enterprise
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const ghe_trigger = new gcp.cloudbuild.Trigger("ghe-trigger", {
///     name: "ghe-trigger",
///     location: "us-central1",
///     github: {
///         owner: "hashicorp",
///         name: "terraform-provider-google",
///         push: {
///             branch: "^main$",
///         },
///         enterpriseConfigResourceName: "projects/123456789/locations/us-central1/githubEnterpriseConfigs/configID",
///     },
///     filename: "cloudbuild.yaml",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ghe_trigger = gcp.cloudbuild.Trigger("ghe-trigger",
///     name="ghe-trigger",
///     location="us-central1",
///     github={
///         "owner": "hashicorp",
///         "name": "terraform-provider-google",
///         "push": {
///             "branch": "^main$",
///         },
///         "enterprise_config_resource_name": "projects/123456789/locations/us-central1/githubEnterpriseConfigs/configID",
///     },
///     filename="cloudbuild.yaml")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ghe_trigger = new Gcp.CloudBuild.Trigger("ghe-trigger", new()
///     {
///         Name = "ghe-trigger",
///         Location = "us-central1",
///         Github = new Gcp.CloudBuild.Inputs.TriggerGithubArgs
///         {
///             Owner = "hashicorp",
///             Name = "terraform-provider-google",
///             Push = new Gcp.CloudBuild.Inputs.TriggerGithubPushArgs
///             {
///                 Branch = "^main$",
///             },
///             EnterpriseConfigResourceName = "projects/123456789/locations/us-central1/githubEnterpriseConfigs/configID",
///         },
///         Filename = "cloudbuild.yaml",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuild.NewTrigger(ctx, "ghe-trigger", &cloudbuild.TriggerArgs{
/// 			Name:     pulumi.String("ghe-trigger"),
/// 			Location: pulumi.String("us-central1"),
/// 			Github: &cloudbuild.TriggerGithubArgs{
/// 				Owner: pulumi.String("hashicorp"),
/// 				Name:  pulumi.String("terraform-provider-google"),
/// 				Push: &cloudbuild.TriggerGithubPushArgs{
/// 					Branch: pulumi.String("^main$"),
/// 				},
/// 				EnterpriseConfigResourceName: pulumi.String("projects/123456789/locations/us-central1/githubEnterpriseConfigs/configID"),
/// 			},
/// 			Filename: pulumi.String("cloudbuild.yaml"),
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
/// import com.pulumi.gcp.cloudbuild.Trigger;
/// import com.pulumi.gcp.cloudbuild.TriggerArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerGithubArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerGithubPushArgs;
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
///         var ghe_trigger = new Trigger("ghe-trigger", TriggerArgs.builder()
///             .name("ghe-trigger")
///             .location("us-central1")
///             .github(TriggerGithubArgs.builder()
///                 .owner("hashicorp")
///                 .name("terraform-provider-google")
///                 .push(TriggerGithubPushArgs.builder()
///                     .branch("^main$")
///                     .build())
///                 .enterpriseConfigResourceName("projects/123456789/locations/us-central1/githubEnterpriseConfigs/configID")
///                 .build())
///             .filename("cloudbuild.yaml")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ghe-trigger:
///     type: gcp:cloudbuild:Trigger
///     properties:
///       name: ghe-trigger
///       location: us-central1
///       github:
///         owner: hashicorp
///         name: terraform-provider-google
///         push:
///           branch: ^main$
///         enterpriseConfigResourceName: projects/123456789/locations/us-central1/githubEnterpriseConfigs/configID
///       filename: cloudbuild.yaml
/// ```
///
/// ### Cloudbuild Trigger Allow Failure
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const allow_failure_trigger = new gcp.cloudbuild.Trigger("allow-failure-trigger", {
///     name: "my-trigger",
///     location: "global",
///     triggerTemplate: {
///         branchName: "main",
///         repoName: "my-repo",
///     },
///     build: {
///         steps: [{
///             name: "ubuntu",
///             args: [
///                 "-c",
///                 "exit 1",
///             ],
///             allowFailure: true,
///         }],
///         source: {
///             storageSource: {
///                 bucket: "mybucket",
///                 object: "source_code.tar.gz",
///             },
///         },
///         tags: [
///             "build",
///             "newFeature",
///         ],
///         substitutions: {
///             _FOO: "bar",
///             _BAZ: "qux",
///         },
///         queueTtl: "20s",
///         logsBucket: "gs://mybucket/logs",
///         secrets: [{
///             kmsKeyName: "projects/myProject/locations/global/keyRings/keyring-name/cryptoKeys/key-name",
///             secretEnv: {
///                 PASSWORD: "ZW5jcnlwdGVkLXBhc3N3b3JkCg==",
///             },
///         }],
///         availableSecrets: {
///             secretManagers: [{
///                 env: "MY_SECRET",
///                 versionName: "projects/myProject/secrets/mySecret/versions/latest",
///             }],
///         },
///         artifacts: {
///             images: ["gcr.io/$PROJECT_ID/$REPO_NAME:$COMMIT_SHA"],
///             objects: {
///                 location: "gs://bucket/path/to/somewhere/",
///                 paths: ["path"],
///             },
///         },
///         options: {
///             sourceProvenanceHashes: ["MD5"],
///             requestedVerifyOption: "VERIFIED",
///             machineType: "N1_HIGHCPU_8",
///             diskSizeGb: 100,
///             substitutionOption: "ALLOW_LOOSE",
///             dynamicSubstitutions: true,
///             logStreamingOption: "STREAM_OFF",
///             workerPool: "pool",
///             logging: "LEGACY",
///             envs: ["ekey = evalue"],
///             secretEnvs: ["secretenv = svalue"],
///             volumes: [{
///                 name: "v1",
///                 path: "v1",
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// allow_failure_trigger = gcp.cloudbuild.Trigger("allow-failure-trigger",
///     name="my-trigger",
///     location="global",
///     trigger_template={
///         "branch_name": "main",
///         "repo_name": "my-repo",
///     },
///     build={
///         "steps": [{
///             "name": "ubuntu",
///             "args": [
///                 "-c",
///                 "exit 1",
///             ],
///             "allow_failure": True,
///         }],
///         "source": {
///             "storage_source": {
///                 "bucket": "mybucket",
///                 "object": "source_code.tar.gz",
///             },
///         },
///         "tags": [
///             "build",
///             "newFeature",
///         ],
///         "substitutions": {
///             "_FOO": "bar",
///             "_BAZ": "qux",
///         },
///         "queue_ttl": "20s",
///         "logs_bucket": "gs://mybucket/logs",
///         "secrets": [{
///             "kms_key_name": "projects/myProject/locations/global/keyRings/keyring-name/cryptoKeys/key-name",
///             "secret_env": {
///                 "PASSWORD": "ZW5jcnlwdGVkLXBhc3N3b3JkCg==",
///             },
///         }],
///         "available_secrets": {
///             "secret_managers": [{
///                 "env": "MY_SECRET",
///                 "version_name": "projects/myProject/secrets/mySecret/versions/latest",
///             }],
///         },
///         "artifacts": {
///             "images": ["gcr.io/$PROJECT_ID/$REPO_NAME:$COMMIT_SHA"],
///             "objects": {
///                 "location": "gs://bucket/path/to/somewhere/",
///                 "paths": ["path"],
///             },
///         },
///         "options": {
///             "source_provenance_hashes": ["MD5"],
///             "requested_verify_option": "VERIFIED",
///             "machine_type": "N1_HIGHCPU_8",
///             "disk_size_gb": 100,
///             "substitution_option": "ALLOW_LOOSE",
///             "dynamic_substitutions": True,
///             "log_streaming_option": "STREAM_OFF",
///             "worker_pool": "pool",
///             "logging": "LEGACY",
///             "envs": ["ekey = evalue"],
///             "secret_envs": ["secretenv = svalue"],
///             "volumes": [{
///                 "name": "v1",
///                 "path": "v1",
///             }],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var allow_failure_trigger = new Gcp.CloudBuild.Trigger("allow-failure-trigger", new()
///     {
///         Name = "my-trigger",
///         Location = "global",
///         TriggerTemplate = new Gcp.CloudBuild.Inputs.TriggerTriggerTemplateArgs
///         {
///             BranchName = "main",
///             RepoName = "my-repo",
///         },
///         Build = new Gcp.CloudBuild.Inputs.TriggerBuildArgs
///         {
///             Steps = new[]
///             {
///                 new Gcp.CloudBuild.Inputs.TriggerBuildStepArgs
///                 {
///                     Name = "ubuntu",
///                     Args = new[]
///                     {
///                         "-c",
///                         "exit 1",
///                     },
///                     AllowFailure = true,
///                 },
///             },
///             Source = new Gcp.CloudBuild.Inputs.TriggerBuildSourceArgs
///             {
///                 StorageSource = new Gcp.CloudBuild.Inputs.TriggerBuildSourceStorageSourceArgs
///                 {
///                     Bucket = "mybucket",
///                     Object = "source_code.tar.gz",
///                 },
///             },
///             Tags = new[]
///             {
///                 "build",
///                 "newFeature",
///             },
///             Substitutions =
///             {
///                 { "_FOO", "bar" },
///                 { "_BAZ", "qux" },
///             },
///             QueueTtl = "20s",
///             LogsBucket = "gs://mybucket/logs",
///             Secrets = new[]
///             {
///                 new Gcp.CloudBuild.Inputs.TriggerBuildSecretArgs
///                 {
///                     KmsKeyName = "projects/myProject/locations/global/keyRings/keyring-name/cryptoKeys/key-name",
///                     SecretEnv =
///                     {
///                         { "PASSWORD", "ZW5jcnlwdGVkLXBhc3N3b3JkCg==" },
///                     },
///                 },
///             },
///             AvailableSecrets = new Gcp.CloudBuild.Inputs.TriggerBuildAvailableSecretsArgs
///             {
///                 SecretManagers = new[]
///                 {
///                     new Gcp.CloudBuild.Inputs.TriggerBuildAvailableSecretsSecretManagerArgs
///                     {
///                         Env = "MY_SECRET",
///                         VersionName = "projects/myProject/secrets/mySecret/versions/latest",
///                     },
///                 },
///             },
///             Artifacts = new Gcp.CloudBuild.Inputs.TriggerBuildArtifactsArgs
///             {
///                 Images = new[]
///                 {
///                     "gcr.io/$PROJECT_ID/$REPO_NAME:$COMMIT_SHA",
///                 },
///                 Objects = new Gcp.CloudBuild.Inputs.TriggerBuildArtifactsObjectsArgs
///                 {
///                     Location = "gs://bucket/path/to/somewhere/",
///                     Paths = new[]
///                     {
///                         "path",
///                     },
///                 },
///             },
///             Options = new Gcp.CloudBuild.Inputs.TriggerBuildOptionsArgs
///             {
///                 SourceProvenanceHashes = new[]
///                 {
///                     "MD5",
///                 },
///                 RequestedVerifyOption = "VERIFIED",
///                 MachineType = "N1_HIGHCPU_8",
///                 DiskSizeGb = 100,
///                 SubstitutionOption = "ALLOW_LOOSE",
///                 DynamicSubstitutions = true,
///                 LogStreamingOption = "STREAM_OFF",
///                 WorkerPool = "pool",
///                 Logging = "LEGACY",
///                 Envs = new[]
///                 {
///                     "ekey = evalue",
///                 },
///                 SecretEnvs = new[]
///                 {
///                     "secretenv = svalue",
///                 },
///                 Volumes = new[]
///                 {
///                     new Gcp.CloudBuild.Inputs.TriggerBuildOptionsVolumeArgs
///                     {
///                         Name = "v1",
///                         Path = "v1",
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuild.NewTrigger(ctx, "allow-failure-trigger", &cloudbuild.TriggerArgs{
/// 			Name:     pulumi.String("my-trigger"),
/// 			Location: pulumi.String("global"),
/// 			TriggerTemplate: &cloudbuild.TriggerTriggerTemplateArgs{
/// 				BranchName: pulumi.String("main"),
/// 				RepoName:   pulumi.String("my-repo"),
/// 			},
/// 			Build: &cloudbuild.TriggerBuildArgs{
/// 				Steps: cloudbuild.TriggerBuildStepArray{
/// 					&cloudbuild.TriggerBuildStepArgs{
/// 						Name: pulumi.String("ubuntu"),
/// 						Args: pulumi.StringArray{
/// 							pulumi.String("-c"),
/// 							pulumi.String("exit 1"),
/// 						},
/// 						AllowFailure: pulumi.Bool(true),
/// 					},
/// 				},
/// 				Source: &cloudbuild.TriggerBuildSourceArgs{
/// 					StorageSource: &cloudbuild.TriggerBuildSourceStorageSourceArgs{
/// 						Bucket: pulumi.String("mybucket"),
/// 						Object: pulumi.String("source_code.tar.gz"),
/// 					},
/// 				},
/// 				Tags: pulumi.StringArray{
/// 					pulumi.String("build"),
/// 					pulumi.String("newFeature"),
/// 				},
/// 				Substitutions: pulumi.StringMap{
/// 					"_FOO": pulumi.String("bar"),
/// 					"_BAZ": pulumi.String("qux"),
/// 				},
/// 				QueueTtl:   pulumi.String("20s"),
/// 				LogsBucket: pulumi.String("gs://mybucket/logs"),
/// 				Secrets: cloudbuild.TriggerBuildSecretArray{
/// 					&cloudbuild.TriggerBuildSecretArgs{
/// 						KmsKeyName: pulumi.String("projects/myProject/locations/global/keyRings/keyring-name/cryptoKeys/key-name"),
/// 						SecretEnv: pulumi.StringMap{
/// 							"PASSWORD": pulumi.String("ZW5jcnlwdGVkLXBhc3N3b3JkCg=="),
/// 						},
/// 					},
/// 				},
/// 				AvailableSecrets: &cloudbuild.TriggerBuildAvailableSecretsArgs{
/// 					SecretManagers: cloudbuild.TriggerBuildAvailableSecretsSecretManagerArray{
/// 						&cloudbuild.TriggerBuildAvailableSecretsSecretManagerArgs{
/// 							Env:         pulumi.String("MY_SECRET"),
/// 							VersionName: pulumi.String("projects/myProject/secrets/mySecret/versions/latest"),
/// 						},
/// 					},
/// 				},
/// 				Artifacts: &cloudbuild.TriggerBuildArtifactsArgs{
/// 					Images: pulumi.StringArray{
/// 						pulumi.String("gcr.io/$PROJECT_ID/$REPO_NAME:$COMMIT_SHA"),
/// 					},
/// 					Objects: &cloudbuild.TriggerBuildArtifactsObjectsArgs{
/// 						Location: pulumi.String("gs://bucket/path/to/somewhere/"),
/// 						Paths: pulumi.StringArray{
/// 							pulumi.String("path"),
/// 						},
/// 					},
/// 				},
/// 				Options: &cloudbuild.TriggerBuildOptionsArgs{
/// 					SourceProvenanceHashes: pulumi.StringArray{
/// 						pulumi.String("MD5"),
/// 					},
/// 					RequestedVerifyOption: pulumi.String("VERIFIED"),
/// 					MachineType:           pulumi.String("N1_HIGHCPU_8"),
/// 					DiskSizeGb:            pulumi.Int(100),
/// 					SubstitutionOption:    pulumi.String("ALLOW_LOOSE"),
/// 					DynamicSubstitutions:  pulumi.Bool(true),
/// 					LogStreamingOption:    pulumi.String("STREAM_OFF"),
/// 					WorkerPool:            pulumi.String("pool"),
/// 					Logging:               pulumi.String("LEGACY"),
/// 					Envs: pulumi.StringArray{
/// 						pulumi.String("ekey = evalue"),
/// 					},
/// 					SecretEnvs: pulumi.StringArray{
/// 						pulumi.String("secretenv = svalue"),
/// 					},
/// 					Volumes: cloudbuild.TriggerBuildOptionsVolumeArray{
/// 						&cloudbuild.TriggerBuildOptionsVolumeArgs{
/// 							Name: pulumi.String("v1"),
/// 							Path: pulumi.String("v1"),
/// 						},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudbuild.Trigger;
/// import com.pulumi.gcp.cloudbuild.TriggerArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerTriggerTemplateArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildSourceArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildSourceStorageSourceArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildAvailableSecretsArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildArtifactsArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildArtifactsObjectsArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildOptionsArgs;
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
///         var allow_failure_trigger = new Trigger("allow-failure-trigger", TriggerArgs.builder()
///             .name("my-trigger")
///             .location("global")
///             .triggerTemplate(TriggerTriggerTemplateArgs.builder()
///                 .branchName("main")
///                 .repoName("my-repo")
///                 .build())
///             .build(TriggerBuildArgs.builder()
///                 .steps(TriggerBuildStepArgs.builder()
///                     .name("ubuntu")
///                     .args(
///                         "-c",
///                         "exit 1")
///                     .allowFailure(true)
///                     .build())
///                 .source(TriggerBuildSourceArgs.builder()
///                     .storageSource(TriggerBuildSourceStorageSourceArgs.builder()
///                         .bucket("mybucket")
///                         .object("source_code.tar.gz")
///                         .build())
///                     .build())
///                 .tags(
///                     "build",
///                     "newFeature")
///                 .substitutions(Map.ofEntries(
///                     Map.entry("_FOO", "bar"),
///                     Map.entry("_BAZ", "qux")
///                 ))
///                 .queueTtl("20s")
///                 .logsBucket("gs://mybucket/logs")
///                 .secrets(TriggerBuildSecretArgs.builder()
///                     .kmsKeyName("projects/myProject/locations/global/keyRings/keyring-name/cryptoKeys/key-name")
///                     .secretEnv(Map.of("PASSWORD", "ZW5jcnlwdGVkLXBhc3N3b3JkCg=="))
///                     .build())
///                 .availableSecrets(TriggerBuildAvailableSecretsArgs.builder()
///                     .secretManagers(TriggerBuildAvailableSecretsSecretManagerArgs.builder()
///                         .env("MY_SECRET")
///                         .versionName("projects/myProject/secrets/mySecret/versions/latest")
///                         .build())
///                     .build())
///                 .artifacts(TriggerBuildArtifactsArgs.builder()
///                     .images("gcr.io/$PROJECT_ID/$REPO_NAME:$COMMIT_SHA")
///                     .objects(TriggerBuildArtifactsObjectsArgs.builder()
///                         .location("gs://bucket/path/to/somewhere/")
///                         .paths("path")
///                         .build())
///                     .build())
///                 .options(TriggerBuildOptionsArgs.builder()
///                     .sourceProvenanceHashes("MD5")
///                     .requestedVerifyOption("VERIFIED")
///                     .machineType("N1_HIGHCPU_8")
///                     .diskSizeGb(100)
///                     .substitutionOption("ALLOW_LOOSE")
///                     .dynamicSubstitutions(true)
///                     .logStreamingOption("STREAM_OFF")
///                     .workerPool("pool")
///                     .logging("LEGACY")
///                     .envs("ekey = evalue")
///                     .secretEnvs("secretenv = svalue")
///                     .volumes(TriggerBuildOptionsVolumeArgs.builder()
///                         .name("v1")
///                         .path("v1")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   allow-failure-trigger:
///     type: gcp:cloudbuild:Trigger
///     properties:
///       name: my-trigger
///       location: global
///       triggerTemplate:
///         branchName: main
///         repoName: my-repo
///       build:
///         steps:
///           - name: ubuntu
///             args:
///               - -c
///               - exit 1
///             allowFailure: true
///         source:
///           storageSource:
///             bucket: mybucket
///             object: source_code.tar.gz
///         tags:
///           - build
///           - newFeature
///         substitutions:
///           _FOO: bar
///           _BAZ: qux
///         queueTtl: 20s
///         logsBucket: gs://mybucket/logs
///         secrets:
///           - kmsKeyName: projects/myProject/locations/global/keyRings/keyring-name/cryptoKeys/key-name
///             secretEnv:
///               PASSWORD: ZW5jcnlwdGVkLXBhc3N3b3JkCg==
///         availableSecrets:
///           secretManagers:
///             - env: MY_SECRET
///               versionName: projects/myProject/secrets/mySecret/versions/latest
///         artifacts:
///           images:
///             - gcr.io/$PROJECT_ID/$REPO_NAME:$COMMIT_SHA
///           objects:
///             location: gs://bucket/path/to/somewhere/
///             paths:
///               - path
///         options:
///           sourceProvenanceHashes:
///             - MD5
///           requestedVerifyOption: VERIFIED
///           machineType: N1_HIGHCPU_8
///           diskSizeGb: 100
///           substitutionOption: ALLOW_LOOSE
///           dynamicSubstitutions: true
///           logStreamingOption: STREAM_OFF
///           workerPool: pool
///           logging: LEGACY
///           envs:
///             - ekey = evalue
///           secretEnvs:
///             - secretenv = svalue
///           volumes:
///             - name: v1
///               path: v1
/// ```
///
/// ### Cloudbuild Trigger Allow Exit Codes
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const allow_exit_codes_trigger = new gcp.cloudbuild.Trigger("allow-exit-codes-trigger", {
///     name: "my-trigger",
///     location: "global",
///     triggerTemplate: {
///         branchName: "main",
///         repoName: "my-repo",
///     },
///     build: {
///         steps: [{
///             name: "ubuntu",
///             args: [
///                 "-c",
///                 "exit 1",
///             ],
///             allowExitCodes: [
///                 1,
///                 3,
///             ],
///         }],
///         source: {
///             storageSource: {
///                 bucket: "mybucket",
///                 object: "source_code.tar.gz",
///             },
///         },
///         tags: [
///             "build",
///             "newFeature",
///         ],
///         substitutions: {
///             _FOO: "bar",
///             _BAZ: "qux",
///         },
///         queueTtl: "20s",
///         logsBucket: "gs://mybucket/logs",
///         secrets: [{
///             kmsKeyName: "projects/myProject/locations/global/keyRings/keyring-name/cryptoKeys/key-name",
///             secretEnv: {
///                 PASSWORD: "ZW5jcnlwdGVkLXBhc3N3b3JkCg==",
///             },
///         }],
///         availableSecrets: {
///             secretManagers: [{
///                 env: "MY_SECRET",
///                 versionName: "projects/myProject/secrets/mySecret/versions/latest",
///             }],
///         },
///         artifacts: {
///             images: ["gcr.io/$PROJECT_ID/$REPO_NAME:$COMMIT_SHA"],
///             objects: {
///                 location: "gs://bucket/path/to/somewhere/",
///                 paths: ["path"],
///             },
///         },
///         options: {
///             sourceProvenanceHashes: ["MD5"],
///             requestedVerifyOption: "VERIFIED",
///             machineType: "N1_HIGHCPU_8",
///             diskSizeGb: 100,
///             substitutionOption: "ALLOW_LOOSE",
///             dynamicSubstitutions: true,
///             logStreamingOption: "STREAM_OFF",
///             workerPool: "pool",
///             logging: "LEGACY",
///             envs: ["ekey = evalue"],
///             secretEnvs: ["secretenv = svalue"],
///             volumes: [{
///                 name: "v1",
///                 path: "v1",
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// allow_exit_codes_trigger = gcp.cloudbuild.Trigger("allow-exit-codes-trigger",
///     name="my-trigger",
///     location="global",
///     trigger_template={
///         "branch_name": "main",
///         "repo_name": "my-repo",
///     },
///     build={
///         "steps": [{
///             "name": "ubuntu",
///             "args": [
///                 "-c",
///                 "exit 1",
///             ],
///             "allow_exit_codes": [
///                 1,
///                 3,
///             ],
///         }],
///         "source": {
///             "storage_source": {
///                 "bucket": "mybucket",
///                 "object": "source_code.tar.gz",
///             },
///         },
///         "tags": [
///             "build",
///             "newFeature",
///         ],
///         "substitutions": {
///             "_FOO": "bar",
///             "_BAZ": "qux",
///         },
///         "queue_ttl": "20s",
///         "logs_bucket": "gs://mybucket/logs",
///         "secrets": [{
///             "kms_key_name": "projects/myProject/locations/global/keyRings/keyring-name/cryptoKeys/key-name",
///             "secret_env": {
///                 "PASSWORD": "ZW5jcnlwdGVkLXBhc3N3b3JkCg==",
///             },
///         }],
///         "available_secrets": {
///             "secret_managers": [{
///                 "env": "MY_SECRET",
///                 "version_name": "projects/myProject/secrets/mySecret/versions/latest",
///             }],
///         },
///         "artifacts": {
///             "images": ["gcr.io/$PROJECT_ID/$REPO_NAME:$COMMIT_SHA"],
///             "objects": {
///                 "location": "gs://bucket/path/to/somewhere/",
///                 "paths": ["path"],
///             },
///         },
///         "options": {
///             "source_provenance_hashes": ["MD5"],
///             "requested_verify_option": "VERIFIED",
///             "machine_type": "N1_HIGHCPU_8",
///             "disk_size_gb": 100,
///             "substitution_option": "ALLOW_LOOSE",
///             "dynamic_substitutions": True,
///             "log_streaming_option": "STREAM_OFF",
///             "worker_pool": "pool",
///             "logging": "LEGACY",
///             "envs": ["ekey = evalue"],
///             "secret_envs": ["secretenv = svalue"],
///             "volumes": [{
///                 "name": "v1",
///                 "path": "v1",
///             }],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var allow_exit_codes_trigger = new Gcp.CloudBuild.Trigger("allow-exit-codes-trigger", new()
///     {
///         Name = "my-trigger",
///         Location = "global",
///         TriggerTemplate = new Gcp.CloudBuild.Inputs.TriggerTriggerTemplateArgs
///         {
///             BranchName = "main",
///             RepoName = "my-repo",
///         },
///         Build = new Gcp.CloudBuild.Inputs.TriggerBuildArgs
///         {
///             Steps = new[]
///             {
///                 new Gcp.CloudBuild.Inputs.TriggerBuildStepArgs
///                 {
///                     Name = "ubuntu",
///                     Args = new[]
///                     {
///                         "-c",
///                         "exit 1",
///                     },
///                     AllowExitCodes = new[]
///                     {
///                         1,
///                         3,
///                     },
///                 },
///             },
///             Source = new Gcp.CloudBuild.Inputs.TriggerBuildSourceArgs
///             {
///                 StorageSource = new Gcp.CloudBuild.Inputs.TriggerBuildSourceStorageSourceArgs
///                 {
///                     Bucket = "mybucket",
///                     Object = "source_code.tar.gz",
///                 },
///             },
///             Tags = new[]
///             {
///                 "build",
///                 "newFeature",
///             },
///             Substitutions =
///             {
///                 { "_FOO", "bar" },
///                 { "_BAZ", "qux" },
///             },
///             QueueTtl = "20s",
///             LogsBucket = "gs://mybucket/logs",
///             Secrets = new[]
///             {
///                 new Gcp.CloudBuild.Inputs.TriggerBuildSecretArgs
///                 {
///                     KmsKeyName = "projects/myProject/locations/global/keyRings/keyring-name/cryptoKeys/key-name",
///                     SecretEnv =
///                     {
///                         { "PASSWORD", "ZW5jcnlwdGVkLXBhc3N3b3JkCg==" },
///                     },
///                 },
///             },
///             AvailableSecrets = new Gcp.CloudBuild.Inputs.TriggerBuildAvailableSecretsArgs
///             {
///                 SecretManagers = new[]
///                 {
///                     new Gcp.CloudBuild.Inputs.TriggerBuildAvailableSecretsSecretManagerArgs
///                     {
///                         Env = "MY_SECRET",
///                         VersionName = "projects/myProject/secrets/mySecret/versions/latest",
///                     },
///                 },
///             },
///             Artifacts = new Gcp.CloudBuild.Inputs.TriggerBuildArtifactsArgs
///             {
///                 Images = new[]
///                 {
///                     "gcr.io/$PROJECT_ID/$REPO_NAME:$COMMIT_SHA",
///                 },
///                 Objects = new Gcp.CloudBuild.Inputs.TriggerBuildArtifactsObjectsArgs
///                 {
///                     Location = "gs://bucket/path/to/somewhere/",
///                     Paths = new[]
///                     {
///                         "path",
///                     },
///                 },
///             },
///             Options = new Gcp.CloudBuild.Inputs.TriggerBuildOptionsArgs
///             {
///                 SourceProvenanceHashes = new[]
///                 {
///                     "MD5",
///                 },
///                 RequestedVerifyOption = "VERIFIED",
///                 MachineType = "N1_HIGHCPU_8",
///                 DiskSizeGb = 100,
///                 SubstitutionOption = "ALLOW_LOOSE",
///                 DynamicSubstitutions = true,
///                 LogStreamingOption = "STREAM_OFF",
///                 WorkerPool = "pool",
///                 Logging = "LEGACY",
///                 Envs = new[]
///                 {
///                     "ekey = evalue",
///                 },
///                 SecretEnvs = new[]
///                 {
///                     "secretenv = svalue",
///                 },
///                 Volumes = new[]
///                 {
///                     new Gcp.CloudBuild.Inputs.TriggerBuildOptionsVolumeArgs
///                     {
///                         Name = "v1",
///                         Path = "v1",
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuild.NewTrigger(ctx, "allow-exit-codes-trigger", &cloudbuild.TriggerArgs{
/// 			Name:     pulumi.String("my-trigger"),
/// 			Location: pulumi.String("global"),
/// 			TriggerTemplate: &cloudbuild.TriggerTriggerTemplateArgs{
/// 				BranchName: pulumi.String("main"),
/// 				RepoName:   pulumi.String("my-repo"),
/// 			},
/// 			Build: &cloudbuild.TriggerBuildArgs{
/// 				Steps: cloudbuild.TriggerBuildStepArray{
/// 					&cloudbuild.TriggerBuildStepArgs{
/// 						Name: pulumi.String("ubuntu"),
/// 						Args: pulumi.StringArray{
/// 							pulumi.String("-c"),
/// 							pulumi.String("exit 1"),
/// 						},
/// 						AllowExitCodes: pulumi.IntArray{
/// 							pulumi.Int(1),
/// 							pulumi.Int(3),
/// 						},
/// 					},
/// 				},
/// 				Source: &cloudbuild.TriggerBuildSourceArgs{
/// 					StorageSource: &cloudbuild.TriggerBuildSourceStorageSourceArgs{
/// 						Bucket: pulumi.String("mybucket"),
/// 						Object: pulumi.String("source_code.tar.gz"),
/// 					},
/// 				},
/// 				Tags: pulumi.StringArray{
/// 					pulumi.String("build"),
/// 					pulumi.String("newFeature"),
/// 				},
/// 				Substitutions: pulumi.StringMap{
/// 					"_FOO": pulumi.String("bar"),
/// 					"_BAZ": pulumi.String("qux"),
/// 				},
/// 				QueueTtl:   pulumi.String("20s"),
/// 				LogsBucket: pulumi.String("gs://mybucket/logs"),
/// 				Secrets: cloudbuild.TriggerBuildSecretArray{
/// 					&cloudbuild.TriggerBuildSecretArgs{
/// 						KmsKeyName: pulumi.String("projects/myProject/locations/global/keyRings/keyring-name/cryptoKeys/key-name"),
/// 						SecretEnv: pulumi.StringMap{
/// 							"PASSWORD": pulumi.String("ZW5jcnlwdGVkLXBhc3N3b3JkCg=="),
/// 						},
/// 					},
/// 				},
/// 				AvailableSecrets: &cloudbuild.TriggerBuildAvailableSecretsArgs{
/// 					SecretManagers: cloudbuild.TriggerBuildAvailableSecretsSecretManagerArray{
/// 						&cloudbuild.TriggerBuildAvailableSecretsSecretManagerArgs{
/// 							Env:         pulumi.String("MY_SECRET"),
/// 							VersionName: pulumi.String("projects/myProject/secrets/mySecret/versions/latest"),
/// 						},
/// 					},
/// 				},
/// 				Artifacts: &cloudbuild.TriggerBuildArtifactsArgs{
/// 					Images: pulumi.StringArray{
/// 						pulumi.String("gcr.io/$PROJECT_ID/$REPO_NAME:$COMMIT_SHA"),
/// 					},
/// 					Objects: &cloudbuild.TriggerBuildArtifactsObjectsArgs{
/// 						Location: pulumi.String("gs://bucket/path/to/somewhere/"),
/// 						Paths: pulumi.StringArray{
/// 							pulumi.String("path"),
/// 						},
/// 					},
/// 				},
/// 				Options: &cloudbuild.TriggerBuildOptionsArgs{
/// 					SourceProvenanceHashes: pulumi.StringArray{
/// 						pulumi.String("MD5"),
/// 					},
/// 					RequestedVerifyOption: pulumi.String("VERIFIED"),
/// 					MachineType:           pulumi.String("N1_HIGHCPU_8"),
/// 					DiskSizeGb:            pulumi.Int(100),
/// 					SubstitutionOption:    pulumi.String("ALLOW_LOOSE"),
/// 					DynamicSubstitutions:  pulumi.Bool(true),
/// 					LogStreamingOption:    pulumi.String("STREAM_OFF"),
/// 					WorkerPool:            pulumi.String("pool"),
/// 					Logging:               pulumi.String("LEGACY"),
/// 					Envs: pulumi.StringArray{
/// 						pulumi.String("ekey = evalue"),
/// 					},
/// 					SecretEnvs: pulumi.StringArray{
/// 						pulumi.String("secretenv = svalue"),
/// 					},
/// 					Volumes: cloudbuild.TriggerBuildOptionsVolumeArray{
/// 						&cloudbuild.TriggerBuildOptionsVolumeArgs{
/// 							Name: pulumi.String("v1"),
/// 							Path: pulumi.String("v1"),
/// 						},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudbuild.Trigger;
/// import com.pulumi.gcp.cloudbuild.TriggerArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerTriggerTemplateArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildSourceArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildSourceStorageSourceArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildAvailableSecretsArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildArtifactsArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildArtifactsObjectsArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerBuildOptionsArgs;
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
///         var allow_exit_codes_trigger = new Trigger("allow-exit-codes-trigger", TriggerArgs.builder()
///             .name("my-trigger")
///             .location("global")
///             .triggerTemplate(TriggerTriggerTemplateArgs.builder()
///                 .branchName("main")
///                 .repoName("my-repo")
///                 .build())
///             .build(TriggerBuildArgs.builder()
///                 .steps(TriggerBuildStepArgs.builder()
///                     .name("ubuntu")
///                     .args(
///                         "-c",
///                         "exit 1")
///                     .allowExitCodes(
///                         1,
///                         3)
///                     .build())
///                 .source(TriggerBuildSourceArgs.builder()
///                     .storageSource(TriggerBuildSourceStorageSourceArgs.builder()
///                         .bucket("mybucket")
///                         .object("source_code.tar.gz")
///                         .build())
///                     .build())
///                 .tags(
///                     "build",
///                     "newFeature")
///                 .substitutions(Map.ofEntries(
///                     Map.entry("_FOO", "bar"),
///                     Map.entry("_BAZ", "qux")
///                 ))
///                 .queueTtl("20s")
///                 .logsBucket("gs://mybucket/logs")
///                 .secrets(TriggerBuildSecretArgs.builder()
///                     .kmsKeyName("projects/myProject/locations/global/keyRings/keyring-name/cryptoKeys/key-name")
///                     .secretEnv(Map.of("PASSWORD", "ZW5jcnlwdGVkLXBhc3N3b3JkCg=="))
///                     .build())
///                 .availableSecrets(TriggerBuildAvailableSecretsArgs.builder()
///                     .secretManagers(TriggerBuildAvailableSecretsSecretManagerArgs.builder()
///                         .env("MY_SECRET")
///                         .versionName("projects/myProject/secrets/mySecret/versions/latest")
///                         .build())
///                     .build())
///                 .artifacts(TriggerBuildArtifactsArgs.builder()
///                     .images("gcr.io/$PROJECT_ID/$REPO_NAME:$COMMIT_SHA")
///                     .objects(TriggerBuildArtifactsObjectsArgs.builder()
///                         .location("gs://bucket/path/to/somewhere/")
///                         .paths("path")
///                         .build())
///                     .build())
///                 .options(TriggerBuildOptionsArgs.builder()
///                     .sourceProvenanceHashes("MD5")
///                     .requestedVerifyOption("VERIFIED")
///                     .machineType("N1_HIGHCPU_8")
///                     .diskSizeGb(100)
///                     .substitutionOption("ALLOW_LOOSE")
///                     .dynamicSubstitutions(true)
///                     .logStreamingOption("STREAM_OFF")
///                     .workerPool("pool")
///                     .logging("LEGACY")
///                     .envs("ekey = evalue")
///                     .secretEnvs("secretenv = svalue")
///                     .volumes(TriggerBuildOptionsVolumeArgs.builder()
///                         .name("v1")
///                         .path("v1")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   allow-exit-codes-trigger:
///     type: gcp:cloudbuild:Trigger
///     properties:
///       name: my-trigger
///       location: global
///       triggerTemplate:
///         branchName: main
///         repoName: my-repo
///       build:
///         steps:
///           - name: ubuntu
///             args:
///               - -c
///               - exit 1
///             allowExitCodes:
///               - 1
///               - 3
///         source:
///           storageSource:
///             bucket: mybucket
///             object: source_code.tar.gz
///         tags:
///           - build
///           - newFeature
///         substitutions:
///           _FOO: bar
///           _BAZ: qux
///         queueTtl: 20s
///         logsBucket: gs://mybucket/logs
///         secrets:
///           - kmsKeyName: projects/myProject/locations/global/keyRings/keyring-name/cryptoKeys/key-name
///             secretEnv:
///               PASSWORD: ZW5jcnlwdGVkLXBhc3N3b3JkCg==
///         availableSecrets:
///           secretManagers:
///             - env: MY_SECRET
///               versionName: projects/myProject/secrets/mySecret/versions/latest
///         artifacts:
///           images:
///             - gcr.io/$PROJECT_ID/$REPO_NAME:$COMMIT_SHA
///           objects:
///             location: gs://bucket/path/to/somewhere/
///             paths:
///               - path
///         options:
///           sourceProvenanceHashes:
///             - MD5
///           requestedVerifyOption: VERIFIED
///           machineType: N1_HIGHCPU_8
///           diskSizeGb: 100
///           substitutionOption: ALLOW_LOOSE
///           dynamicSubstitutions: true
///           logStreamingOption: STREAM_OFF
///           workerPool: pool
///           logging: LEGACY
///           envs:
///             - ekey = evalue
///           secretEnvs:
///             - secretenv = svalue
///           volumes:
///             - name: v1
///               path: v1
/// ```
///
/// ### Cloudbuild Trigger Pubsub With Repo
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_connection = new gcp.cloudbuildv2.Connection("my-connection", {
///     location: "us-central1",
///     name: "my-connection",
///     githubConfig: {
///         appInstallationId: 123123,
///         authorizerCredential: {
///             oauthTokenSecretVersion: "projects/my-project/secrets/github-pat-secret/versions/latest",
///         },
///     },
/// });
/// const my_repository = new gcp.cloudbuildv2.Repository("my-repository", {
///     name: "my-repo",
///     parentConnection: my_connection.id,
///     remoteUri: "https://github.com/myuser/my-repo.git",
/// });
/// const mytopic = new gcp.pubsub.Topic("mytopic", {name: "my-topic"});
/// const pubsub_with_repo_trigger = new gcp.cloudbuild.Trigger("pubsub-with-repo-trigger", {
///     name: "pubsub-with-repo-trigger",
///     location: "us-central1",
///     pubsubConfig: {
///         topic: mytopic.id,
///     },
///     sourceToBuild: {
///         repository: my_repository.id,
///         ref: "refs/heads/main",
///         repoType: "GITHUB",
///     },
///     gitFileSource: {
///         path: "cloudbuild.yaml",
///         repository: my_repository.id,
///         revision: "refs/heads/main",
///         repoType: "GITHUB",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_connection = gcp.cloudbuildv2.Connection("my-connection",
///     location="us-central1",
///     name="my-connection",
///     github_config={
///         "app_installation_id": 123123,
///         "authorizer_credential": {
///             "oauth_token_secret_version": "projects/my-project/secrets/github-pat-secret/versions/latest",
///         },
///     })
/// my_repository = gcp.cloudbuildv2.Repository("my-repository",
///     name="my-repo",
///     parent_connection=my_connection.id,
///     remote_uri="https://github.com/myuser/my-repo.git")
/// mytopic = gcp.pubsub.Topic("mytopic", name="my-topic")
/// pubsub_with_repo_trigger = gcp.cloudbuild.Trigger("pubsub-with-repo-trigger",
///     name="pubsub-with-repo-trigger",
///     location="us-central1",
///     pubsub_config={
///         "topic": mytopic.id,
///     },
///     source_to_build={
///         "repository": my_repository.id,
///         "ref": "refs/heads/main",
///         "repo_type": "GITHUB",
///     },
///     git_file_source={
///         "path": "cloudbuild.yaml",
///         "repository": my_repository.id,
///         "revision": "refs/heads/main",
///         "repo_type": "GITHUB",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_connection = new Gcp.CloudBuildV2.Connection("my-connection", new()
///     {
///         Location = "us-central1",
///         Name = "my-connection",
///         GithubConfig = new Gcp.CloudBuildV2.Inputs.ConnectionGithubConfigArgs
///         {
///             AppInstallationId = 123123,
///             AuthorizerCredential = new Gcp.CloudBuildV2.Inputs.ConnectionGithubConfigAuthorizerCredentialArgs
///             {
///                 OauthTokenSecretVersion = "projects/my-project/secrets/github-pat-secret/versions/latest",
///             },
///         },
///     });
///
///     var my_repository = new Gcp.CloudBuildV2.Repository("my-repository", new()
///     {
///         Name = "my-repo",
///         ParentConnection = my_connection.Id,
///         RemoteUri = "https://github.com/myuser/my-repo.git",
///     });
///
///     var mytopic = new Gcp.PubSub.Topic("mytopic", new()
///     {
///         Name = "my-topic",
///     });
///
///     var pubsub_with_repo_trigger = new Gcp.CloudBuild.Trigger("pubsub-with-repo-trigger", new()
///     {
///         Name = "pubsub-with-repo-trigger",
///         Location = "us-central1",
///         PubsubConfig = new Gcp.CloudBuild.Inputs.TriggerPubsubConfigArgs
///         {
///             Topic = mytopic.Id,
///         },
///         SourceToBuild = new Gcp.CloudBuild.Inputs.TriggerSourceToBuildArgs
///         {
///             Repository = my_repository.Id,
///             Ref = "refs/heads/main",
///             RepoType = "GITHUB",
///         },
///         GitFileSource = new Gcp.CloudBuild.Inputs.TriggerGitFileSourceArgs
///         {
///             Path = "cloudbuild.yaml",
///             Repository = my_repository.Id,
///             Revision = "refs/heads/main",
///             RepoType = "GITHUB",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuildv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		my_connection, err := cloudbuildv2.NewConnection(ctx, "my-connection", &cloudbuildv2.ConnectionArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Name:     pulumi.String("my-connection"),
/// 			GithubConfig: &cloudbuildv2.ConnectionGithubConfigArgs{
/// 				AppInstallationId: pulumi.Int(123123),
/// 				AuthorizerCredential: &cloudbuildv2.ConnectionGithubConfigAuthorizerCredentialArgs{
/// 					OauthTokenSecretVersion: pulumi.String("projects/my-project/secrets/github-pat-secret/versions/latest"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		my_repository, err := cloudbuildv2.NewRepository(ctx, "my-repository", &cloudbuildv2.RepositoryArgs{
/// 			Name:             pulumi.String("my-repo"),
/// 			ParentConnection: my_connection.ID(),
/// 			RemoteUri:        pulumi.String("https://github.com/myuser/my-repo.git"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mytopic, err := pubsub.NewTopic(ctx, "mytopic", &pubsub.TopicArgs{
/// 			Name: pulumi.String("my-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudbuild.NewTrigger(ctx, "pubsub-with-repo-trigger", &cloudbuild.TriggerArgs{
/// 			Name:     pulumi.String("pubsub-with-repo-trigger"),
/// 			Location: pulumi.String("us-central1"),
/// 			PubsubConfig: &cloudbuild.TriggerPubsubConfigArgs{
/// 				Topic: mytopic.ID(),
/// 			},
/// 			SourceToBuild: &cloudbuild.TriggerSourceToBuildArgs{
/// 				Repository: my_repository.ID(),
/// 				Ref:        pulumi.String("refs/heads/main"),
/// 				RepoType:   pulumi.String("GITHUB"),
/// 			},
/// 			GitFileSource: &cloudbuild.TriggerGitFileSourceArgs{
/// 				Path:       pulumi.String("cloudbuild.yaml"),
/// 				Repository: my_repository.ID(),
/// 				Revision:   pulumi.String("refs/heads/main"),
/// 				RepoType:   pulumi.String("GITHUB"),
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
/// import com.pulumi.gcp.cloudbuildv2.Connection;
/// import com.pulumi.gcp.cloudbuildv2.ConnectionArgs;
/// import com.pulumi.gcp.cloudbuildv2.inputs.ConnectionGithubConfigArgs;
/// import com.pulumi.gcp.cloudbuildv2.inputs.ConnectionGithubConfigAuthorizerCredentialArgs;
/// import com.pulumi.gcp.cloudbuildv2.Repository;
/// import com.pulumi.gcp.cloudbuildv2.RepositoryArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.cloudbuild.Trigger;
/// import com.pulumi.gcp.cloudbuild.TriggerArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerPubsubConfigArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerSourceToBuildArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerGitFileSourceArgs;
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
///         var my_connection = new Connection("my-connection", ConnectionArgs.builder()
///             .location("us-central1")
///             .name("my-connection")
///             .githubConfig(ConnectionGithubConfigArgs.builder()
///                 .appInstallationId(123123)
///                 .authorizerCredential(ConnectionGithubConfigAuthorizerCredentialArgs.builder()
///                     .oauthTokenSecretVersion("projects/my-project/secrets/github-pat-secret/versions/latest")
///                     .build())
///                 .build())
///             .build());
///
///         var my_repository = new Repository("my-repository", RepositoryArgs.builder()
///             .name("my-repo")
///             .parentConnection(my_connection.id())
///             .remoteUri("https://github.com/myuser/my-repo.git")
///             .build());
///
///         var mytopic = new Topic("mytopic", TopicArgs.builder()
///             .name("my-topic")
///             .build());
///
///         var pubsub_with_repo_trigger = new Trigger("pubsub-with-repo-trigger", TriggerArgs.builder()
///             .name("pubsub-with-repo-trigger")
///             .location("us-central1")
///             .pubsubConfig(TriggerPubsubConfigArgs.builder()
///                 .topic(mytopic.id())
///                 .build())
///             .sourceToBuild(TriggerSourceToBuildArgs.builder()
///                 .repository(my_repository.id())
///                 .ref("refs/heads/main")
///                 .repoType("GITHUB")
///                 .build())
///             .gitFileSource(TriggerGitFileSourceArgs.builder()
///                 .path("cloudbuild.yaml")
///                 .repository(my_repository.id())
///                 .revision("refs/heads/main")
///                 .repoType("GITHUB")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-connection:
///     type: gcp:cloudbuildv2:Connection
///     properties:
///       location: us-central1
///       name: my-connection
///       githubConfig:
///         appInstallationId: 123123
///         authorizerCredential:
///           oauthTokenSecretVersion: projects/my-project/secrets/github-pat-secret/versions/latest
///   my-repository:
///     type: gcp:cloudbuildv2:Repository
///     properties:
///       name: my-repo
///       parentConnection: ${["my-connection"].id}
///       remoteUri: https://github.com/myuser/my-repo.git
///   mytopic:
///     type: gcp:pubsub:Topic
///     properties:
///       name: my-topic
///   pubsub-with-repo-trigger:
///     type: gcp:cloudbuild:Trigger
///     properties:
///       name: pubsub-with-repo-trigger
///       location: us-central1
///       pubsubConfig:
///         topic: ${mytopic.id}
///       sourceToBuild:
///         repository: ${["my-repository"].id}
///         ref: refs/heads/main
///         repoType: GITHUB
///       gitFileSource:
///         path: cloudbuild.yaml
///         repository: ${["my-repository"].id}
///         revision: refs/heads/main
///         repoType: GITHUB
/// ```
///
/// ### Cloudbuild Trigger Developer Connect Pull
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const developer_connect_trigger_pull = new gcp.cloudbuild.Trigger("developer-connect-trigger-pull", {
///     location: "us-central1",
///     developerConnectEventConfig: {
///         gitRepositoryLink: "projects/cryptic-tower-286020/locations/us-central1/connections/prod-bbs-push/gitRepositoryLinks/cbprob-prod-us-central1-push1",
///         pullRequest: {
///             branch: "^master$",
///             invertRegex: false,
///             commentControl: "COMMENTS_ENABLED",
///         },
///     },
///     filename: "cloudbuild.yaml",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// developer_connect_trigger_pull = gcp.cloudbuild.Trigger("developer-connect-trigger-pull",
///     location="us-central1",
///     developer_connect_event_config={
///         "git_repository_link": "projects/cryptic-tower-286020/locations/us-central1/connections/prod-bbs-push/gitRepositoryLinks/cbprob-prod-us-central1-push1",
///         "pull_request": {
///             "branch": "^master$",
///             "invert_regex": False,
///             "comment_control": "COMMENTS_ENABLED",
///         },
///     },
///     filename="cloudbuild.yaml")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var developer_connect_trigger_pull = new Gcp.CloudBuild.Trigger("developer-connect-trigger-pull", new()
///     {
///         Location = "us-central1",
///         DeveloperConnectEventConfig = new Gcp.CloudBuild.Inputs.TriggerDeveloperConnectEventConfigArgs
///         {
///             GitRepositoryLink = "projects/cryptic-tower-286020/locations/us-central1/connections/prod-bbs-push/gitRepositoryLinks/cbprob-prod-us-central1-push1",
///             PullRequest = new Gcp.CloudBuild.Inputs.TriggerDeveloperConnectEventConfigPullRequestArgs
///             {
///                 Branch = "^master$",
///                 InvertRegex = false,
///                 CommentControl = "COMMENTS_ENABLED",
///             },
///         },
///         Filename = "cloudbuild.yaml",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuild.NewTrigger(ctx, "developer-connect-trigger-pull", &cloudbuild.TriggerArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			DeveloperConnectEventConfig: &cloudbuild.TriggerDeveloperConnectEventConfigArgs{
/// 				GitRepositoryLink: pulumi.String("projects/cryptic-tower-286020/locations/us-central1/connections/prod-bbs-push/gitRepositoryLinks/cbprob-prod-us-central1-push1"),
/// 				PullRequest: &cloudbuild.TriggerDeveloperConnectEventConfigPullRequestArgs{
/// 					Branch:         pulumi.String("^master$"),
/// 					InvertRegex:    pulumi.Bool(false),
/// 					CommentControl: pulumi.String("COMMENTS_ENABLED"),
/// 				},
/// 			},
/// 			Filename: pulumi.String("cloudbuild.yaml"),
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
/// import com.pulumi.gcp.cloudbuild.Trigger;
/// import com.pulumi.gcp.cloudbuild.TriggerArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerDeveloperConnectEventConfigArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerDeveloperConnectEventConfigPullRequestArgs;
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
///         var developer_connect_trigger_pull = new Trigger("developer-connect-trigger-pull", TriggerArgs.builder()
///             .location("us-central1")
///             .developerConnectEventConfig(TriggerDeveloperConnectEventConfigArgs.builder()
///                 .gitRepositoryLink("projects/cryptic-tower-286020/locations/us-central1/connections/prod-bbs-push/gitRepositoryLinks/cbprob-prod-us-central1-push1")
///                 .pullRequest(TriggerDeveloperConnectEventConfigPullRequestArgs.builder()
///                     .branch("^master$")
///                     .invertRegex(false)
///                     .commentControl("COMMENTS_ENABLED")
///                     .build())
///                 .build())
///             .filename("cloudbuild.yaml")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   developer-connect-trigger-pull:
///     type: gcp:cloudbuild:Trigger
///     properties:
///       location: us-central1
///       developerConnectEventConfig:
///         gitRepositoryLink: projects/cryptic-tower-286020/locations/us-central1/connections/prod-bbs-push/gitRepositoryLinks/cbprob-prod-us-central1-push1
///         pullRequest:
///           branch: ^master$
///           invertRegex: false
///           commentControl: COMMENTS_ENABLED
///       filename: cloudbuild.yaml
/// ```
///
/// ### Cloudbuild Trigger Developer Connect Push
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const developer_connect_trigger_push = new gcp.cloudbuild.Trigger("developer-connect-trigger-push", {
///     location: "us-central1",
///     developerConnectEventConfig: {
///         gitRepositoryLink: "projects/cryptic-tower-286020/locations/us-central1/connections/prod-bbs-push/gitRepositoryLinks/cbprob-prod-us-central1-push1",
///         push: {
///             tag: "^0.1.*",
///             invertRegex: true,
///         },
///     },
///     filename: "cloudbuild.yaml",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// developer_connect_trigger_push = gcp.cloudbuild.Trigger("developer-connect-trigger-push",
///     location="us-central1",
///     developer_connect_event_config={
///         "git_repository_link": "projects/cryptic-tower-286020/locations/us-central1/connections/prod-bbs-push/gitRepositoryLinks/cbprob-prod-us-central1-push1",
///         "push": {
///             "tag": "^0.1.*",
///             "invert_regex": True,
///         },
///     },
///     filename="cloudbuild.yaml")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var developer_connect_trigger_push = new Gcp.CloudBuild.Trigger("developer-connect-trigger-push", new()
///     {
///         Location = "us-central1",
///         DeveloperConnectEventConfig = new Gcp.CloudBuild.Inputs.TriggerDeveloperConnectEventConfigArgs
///         {
///             GitRepositoryLink = "projects/cryptic-tower-286020/locations/us-central1/connections/prod-bbs-push/gitRepositoryLinks/cbprob-prod-us-central1-push1",
///             Push = new Gcp.CloudBuild.Inputs.TriggerDeveloperConnectEventConfigPushArgs
///             {
///                 Tag = "^0.1.*",
///                 InvertRegex = true,
///             },
///         },
///         Filename = "cloudbuild.yaml",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuild.NewTrigger(ctx, "developer-connect-trigger-push", &cloudbuild.TriggerArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			DeveloperConnectEventConfig: &cloudbuild.TriggerDeveloperConnectEventConfigArgs{
/// 				GitRepositoryLink: pulumi.String("projects/cryptic-tower-286020/locations/us-central1/connections/prod-bbs-push/gitRepositoryLinks/cbprob-prod-us-central1-push1"),
/// 				Push: &cloudbuild.TriggerDeveloperConnectEventConfigPushArgs{
/// 					Tag:         pulumi.String("^0.1.*"),
/// 					InvertRegex: pulumi.Bool(true),
/// 				},
/// 			},
/// 			Filename: pulumi.String("cloudbuild.yaml"),
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
/// import com.pulumi.gcp.cloudbuild.Trigger;
/// import com.pulumi.gcp.cloudbuild.TriggerArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerDeveloperConnectEventConfigArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerDeveloperConnectEventConfigPushArgs;
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
///         var developer_connect_trigger_push = new Trigger("developer-connect-trigger-push", TriggerArgs.builder()
///             .location("us-central1")
///             .developerConnectEventConfig(TriggerDeveloperConnectEventConfigArgs.builder()
///                 .gitRepositoryLink("projects/cryptic-tower-286020/locations/us-central1/connections/prod-bbs-push/gitRepositoryLinks/cbprob-prod-us-central1-push1")
///                 .push(TriggerDeveloperConnectEventConfigPushArgs.builder()
///                     .tag("^0.1.*")
///                     .invertRegex(true)
///                     .build())
///                 .build())
///             .filename("cloudbuild.yaml")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   developer-connect-trigger-push:
///     type: gcp:cloudbuild:Trigger
///     properties:
///       location: us-central1
///       developerConnectEventConfig:
///         gitRepositoryLink: projects/cryptic-tower-286020/locations/us-central1/connections/prod-bbs-push/gitRepositoryLinks/cbprob-prod-us-central1-push1
///         push:
///           tag: ^0.1.*
///           invertRegex: true
///       filename: cloudbuild.yaml
/// ```
///
/// ### Cloudbuild Trigger Developer Connect Push Branch
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dc_trigger_regular_push_branch = new gcp.cloudbuild.Trigger("dc-trigger-regular-push-branch", {
///     location: "us-central1",
///     developerConnectEventConfig: {
///         gitRepositoryLink: "projects/cryptic-tower-286020/locations/us-central1/connections/prod-bbs-push/gitRepositoryLinks/cbprob-prod-us-central1-push1",
///         push: {
///             branch: "main",
///         },
///     },
///     filename: "cloudbuild.yaml",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dc_trigger_regular_push_branch = gcp.cloudbuild.Trigger("dc-trigger-regular-push-branch",
///     location="us-central1",
///     developer_connect_event_config={
///         "git_repository_link": "projects/cryptic-tower-286020/locations/us-central1/connections/prod-bbs-push/gitRepositoryLinks/cbprob-prod-us-central1-push1",
///         "push": {
///             "branch": "main",
///         },
///     },
///     filename="cloudbuild.yaml")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dc_trigger_regular_push_branch = new Gcp.CloudBuild.Trigger("dc-trigger-regular-push-branch", new()
///     {
///         Location = "us-central1",
///         DeveloperConnectEventConfig = new Gcp.CloudBuild.Inputs.TriggerDeveloperConnectEventConfigArgs
///         {
///             GitRepositoryLink = "projects/cryptic-tower-286020/locations/us-central1/connections/prod-bbs-push/gitRepositoryLinks/cbprob-prod-us-central1-push1",
///             Push = new Gcp.CloudBuild.Inputs.TriggerDeveloperConnectEventConfigPushArgs
///             {
///                 Branch = "main",
///             },
///         },
///         Filename = "cloudbuild.yaml",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuild.NewTrigger(ctx, "dc-trigger-regular-push-branch", &cloudbuild.TriggerArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			DeveloperConnectEventConfig: &cloudbuild.TriggerDeveloperConnectEventConfigArgs{
/// 				GitRepositoryLink: pulumi.String("projects/cryptic-tower-286020/locations/us-central1/connections/prod-bbs-push/gitRepositoryLinks/cbprob-prod-us-central1-push1"),
/// 				Push: &cloudbuild.TriggerDeveloperConnectEventConfigPushArgs{
/// 					Branch: pulumi.String("main"),
/// 				},
/// 			},
/// 			Filename: pulumi.String("cloudbuild.yaml"),
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
/// import com.pulumi.gcp.cloudbuild.Trigger;
/// import com.pulumi.gcp.cloudbuild.TriggerArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerDeveloperConnectEventConfigArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.TriggerDeveloperConnectEventConfigPushArgs;
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
///         var dc_trigger_regular_push_branch = new Trigger("dc-trigger-regular-push-branch", TriggerArgs.builder()
///             .location("us-central1")
///             .developerConnectEventConfig(TriggerDeveloperConnectEventConfigArgs.builder()
///                 .gitRepositoryLink("projects/cryptic-tower-286020/locations/us-central1/connections/prod-bbs-push/gitRepositoryLinks/cbprob-prod-us-central1-push1")
///                 .push(TriggerDeveloperConnectEventConfigPushArgs.builder()
///                     .branch("main")
///                     .build())
///                 .build())
///             .filename("cloudbuild.yaml")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dc-trigger-regular-push-branch:
///     type: gcp:cloudbuild:Trigger
///     properties:
///       location: us-central1
///       developerConnectEventConfig:
///         gitRepositoryLink: projects/cryptic-tower-286020/locations/us-central1/connections/prod-bbs-push/gitRepositoryLinks/cbprob-prod-us-central1-push1
///         push:
///           branch: main
///       filename: cloudbuild.yaml
/// ```
///
///
/// ## Import
///
/// Trigger can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/triggers/{{trigger_id}}`
///
/// * `projects/{{project}}/triggers/{{trigger_id}}`
///
/// * `{{project}}/{{trigger_id}}`
///
/// * `{{trigger_id}}`
///
/// When using the `pulumi import` command, Trigger can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/trigger:Trigger default projects/{{project}}/locations/{{location}}/triggers/{{trigger_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/trigger:Trigger default projects/{{project}}/triggers/{{trigger_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/trigger:Trigger default {{project}}/{{trigger_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/trigger:Trigger default {{trigger_id}}
/// ```
class Trigger extends pulumi.CustomResource {
  /// Configuration for manual approval to start a build invocation of this BuildTrigger.
  /// Builds created by this trigger will require approval before they execute.
  /// Any user with a Cloud Build Approver role for the project can approve a build.
  /// Structure is documented below.
  late final pulumi.Output<TriggerApprovalConfig> approvalConfig;

  /// BitbucketServerTriggerConfig describes the configuration of a trigger that creates a build whenever a Bitbucket Server event is received.
  /// Structure is documented below.
  late final pulumi.Output<TriggerBitbucketServerTriggerConfig?>
  bitbucketServerTriggerConfig;

  /// Contents of the build template. Either a filename or build template must be provided.
  /// Structure is documented below.
  late final pulumi.Output<TriggerBuild?> build;

  /// Time when the trigger was created.
  late final pulumi.Output<String> createTime;

  /// Human-readable description of the trigger.
  late final pulumi.Output<String?> description;

  /// Configuration for triggers that respond to Developer Connect events.
  /// Structure is documented below.
  late final pulumi.Output<TriggerDeveloperConnectEventConfig?>
  developerConnectEventConfig;

  /// Whether the trigger is disabled or not. If true, the trigger will never result in a build.
  late final pulumi.Output<bool?> disabled;

  /// Path, from the source root, to a file whose contents is used for the template.
  /// Either a filename or build template must be provided. Set this only when using trigger_template or github.
  /// When using Pub/Sub, Webhook or Manual set the file name using git_file_source instead.
  late final pulumi.Output<String?> filename;

  /// A Common Expression Language string. Used only with Pub/Sub and Webhook.
  late final pulumi.Output<String?> filter;

  /// The file source describing the local or remote Build template.
  /// Structure is documented below.
  late final pulumi.Output<TriggerGitFileSource?> gitFileSource;

  /// Describes the configuration of a trigger that creates a build whenever a GitHub event is received.
  /// One of `trigger_template`, `github`, `pubsub_config` or `webhook_config` must be provided.
  /// Structure is documented below.
  late final pulumi.Output<TriggerGithub?> github;

  /// ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match
  /// extended with support for `**`.
  /// If ignoredFiles and changed files are both empty, then they are not
  /// used to determine whether or not to trigger a build.
  /// If ignoredFiles is not empty, then we ignore any files that match any
  /// of the ignored_file globs. If the change has no files that are outside
  /// of the ignoredFiles globs, then we do not trigger a build.
  late final pulumi.Output<List<String>?> ignoredFiles;

  /// Build logs will be sent back to GitHub as part of the checkrun
  /// result.  Values can be INCLUDE_BUILD_LOGS_UNSPECIFIED or
  /// INCLUDE_BUILD_LOGS_WITH_STATUS
  /// Possible values are: `INCLUDE_BUILD_LOGS_UNSPECIFIED`, `INCLUDE_BUILD_LOGS_WITH_STATUS`.
  late final pulumi.Output<String?> includeBuildLogs;

  /// ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match
  /// extended with support for `**`.
  /// If any of the files altered in the commit pass the ignoredFiles filter
  /// and includedFiles is empty, then as far as this filter is concerned, we
  /// should trigger the build.
  /// If any of the files altered in the commit pass the ignoredFiles filter
  /// and includedFiles is not empty, then we make sure that at least one of
  /// those files matches a includedFiles glob. If not, then we do not trigger
  /// a build.
  late final pulumi.Output<List<String>?> includedFiles;

  /// The [Cloud Build location](https://cloud.google.com/build/docs/locations) for the trigger.
  /// If not specified, "global" is used.
  late final pulumi.Output<String?> location;

  /// Name of the trigger. Must be unique within the project.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// PubsubConfig describes the configuration of a trigger that creates
  /// a build whenever a Pub/Sub message is published.
  /// One of `trigger_template`, `github`, `pubsub_config` `webhook_config` or `source_to_build` must be provided.
  /// Structure is documented below.
  late final pulumi.Output<TriggerPubsubConfig?> pubsubConfig;

  /// The configuration of a trigger that creates a build whenever an event from Repo API is received.
  /// Structure is documented below.
  late final pulumi.Output<TriggerRepositoryEventConfig?> repositoryEventConfig;

  /// The service account used for all user-controlled operations including
  /// triggers.patch, triggers.run, builds.create, and builds.cancel.
  /// If no service account is set, then the standard Cloud Build service account
  /// ([PROJECT_NUM]@system.gserviceaccount.com) will be used instead.
  /// Format: projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT_ID_OR_EMAIL}
  late final pulumi.Output<String?> serviceAccount;

  /// The repo and ref of the repository from which to build.
  /// This field is used only for those triggers that do not respond to SCM events.
  /// Triggers that respond to such events build source at whatever commit caused the event.
  /// This field is currently only used by Webhook, Pub/Sub, Manual, and Cron triggers.
  /// One of `trigger_template`, `github`, `pubsub_config` `webhook_config` or `source_to_build` must be provided.
  /// Structure is documented below.
  late final pulumi.Output<TriggerSourceToBuild?> sourceToBuild;

  /// Substitutions data for Build resource.
  late final pulumi.Output<Map<String, String>?> substitutions;

  /// Tags for annotation of a BuildTrigger
  late final pulumi.Output<List<String>?> tags;

  /// The unique identifier for the trigger.
  late final pulumi.Output<String> triggerId;

  /// Template describing the types of source changes to trigger a build.
  /// Branch and tag names in trigger templates are interpreted as regular
  /// expressions. Any branch or tag change that matches that regular
  /// expression will trigger a build.
  /// One of `trigger_template`, `github`, `pubsub_config`, `webhook_config` or `source_to_build` must be provided.
  /// Structure is documented below.
  late final pulumi.Output<TriggerTriggerTemplate?> triggerTemplate;

  /// WebhookConfig describes the configuration of a trigger that creates
  /// a build whenever a webhook is sent to a trigger's webhook URL.
  /// One of `trigger_template`, `github`, `pubsub_config` `webhook_config` or `source_to_build` must be provided.
  /// Structure is documented below.
  late final pulumi.Output<TriggerWebhookConfig?> webhookConfig;

  /// Creates a new [Trigger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Trigger]. {@macro pulumi_cloudbuild_trigger_trigger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Trigger(
    String name, {
    TriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:cloudbuild/trigger:Trigger',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    approvalConfig = registerOutput<TriggerApprovalConfig>(
      'approvalConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TriggerApprovalConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    bitbucketServerTriggerConfig =
        registerOutput<TriggerBitbucketServerTriggerConfig?>(
          'bitbucketServerTriggerConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return TriggerBitbucketServerTriggerConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    build = registerOutput<TriggerBuild?>(
      'build',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TriggerBuild.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    developerConnectEventConfig =
        registerOutput<TriggerDeveloperConnectEventConfig?>(
          'developerConnectEventConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return TriggerDeveloperConnectEventConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    disabled = registerOutput<bool?>('disabled');
    filename = registerOutput<String?>('filename');
    filter = registerOutput<String?>('filter');
    gitFileSource = registerOutput<TriggerGitFileSource?>(
      'gitFileSource',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TriggerGitFileSource.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    github = registerOutput<TriggerGithub?>(
      'github',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TriggerGithub.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    ignoredFiles = registerOutput<List<String>?>('ignoredFiles');
    includeBuildLogs = registerOutput<String?>('includeBuildLogs');
    includedFiles = registerOutput<List<String>?>('includedFiles');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pubsubConfig = registerOutput<TriggerPubsubConfig?>(
      'pubsubConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TriggerPubsubConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    repositoryEventConfig = registerOutput<TriggerRepositoryEventConfig?>(
      'repositoryEventConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TriggerRepositoryEventConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    serviceAccount = registerOutput<String?>('serviceAccount');
    sourceToBuild = registerOutput<TriggerSourceToBuild?>(
      'sourceToBuild',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TriggerSourceToBuild.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    substitutions = registerOutput<Map<String, String>?>('substitutions');
    tags = registerOutput<List<String>?>('tags');
    triggerId = registerOutput<String>('triggerId');
    triggerTemplate = registerOutput<TriggerTriggerTemplate?>(
      'triggerTemplate',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TriggerTriggerTemplate.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    webhookConfig = registerOutput<TriggerWebhookConfig?>(
      'webhookConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TriggerWebhookConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [Trigger] resource's state with the given [name] and [id].
  static Trigger get(
    String name,
    pulumi.Input<String> id, {
    TriggerState? state,
  }) {
    return Trigger._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Trigger._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:cloudbuild/trigger:Trigger',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    approvalConfig = registerOutput<TriggerApprovalConfig>(
      'approvalConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TriggerApprovalConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    bitbucketServerTriggerConfig =
        registerOutput<TriggerBitbucketServerTriggerConfig?>(
          'bitbucketServerTriggerConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return TriggerBitbucketServerTriggerConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    build = registerOutput<TriggerBuild?>(
      'build',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TriggerBuild.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    developerConnectEventConfig =
        registerOutput<TriggerDeveloperConnectEventConfig?>(
          'developerConnectEventConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return TriggerDeveloperConnectEventConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    disabled = registerOutput<bool?>('disabled');
    filename = registerOutput<String?>('filename');
    filter = registerOutput<String?>('filter');
    gitFileSource = registerOutput<TriggerGitFileSource?>(
      'gitFileSource',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TriggerGitFileSource.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    github = registerOutput<TriggerGithub?>(
      'github',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TriggerGithub.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    ignoredFiles = registerOutput<List<String>?>('ignoredFiles');
    includeBuildLogs = registerOutput<String?>('includeBuildLogs');
    includedFiles = registerOutput<List<String>?>('includedFiles');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pubsubConfig = registerOutput<TriggerPubsubConfig?>(
      'pubsubConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TriggerPubsubConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    repositoryEventConfig = registerOutput<TriggerRepositoryEventConfig?>(
      'repositoryEventConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TriggerRepositoryEventConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    serviceAccount = registerOutput<String?>('serviceAccount');
    sourceToBuild = registerOutput<TriggerSourceToBuild?>(
      'sourceToBuild',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TriggerSourceToBuild.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    substitutions = registerOutput<Map<String, String>?>('substitutions');
    tags = registerOutput<List<String>?>('tags');
    triggerId = registerOutput<String>('triggerId');
    triggerTemplate = registerOutput<TriggerTriggerTemplate?>(
      'triggerTemplate',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TriggerTriggerTemplate.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    webhookConfig = registerOutput<TriggerWebhookConfig?>(
      'webhookConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TriggerWebhookConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
