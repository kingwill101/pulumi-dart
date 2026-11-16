import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_custom_job_args.dart';
import 'ai_custom_job_encryption_spec.dart';
import 'ai_custom_job_error.dart';
import 'ai_custom_job_job_spec.dart';
import 'ai_custom_job_state.dart';

/// Represents a job that runs custom workloads such as a Docker container or a
/// Python package. A CustomJob can have multiple worker pools and each worker
/// pool can have its own machine and input spec. A CustomJob will be cleaned up
/// once the job enters terminal state (failed or succeeded).
///
///
/// To get more information about CustomJob, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.customJobs)
///
///
/// ## Example Usage
///
/// ### Vertex Ai Custom Job Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const jobBucket = new gcp.storage.Bucket("job_bucket", {
///     name: "example-custom-job-bucket",
///     location: "US-CENTRAL1",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const customJob = new gcp.vertex.AiCustomJob("custom_job", {
///     displayName: "example-custom-job",
///     region: "us-central1",
///     labels: {
///         env: "test",
///     },
///     jobSpec: {
///         workerPoolSpecs: [{
///             replicaCount: 1,
///             machineSpec: {
///                 machineType: "n1-standard-4",
///             },
///             diskSpec: {
///                 bootDiskType: "pd-ssd",
///                 bootDiskSizeGb: 100,
///             },
///             containerSpec: {
///                 imageUri: "us-docker.pkg.dev/vertex-ai/training/tf-cpu.2-8.py310:latest",
///                 commands: [
///                     "echo",
///                     "test",
///                 ],
///                 args: ["--epochs=1"],
///                 envs: [{
///                     name: "TEST_ENV",
///                     value: "test_val",
///                 }],
///             },
///         }],
///         scheduling: {
///             timeout: "86400s",
///             restartJobOnWorkerRestart: false,
///             strategy: "STANDARD",
///         },
///         baseOutputDirectory: {
///             outputUriPrefix: pulumi.interpolate`gs://${jobBucket.name}/custom-job-output`,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// job_bucket = gcp.storage.Bucket("job_bucket",
///     name="example-custom-job-bucket",
///     location="US-CENTRAL1",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// custom_job = gcp.vertex.AiCustomJob("custom_job",
///     display_name="example-custom-job",
///     region="us-central1",
///     labels={
///         "env": "test",
///     },
///     job_spec={
///         "worker_pool_specs": [{
///             "replica_count": 1,
///             "machine_spec": {
///                 "machine_type": "n1-standard-4",
///             },
///             "disk_spec": {
///                 "boot_disk_type": "pd-ssd",
///                 "boot_disk_size_gb": 100,
///             },
///             "container_spec": {
///                 "image_uri": "us-docker.pkg.dev/vertex-ai/training/tf-cpu.2-8.py310:latest",
///                 "commands": [
///                     "echo",
///                     "test",
///                 ],
///                 "args": ["--epochs=1"],
///                 "envs": [{
///                     "name": "TEST_ENV",
///                     "value": "test_val",
///                 }],
///             },
///         }],
///         "scheduling": {
///             "timeout": "86400s",
///             "restart_job_on_worker_restart": False,
///             "strategy": "STANDARD",
///         },
///         "base_output_directory": {
///             "output_uri_prefix": job_bucket.name.apply(lambda name: f"gs://{name}/custom-job-output"),
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
///     var jobBucket = new Gcp.Storage.Bucket("job_bucket", new()
///     {
///         Name = "example-custom-job-bucket",
///         Location = "US-CENTRAL1",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var customJob = new Gcp.Vertex.AiCustomJob("custom_job", new()
///     {
///         DisplayName = "example-custom-job",
///         Region = "us-central1",
///         Labels =
///         {
///             { "env", "test" },
///         },
///         JobSpec = new Gcp.Vertex.Inputs.AiCustomJobJobSpecArgs
///         {
///             WorkerPoolSpecs = new[]
///             {
///                 new Gcp.Vertex.Inputs.AiCustomJobJobSpecWorkerPoolSpecArgs
///                 {
///                     ReplicaCount = 1,
///                     MachineSpec = new Gcp.Vertex.Inputs.AiCustomJobJobSpecWorkerPoolSpecMachineSpecArgs
///                     {
///                         MachineType = "n1-standard-4",
///                     },
///                     DiskSpec = new Gcp.Vertex.Inputs.AiCustomJobJobSpecWorkerPoolSpecDiskSpecArgs
///                     {
///                         BootDiskType = "pd-ssd",
///                         BootDiskSizeGb = 100,
///                     },
///                     ContainerSpec = new Gcp.Vertex.Inputs.AiCustomJobJobSpecWorkerPoolSpecContainerSpecArgs
///                     {
///                         ImageUri = "us-docker.pkg.dev/vertex-ai/training/tf-cpu.2-8.py310:latest",
///                         Commands = new[]
///                         {
///                             "echo",
///                             "test",
///                         },
///                         Args = new[]
///                         {
///                             "--epochs=1",
///                         },
///                         Envs = new[]
///                         {
///                             new Gcp.Vertex.Inputs.AiCustomJobJobSpecWorkerPoolSpecContainerSpecEnvArgs
///                             {
///                                 Name = "TEST_ENV",
///                                 Value = "test_val",
///                             },
///                         },
///                     },
///                 },
///             },
///             Scheduling = new Gcp.Vertex.Inputs.AiCustomJobJobSpecSchedulingArgs
///             {
///                 Timeout = "86400s",
///                 RestartJobOnWorkerRestart = false,
///                 Strategy = "STANDARD",
///             },
///             BaseOutputDirectory = new Gcp.Vertex.Inputs.AiCustomJobJobSpecBaseOutputDirectoryArgs
///             {
///                 OutputUriPrefix = jobBucket.Name.Apply(name => $"gs://{name}/custom-job-output"),
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		jobBucket, err := storage.NewBucket(ctx, "job_bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("example-custom-job-bucket"),
/// 			Location:                 pulumi.String("US-CENTRAL1"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiCustomJob(ctx, "custom_job", &vertex.AiCustomJobArgs{
/// 			DisplayName: pulumi.String("example-custom-job"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
/// 			},
/// 			JobSpec: &vertex.AiCustomJobJobSpecArgs{
/// 				WorkerPoolSpecs: vertex.AiCustomJobJobSpecWorkerPoolSpecArray{
/// 					&vertex.AiCustomJobJobSpecWorkerPoolSpecArgs{
/// 						ReplicaCount: pulumi.Int(1),
/// 						MachineSpec: &vertex.AiCustomJobJobSpecWorkerPoolSpecMachineSpecArgs{
/// 							MachineType: pulumi.String("n1-standard-4"),
/// 						},
/// 						DiskSpec: &vertex.AiCustomJobJobSpecWorkerPoolSpecDiskSpecArgs{
/// 							BootDiskType:   pulumi.String("pd-ssd"),
/// 							BootDiskSizeGb: pulumi.Int(100),
/// 						},
/// 						ContainerSpec: &vertex.AiCustomJobJobSpecWorkerPoolSpecContainerSpecArgs{
/// 							ImageUri: pulumi.String("us-docker.pkg.dev/vertex-ai/training/tf-cpu.2-8.py310:latest"),
/// 							Commands: pulumi.StringArray{
/// 								pulumi.String("echo"),
/// 								pulumi.String("test"),
/// 							},
/// 							Args: pulumi.StringArray{
/// 								pulumi.String("--epochs=1"),
/// 							},
/// 							Envs: vertex.AiCustomJobJobSpecWorkerPoolSpecContainerSpecEnvArray{
/// 								&vertex.AiCustomJobJobSpecWorkerPoolSpecContainerSpecEnvArgs{
/// 									Name:  pulumi.String("TEST_ENV"),
/// 									Value: pulumi.String("test_val"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Scheduling: &vertex.AiCustomJobJobSpecSchedulingArgs{
/// 					Timeout:                   pulumi.String("86400s"),
/// 					RestartJobOnWorkerRestart: pulumi.Bool(false),
/// 					Strategy:                  pulumi.String("STANDARD"),
/// 				},
/// 				BaseOutputDirectory: &vertex.AiCustomJobJobSpecBaseOutputDirectoryArgs{
/// 					OutputUriPrefix: jobBucket.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("gs://%v/custom-job-output", name), nil
/// 					}).(pulumi.StringOutput),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_vertex_ai_custom_job" "custom_job" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "example-custom-job"
///   region       = "us-central1"
///   labels = {
///     "env" = "test"
///   }
///   job_spec = {
///     worker_pool_specs = [{
///       replica_count = 1
///       machine_spec = {
///         machine_type = "n1-standard-4"
///       }
///       disk_spec = {
///         boot_disk_type    = "pd-ssd"
///         boot_disk_size_gb = 100
///       }
///       container_spec = {
///         image_uri = "us-docker.pkg.dev/vertex-ai/training/tf-cpu.2-8.py310:latest"
///         commands  = ["echo", "test"]
///         args      = ["--epochs=1"]
///         envs = [{
///           name  = "TEST_ENV"
///           value = "test_val"
///         }]
///       }
///     }]
///     scheduling = {
///       timeout                       = "86400s"
///       restart_job_on_worker_restart = false
///       strategy                      = "STANDARD"
///     }
///     base_output_directory = {
///       output_uri_prefix ="gs://${gcp_storage_bucket.job_bucket.name}/custom-job-output"
///     }
///   }
/// }
/// resource "gcp_storage_bucket" "job_bucket" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                        = "example-custom-job-bucket"
///   location                    = "US-CENTRAL1"
///   force_destroy               = true
///   uniform_bucket_level_access = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.vertex.AiCustomJob;
/// import com.pulumi.gcp.vertex.AiCustomJobArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecWorkerPoolSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecWorkerPoolSpecMachineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecWorkerPoolSpecDiskSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecWorkerPoolSpecContainerSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecWorkerPoolSpecContainerSpecEnvArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecSchedulingArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecBaseOutputDirectoryArgs;
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
///         var jobBucket = new Bucket("jobBucket", BucketArgs.builder()
///             .name("example-custom-job-bucket")
///             .location("US-CENTRAL1")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var customJob = new AiCustomJob("customJob", AiCustomJobArgs.builder()
///             .displayName("example-custom-job")
///             .region("us-central1")
///             .labels(Map.of("env", "test"))
///             .jobSpec(AiCustomJobJobSpecArgs.builder()
///                 .workerPoolSpecs(AiCustomJobJobSpecWorkerPoolSpecArgs.builder()
///                     .replicaCount(1)
///                     .machineSpec(AiCustomJobJobSpecWorkerPoolSpecMachineSpecArgs.builder()
///                         .machineType("n1-standard-4")
///                         .build())
///                     .diskSpec(AiCustomJobJobSpecWorkerPoolSpecDiskSpecArgs.builder()
///                         .bootDiskType("pd-ssd")
///                         .bootDiskSizeGb(100)
///                         .build())
///                     .containerSpec(AiCustomJobJobSpecWorkerPoolSpecContainerSpecArgs.builder()
///                         .imageUri("us-docker.pkg.dev/vertex-ai/training/tf-cpu.2-8.py310:latest")
///                         .commands(
///                             "echo",
///                             "test")
///                         .args("--epochs=1")
///                         .envs(AiCustomJobJobSpecWorkerPoolSpecContainerSpecEnvArgs.builder()
///                             .name("TEST_ENV")
///                             .value("test_val")
///                             .build())
///                         .build())
///                     .build())
///                 .scheduling(AiCustomJobJobSpecSchedulingArgs.builder()
///                     .timeout("86400s")
///                     .restartJobOnWorkerRestart(false)
///                     .strategy("STANDARD")
///                     .build())
///                 .baseOutputDirectory(AiCustomJobJobSpecBaseOutputDirectoryArgs.builder()
///                     .outputUriPrefix(jobBucket.name().applyValue(_name -> String.format("gs://%s/custom-job-output", _name)))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   customJob:
///     type: gcp:vertex:AiCustomJob
///     name: custom_job
///     properties:
///       displayName: example-custom-job
///       region: us-central1
///       labels:
///         env: test
///       jobSpec:
///         workerPoolSpecs:
///           - replicaCount: 1
///             machineSpec:
///               machineType: n1-standard-4
///             diskSpec:
///               bootDiskType: pd-ssd
///               bootDiskSizeGb: 100
///             containerSpec:
///               imageUri: us-docker.pkg.dev/vertex-ai/training/tf-cpu.2-8.py310:latest
///               commands:
///                 - echo
///                 - test
///               args:
///                 - --epochs=1
///               envs:
///                 - name: TEST_ENV
///                   value: test_val
///         scheduling:
///           timeout: 86400s
///           restartJobOnWorkerRestart: false
///           strategy: STANDARD
///         baseOutputDirectory:
///           outputUriPrefix: gs://${jobBucket.name}/custom-job-output
///   jobBucket:
///     type: gcp:storage:Bucket
///     name: job_bucket
///     properties:
///       name: example-custom-job-bucket
///       location: US-CENTRAL1
///       forceDestroy: true
///       uniformBucketLevelAccess: true
/// ```
///
///
/// ### Vertex Ai Custom Job Python Package
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const customJobSa = new gcp.serviceaccount.Account("custom_job_sa", {
///     accountId: "job-sa",
///     displayName: "Custom Job Service Account",
/// });
/// const tensorboard = new gcp.vertex.AiTensorboard("tensorboard", {
///     displayName: "example-tensorboard",
///     region: "us-central1",
/// });
/// const jobBucket = new gcp.storage.Bucket("job_bucket", {
///     name: "example-custom-job-python-bucket",
///     location: "US-CENTRAL1",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const trainerPackage = new gcp.storage.BucketObject("trainer_package", {
///     name: "trainer-0.1.tar.gz",
///     bucket: jobBucket.name,
///     content: "placeholder",
/// });
/// const project = gcp.organizations.getProject({});
/// const cryptoKey = new gcp.kms.CryptoKeyIAMMember("crypto_key", {
///     cryptoKeyId: "example-key",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com`),
/// });
/// const customJob = new gcp.vertex.AiCustomJob("custom_job", {
///     displayName: "example-custom-job-python",
///     region: "us-central1",
///     encryptionSpec: {
///         kmsKeyName: "example-key",
///     },
///     jobSpec: {
///         serviceAccount: customJobSa.email,
///         tensorboard: tensorboard.id,
///         enableWebAccess: true,
///         enableDashboardAccess: true,
///         baseOutputDirectory: {
///             outputUriPrefix: pulumi.interpolate`gs://${jobBucket.name}/custom-job-output`,
///         },
///         pscInterfaceConfig: {
///             networkAttachment: project.then(project => `projects/${project.projectId}/regions/us-central1/networkAttachments/example-attachment`),
///             dnsPeeringConfigs: [{
///                 domain: "example.com.",
///                 targetProject: project.then(project => project.projectId),
///                 targetNetwork: "default",
///             }],
///         },
///         scheduling: {
///             timeout: "86400s",
///             restartJobOnWorkerRestart: false,
///             strategy: "FLEX_START",
///             disableRetries: true,
///             maxWaitDuration: "1800s",
///         },
///         workerPoolSpecs: [{
///             replicaCount: 1,
///             machineSpec: {
///                 machineType: "g2-standard-4",
///                 acceleratorType: "NVIDIA_L4",
///                 acceleratorCount: 1,
///             },
///             diskSpec: {
///                 bootDiskType: "pd-ssd",
///                 bootDiskSizeGb: 100,
///             },
///             pythonPackageSpec: {
///                 executorImageUri: "us-docker.pkg.dev/vertex-ai/training/tf-gpu.2-12.py310:latest",
///                 packageUris: [pulumi.interpolate`gs://${jobBucket.name}/${trainerPackage.name}`],
///                 pythonModule: "trainer.task",
///                 args: ["--epochs=1"],
///                 envs: [{
///                     name: "PYTHON_ENV",
///                     value: "test_val",
///                 }],
///             },
///             nfsMounts: [{
///                 server: "10.0.0.1",
///                 path: "/nfs_share",
///                 mountPoint: "nfs_mount",
///             }],
///             lustreMounts: [{
///                 instanceIp: "10.0.0.1",
///                 volumeHandle: "lustre-vol",
///                 filesystem: "lustrefs",
///                 mountPoint: "lustre_mount",
///             }],
///         }],
///     },
/// }, {
///     dependsOn: [cryptoKey],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_job_sa = gcp.serviceaccount.Account("custom_job_sa",
///     account_id="job-sa",
///     display_name="Custom Job Service Account")
/// tensorboard = gcp.vertex.AiTensorboard("tensorboard",
///     display_name="example-tensorboard",
///     region="us-central1")
/// job_bucket = gcp.storage.Bucket("job_bucket",
///     name="example-custom-job-python-bucket",
///     location="US-CENTRAL1",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// trainer_package = gcp.storage.BucketObject("trainer_package",
///     name="trainer-0.1.tar.gz",
///     bucket=job_bucket.name,
///     content="placeholder")
/// project = gcp.organizations.get_project()
/// crypto_key = gcp.kms.CryptoKeyIAMMember("crypto_key",
///     crypto_key_id="example-key",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com")
/// custom_job = gcp.vertex.AiCustomJob("custom_job",
///     display_name="example-custom-job-python",
///     region="us-central1",
///     encryption_spec={
///         "kms_key_name": "example-key",
///     },
///     job_spec={
///         "service_account": custom_job_sa.email,
///         "tensorboard": tensorboard.id,
///         "enable_web_access": True,
///         "enable_dashboard_access": True,
///         "base_output_directory": {
///             "output_uri_prefix": job_bucket.name.apply(lambda name: f"gs://{name}/custom-job-output"),
///         },
///         "psc_interface_config": {
///             "network_attachment": f"projects/{project.project_id}/regions/us-central1/networkAttachments/example-attachment",
///             "dns_peering_configs": [{
///                 "domain": "example.com.",
///                 "target_project": project.project_id,
///                 "target_network": "default",
///             }],
///         },
///         "scheduling": {
///             "timeout": "86400s",
///             "restart_job_on_worker_restart": False,
///             "strategy": "FLEX_START",
///             "disable_retries": True,
///             "max_wait_duration": "1800s",
///         },
///         "worker_pool_specs": [{
///             "replica_count": 1,
///             "machine_spec": {
///                 "machine_type": "g2-standard-4",
///                 "accelerator_type": "NVIDIA_L4",
///                 "accelerator_count": 1,
///             },
///             "disk_spec": {
///                 "boot_disk_type": "pd-ssd",
///                 "boot_disk_size_gb": 100,
///             },
///             "python_package_spec": {
///                 "executor_image_uri": "us-docker.pkg.dev/vertex-ai/training/tf-gpu.2-12.py310:latest",
///                 "package_uris": [pulumi.Output.all(
///                     jobBucketName=job_bucket.name,
///                     trainerPackageName=trainer_package.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['jobBucketName']}/{resolved_outputs['trainerPackageName']}")
/// ],
///                 "python_module": "trainer.task",
///                 "args": ["--epochs=1"],
///                 "envs": [{
///                     "name": "PYTHON_ENV",
///                     "value": "test_val",
///                 }],
///             },
///             "nfs_mounts": [{
///                 "server": "10.0.0.1",
///                 "path": "/nfs_share",
///                 "mount_point": "nfs_mount",
///             }],
///             "lustre_mounts": [{
///                 "instance_ip": "10.0.0.1",
///                 "volume_handle": "lustre-vol",
///                 "filesystem": "lustrefs",
///                 "mount_point": "lustre_mount",
///             }],
///         }],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[crypto_key]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customJobSa = new Gcp.ServiceAccount.Account("custom_job_sa", new()
///     {
///         AccountId = "job-sa",
///         DisplayName = "Custom Job Service Account",
///     });
///
///     var tensorboard = new Gcp.Vertex.AiTensorboard("tensorboard", new()
///     {
///         DisplayName = "example-tensorboard",
///         Region = "us-central1",
///     });
///
///     var jobBucket = new Gcp.Storage.Bucket("job_bucket", new()
///     {
///         Name = "example-custom-job-python-bucket",
///         Location = "US-CENTRAL1",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var trainerPackage = new Gcp.Storage.BucketObject("trainer_package", new()
///     {
///         Name = "trainer-0.1.tar.gz",
///         Bucket = jobBucket.Name,
///         Content = "placeholder",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var cryptoKey = new Gcp.Kms.CryptoKeyIAMMember("crypto_key", new()
///     {
///         CryptoKeyId = "example-key",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-aiplatform.iam.gserviceaccount.com",
///     });
///
///     var customJob = new Gcp.Vertex.AiCustomJob("custom_job", new()
///     {
///         DisplayName = "example-custom-job-python",
///         Region = "us-central1",
///         EncryptionSpec = new Gcp.Vertex.Inputs.AiCustomJobEncryptionSpecArgs
///         {
///             KmsKeyName = "example-key",
///         },
///         JobSpec = new Gcp.Vertex.Inputs.AiCustomJobJobSpecArgs
///         {
///             ServiceAccount = customJobSa.Email,
///             Tensorboard = tensorboard.Id,
///             EnableWebAccess = true,
///             EnableDashboardAccess = true,
///             BaseOutputDirectory = new Gcp.Vertex.Inputs.AiCustomJobJobSpecBaseOutputDirectoryArgs
///             {
///                 OutputUriPrefix = jobBucket.Name.Apply(name => $"gs://{name}/custom-job-output"),
///             },
///             PscInterfaceConfig = new Gcp.Vertex.Inputs.AiCustomJobJobSpecPscInterfaceConfigArgs
///             {
///                 NetworkAttachment = $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/regions/us-central1/networkAttachments/example-attachment",
///                 DnsPeeringConfigs = new[]
///                 {
///                     new Gcp.Vertex.Inputs.AiCustomJobJobSpecPscInterfaceConfigDnsPeeringConfigArgs
///                     {
///                         Domain = "example.com.",
///                         TargetProject = project.Apply(getProjectResult => getProjectResult.ProjectId),
///                         TargetNetwork = "default",
///                     },
///                 },
///             },
///             Scheduling = new Gcp.Vertex.Inputs.AiCustomJobJobSpecSchedulingArgs
///             {
///                 Timeout = "86400s",
///                 RestartJobOnWorkerRestart = false,
///                 Strategy = "FLEX_START",
///                 DisableRetries = true,
///                 MaxWaitDuration = "1800s",
///             },
///             WorkerPoolSpecs = new[]
///             {
///                 new Gcp.Vertex.Inputs.AiCustomJobJobSpecWorkerPoolSpecArgs
///                 {
///                     ReplicaCount = 1,
///                     MachineSpec = new Gcp.Vertex.Inputs.AiCustomJobJobSpecWorkerPoolSpecMachineSpecArgs
///                     {
///                         MachineType = "g2-standard-4",
///                         AcceleratorType = "NVIDIA_L4",
///                         AcceleratorCount = 1,
///                     },
///                     DiskSpec = new Gcp.Vertex.Inputs.AiCustomJobJobSpecWorkerPoolSpecDiskSpecArgs
///                     {
///                         BootDiskType = "pd-ssd",
///                         BootDiskSizeGb = 100,
///                     },
///                     PythonPackageSpec = new Gcp.Vertex.Inputs.AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpecArgs
///                     {
///                         ExecutorImageUri = "us-docker.pkg.dev/vertex-ai/training/tf-gpu.2-12.py310:latest",
///                         PackageUris = new[]
///                         {
///                             Output.Tuple(jobBucket.Name, trainerPackage.Name).Apply(values =>
///                             {
///                                 var jobBucketName = values.Item1;
///                                 var trainerPackageName = values.Item2;
///                                 return $"gs://{jobBucketName}/{trainerPackageName}";
///                             }),
///                         },
///                         PythonModule = "trainer.task",
///                         Args = new[]
///                         {
///                             "--epochs=1",
///                         },
///                         Envs = new[]
///                         {
///                             new Gcp.Vertex.Inputs.AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpecEnvArgs
///                             {
///                                 Name = "PYTHON_ENV",
///                                 Value = "test_val",
///                             },
///                         },
///                     },
///                     NfsMounts = new[]
///                     {
///                         new Gcp.Vertex.Inputs.AiCustomJobJobSpecWorkerPoolSpecNfsMountArgs
///                         {
///                             Server = "10.0.0.1",
///                             Path = "/nfs_share",
///                             MountPoint = "nfs_mount",
///                         },
///                     },
///                     LustreMounts = new[]
///                     {
///                         new Gcp.Vertex.Inputs.AiCustomJobJobSpecWorkerPoolSpecLustreMountArgs
///                         {
///                             InstanceIp = "10.0.0.1",
///                             VolumeHandle = "lustre-vol",
///                             Filesystem = "lustrefs",
///                             MountPoint = "lustre_mount",
///                         },
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cryptoKey,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		customJobSa, err := serviceaccount.NewAccount(ctx, "custom_job_sa", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("job-sa"),
/// 			DisplayName: pulumi.String("Custom Job Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tensorboard, err := vertex.NewAiTensorboard(ctx, "tensorboard", &vertex.AiTensorboardArgs{
/// 			DisplayName: pulumi.String("example-tensorboard"),
/// 			Region:      pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		jobBucket, err := storage.NewBucket(ctx, "job_bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("example-custom-job-python-bucket"),
/// 			Location:                 pulumi.String("US-CENTRAL1"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		trainerPackage, err := storage.NewBucketObject(ctx, "trainer_package", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("trainer-0.1.tar.gz"),
/// 			Bucket:  jobBucket.Name,
/// 			Content: pulumi.String("placeholder"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKey, err := kms.NewCryptoKeyIAMMember(ctx, "crypto_key", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("example-key"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-aiplatform.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiCustomJob(ctx, "custom_job", &vertex.AiCustomJobArgs{
/// 			DisplayName: pulumi.String("example-custom-job-python"),
/// 			Region:      pulumi.String("us-central1"),
/// 			EncryptionSpec: &vertex.AiCustomJobEncryptionSpecArgs{
/// 				KmsKeyName: pulumi.String("example-key"),
/// 			},
/// 			JobSpec: &vertex.AiCustomJobJobSpecArgs{
/// 				ServiceAccount:        customJobSa.Email,
/// 				Tensorboard:           tensorboard.ID(),
/// 				EnableWebAccess:       pulumi.Bool(true),
/// 				EnableDashboardAccess: pulumi.Bool(true),
/// 				BaseOutputDirectory: &vertex.AiCustomJobJobSpecBaseOutputDirectoryArgs{
/// 					OutputUriPrefix: jobBucket.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("gs://%v/custom-job-output", name), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				PscInterfaceConfig: &vertex.AiCustomJobJobSpecPscInterfaceConfigArgs{
/// 					NetworkAttachment: pulumi.Sprintf("projects/%v/regions/us-central1/networkAttachments/example-attachment", project.ProjectId),
/// 					DnsPeeringConfigs: vertex.AiCustomJobJobSpecPscInterfaceConfigDnsPeeringConfigArray{
/// 						&vertex.AiCustomJobJobSpecPscInterfaceConfigDnsPeeringConfigArgs{
/// 							Domain:        pulumi.String("example.com."),
/// 							TargetProject: pulumi.String(project.ProjectId),
/// 							TargetNetwork: pulumi.String("default"),
/// 						},
/// 					},
/// 				},
/// 				Scheduling: &vertex.AiCustomJobJobSpecSchedulingArgs{
/// 					Timeout:                   pulumi.String("86400s"),
/// 					RestartJobOnWorkerRestart: pulumi.Bool(false),
/// 					Strategy:                  pulumi.String("FLEX_START"),
/// 					DisableRetries:            pulumi.Bool(true),
/// 					MaxWaitDuration:           pulumi.String("1800s"),
/// 				},
/// 				WorkerPoolSpecs: vertex.AiCustomJobJobSpecWorkerPoolSpecArray{
/// 					&vertex.AiCustomJobJobSpecWorkerPoolSpecArgs{
/// 						ReplicaCount: pulumi.Int(1),
/// 						MachineSpec: &vertex.AiCustomJobJobSpecWorkerPoolSpecMachineSpecArgs{
/// 							MachineType:      pulumi.String("g2-standard-4"),
/// 							AcceleratorType:  pulumi.String("NVIDIA_L4"),
/// 							AcceleratorCount: pulumi.Int(1),
/// 						},
/// 						DiskSpec: &vertex.AiCustomJobJobSpecWorkerPoolSpecDiskSpecArgs{
/// 							BootDiskType:   pulumi.String("pd-ssd"),
/// 							BootDiskSizeGb: pulumi.Int(100),
/// 						},
/// 						PythonPackageSpec: &vertex.AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpecArgs{
/// 							ExecutorImageUri: pulumi.String("us-docker.pkg.dev/vertex-ai/training/tf-gpu.2-12.py310:latest"),
/// 							PackageUris: pulumi.StringArray{
/// 								pulumi.All(jobBucket.Name, trainerPackage.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 									jobBucketName := _args[0].(string)
/// 									trainerPackageName := _args[1].(string)
/// 									return fmt.Sprintf("gs://%v/%v", jobBucketName, trainerPackageName), nil
/// 								}).(pulumi.StringOutput),
/// 							},
/// 							PythonModule: pulumi.String("trainer.task"),
/// 							Args: pulumi.StringArray{
/// 								pulumi.String("--epochs=1"),
/// 							},
/// 							Envs: vertex.AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpecEnvArray{
/// 								&vertex.AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpecEnvArgs{
/// 									Name:  pulumi.String("PYTHON_ENV"),
/// 									Value: pulumi.String("test_val"),
/// 								},
/// 							},
/// 						},
/// 						NfsMounts: vertex.AiCustomJobJobSpecWorkerPoolSpecNfsMountArray{
/// 							&vertex.AiCustomJobJobSpecWorkerPoolSpecNfsMountArgs{
/// 								Server:     pulumi.String("10.0.0.1"),
/// 								Path:       pulumi.String("/nfs_share"),
/// 								MountPoint: pulumi.String("nfs_mount"),
/// 							},
/// 						},
/// 						LustreMounts: vertex.AiCustomJobJobSpecWorkerPoolSpecLustreMountArray{
/// 							&vertex.AiCustomJobJobSpecWorkerPoolSpecLustreMountArgs{
/// 								InstanceIp:   pulumi.String("10.0.0.1"),
/// 								VolumeHandle: pulumi.String("lustre-vol"),
/// 								Filesystem:   pulumi.String("lustrefs"),
/// 								MountPoint:   pulumi.String("lustre_mount"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cryptoKey,
/// 		}))
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_vertex_ai_custom_job" "custom_job" {
///   depends_on = [gcp_kms_crypto_key_i_a_m_member.crypto_key]
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "example-custom-job-python"
///   region       = "us-central1"
///   encryption_spec = {
///     kms_key_name = "example-key"
///   }
///   job_spec = {
///     service_account         = gcp_serviceaccount_account.custom_job_sa.email
///     tensorboard             = gcp_vertex_ai_tensorboard.tensorboard.id
///     enable_web_access       = true
///     enable_dashboard_access = true
///     base_output_directory = {
///       output_uri_prefix ="gs://${gcp_storage_bucket.job_bucket.name}/custom-job-output"
///     }
///     psc_interface_config = {
///       network_attachment ="projects/${data.gcp_organizations_project.project.project_id}/regions/us-central1/networkAttachments/example-attachment"
///       dns_peering_configs = [{
///         domain         = "example.com."
///         target_project = data.gcp_organizations_project.project.project_id
///         target_network = "default"
///       }]
///     }
///     scheduling = {
///       timeout                       = "86400s"
///       restart_job_on_worker_restart = false
///       strategy                      = "FLEX_START"
///       disable_retries               = true
///       max_wait_duration             = "1800s"
///     }
///     worker_pool_specs = [{
///       replica_count = 1
///       machine_spec = {
///         machine_type      = "g2-standard-4"
///         accelerator_type  = "NVIDIA_L4"
///         accelerator_count = 1
///       }
///       disk_spec = {
///         boot_disk_type    = "pd-ssd"
///         boot_disk_size_gb = 100
///       }
///       python_package_spec = {
///         executor_image_uri = "us-docker.pkg.dev/vertex-ai/training/tf-gpu.2-12.py310:latest"
///         package_uris       = ["gs://${gcp_storage_bucket.job_bucket.name}/${gcp_storage_bucket_object.trainer_package.name}"]
///         python_module      = "trainer.task"
///         args               = ["--epochs=1"]
///         envs = [{
///           name  = "PYTHON_ENV"
///           value = "test_val"
///         }]
///       }
///       nfs_mounts = [{
///         server      = "10.0.0.1"
///         path        = "/nfs_share"
///         mount_point = "nfs_mount"
///       }]
///       lustre_mounts = [{
///         instance_ip   = "10.0.0.1"
///         volume_handle = "lustre-vol"
///         filesystem    = "lustrefs"
///         mount_point   = "lustre_mount"
///       }]
///     }]
///   }
/// }
/// resource "gcp_serviceaccount_account" "custom_job_sa" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id   = "job-sa"
///   display_name = "Custom Job Service Account"
/// }
/// resource "gcp_vertex_ai_tensorboard" "tensorboard" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "example-tensorboard"
///   region       = "us-central1"
/// }
/// resource "gcp_storage_bucket" "job_bucket" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                        = "example-custom-job-python-bucket"
///   location                    = "US-CENTRAL1"
///   force_destroy               = true
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_storage_bucket_object" "trainer_package" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name    = "trainer-0.1.tar.gz"
///   bucket  = gcp_storage_bucket.job_bucket.name
///   content = "placeholder"
/// }
/// resource "gcp_kms_crypto_key_i_a_m_member" "crypto_key" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   crypto_key_id = "example-key"
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        ="serviceAccount:service-${data.gcp_organizations_project.project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.vertex.AiTensorboard;
/// import com.pulumi.gcp.vertex.AiTensorboardArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.vertex.AiCustomJob;
/// import com.pulumi.gcp.vertex.AiCustomJobArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobEncryptionSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecBaseOutputDirectoryArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecPscInterfaceConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecPscInterfaceConfigDnsPeeringConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecSchedulingArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecWorkerPoolSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecWorkerPoolSpecMachineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecWorkerPoolSpecDiskSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpecEnvArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecWorkerPoolSpecNfsMountArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecWorkerPoolSpecLustreMountArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var customJobSa = new Account("customJobSa", AccountArgs.builder()
///             .accountId("job-sa")
///             .displayName("Custom Job Service Account")
///             .build());
///
///         var tensorboard = new AiTensorboard("tensorboard", AiTensorboardArgs.builder()
///             .displayName("example-tensorboard")
///             .region("us-central1")
///             .build());
///
///         var jobBucket = new Bucket("jobBucket", BucketArgs.builder()
///             .name("example-custom-job-python-bucket")
///             .location("US-CENTRAL1")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var trainerPackage = new BucketObject("trainerPackage", BucketObjectArgs.builder()
///             .name("trainer-0.1.tar.gz")
///             .bucket(jobBucket.name())
///             .content("placeholder")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var cryptoKey = new CryptoKeyIAMMember("cryptoKey", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("example-key")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-aiplatform.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var customJob = new AiCustomJob("customJob", AiCustomJobArgs.builder()
///             .displayName("example-custom-job-python")
///             .region("us-central1")
///             .encryptionSpec(AiCustomJobEncryptionSpecArgs.builder()
///                 .kmsKeyName("example-key")
///                 .build())
///             .jobSpec(AiCustomJobJobSpecArgs.builder()
///                 .serviceAccount(customJobSa.email())
///                 .tensorboard(tensorboard.id())
///                 .enableWebAccess(true)
///                 .enableDashboardAccess(true)
///                 .baseOutputDirectory(AiCustomJobJobSpecBaseOutputDirectoryArgs.builder()
///                     .outputUriPrefix(jobBucket.name().applyValue(_name -> String.format("gs://%s/custom-job-output", _name)))
///                     .build())
///                 .pscInterfaceConfig(AiCustomJobJobSpecPscInterfaceConfigArgs.builder()
///                     .networkAttachment(String.format("projects/%s/regions/us-central1/networkAttachments/example-attachment", project.projectId()))
///                     .dnsPeeringConfigs(AiCustomJobJobSpecPscInterfaceConfigDnsPeeringConfigArgs.builder()
///                         .domain("example.com.")
///                         .targetProject(project.projectId())
///                         .targetNetwork("default")
///                         .build())
///                     .build())
///                 .scheduling(AiCustomJobJobSpecSchedulingArgs.builder()
///                     .timeout("86400s")
///                     .restartJobOnWorkerRestart(false)
///                     .strategy("FLEX_START")
///                     .disableRetries(true)
///                     .maxWaitDuration("1800s")
///                     .build())
///                 .workerPoolSpecs(AiCustomJobJobSpecWorkerPoolSpecArgs.builder()
///                     .replicaCount(1)
///                     .machineSpec(AiCustomJobJobSpecWorkerPoolSpecMachineSpecArgs.builder()
///                         .machineType("g2-standard-4")
///                         .acceleratorType("NVIDIA_L4")
///                         .acceleratorCount(1)
///                         .build())
///                     .diskSpec(AiCustomJobJobSpecWorkerPoolSpecDiskSpecArgs.builder()
///                         .bootDiskType("pd-ssd")
///                         .bootDiskSizeGb(100)
///                         .build())
///                     .pythonPackageSpec(AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpecArgs.builder()
///                         .executorImageUri("us-docker.pkg.dev/vertex-ai/training/tf-gpu.2-12.py310:latest")
///                         .packageUris(Output.tuple(jobBucket.name(), trainerPackage.name()).applyValue(values -> {
///                             var jobBucketName = values.t1;
///                             var trainerPackageName = values.t2;
///                             return String.format("gs://%s/%s", jobBucketName,trainerPackageName);
///                         }))
///                         .pythonModule("trainer.task")
///                         .args("--epochs=1")
///                         .envs(AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpecEnvArgs.builder()
///                             .name("PYTHON_ENV")
///                             .value("test_val")
///                             .build())
///                         .build())
///                     .nfsMounts(AiCustomJobJobSpecWorkerPoolSpecNfsMountArgs.builder()
///                         .server("10.0.0.1")
///                         .path("/nfs_share")
///                         .mountPoint("nfs_mount")
///                         .build())
///                     .lustreMounts(AiCustomJobJobSpecWorkerPoolSpecLustreMountArgs.builder()
///                         .instanceIp("10.0.0.1")
///                         .volumeHandle("lustre-vol")
///                         .filesystem("lustrefs")
///                         .mountPoint("lustre_mount")
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cryptoKey)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   customJob:
///     type: gcp:vertex:AiCustomJob
///     name: custom_job
///     properties:
///       displayName: example-custom-job-python
///       region: us-central1
///       encryptionSpec:
///         kmsKeyName: example-key
///       jobSpec:
///         serviceAccount: ${customJobSa.email}
///         tensorboard: ${tensorboard.id}
///         enableWebAccess: true
///         enableDashboardAccess: true
///         baseOutputDirectory:
///           outputUriPrefix: gs://${jobBucket.name}/custom-job-output
///         pscInterfaceConfig:
///           networkAttachment: projects/${project.projectId}/regions/us-central1/networkAttachments/example-attachment
///           dnsPeeringConfigs:
///             - domain: example.com.
///               targetProject: ${project.projectId}
///               targetNetwork: default
///         scheduling:
///           timeout: 86400s
///           restartJobOnWorkerRestart: false
///           strategy: FLEX_START
///           disableRetries: true
///           maxWaitDuration: 1800s
///         workerPoolSpecs:
///           - replicaCount: 1
///             machineSpec:
///               machineType: g2-standard-4
///               acceleratorType: NVIDIA_L4
///               acceleratorCount: 1
///             diskSpec:
///               bootDiskType: pd-ssd
///               bootDiskSizeGb: 100
///             pythonPackageSpec:
///               executorImageUri: us-docker.pkg.dev/vertex-ai/training/tf-gpu.2-12.py310:latest
///               packageUris:
///                 - gs://${jobBucket.name}/${trainerPackage.name}
///               pythonModule: trainer.task
///               args:
///                 - --epochs=1
///               envs:
///                 - name: PYTHON_ENV
///                   value: test_val
///             nfsMounts:
///               - server: 10.0.0.1
///                 path: /nfs_share
///                 mountPoint: nfs_mount
///             lustreMounts:
///               - instanceIp: 10.0.0.1
///                 volumeHandle: lustre-vol
///                 filesystem: lustrefs
///                 mountPoint: lustre_mount
///     options:
///       dependsOn:
///         - ${cryptoKey}
///   customJobSa:
///     type: gcp:serviceaccount:Account
///     name: custom_job_sa
///     properties:
///       accountId: job-sa
///       displayName: Custom Job Service Account
///   tensorboard:
///     type: gcp:vertex:AiTensorboard
///     properties:
///       displayName: example-tensorboard
///       region: us-central1
///   jobBucket:
///     type: gcp:storage:Bucket
///     name: job_bucket
///     properties:
///       name: example-custom-job-python-bucket
///       location: US-CENTRAL1
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///   trainerPackage:
///     type: gcp:storage:BucketObject
///     name: trainer_package
///     properties:
///       name: trainer-0.1.tar.gz
///       bucket: ${jobBucket.name}
///       content: placeholder
///   cryptoKey:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: crypto_key
///     properties:
///       cryptoKeyId: example-key
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:service-${project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ### Vertex Ai Custom Job Tpu Network
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const vertexNetwork = new gcp.compute.Network("vertex_network", {
///     name: "custom-job-vpc-net",
///     autoCreateSubnetworks: false,
/// });
/// const vertexRange = new gcp.compute.GlobalAddress("vertex_range", {
///     name: "custom-job-vpc-range",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 24,
///     network: vertexNetwork.id,
/// });
/// const vertexVpcConnection = new gcp.servicenetworking.Connection("vertex_vpc_connection", {
///     network: vertexNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [vertexRange.name],
/// });
/// const project = gcp.organizations.getProject({});
/// const customJob = new gcp.vertex.AiCustomJob("custom_job", {
///     displayName: "example-custom-job-tpu",
///     region: "us-central1",
///     jobSpec: {
///         network: pulumi.all([project, vertexNetwork.name]).apply(([project, name]) => `projects/${project.number}/global/networks/${name}`),
///         reservedIpRanges: [vertexRange.name],
///         workerPoolSpecs: [{
///             replicaCount: 1,
///             machineSpec: {
///                 machineType: "n1-standard-4",
///                 tpuTopology: "2x2",
///                 reservationAffinity: {
///                     reservationAffinityType: "SPECIFIC_RESERVATION",
///                     key: "compute.googleapis.com/reservation-name",
///                     values: [project.then(project => `projects/${project.number}/zones/us-central1-z/reservations/example-reservation`)],
///                 },
///             },
///             diskSpec: {
///                 bootDiskType: "pd-ssd",
///                 bootDiskSizeGb: 100,
///             },
///             containerSpec: {
///                 imageUri: "us-docker.pkg.dev/vertex-ai/training/tf-cpu.2-12.py310:latest",
///                 commands: [
///                     "echo",
///                     "test",
///                 ],
///             },
///         }],
///     },
/// }, {
///     dependsOn: [vertexVpcConnection],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// vertex_network = gcp.compute.Network("vertex_network",
///     name="custom-job-vpc-net",
///     auto_create_subnetworks=False)
/// vertex_range = gcp.compute.GlobalAddress("vertex_range",
///     name="custom-job-vpc-range",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=24,
///     network=vertex_network.id)
/// vertex_vpc_connection = gcp.servicenetworking.Connection("vertex_vpc_connection",
///     network=vertex_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[vertex_range.name])
/// project = gcp.organizations.get_project()
/// custom_job = gcp.vertex.AiCustomJob("custom_job",
///     display_name="example-custom-job-tpu",
///     region="us-central1",
///     job_spec={
///         "network": vertex_network.name.apply(lambda name: f"projects/{project.number}/global/networks/{name}"),
///         "reserved_ip_ranges": [vertex_range.name],
///         "worker_pool_specs": [{
///             "replica_count": 1,
///             "machine_spec": {
///                 "machine_type": "n1-standard-4",
///                 "tpu_topology": "2x2",
///                 "reservation_affinity": {
///                     "reservation_affinity_type": "SPECIFIC_RESERVATION",
///                     "key": "compute.googleapis.com/reservation-name",
///                     "values": [f"projects/{project.number}/zones/us-central1-z/reservations/example-reservation"],
///                 },
///             },
///             "disk_spec": {
///                 "boot_disk_type": "pd-ssd",
///                 "boot_disk_size_gb": 100,
///             },
///             "container_spec": {
///                 "image_uri": "us-docker.pkg.dev/vertex-ai/training/tf-cpu.2-12.py310:latest",
///                 "commands": [
///                     "echo",
///                     "test",
///                 ],
///             },
///         }],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[vertex_vpc_connection]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vertexNetwork = new Gcp.Compute.Network("vertex_network", new()
///     {
///         Name = "custom-job-vpc-net",
///         AutoCreateSubnetworks = false,
///     });
///
///     var vertexRange = new Gcp.Compute.GlobalAddress("vertex_range", new()
///     {
///         Name = "custom-job-vpc-range",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 24,
///         Network = vertexNetwork.Id,
///     });
///
///     var vertexVpcConnection = new Gcp.ServiceNetworking.Connection("vertex_vpc_connection", new()
///     {
///         Network = vertexNetwork.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             vertexRange.Name,
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var customJob = new Gcp.Vertex.AiCustomJob("custom_job", new()
///     {
///         DisplayName = "example-custom-job-tpu",
///         Region = "us-central1",
///         JobSpec = new Gcp.Vertex.Inputs.AiCustomJobJobSpecArgs
///         {
///             Network = Output.Tuple(project, vertexNetwork.Name).Apply(values =>
///             {
///                 var project = values.Item1;
///                 var name = values.Item2;
///                 return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/global/networks/{name}";
///             }),
///             ReservedIpRanges = new[]
///             {
///                 vertexRange.Name,
///             },
///             WorkerPoolSpecs = new[]
///             {
///                 new Gcp.Vertex.Inputs.AiCustomJobJobSpecWorkerPoolSpecArgs
///                 {
///                     ReplicaCount = 1,
///                     MachineSpec = new Gcp.Vertex.Inputs.AiCustomJobJobSpecWorkerPoolSpecMachineSpecArgs
///                     {
///                         MachineType = "n1-standard-4",
///                         TpuTopology = "2x2",
///                         ReservationAffinity = new Gcp.Vertex.Inputs.AiCustomJobJobSpecWorkerPoolSpecMachineSpecReservationAffinityArgs
///                         {
///                             ReservationAffinityType = "SPECIFIC_RESERVATION",
///                             Key = "compute.googleapis.com/reservation-name",
///                             Values = new[]
///                             {
///                                 $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/zones/us-central1-z/reservations/example-reservation",
///                             },
///                         },
///                     },
///                     DiskSpec = new Gcp.Vertex.Inputs.AiCustomJobJobSpecWorkerPoolSpecDiskSpecArgs
///                     {
///                         BootDiskType = "pd-ssd",
///                         BootDiskSizeGb = 100,
///                     },
///                     ContainerSpec = new Gcp.Vertex.Inputs.AiCustomJobJobSpecWorkerPoolSpecContainerSpecArgs
///                     {
///                         ImageUri = "us-docker.pkg.dev/vertex-ai/training/tf-cpu.2-12.py310:latest",
///                         Commands = new[]
///                         {
///                             "echo",
///                             "test",
///                         },
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vertexVpcConnection,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		vertexNetwork, err := compute.NewNetwork(ctx, "vertex_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("custom-job-vpc-net"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vertexRange, err := compute.NewGlobalAddress(ctx, "vertex_range", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("custom-job-vpc-range"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(24),
/// 			Network:      vertexNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vertexVpcConnection, err := servicenetworking.NewConnection(ctx, "vertex_vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: vertexNetwork.ID(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				vertexRange.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiCustomJob(ctx, "custom_job", &vertex.AiCustomJobArgs{
/// 			DisplayName: pulumi.String("example-custom-job-tpu"),
/// 			Region:      pulumi.String("us-central1"),
/// 			JobSpec: &vertex.AiCustomJobJobSpecArgs{
/// 				Network: vertexNetwork.Name.ApplyT(func(name string) (string, error) {
/// 					return fmt.Sprintf("projects/%v/global/networks/%v", project.Number, name), nil
/// 				}).(pulumi.StringOutput),
/// 				ReservedIpRanges: pulumi.StringArray{
/// 					vertexRange.Name,
/// 				},
/// 				WorkerPoolSpecs: vertex.AiCustomJobJobSpecWorkerPoolSpecArray{
/// 					&vertex.AiCustomJobJobSpecWorkerPoolSpecArgs{
/// 						ReplicaCount: pulumi.Int(1),
/// 						MachineSpec: &vertex.AiCustomJobJobSpecWorkerPoolSpecMachineSpecArgs{
/// 							MachineType: pulumi.String("n1-standard-4"),
/// 							TpuTopology: pulumi.String("2x2"),
/// 							ReservationAffinity: &vertex.AiCustomJobJobSpecWorkerPoolSpecMachineSpecReservationAffinityArgs{
/// 								ReservationAffinityType: pulumi.String("SPECIFIC_RESERVATION"),
/// 								Key:                     pulumi.String("compute.googleapis.com/reservation-name"),
/// 								Values: pulumi.StringArray{
/// 									pulumi.Sprintf("projects/%v/zones/us-central1-z/reservations/example-reservation", project.Number),
/// 								},
/// 							},
/// 						},
/// 						DiskSpec: &vertex.AiCustomJobJobSpecWorkerPoolSpecDiskSpecArgs{
/// 							BootDiskType:   pulumi.String("pd-ssd"),
/// 							BootDiskSizeGb: pulumi.Int(100),
/// 						},
/// 						ContainerSpec: &vertex.AiCustomJobJobSpecWorkerPoolSpecContainerSpecArgs{
/// 							ImageUri: pulumi.String("us-docker.pkg.dev/vertex-ai/training/tf-cpu.2-12.py310:latest"),
/// 							Commands: pulumi.StringArray{
/// 								pulumi.String("echo"),
/// 								pulumi.String("test"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vertexVpcConnection,
/// 		}))
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_vertex_ai_custom_job" "custom_job" {
///   depends_on = [gcp_servicenetworking_connection.vertex_vpc_connection]
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "example-custom-job-tpu"
///   region       = "us-central1"
///   job_spec = {
///     network            ="projects/${data.gcp_organizations_project.project.number}/global/networks/${gcp_compute_network.vertex_network.name}"
///     reserved_ip_ranges = [gcp_compute_global_address.vertex_range.name]
///     worker_pool_specs = [{
///       replica_count = 1
///       machine_spec = {
///         machine_type = "n1-standard-4"
///         tpu_topology = "2x2"
///         reservation_affinity = {
///           reservation_affinity_type = "SPECIFIC_RESERVATION"
///           key                       = "compute.googleapis.com/reservation-name"
///           values                    = ["projects/${data.gcp_organizations_project.project.number}/zones/us-central1-z/reservations/example-reservation"]
///         }
///       }
///       disk_spec = {
///         boot_disk_type    = "pd-ssd"
///         boot_disk_size_gb = 100
///       }
///       container_spec = {
///         image_uri = "us-docker.pkg.dev/vertex-ai/training/tf-cpu.2-12.py310:latest"
///         commands  = ["echo", "test"]
///       }
///     }]
///   }
/// }
/// resource "gcp_compute_network" "vertex_network" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                    = "custom-job-vpc-net"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_global_address" "vertex_range" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "custom-job-vpc-range"
///   purpose       = "VPC_PEERING"
///   address_type  = "INTERNAL"
///   prefix_length = 24
///   network       = gcp_compute_network.vertex_network.id
/// }
/// resource "gcp_servicenetworking_connection" "vertex_vpc_connection" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   network                 = gcp_compute_network.vertex_network.id
///   service                 = "servicenetworking.googleapis.com"
///   reserved_peering_ranges = [gcp_compute_global_address.vertex_range.name]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.vertex.AiCustomJob;
/// import com.pulumi.gcp.vertex.AiCustomJobArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecWorkerPoolSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecWorkerPoolSpecMachineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecWorkerPoolSpecMachineSpecReservationAffinityArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecWorkerPoolSpecDiskSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiCustomJobJobSpecWorkerPoolSpecContainerSpecArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var vertexNetwork = new Network("vertexNetwork", NetworkArgs.builder()
///             .name("custom-job-vpc-net")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var vertexRange = new GlobalAddress("vertexRange", GlobalAddressArgs.builder()
///             .name("custom-job-vpc-range")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(24)
///             .network(vertexNetwork.id())
///             .build());
///
///         var vertexVpcConnection = new Connection("vertexVpcConnection", ConnectionArgs.builder()
///             .network(vertexNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(vertexRange.name())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var customJob = new AiCustomJob("customJob", AiCustomJobArgs.builder()
///             .displayName("example-custom-job-tpu")
///             .region("us-central1")
///             .jobSpec(AiCustomJobJobSpecArgs.builder()
///                 .network(vertexNetwork.name().applyValue(_name -> String.format("projects/%s/global/networks/%s", project.number(),_name)))
///                 .reservedIpRanges(vertexRange.name())
///                 .workerPoolSpecs(AiCustomJobJobSpecWorkerPoolSpecArgs.builder()
///                     .replicaCount(1)
///                     .machineSpec(AiCustomJobJobSpecWorkerPoolSpecMachineSpecArgs.builder()
///                         .machineType("n1-standard-4")
///                         .tpuTopology("2x2")
///                         .reservationAffinity(AiCustomJobJobSpecWorkerPoolSpecMachineSpecReservationAffinityArgs.builder()
///                             .reservationAffinityType("SPECIFIC_RESERVATION")
///                             .key("compute.googleapis.com/reservation-name")
///                             .values(String.format("projects/%s/zones/us-central1-z/reservations/example-reservation", project.number()))
///                             .build())
///                         .build())
///                     .diskSpec(AiCustomJobJobSpecWorkerPoolSpecDiskSpecArgs.builder()
///                         .bootDiskType("pd-ssd")
///                         .bootDiskSizeGb(100)
///                         .build())
///                     .containerSpec(AiCustomJobJobSpecWorkerPoolSpecContainerSpecArgs.builder()
///                         .imageUri("us-docker.pkg.dev/vertex-ai/training/tf-cpu.2-12.py310:latest")
///                         .commands(
///                             "echo",
///                             "test")
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vertexVpcConnection)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   customJob:
///     type: gcp:vertex:AiCustomJob
///     name: custom_job
///     properties:
///       displayName: example-custom-job-tpu
///       region: us-central1
///       jobSpec:
///         network: projects/${project.number}/global/networks/${vertexNetwork.name}
///         reservedIpRanges:
///           - ${vertexRange.name}
///         workerPoolSpecs:
///           - replicaCount: 1
///             machineSpec:
///               machineType: n1-standard-4
///               tpuTopology: 2x2
///               reservationAffinity:
///                 reservationAffinityType: SPECIFIC_RESERVATION
///                 key: compute.googleapis.com/reservation-name
///                 values:
///                   - projects/${project.number}/zones/us-central1-z/reservations/example-reservation
///             diskSpec:
///               bootDiskType: pd-ssd
///               bootDiskSizeGb: 100
///             containerSpec:
///               imageUri: us-docker.pkg.dev/vertex-ai/training/tf-cpu.2-12.py310:latest
///               commands:
///                 - echo
///                 - test
///     options:
///       dependsOn:
///         - ${vertexVpcConnection}
///   vertexNetwork:
///     type: gcp:compute:Network
///     name: vertex_network
///     properties:
///       name: custom-job-vpc-net
///       autoCreateSubnetworks: false
///   vertexRange:
///     type: gcp:compute:GlobalAddress
///     name: vertex_range
///     properties:
///       name: custom-job-vpc-range
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 24
///       network: ${vertexNetwork.id}
///   vertexVpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: vertex_vpc_connection
///     properties:
///       network: ${vertexNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${vertexRange.name}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// CustomJob can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/customJobs/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, CustomJob can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiCustomJob:AiCustomJob default projects/{{project}}/locations/{{region}}/customJobs/{{name}}
/// $ pulumi import gcp:vertex/aiCustomJob:AiCustomJob default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiCustomJob:AiCustomJob default {{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiCustomJob:AiCustomJob default {{name}}
/// ```
class AiCustomJob extends pulumi.CustomResource {
  /// Time when the CustomJob was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The display name of the CustomJob.
  /// The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Customer-managed encryption key options for a CustomJob.
  /// Structure is documented below.
  late final pulumi.Output<AiCustomJobEncryptionSpec?> encryptionSpec;
  /// Time when the CustomJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  late final pulumi.Output<String> endTime;
  /// Only populated when job's state is `JOB_STATE_FAILED` or `JOB_STATE_CANCELLED`.
  /// Structure is documented below.
  late final pulumi.Output<List<AiCustomJobError>> errors;
  /// Job spec.
  /// Structure is documented below.
  late final pulumi.Output<AiCustomJobJobSpec> jobSpec;
  /// The labels with user-defined metadata to organize CustomJobs.
  /// Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed.
  /// See https://goo.gl/xmQnxf for more information and examples of labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The resource name of the CustomJob.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The Google Cloud region to run the custom job in.
  late final pulumi.Output<String> region;
  /// Time when the CustomJob for the first time entered the `JOB_STATE_RUNNING` state.
  late final pulumi.Output<String> startTime;
  /// The detailed state of the job.
  late final pulumi.Output<String> state;
  /// Time when the CustomJob was most recently updated.
  late final pulumi.Output<String> updateTime;
  /// URIs for accessing interactive shells (one URI for each training node).
  late final pulumi.Output<Map<String, String>> webAccessUris;

  /// Creates a new [AiCustomJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiCustomJob]. {@macro pulumi_vertex_ai_custom_job_ai_custom_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiCustomJob(
    String name, {
    AiCustomJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiCustomJob:AiCustomJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.2').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<AiCustomJobEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiCustomJobEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endTime = registerOutput<String>('endTime');
    errors = registerOutput<List<AiCustomJobError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiCustomJobError>(guardedValue, (value) => AiCustomJobError.fromMap((value as Map).cast<String, dynamic>())); });
    jobSpec = registerOutput<AiCustomJobJobSpec>('jobSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiCustomJobJobSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    webAccessUris = registerOutput<Map<String, String>>('webAccessUris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [AiCustomJob] resource's state with the given [name] and [id].
  static AiCustomJob get(
    String name,
    pulumi.Input<String> id, {
    AiCustomJobState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiCustomJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiCustomJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiCustomJob:AiCustomJob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<AiCustomJobEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiCustomJobEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endTime = registerOutput<String>('endTime');
    errors = registerOutput<List<AiCustomJobError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiCustomJobError>(guardedValue, (value) => AiCustomJobError.fromMap((value as Map).cast<String, dynamic>())); });
    jobSpec = registerOutput<AiCustomJobJobSpec>('jobSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiCustomJobJobSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
    startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    webAccessUris = registerOutput<Map<String, String>>('webAccessUris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [AiCustomJob] resource.
  AiCustomJob.reference(String urn)
    : super(
        'gcp:vertex/aiCustomJob:AiCustomJob',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<AiCustomJobEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiCustomJobEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endTime = registerOutput<String>('endTime');
    errors = registerOutput<List<AiCustomJobError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiCustomJobError>(guardedValue, (value) => AiCustomJobError.fromMap((value as Map).cast<String, dynamic>())); });
    jobSpec = registerOutput<AiCustomJobJobSpec>('jobSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiCustomJobJobSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    webAccessUris = registerOutput<Map<String, String>>('webAccessUris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
