import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_args.dart';
import 'environment_config.dart';
import 'environment_state.dart';
import 'environment_storage_config.dart';

/// An environment for running orchestration tasks.
///
/// Environments run Apache Airflow software on Google infrastructure.
///
/// To get more information about Environments, see:
///
/// * [Managed Service for Apache Airflow documentation](https://docs.cloud.google.com/composer/docs)
/// * [Managed Airflow API documentation](https://docs.cloud.google.com/composer/docs/reference/rest/v1beta1/projects.locations.environments)
/// * How-to Guides for Managed Airflow (Gen 3)
/// * [Creating environments](https://docs.cloud.google.com/composer/docs/composer-3/create-environments)
/// * [Scaling environments](https://docs.cloud.google.com/composer/docs/composer-3/scale-environments)
/// * [Change environment networking type (Private or Public IP)](https://docs.cloud.google.com/composer/docs/composer-3/change-networking-type)
/// * [Connect an environment to a VPC network](https://docs.cloud.google.com/composer/docs/composer-3/connect-vpc-network)
/// * How-to Guides for Managed Airflow (Gen 2)
/// * [Creating environments](https://docs.cloud.google.com/composer/docs/composer-2/create-environments)
/// * [Scaling environments](https://docs.cloud.google.com/composer/docs/composer-2/scale-environments)
/// * [Configuring Shared VPC](https://docs.cloud.google.com/composer/docs/composer-2/configure-shared-vpc)
/// * [Apache Airflow Documentation](http://airflow.apache.org/)
///
/// &gt; **Note**
/// Managed Airflow (Legacy Gen 1) is in the post-maintenance mode. Google
/// doesn't release any further updates to Managed Service for
/// Managed Airflow (Legacy Gen 1), including new versions of Airflow, bugfixes,
/// and security updates. We recommend using Managed Airflow (Gen 3) or
/// Managed Airflow (Gen 2) instead.
///
/// Several special considerations apply to using Terraform with
/// Managed Service for Apache Airflow:
///
/// * The Environment resource is based on several layers of Google Cloud
/// infrastructure. Terraform doesn't manage these underlying resources. For
/// example, in Managed Airflow (Gen 2), this includes a Google Kubernetes
/// Engine cluster, Cloud Storage, and Compute networking resources.
/// * Creating or updating an environment usually takes around 25 minutes.
/// * In some cases, errors in the configuration are detected and reported only
/// during the process of environment creation. If you encounter such
/// errors, please verify that your configuration is valid for the Managed
/// Airflow environment you are creating before filing bugs for the Terraform
/// provider.
/// * **Environments have Google Cloud Storage buckets that are not automatically
/// deleted** with the environment.
/// See [Delete environments](https://docs.cloud.google.com/composer/docs/composer-3/delete-environments)
/// for more information.
/// * See
/// [Troubleshooting pages](https://docs.cloud.google.com/composer/docs/composer-3/troubleshooting-environment-creation)
/// if you encounter problems.
///
/// ## Example Usage
///
/// ### Basic usage in Managed Airflow (Gen 3)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = new gcp.composer.Environment("test", {
///     name: "example-composer-env",
///     region: "us-central1",
///     config: {
///         softwareConfig: {
///             imageVersion: "composer-3-airflow-2",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.composer.Environment("test",
///     name="example-composer-env",
///     region="us-central1",
///     config={
///         "software_config": {
///             "image_version": "composer-3-airflow-2",
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
///     var test = new Gcp.Composer.Environment("test", new()
///     {
///         Name = "example-composer-env",
///         Region = "us-central1",
///         Config = new Gcp.Composer.Inputs.EnvironmentConfigArgs
///         {
///             SoftwareConfig = new Gcp.Composer.Inputs.EnvironmentConfigSoftwareConfigArgs
///             {
///                 ImageVersion = "composer-3-airflow-2",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/composer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := composer.NewEnvironment(ctx, "test", &composer.EnvironmentArgs{
/// 			Name:   pulumi.String("example-composer-env"),
/// 			Region: pulumi.String("us-central1"),
/// 			Config: &composer.EnvironmentConfigArgs{
/// 				SoftwareConfig: &composer.EnvironmentConfigSoftwareConfigArgs{
/// 					ImageVersion: pulumi.String("composer-3-airflow-2"),
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
/// resource "gcp_composer_environment" "test" {
///   name   = "example-composer-env"
///   region = "us-central1"
///   config = {
///     software_config = {
///       image_version = "composer-3-airflow-2"
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
/// import com.pulumi.gcp.composer.Environment;
/// import com.pulumi.gcp.composer.EnvironmentArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigSoftwareConfigArgs;
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
///         var test = new Environment("test", EnvironmentArgs.builder()
///             .name("example-composer-env")
///             .region("us-central1")
///             .config(EnvironmentConfigArgs.builder()
///                 .softwareConfig(EnvironmentConfigSoftwareConfigArgs.builder()
///                     .imageVersion("composer-3-airflow-2")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:composer:Environment
///     properties:
///       name: example-composer-env
///       region: us-central1
///       config:
///         softwareConfig:
///           imageVersion: composer-3-airflow-2
/// ```
///
///
/// ### Basic usage in Managed Airflow (Gen 2)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = new gcp.composer.Environment("test", {
///     name: "example-composer-env",
///     region: "us-central1",
///     config: {
///         softwareConfig: {
///             imageVersion: "composer-2-airflow-2",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.composer.Environment("test",
///     name="example-composer-env",
///     region="us-central1",
///     config={
///         "software_config": {
///             "image_version": "composer-2-airflow-2",
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
///     var test = new Gcp.Composer.Environment("test", new()
///     {
///         Name = "example-composer-env",
///         Region = "us-central1",
///         Config = new Gcp.Composer.Inputs.EnvironmentConfigArgs
///         {
///             SoftwareConfig = new Gcp.Composer.Inputs.EnvironmentConfigSoftwareConfigArgs
///             {
///                 ImageVersion = "composer-2-airflow-2",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/composer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := composer.NewEnvironment(ctx, "test", &composer.EnvironmentArgs{
/// 			Name:   pulumi.String("example-composer-env"),
/// 			Region: pulumi.String("us-central1"),
/// 			Config: &composer.EnvironmentConfigArgs{
/// 				SoftwareConfig: &composer.EnvironmentConfigSoftwareConfigArgs{
/// 					ImageVersion: pulumi.String("composer-2-airflow-2"),
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
/// resource "gcp_composer_environment" "test" {
///   name   = "example-composer-env"
///   region = "us-central1"
///   config = {
///     software_config = {
///       image_version = "composer-2-airflow-2"
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
/// import com.pulumi.gcp.composer.Environment;
/// import com.pulumi.gcp.composer.EnvironmentArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigSoftwareConfigArgs;
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
///         var test = new Environment("test", EnvironmentArgs.builder()
///             .name("example-composer-env")
///             .region("us-central1")
///             .config(EnvironmentConfigArgs.builder()
///                 .softwareConfig(EnvironmentConfigSoftwareConfigArgs.builder()
///                     .imageVersion("composer-2-airflow-2")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:composer:Environment
///     properties:
///       name: example-composer-env
///       region: us-central1
///       config:
///         softwareConfig:
///           imageVersion: composer-2-airflow-2
/// ```
///
///
/// ### Basic Usage in Managed Airflow (Legacy Gen 1)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = new gcp.composer.Environment("test", {
///     name: "example-composer-env",
///     region: "us-central1",
///     config: {
///         softwareConfig: {
///             imageVersion: "composer-1-airflow-2",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.composer.Environment("test",
///     name="example-composer-env",
///     region="us-central1",
///     config={
///         "software_config": {
///             "image_version": "composer-1-airflow-2",
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
///     var test = new Gcp.Composer.Environment("test", new()
///     {
///         Name = "example-composer-env",
///         Region = "us-central1",
///         Config = new Gcp.Composer.Inputs.EnvironmentConfigArgs
///         {
///             SoftwareConfig = new Gcp.Composer.Inputs.EnvironmentConfigSoftwareConfigArgs
///             {
///                 ImageVersion = "composer-1-airflow-2",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/composer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := composer.NewEnvironment(ctx, "test", &composer.EnvironmentArgs{
/// 			Name:   pulumi.String("example-composer-env"),
/// 			Region: pulumi.String("us-central1"),
/// 			Config: &composer.EnvironmentConfigArgs{
/// 				SoftwareConfig: &composer.EnvironmentConfigSoftwareConfigArgs{
/// 					ImageVersion: pulumi.String("composer-1-airflow-2"),
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
/// resource "gcp_composer_environment" "test" {
///   name   = "example-composer-env"
///   region = "us-central1"
///   config = {
///     software_config = {
///       image_version = "composer-1-airflow-2"
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
/// import com.pulumi.gcp.composer.Environment;
/// import com.pulumi.gcp.composer.EnvironmentArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigSoftwareConfigArgs;
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
///         var test = new Environment("test", EnvironmentArgs.builder()
///             .name("example-composer-env")
///             .region("us-central1")
///             .config(EnvironmentConfigArgs.builder()
///                 .softwareConfig(EnvironmentConfigSoftwareConfigArgs.builder()
///                     .imageVersion("composer-1-airflow-2")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:composer:Environment
///     properties:
///       name: example-composer-env
///       region: us-central1
///       config:
///         softwareConfig:
///           imageVersion: composer-1-airflow-2
/// ```
///
///
/// ### With environment resources configuration
///
/// &gt; **Note**
/// To use custom service accounts, you must give at least the
/// `role/composer.worker` role to the service account of the Managed Airflow
/// environment. For more information, see the
/// [Access Control](https://docs.cloud.google.com/composer/docs/composer-3/access-control)
/// page in the Managed Airflow documentation.
/// You might need to assign additional roles depending on specific workflows
/// that the Airflow DAGs will be running.
///
/// ### Environment resources configuration in Managed Airflow (Gen 3)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testAccount = new gcp.serviceaccount.Account("test", {
///     accountId: "composer-env-account",
///     displayName: "Test Service Account for Managed Airflow Environment",
/// });
/// const test = new gcp.composer.Environment("test", {
///     name: "example-composer-env-tf-c3",
///     region: "us-central1",
///     config: {
///         softwareConfig: {
///             imageVersion: "composer-3-airflow-2",
///         },
///         workloadsConfig: {
///             scheduler: {
///                 cpu: 0.5,
///                 memoryGb: 2,
///                 storageGb: 1,
///                 count: 1,
///             },
///             triggerer: {
///                 cpu: 0.5,
///                 memoryGb: 1,
///                 count: 1,
///             },
///             dagProcessor: {
///                 cpu: 1,
///                 memoryGb: 2,
///                 storageGb: 1,
///                 count: 1,
///             },
///             webServer: {
///                 cpu: 0.5,
///                 memoryGb: 2,
///                 storageGb: 1,
///             },
///             worker: {
///                 cpu: 0.5,
///                 memoryGb: 2,
///                 storageGb: 1,
///                 minCount: 1,
///                 maxCount: 3,
///             },
///         },
///         environmentSize: "ENVIRONMENT_SIZE_SMALL",
///         nodeConfig: {
///             serviceAccount: testAccount.name,
///         },
///     },
/// });
/// const composer_worker = new gcp.projects.IAMMember("composer-worker", {
///     project: "your-project-id",
///     role: "roles/composer.worker",
///     member: pulumi.interpolate`serviceAccount:${testAccount.email}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_account = gcp.serviceaccount.Account("test",
///     account_id="composer-env-account",
///     display_name="Test Service Account for Managed Airflow Environment")
/// test = gcp.composer.Environment("test",
///     name="example-composer-env-tf-c3",
///     region="us-central1",
///     config={
///         "software_config": {
///             "image_version": "composer-3-airflow-2",
///         },
///         "workloads_config": {
///             "scheduler": {
///                 "cpu": 0.5,
///                 "memory_gb": float(2),
///                 "storage_gb": float(1),
///                 "count": 1,
///             },
///             "triggerer": {
///                 "cpu": 0.5,
///                 "memory_gb": float(1),
///                 "count": 1,
///             },
///             "dag_processor": {
///                 "cpu": float(1),
///                 "memory_gb": float(2),
///                 "storage_gb": float(1),
///                 "count": 1,
///             },
///             "web_server": {
///                 "cpu": 0.5,
///                 "memory_gb": float(2),
///                 "storage_gb": float(1),
///             },
///             "worker": {
///                 "cpu": 0.5,
///                 "memory_gb": float(2),
///                 "storage_gb": float(1),
///                 "min_count": 1,
///                 "max_count": 3,
///             },
///         },
///         "environment_size": "ENVIRONMENT_SIZE_SMALL",
///         "node_config": {
///             "service_account": test_account.name,
///         },
///     })
/// composer_worker = gcp.projects.IAMMember("composer-worker",
///     project="your-project-id",
///     role="roles/composer.worker",
///     member=test_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testAccount = new Gcp.ServiceAccount.Account("test", new()
///     {
///         AccountId = "composer-env-account",
///         DisplayName = "Test Service Account for Managed Airflow Environment",
///     });
///
///     var test = new Gcp.Composer.Environment("test", new()
///     {
///         Name = "example-composer-env-tf-c3",
///         Region = "us-central1",
///         Config = new Gcp.Composer.Inputs.EnvironmentConfigArgs
///         {
///             SoftwareConfig = new Gcp.Composer.Inputs.EnvironmentConfigSoftwareConfigArgs
///             {
///                 ImageVersion = "composer-3-airflow-2",
///             },
///             WorkloadsConfig = new Gcp.Composer.Inputs.EnvironmentConfigWorkloadsConfigArgs
///             {
///                 Scheduler = new Gcp.Composer.Inputs.EnvironmentConfigWorkloadsConfigSchedulerArgs
///                 {
///                     Cpu = 0.5,
///                     MemoryGb = 2.0,
///                     StorageGb = 1.0,
///                     Count = 1,
///                 },
///                 Triggerer = new Gcp.Composer.Inputs.EnvironmentConfigWorkloadsConfigTriggererArgs
///                 {
///                     Cpu = 0.5,
///                     MemoryGb = 1.0,
///                     Count = 1,
///                 },
///                 DagProcessor = new Gcp.Composer.Inputs.EnvironmentConfigWorkloadsConfigDagProcessorArgs
///                 {
///                     Cpu = 1.0,
///                     MemoryGb = 2.0,
///                     StorageGb = 1.0,
///                     Count = 1,
///                 },
///                 WebServer = new Gcp.Composer.Inputs.EnvironmentConfigWorkloadsConfigWebServerArgs
///                 {
///                     Cpu = 0.5,
///                     MemoryGb = 2.0,
///                     StorageGb = 1.0,
///                 },
///                 Worker = new Gcp.Composer.Inputs.EnvironmentConfigWorkloadsConfigWorkerArgs
///                 {
///                     Cpu = 0.5,
///                     MemoryGb = 2.0,
///                     StorageGb = 1.0,
///                     MinCount = 1,
///                     MaxCount = 3,
///                 },
///             },
///             EnvironmentSize = "ENVIRONMENT_SIZE_SMALL",
///             NodeConfig = new Gcp.Composer.Inputs.EnvironmentConfigNodeConfigArgs
///             {
///                 ServiceAccount = testAccount.Name,
///             },
///         },
///     });
///
///     var composer_worker = new Gcp.Projects.IAMMember("composer-worker", new()
///     {
///         Project = "your-project-id",
///         Role = "roles/composer.worker",
///         Member = testAccount.Email.Apply(email => $"serviceAccount:{email}"),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/composer"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testAccount, err := serviceaccount.NewAccount(ctx, "test", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("composer-env-account"),
/// 			DisplayName: pulumi.String("Test Service Account for Managed Airflow Environment"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = composer.NewEnvironment(ctx, "test", &composer.EnvironmentArgs{
/// 			Name:   pulumi.String("example-composer-env-tf-c3"),
/// 			Region: pulumi.String("us-central1"),
/// 			Config: &composer.EnvironmentConfigArgs{
/// 				SoftwareConfig: &composer.EnvironmentConfigSoftwareConfigArgs{
/// 					ImageVersion: pulumi.String("composer-3-airflow-2"),
/// 				},
/// 				WorkloadsConfig: &composer.EnvironmentConfigWorkloadsConfigArgs{
/// 					Scheduler: &composer.EnvironmentConfigWorkloadsConfigSchedulerArgs{
/// 						Cpu:       pulumi.Float64(0.5),
/// 						MemoryGb:  pulumi.Float64(2),
/// 						StorageGb: pulumi.Float64(1),
/// 						Count:     pulumi.Int(1),
/// 					},
/// 					Triggerer: &composer.EnvironmentConfigWorkloadsConfigTriggererArgs{
/// 						Cpu:      pulumi.Float64(0.5),
/// 						MemoryGb: pulumi.Float64(1),
/// 						Count:    pulumi.Int(1),
/// 					},
/// 					DagProcessor: &composer.EnvironmentConfigWorkloadsConfigDagProcessorArgs{
/// 						Cpu:       pulumi.Float64(1),
/// 						MemoryGb:  pulumi.Float64(2),
/// 						StorageGb: pulumi.Float64(1),
/// 						Count:     pulumi.Int(1),
/// 					},
/// 					WebServer: &composer.EnvironmentConfigWorkloadsConfigWebServerArgs{
/// 						Cpu:       pulumi.Float64(0.5),
/// 						MemoryGb:  pulumi.Float64(2),
/// 						StorageGb: pulumi.Float64(1),
/// 					},
/// 					Worker: &composer.EnvironmentConfigWorkloadsConfigWorkerArgs{
/// 						Cpu:       pulumi.Float64(0.5),
/// 						MemoryGb:  pulumi.Float64(2),
/// 						StorageGb: pulumi.Float64(1),
/// 						MinCount:  pulumi.Int(1),
/// 						MaxCount:  pulumi.Int(3),
/// 					},
/// 				},
/// 				EnvironmentSize: pulumi.String("ENVIRONMENT_SIZE_SMALL"),
/// 				NodeConfig: &composer.EnvironmentConfigNodeConfigArgs{
/// 					ServiceAccount: testAccount.Name,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "composer-worker", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("your-project-id"),
/// 			Role:    pulumi.String("roles/composer.worker"),
/// 			Member: testAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
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
/// resource "gcp_composer_environment" "test" {
///   name   = "example-composer-env-tf-c3"
///   region = "us-central1"
///   config = {
///     software_config = {
///       image_version = "composer-3-airflow-2"
///     }
///     workloads_config = {
///       scheduler = {
///         cpu        = 0.5
///         memory_gb  = 2
///         storage_gb = 1
///         count      = 1
///       }
///       triggerer = {
///         cpu       = 0.5
///         memory_gb = 1
///         count     = 1
///       }
///       dag_processor = {
///         cpu        = 1
///         memory_gb  = 2
///         storage_gb = 1
///         count      = 1
///       }
///       web_server = {
///         cpu        = 0.5
///         memory_gb  = 2
///         storage_gb = 1
///       }
///       worker = {
///         cpu        = 0.5
///         memory_gb  = 2
///         storage_gb = 1
///         min_count  = 1
///         max_count  = 3
///       }
///     }
///     environment_size = "ENVIRONMENT_SIZE_SMALL"
///     node_config = {
///       service_account = gcp_serviceaccount_account.test.name
///     }
///   }
/// }
/// resource "gcp_serviceaccount_account" "test" {
///   account_id   = "composer-env-account"
///   display_name = "Test Service Account for Managed Airflow Environment"
/// }
/// resource "gcp_projects_iammember" "composer-worker" {
///   project = "your-project-id"
///   role    = "roles/composer.worker"
///   member  ="serviceAccount:${gcp_serviceaccount_account.test.email}"
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
/// import com.pulumi.gcp.composer.Environment;
/// import com.pulumi.gcp.composer.EnvironmentArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigSoftwareConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigWorkloadsConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigWorkloadsConfigSchedulerArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigWorkloadsConfigTriggererArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigWorkloadsConfigDagProcessorArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigWorkloadsConfigWebServerArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigWorkloadsConfigWorkerArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigNodeConfigArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
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
///         var testAccount = new Account("testAccount", AccountArgs.builder()
///             .accountId("composer-env-account")
///             .displayName("Test Service Account for Managed Airflow Environment")
///             .build());
///
///         var test = new Environment("test", EnvironmentArgs.builder()
///             .name("example-composer-env-tf-c3")
///             .region("us-central1")
///             .config(EnvironmentConfigArgs.builder()
///                 .softwareConfig(EnvironmentConfigSoftwareConfigArgs.builder()
///                     .imageVersion("composer-3-airflow-2")
///                     .build())
///                 .workloadsConfig(EnvironmentConfigWorkloadsConfigArgs.builder()
///                     .scheduler(EnvironmentConfigWorkloadsConfigSchedulerArgs.builder()
///                         .cpu(0.5)
///                         .memoryGb(2.0)
///                         .storageGb(1.0)
///                         .count(1)
///                         .build())
///                     .triggerer(EnvironmentConfigWorkloadsConfigTriggererArgs.builder()
///                         .cpu(0.5)
///                         .memoryGb(1.0)
///                         .count(1)
///                         .build())
///                     .dagProcessor(EnvironmentConfigWorkloadsConfigDagProcessorArgs.builder()
///                         .cpu(1.0)
///                         .memoryGb(2.0)
///                         .storageGb(1.0)
///                         .count(1)
///                         .build())
///                     .webServer(EnvironmentConfigWorkloadsConfigWebServerArgs.builder()
///                         .cpu(0.5)
///                         .memoryGb(2.0)
///                         .storageGb(1.0)
///                         .build())
///                     .worker(EnvironmentConfigWorkloadsConfigWorkerArgs.builder()
///                         .cpu(0.5)
///                         .memoryGb(2.0)
///                         .storageGb(1.0)
///                         .minCount(1)
///                         .maxCount(3)
///                         .build())
///                     .build())
///                 .environmentSize("ENVIRONMENT_SIZE_SMALL")
///                 .nodeConfig(EnvironmentConfigNodeConfigArgs.builder()
///                     .serviceAccount(testAccount.name())
///                     .build())
///                 .build())
///             .build());
///
///         var composer_worker = new IAMMember("composer-worker", IAMMemberArgs.builder()
///             .project("your-project-id")
///             .role("roles/composer.worker")
///             .member(testAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:composer:Environment
///     properties:
///       name: example-composer-env-tf-c3
///       region: us-central1
///       config:
///         softwareConfig:
///           imageVersion: composer-3-airflow-2
///         workloadsConfig:
///           scheduler:
///             cpu: 0.5
///             memoryGb: 2
///             storageGb: 1
///             count: 1
///           triggerer:
///             cpu: 0.5
///             memoryGb: 1
///             count: 1
///           dagProcessor:
///             cpu: 1
///             memoryGb: 2
///             storageGb: 1
///             count: 1
///           webServer:
///             cpu: 0.5
///             memoryGb: 2
///             storageGb: 1
///           worker:
///             cpu: 0.5
///             memoryGb: 2
///             storageGb: 1
///             minCount: 1
///             maxCount: 3
///         environmentSize: ENVIRONMENT_SIZE_SMALL
///         nodeConfig:
///           serviceAccount: ${testAccount.name}
///   testAccount:
///     type: gcp:serviceaccount:Account
///     name: test
///     properties:
///       accountId: composer-env-account
///       displayName: Test Service Account for Managed Airflow Environment
///   composer-worker:
///     type: gcp:projects:IAMMember
///     properties:
///       project: your-project-id
///       role: roles/composer.worker
///       member: serviceAccount:${testAccount.email}
/// ```
///
///
/// ### Environment resources configuration in Managed Airflow (Gen 2)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testNetwork = new gcp.compute.Network("test", {
///     name: "composer-test-network3",
///     autoCreateSubnetworks: false,
/// });
/// const testSubnetwork = new gcp.compute.Subnetwork("test", {
///     name: "composer-test-subnetwork",
///     ipCidrRange: "10.2.0.0/16",
///     region: "us-central1",
///     network: testNetwork.id,
/// });
/// const testAccount = new gcp.serviceaccount.Account("test", {
///     accountId: "composer-env-account",
///     displayName: "Test Service Account for Managed Airflow",
/// });
/// const test = new gcp.composer.Environment("test", {
///     name: "example-composer-env-tf-c2",
///     region: "us-central1",
///     config: {
///         softwareConfig: {
///             imageVersion: "composer-2-airflow-2",
///         },
///         workloadsConfig: {
///             scheduler: {
///                 cpu: 0.5,
///                 memoryGb: 1.875,
///                 storageGb: 1,
///                 count: 1,
///             },
///             webServer: {
///                 cpu: 0.5,
///                 memoryGb: 1.875,
///                 storageGb: 1,
///             },
///             worker: {
///                 cpu: 0.5,
///                 memoryGb: 1.875,
///                 storageGb: 1,
///                 minCount: 1,
///                 maxCount: 3,
///             },
///         },
///         environmentSize: "ENVIRONMENT_SIZE_SMALL",
///         nodeConfig: {
///             network: testNetwork.id,
///             subnetwork: testSubnetwork.id,
///             serviceAccount: testAccount.name,
///         },
///     },
/// });
/// const composer_worker = new gcp.projects.IAMMember("composer-worker", {
///     project: "your-project-id",
///     role: "roles/composer.worker",
///     member: pulumi.interpolate`serviceAccount:${testAccount.email}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_network = gcp.compute.Network("test",
///     name="composer-test-network3",
///     auto_create_subnetworks=False)
/// test_subnetwork = gcp.compute.Subnetwork("test",
///     name="composer-test-subnetwork",
///     ip_cidr_range="10.2.0.0/16",
///     region="us-central1",
///     network=test_network.id)
/// test_account = gcp.serviceaccount.Account("test",
///     account_id="composer-env-account",
///     display_name="Test Service Account for Managed Airflow")
/// test = gcp.composer.Environment("test",
///     name="example-composer-env-tf-c2",
///     region="us-central1",
///     config={
///         "software_config": {
///             "image_version": "composer-2-airflow-2",
///         },
///         "workloads_config": {
///             "scheduler": {
///                 "cpu": 0.5,
///                 "memory_gb": 1.875,
///                 "storage_gb": float(1),
///                 "count": 1,
///             },
///             "web_server": {
///                 "cpu": 0.5,
///                 "memory_gb": 1.875,
///                 "storage_gb": float(1),
///             },
///             "worker": {
///                 "cpu": 0.5,
///                 "memory_gb": 1.875,
///                 "storage_gb": float(1),
///                 "min_count": 1,
///                 "max_count": 3,
///             },
///         },
///         "environment_size": "ENVIRONMENT_SIZE_SMALL",
///         "node_config": {
///             "network": test_network.id,
///             "subnetwork": test_subnetwork.id,
///             "service_account": test_account.name,
///         },
///     })
/// composer_worker = gcp.projects.IAMMember("composer-worker",
///     project="your-project-id",
///     role="roles/composer.worker",
///     member=test_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testNetwork = new Gcp.Compute.Network("test", new()
///     {
///         Name = "composer-test-network3",
///         AutoCreateSubnetworks = false,
///     });
///
///     var testSubnetwork = new Gcp.Compute.Subnetwork("test", new()
///     {
///         Name = "composer-test-subnetwork",
///         IpCidrRange = "10.2.0.0/16",
///         Region = "us-central1",
///         Network = testNetwork.Id,
///     });
///
///     var testAccount = new Gcp.ServiceAccount.Account("test", new()
///     {
///         AccountId = "composer-env-account",
///         DisplayName = "Test Service Account for Managed Airflow",
///     });
///
///     var test = new Gcp.Composer.Environment("test", new()
///     {
///         Name = "example-composer-env-tf-c2",
///         Region = "us-central1",
///         Config = new Gcp.Composer.Inputs.EnvironmentConfigArgs
///         {
///             SoftwareConfig = new Gcp.Composer.Inputs.EnvironmentConfigSoftwareConfigArgs
///             {
///                 ImageVersion = "composer-2-airflow-2",
///             },
///             WorkloadsConfig = new Gcp.Composer.Inputs.EnvironmentConfigWorkloadsConfigArgs
///             {
///                 Scheduler = new Gcp.Composer.Inputs.EnvironmentConfigWorkloadsConfigSchedulerArgs
///                 {
///                     Cpu = 0.5,
///                     MemoryGb = 1.875,
///                     StorageGb = 1.0,
///                     Count = 1,
///                 },
///                 WebServer = new Gcp.Composer.Inputs.EnvironmentConfigWorkloadsConfigWebServerArgs
///                 {
///                     Cpu = 0.5,
///                     MemoryGb = 1.875,
///                     StorageGb = 1.0,
///                 },
///                 Worker = new Gcp.Composer.Inputs.EnvironmentConfigWorkloadsConfigWorkerArgs
///                 {
///                     Cpu = 0.5,
///                     MemoryGb = 1.875,
///                     StorageGb = 1.0,
///                     MinCount = 1,
///                     MaxCount = 3,
///                 },
///             },
///             EnvironmentSize = "ENVIRONMENT_SIZE_SMALL",
///             NodeConfig = new Gcp.Composer.Inputs.EnvironmentConfigNodeConfigArgs
///             {
///                 Network = testNetwork.Id,
///                 Subnetwork = testSubnetwork.Id,
///                 ServiceAccount = testAccount.Name,
///             },
///         },
///     });
///
///     var composer_worker = new Gcp.Projects.IAMMember("composer-worker", new()
///     {
///         Project = "your-project-id",
///         Role = "roles/composer.worker",
///         Member = testAccount.Email.Apply(email => $"serviceAccount:{email}"),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/composer"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testNetwork, err := compute.NewNetwork(ctx, "test", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("composer-test-network3"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testSubnetwork, err := compute.NewSubnetwork(ctx, "test", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("composer-test-subnetwork"),
/// 			IpCidrRange: pulumi.String("10.2.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     testNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testAccount, err := serviceaccount.NewAccount(ctx, "test", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("composer-env-account"),
/// 			DisplayName: pulumi.String("Test Service Account for Managed Airflow"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = composer.NewEnvironment(ctx, "test", &composer.EnvironmentArgs{
/// 			Name:   pulumi.String("example-composer-env-tf-c2"),
/// 			Region: pulumi.String("us-central1"),
/// 			Config: &composer.EnvironmentConfigArgs{
/// 				SoftwareConfig: &composer.EnvironmentConfigSoftwareConfigArgs{
/// 					ImageVersion: pulumi.String("composer-2-airflow-2"),
/// 				},
/// 				WorkloadsConfig: &composer.EnvironmentConfigWorkloadsConfigArgs{
/// 					Scheduler: &composer.EnvironmentConfigWorkloadsConfigSchedulerArgs{
/// 						Cpu:       pulumi.Float64(0.5),
/// 						MemoryGb:  pulumi.Float64(1.875),
/// 						StorageGb: pulumi.Float64(1),
/// 						Count:     pulumi.Int(1),
/// 					},
/// 					WebServer: &composer.EnvironmentConfigWorkloadsConfigWebServerArgs{
/// 						Cpu:       pulumi.Float64(0.5),
/// 						MemoryGb:  pulumi.Float64(1.875),
/// 						StorageGb: pulumi.Float64(1),
/// 					},
/// 					Worker: &composer.EnvironmentConfigWorkloadsConfigWorkerArgs{
/// 						Cpu:       pulumi.Float64(0.5),
/// 						MemoryGb:  pulumi.Float64(1.875),
/// 						StorageGb: pulumi.Float64(1),
/// 						MinCount:  pulumi.Int(1),
/// 						MaxCount:  pulumi.Int(3),
/// 					},
/// 				},
/// 				EnvironmentSize: pulumi.String("ENVIRONMENT_SIZE_SMALL"),
/// 				NodeConfig: &composer.EnvironmentConfigNodeConfigArgs{
/// 					Network:        testNetwork.ID().ToIDOutput().ToStringOutput(),
/// 					Subnetwork:     testSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 					ServiceAccount: testAccount.Name,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "composer-worker", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("your-project-id"),
/// 			Role:    pulumi.String("roles/composer.worker"),
/// 			Member: testAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
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
/// resource "gcp_composer_environment" "test" {
///   name   = "example-composer-env-tf-c2"
///   region = "us-central1"
///   config = {
///     software_config = {
///       image_version = "composer-2-airflow-2"
///     }
///     workloads_config = {
///       scheduler = {
///         cpu        = 0.5
///         memory_gb  = 1.875
///         storage_gb = 1
///         count      = 1
///       }
///       web_server = {
///         cpu        = 0.5
///         memory_gb  = 1.875
///         storage_gb = 1
///       }
///       worker = {
///         cpu        = 0.5
///         memory_gb  = 1.875
///         storage_gb = 1
///         min_count  = 1
///         max_count  = 3
///       }
///     }
///     environment_size = "ENVIRONMENT_SIZE_SMALL"
///     node_config = {
///       network         = gcp_compute_network.test.id
///       subnetwork      = gcp_compute_subnetwork.test.id
///       service_account = gcp_serviceaccount_account.test.name
///     }
///   }
/// }
/// resource "gcp_compute_network" "test" {
///   name                    = "composer-test-network3"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "test" {
///   name          = "composer-test-subnetwork"
///   ip_cidr_range = "10.2.0.0/16"
///   region        = "us-central1"
///   network       = gcp_compute_network.test.id
/// }
/// resource "gcp_serviceaccount_account" "test" {
///   account_id   = "composer-env-account"
///   display_name = "Test Service Account for Managed Airflow"
/// }
/// resource "gcp_projects_iammember" "composer-worker" {
///   project = "your-project-id"
///   role    = "roles/composer.worker"
///   member  ="serviceAccount:${gcp_serviceaccount_account.test.email}"
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
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.composer.Environment;
/// import com.pulumi.gcp.composer.EnvironmentArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigSoftwareConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigWorkloadsConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigWorkloadsConfigSchedulerArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigWorkloadsConfigWebServerArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigWorkloadsConfigWorkerArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigNodeConfigArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
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
///         var testNetwork = new Network("testNetwork", NetworkArgs.builder()
///             .name("composer-test-network3")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var testSubnetwork = new Subnetwork("testSubnetwork", SubnetworkArgs.builder()
///             .name("composer-test-subnetwork")
///             .ipCidrRange("10.2.0.0/16")
///             .region("us-central1")
///             .network(testNetwork.id())
///             .build());
///
///         var testAccount = new Account("testAccount", AccountArgs.builder()
///             .accountId("composer-env-account")
///             .displayName("Test Service Account for Managed Airflow")
///             .build());
///
///         var test = new Environment("test", EnvironmentArgs.builder()
///             .name("example-composer-env-tf-c2")
///             .region("us-central1")
///             .config(EnvironmentConfigArgs.builder()
///                 .softwareConfig(EnvironmentConfigSoftwareConfigArgs.builder()
///                     .imageVersion("composer-2-airflow-2")
///                     .build())
///                 .workloadsConfig(EnvironmentConfigWorkloadsConfigArgs.builder()
///                     .scheduler(EnvironmentConfigWorkloadsConfigSchedulerArgs.builder()
///                         .cpu(0.5)
///                         .memoryGb(1.875)
///                         .storageGb(1.0)
///                         .count(1)
///                         .build())
///                     .webServer(EnvironmentConfigWorkloadsConfigWebServerArgs.builder()
///                         .cpu(0.5)
///                         .memoryGb(1.875)
///                         .storageGb(1.0)
///                         .build())
///                     .worker(EnvironmentConfigWorkloadsConfigWorkerArgs.builder()
///                         .cpu(0.5)
///                         .memoryGb(1.875)
///                         .storageGb(1.0)
///                         .minCount(1)
///                         .maxCount(3)
///                         .build())
///                     .build())
///                 .environmentSize("ENVIRONMENT_SIZE_SMALL")
///                 .nodeConfig(EnvironmentConfigNodeConfigArgs.builder()
///                     .network(testNetwork.id())
///                     .subnetwork(testSubnetwork.id())
///                     .serviceAccount(testAccount.name())
///                     .build())
///                 .build())
///             .build());
///
///         var composer_worker = new IAMMember("composer-worker", IAMMemberArgs.builder()
///             .project("your-project-id")
///             .role("roles/composer.worker")
///             .member(testAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:composer:Environment
///     properties:
///       name: example-composer-env-tf-c2
///       region: us-central1
///       config:
///         softwareConfig:
///           imageVersion: composer-2-airflow-2
///         workloadsConfig:
///           scheduler:
///             cpu: 0.5
///             memoryGb: 1.875
///             storageGb: 1
///             count: 1
///           webServer:
///             cpu: 0.5
///             memoryGb: 1.875
///             storageGb: 1
///           worker:
///             cpu: 0.5
///             memoryGb: 1.875
///             storageGb: 1
///             minCount: 1
///             maxCount: 3
///         environmentSize: ENVIRONMENT_SIZE_SMALL
///         nodeConfig:
///           network: ${testNetwork.id}
///           subnetwork: ${testSubnetwork.id}
///           serviceAccount: ${testAccount.name}
///   testNetwork:
///     type: gcp:compute:Network
///     name: test
///     properties:
///       name: composer-test-network3
///       autoCreateSubnetworks: false
///   testSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: test
///     properties:
///       name: composer-test-subnetwork
///       ipCidrRange: 10.2.0.0/16
///       region: us-central1
///       network: ${testNetwork.id}
///   testAccount:
///     type: gcp:serviceaccount:Account
///     name: test
///     properties:
///       accountId: composer-env-account
///       displayName: Test Service Account for Managed Airflow
///   composer-worker:
///     type: gcp:projects:IAMMember
///     properties:
///       project: your-project-id
///       role: roles/composer.worker
///       member: serviceAccount:${testAccount.email}
/// ```
///
///
/// ### Environment resources configuration in Managed Airflow (Legacy Gen 1)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testNetwork = new gcp.compute.Network("test", {
///     name: "composer-test-network",
///     autoCreateSubnetworks: false,
/// });
/// const testSubnetwork = new gcp.compute.Subnetwork("test", {
///     name: "composer-test-subnetwork",
///     ipCidrRange: "10.2.0.0/16",
///     region: "us-central1",
///     network: testNetwork.id,
/// });
/// const testAccount = new gcp.serviceaccount.Account("test", {
///     accountId: "composer-env-account",
///     displayName: "Test Service Account for Managed Airflow",
/// });
/// const test = new gcp.composer.Environment("test", {
///     name: "example-composer-env",
///     region: "us-central1",
///     config: {
///         softwareConfig: {
///             imageVersion: "composer-1-airflow-2",
///         },
///         nodeCount: 4,
///         nodeConfig: {
///             zone: "us-central1-a",
///             machineType: "n1-standard-1",
///             network: testNetwork.id,
///             subnetwork: testSubnetwork.id,
///             serviceAccount: testAccount.name,
///         },
///         databaseConfig: {
///             machineType: "db-n1-standard-2",
///         },
///         webServerConfig: {
///             machineType: "composer-n1-webserver-2",
///         },
///     },
/// });
/// const composer_worker = new gcp.projects.IAMMember("composer-worker", {
///     role: "roles/composer.worker",
///     member: pulumi.interpolate`serviceAccount:${testAccount.email}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_network = gcp.compute.Network("test",
///     name="composer-test-network",
///     auto_create_subnetworks=False)
/// test_subnetwork = gcp.compute.Subnetwork("test",
///     name="composer-test-subnetwork",
///     ip_cidr_range="10.2.0.0/16",
///     region="us-central1",
///     network=test_network.id)
/// test_account = gcp.serviceaccount.Account("test",
///     account_id="composer-env-account",
///     display_name="Test Service Account for Managed Airflow")
/// test = gcp.composer.Environment("test",
///     name="example-composer-env",
///     region="us-central1",
///     config={
///         "software_config": {
///             "image_version": "composer-1-airflow-2",
///         },
///         "node_count": 4,
///         "node_config": {
///             "zone": "us-central1-a",
///             "machine_type": "n1-standard-1",
///             "network": test_network.id,
///             "subnetwork": test_subnetwork.id,
///             "service_account": test_account.name,
///         },
///         "database_config": {
///             "machine_type": "db-n1-standard-2",
///         },
///         "web_server_config": {
///             "machine_type": "composer-n1-webserver-2",
///         },
///     })
/// composer_worker = gcp.projects.IAMMember("composer-worker",
///     role="roles/composer.worker",
///     member=test_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testNetwork = new Gcp.Compute.Network("test", new()
///     {
///         Name = "composer-test-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var testSubnetwork = new Gcp.Compute.Subnetwork("test", new()
///     {
///         Name = "composer-test-subnetwork",
///         IpCidrRange = "10.2.0.0/16",
///         Region = "us-central1",
///         Network = testNetwork.Id,
///     });
///
///     var testAccount = new Gcp.ServiceAccount.Account("test", new()
///     {
///         AccountId = "composer-env-account",
///         DisplayName = "Test Service Account for Managed Airflow",
///     });
///
///     var test = new Gcp.Composer.Environment("test", new()
///     {
///         Name = "example-composer-env",
///         Region = "us-central1",
///         Config = new Gcp.Composer.Inputs.EnvironmentConfigArgs
///         {
///             SoftwareConfig = new Gcp.Composer.Inputs.EnvironmentConfigSoftwareConfigArgs
///             {
///                 ImageVersion = "composer-1-airflow-2",
///             },
///             NodeCount = 4,
///             NodeConfig = new Gcp.Composer.Inputs.EnvironmentConfigNodeConfigArgs
///             {
///                 Zone = "us-central1-a",
///                 MachineType = "n1-standard-1",
///                 Network = testNetwork.Id,
///                 Subnetwork = testSubnetwork.Id,
///                 ServiceAccount = testAccount.Name,
///             },
///             DatabaseConfig = new Gcp.Composer.Inputs.EnvironmentConfigDatabaseConfigArgs
///             {
///                 MachineType = "db-n1-standard-2",
///             },
///             WebServerConfig = new Gcp.Composer.Inputs.EnvironmentConfigWebServerConfigArgs
///             {
///                 MachineType = "composer-n1-webserver-2",
///             },
///         },
///     });
///
///     var composer_worker = new Gcp.Projects.IAMMember("composer-worker", new()
///     {
///         Role = "roles/composer.worker",
///         Member = testAccount.Email.Apply(email => $"serviceAccount:{email}"),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/composer"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testNetwork, err := compute.NewNetwork(ctx, "test", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("composer-test-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testSubnetwork, err := compute.NewSubnetwork(ctx, "test", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("composer-test-subnetwork"),
/// 			IpCidrRange: pulumi.String("10.2.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     testNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testAccount, err := serviceaccount.NewAccount(ctx, "test", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("composer-env-account"),
/// 			DisplayName: pulumi.String("Test Service Account for Managed Airflow"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = composer.NewEnvironment(ctx, "test", &composer.EnvironmentArgs{
/// 			Name:   pulumi.String("example-composer-env"),
/// 			Region: pulumi.String("us-central1"),
/// 			Config: &composer.EnvironmentConfigArgs{
/// 				SoftwareConfig: &composer.EnvironmentConfigSoftwareConfigArgs{
/// 					ImageVersion: pulumi.String("composer-1-airflow-2"),
/// 				},
/// 				NodeCount: pulumi.Int(4),
/// 				NodeConfig: &composer.EnvironmentConfigNodeConfigArgs{
/// 					Zone:           pulumi.String("us-central1-a"),
/// 					MachineType:    pulumi.String("n1-standard-1"),
/// 					Network:        testNetwork.ID().ToIDOutput().ToStringOutput(),
/// 					Subnetwork:     testSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 					ServiceAccount: testAccount.Name,
/// 				},
/// 				DatabaseConfig: &composer.EnvironmentConfigDatabaseConfigArgs{
/// 					MachineType: pulumi.String("db-n1-standard-2"),
/// 				},
/// 				WebServerConfig: &composer.EnvironmentConfigWebServerConfigArgs{
/// 					MachineType: pulumi.String("composer-n1-webserver-2"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "composer-worker", &projects.IAMMemberArgs{
/// 			Role: pulumi.String("roles/composer.worker"),
/// 			Member: testAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
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
/// resource "gcp_composer_environment" "test" {
///   name   = "example-composer-env"
///   region = "us-central1"
///   config = {
///     software_config = {
///       image_version = "composer-1-airflow-2"
///     }
///     node_count = 4
///     node_config = {
///       zone            = "us-central1-a"
///       machine_type    = "n1-standard-1"
///       network         = gcp_compute_network.test.id
///       subnetwork      = gcp_compute_subnetwork.test.id
///       service_account = gcp_serviceaccount_account.test.name
///     }
///     database_config = {
///       machine_type = "db-n1-standard-2"
///     }
///     web_server_config = {
///       machine_type = "composer-n1-webserver-2"
///     }
///   }
/// }
/// resource "gcp_compute_network" "test" {
///   name                    = "composer-test-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "test" {
///   name          = "composer-test-subnetwork"
///   ip_cidr_range = "10.2.0.0/16"
///   region        = "us-central1"
///   network       = gcp_compute_network.test.id
/// }
/// resource "gcp_serviceaccount_account" "test" {
///   account_id   = "composer-env-account"
///   display_name = "Test Service Account for Managed Airflow"
/// }
/// resource "gcp_projects_iammember" "composer-worker" {
///   role   = "roles/composer.worker"
///   member ="serviceAccount:${gcp_serviceaccount_account.test.email}"
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
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.composer.Environment;
/// import com.pulumi.gcp.composer.EnvironmentArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigSoftwareConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigNodeConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigDatabaseConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigWebServerConfigArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
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
///         var testNetwork = new Network("testNetwork", NetworkArgs.builder()
///             .name("composer-test-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var testSubnetwork = new Subnetwork("testSubnetwork", SubnetworkArgs.builder()
///             .name("composer-test-subnetwork")
///             .ipCidrRange("10.2.0.0/16")
///             .region("us-central1")
///             .network(testNetwork.id())
///             .build());
///
///         var testAccount = new Account("testAccount", AccountArgs.builder()
///             .accountId("composer-env-account")
///             .displayName("Test Service Account for Managed Airflow")
///             .build());
///
///         var test = new Environment("test", EnvironmentArgs.builder()
///             .name("example-composer-env")
///             .region("us-central1")
///             .config(EnvironmentConfigArgs.builder()
///                 .softwareConfig(EnvironmentConfigSoftwareConfigArgs.builder()
///                     .imageVersion("composer-1-airflow-2")
///                     .build())
///                 .nodeCount(4)
///                 .nodeConfig(EnvironmentConfigNodeConfigArgs.builder()
///                     .zone("us-central1-a")
///                     .machineType("n1-standard-1")
///                     .network(testNetwork.id())
///                     .subnetwork(testSubnetwork.id())
///                     .serviceAccount(testAccount.name())
///                     .build())
///                 .databaseConfig(EnvironmentConfigDatabaseConfigArgs.builder()
///                     .machineType("db-n1-standard-2")
///                     .build())
///                 .webServerConfig(EnvironmentConfigWebServerConfigArgs.builder()
///                     .machineType("composer-n1-webserver-2")
///                     .build())
///                 .build())
///             .build());
///
///         var composer_worker = new IAMMember("composer-worker", IAMMemberArgs.builder()
///             .role("roles/composer.worker")
///             .member(testAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:composer:Environment
///     properties:
///       name: example-composer-env
///       region: us-central1
///       config:
///         softwareConfig:
///           imageVersion: composer-1-airflow-2
///         nodeCount: 4
///         nodeConfig:
///           zone: us-central1-a
///           machineType: n1-standard-1
///           network: ${testNetwork.id}
///           subnetwork: ${testSubnetwork.id}
///           serviceAccount: ${testAccount.name}
///         databaseConfig:
///           machineType: db-n1-standard-2
///         webServerConfig:
///           machineType: composer-n1-webserver-2
///   testNetwork:
///     type: gcp:compute:Network
///     name: test
///     properties:
///       name: composer-test-network
///       autoCreateSubnetworks: false
///   testSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: test
///     properties:
///       name: composer-test-subnetwork
///       ipCidrRange: 10.2.0.0/16
///       region: us-central1
///       network: ${testNetwork.id}
///   testAccount:
///     type: gcp:serviceaccount:Account
///     name: test
///     properties:
///       accountId: composer-env-account
///       displayName: Test Service Account for Managed Airflow
///   composer-worker:
///     type: gcp:projects:IAMMember
///     properties:
///       role: roles/composer.worker
///       member: serviceAccount:${testAccount.email}
/// ```
///
///
/// ### Networking configuration in Managed Airflow (Gen 3)
///
/// In Managed Airflow (Gen 3), networking configuration is simplified compared to
/// previous versions. You don't need to specify network ranges, and can attach
/// custom VPC networks to your environment.
///
/// &gt; **Note**
/// It's not possible to detach a VPC network using Terraform. Instead, you can
/// attach a different VPC network in its place, or detach the network using
/// other tools like Google Cloud CLI.
///
/// Use Private IP networking:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.composer.Environment("example", {
///     name: "example-environment",
///     region: "us-central1",
///     config: {
///         enablePrivateEnvironment: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.composer.Environment("example",
///     name="example-environment",
///     region="us-central1",
///     config={
///         "enable_private_environment": True,
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
///     var example = new Gcp.Composer.Environment("example", new()
///     {
///         Name = "example-environment",
///         Region = "us-central1",
///         Config = new Gcp.Composer.Inputs.EnvironmentConfigArgs
///         {
///             EnablePrivateEnvironment = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/composer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := composer.NewEnvironment(ctx, "example", &composer.EnvironmentArgs{
/// 			Name:   pulumi.String("example-environment"),
/// 			Region: pulumi.String("us-central1"),
/// 			Config: &composer.EnvironmentConfigArgs{
/// 				EnablePrivateEnvironment: pulumi.Bool(true),
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
/// resource "gcp_composer_environment" "example" {
///   name   = "example-environment"
///   region = "us-central1"
///   config = {
///     enable_private_environment = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.composer.Environment;
/// import com.pulumi.gcp.composer.EnvironmentArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigArgs;
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
///         var example = new Environment("example", EnvironmentArgs.builder()
///             .name("example-environment")
///             .region("us-central1")
///             .config(EnvironmentConfigArgs.builder()
///                 .enablePrivateEnvironment(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:composer:Environment
///     properties:
///       name: example-environment
///       region: us-central1
///       config:
///         enablePrivateEnvironment: true
/// ```
///
///
/// Attach a custom VPC network (Managed Airflow creates a new network attachment):
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.composer.Environment("example", {
///     name: "example-environment",
///     region: "us-central1",
///     config: {
///         nodeConfig: {
///             network: "projects/example-project/global/networks/example-network",
///             subnetwork: "projects/example-project/regions/us-central1/subnetworks/example-subnetwork",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.composer.Environment("example",
///     name="example-environment",
///     region="us-central1",
///     config={
///         "node_config": {
///             "network": "projects/example-project/global/networks/example-network",
///             "subnetwork": "projects/example-project/regions/us-central1/subnetworks/example-subnetwork",
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
///     var example = new Gcp.Composer.Environment("example", new()
///     {
///         Name = "example-environment",
///         Region = "us-central1",
///         Config = new Gcp.Composer.Inputs.EnvironmentConfigArgs
///         {
///             NodeConfig = new Gcp.Composer.Inputs.EnvironmentConfigNodeConfigArgs
///             {
///                 Network = "projects/example-project/global/networks/example-network",
///                 Subnetwork = "projects/example-project/regions/us-central1/subnetworks/example-subnetwork",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/composer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := composer.NewEnvironment(ctx, "example", &composer.EnvironmentArgs{
/// 			Name:   pulumi.String("example-environment"),
/// 			Region: pulumi.String("us-central1"),
/// 			Config: &composer.EnvironmentConfigArgs{
/// 				NodeConfig: &composer.EnvironmentConfigNodeConfigArgs{
/// 					Network:    pulumi.String("projects/example-project/global/networks/example-network"),
/// 					Subnetwork: pulumi.String("projects/example-project/regions/us-central1/subnetworks/example-subnetwork"),
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
/// resource "gcp_composer_environment" "example" {
///   name   = "example-environment"
///   region = "us-central1"
///   config = {
///     node_config = {
///       network    = "projects/example-project/global/networks/example-network"
///       subnetwork = "projects/example-project/regions/us-central1/subnetworks/example-subnetwork"
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
/// import com.pulumi.gcp.composer.Environment;
/// import com.pulumi.gcp.composer.EnvironmentArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigNodeConfigArgs;
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
///         var example = new Environment("example", EnvironmentArgs.builder()
///             .name("example-environment")
///             .region("us-central1")
///             .config(EnvironmentConfigArgs.builder()
///                 .nodeConfig(EnvironmentConfigNodeConfigArgs.builder()
///                     .network("projects/example-project/global/networks/example-network")
///                     .subnetwork("projects/example-project/regions/us-central1/subnetworks/example-subnetwork")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:composer:Environment
///     properties:
///       name: example-environment
///       region: us-central1
///       config:
///         nodeConfig:
///           network: projects/example-project/global/networks/example-network
///           subnetwork: projects/example-project/regions/us-central1/subnetworks/example-subnetwork
/// ```
///
///
/// Attach a custom VPC network (use an existing network attachment):
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.composer.Environment("example", {
///     name: "example-environment",
///     region: "us-central1",
///     config: {
///         nodeConfig: {
///             composerNetworkAttachment: String(Number(projects) / Number(example_project) / Number(regions) / Number(us_central1) / Number(networkAttachments) / Number(example_network_attachment)),
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.composer.Environment("example",
///     name="example-environment",
///     region="us-central1",
///     config={
///         "node_config": {
///             "composer_network_attachment": str(float(projects) / float(example_project) / float(regions) / float(us_central1) / float(network_attachments) / float(example_network_attachment)),
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
///     var example = new Gcp.Composer.Environment("example", new()
///     {
///         Name = "example-environment",
///         Region = "us-central1",
///         Config = new Gcp.Composer.Inputs.EnvironmentConfigArgs
///         {
///             NodeConfig = new Gcp.Composer.Inputs.EnvironmentConfigNodeConfigArgs
///             {
///                 ComposerNetworkAttachment = (double.Parse(projects, System.Globalization.CultureInfo.InvariantCulture) / double.Parse(example_project, System.Globalization.CultureInfo.InvariantCulture) / double.Parse(regions, System.Globalization.CultureInfo.InvariantCulture) / double.Parse(us_central1, System.Globalization.CultureInfo.InvariantCulture) / double.Parse(networkAttachments, System.Globalization.CultureInfo.InvariantCulture) / double.Parse(example_network_attachment, System.Globalization.CultureInfo.InvariantCulture)).ToString(System.Globalization.CultureInfo.InvariantCulture),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/composer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := composer.NewEnvironment(ctx, "example", &composer.EnvironmentArgs{
/// 			Name:   pulumi.String("example-environment"),
/// 			Region: pulumi.String("us-central1"),
/// 			Config: &composer.EnvironmentConfigArgs{
/// 				NodeConfig: &composer.EnvironmentConfigNodeConfigArgs{
/// 					ComposerNetworkAttachment: pulumi.String(projects / example_project / regions / us_central1 / networkAttachments / example_network_attachment),
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
/// resource "gcp_composer_environment" "example" {
///   name   = "example-environment"
///   region = "us-central1"
///   config = {
///     node_config = {
///       composer_network_attachment = projects / example-project / regions / us-central1 / networkAttachments / example-network-attachment
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
/// import com.pulumi.gcp.composer.Environment;
/// import com.pulumi.gcp.composer.EnvironmentArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigNodeConfigArgs;
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
///         var example = new Environment("example", EnvironmentArgs.builder()
///             .name("example-environment")
///             .region("us-central1")
///             .config(EnvironmentConfigArgs.builder()
///                 .nodeConfig(EnvironmentConfigNodeConfigArgs.builder()
///                     .composerNetworkAttachment(Output.tuple(((Number) projects).doubleValue(), ((Number) example_project).doubleValue(), ((Number) regions).doubleValue(), ((Number) us_central1).doubleValue(), ((Number) networkAttachments).doubleValue(), ((Number) example_network_attachment).doubleValue()).applyValue(values -> {
///                         var __convert = values.t1;
///                         var __convert1 = values.t2;
///                         var __convert2 = values.t3;
///                         var __convert3 = values.t4;
///                         var __convert4 = values.t5;
///                         var __convert5 = values.t6;
///                         return __convert / __convert1 / __convert2 / __convert3 / __convert4 / __convert5;
///                     }).applyValue(_n -> _n))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
///
///
/// If you specify an existing network attachment that you also manage in
/// Terraform, then Terraform will revert changes to the attachment that were done
/// by Managed Airflow when you apply configuration changes. As a result, the
/// environment will no longer use the attachment. To address this, make sure that
/// Terraform ignores changes to the `producerAcceptLists` parameter of the
/// attachment, as follows:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.compute.NetworkAttachment("example", {});
/// const exampleEnvironment = new gcp.composer.Environment("example", {
///     name: "example-environment",
///     region: "us-central1",
///     config: {
///         nodeConfig: {
///             composerNetworkAttachment: example.id,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.compute.NetworkAttachment("example")
/// example_environment = gcp.composer.Environment("example",
///     name="example-environment",
///     region="us-central1",
///     config={
///         "node_config": {
///             "composer_network_attachment": example.id,
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
///     var example = new Gcp.Compute.NetworkAttachment("example");
///
///     var exampleEnvironment = new Gcp.Composer.Environment("example", new()
///     {
///         Name = "example-environment",
///         Region = "us-central1",
///         Config = new Gcp.Composer.Inputs.EnvironmentConfigArgs
///         {
///             NodeConfig = new Gcp.Composer.Inputs.EnvironmentConfigNodeConfigArgs
///             {
///                 ComposerNetworkAttachment = example.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/composer"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := compute.NewNetworkAttachment(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = composer.NewEnvironment(ctx, "example", &composer.EnvironmentArgs{
/// 			Name:   pulumi.String("example-environment"),
/// 			Region: pulumi.String("us-central1"),
/// 			Config: &composer.EnvironmentConfigArgs{
/// 				NodeConfig: &composer.EnvironmentConfigNodeConfigArgs{
/// 					ComposerNetworkAttachment: example.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_networkattachment" "example" {
/// }
/// resource "gcp_composer_environment" "example" {
///   name   = "example-environment"
///   region = "us-central1"
///   config = {
///     node_config = {
///       composer_network_attachment = gcp_compute_networkattachment.example.id
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
/// import com.pulumi.gcp.compute.NetworkAttachment;
/// import com.pulumi.gcp.composer.Environment;
/// import com.pulumi.gcp.composer.EnvironmentArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigNodeConfigArgs;
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
///         var example = new NetworkAttachment("example");
///
///         var exampleEnvironment = new Environment("exampleEnvironment", EnvironmentArgs.builder()
///             .name("example-environment")
///             .region("us-central1")
///             .config(EnvironmentConfigArgs.builder()
///                 .nodeConfig(EnvironmentConfigNodeConfigArgs.builder()
///                     .composerNetworkAttachment(example.id())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:compute:NetworkAttachment
///   exampleEnvironment:
///     type: gcp:composer:Environment
///     name: example
///     properties:
///       name: example-environment
///       region: us-central1
///       config:
///         nodeConfig:
///           composerNetworkAttachment: ${example.id}
/// ```
///
///
/// ## Import
///
/// Environment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/environments/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the
/// `pulumi import` command,
/// Environment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:composer/environment:Environment default projects/{{project}}/locations/{{region}}/environments/{{name}}
/// $ pulumi import gcp:composer/environment:Environment default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:composer/environment:Environment default {{name}}
/// ```
class Environment extends pulumi.CustomResource {
  /// Configuration parameters for this environment.
  late final pulumi.Output<EnvironmentConfig> config;
  /// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'terraform apply' would delete the instance,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: a-z?. Label values must be between 0 and 63 characters long and must conform to the regular expression (a-z?)?. No more than 64 labels can be associated with a given environment. Both keys and values must be &lt;= 128 bytes in size.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Name of the environment.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The location or Compute Engine region for the environment.
  late final pulumi.Output<String> region;
  /// Configuration options for storage used by Composer environment.
  late final pulumi.Output<EnvironmentStorageConfig> storageConfig;

  /// Creates a new [Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Environment]. {@macro pulumi_composer_environment_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:composer/environment:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    config = registerOutput<EnvironmentConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
    storageConfig = registerOutput<EnvironmentStorageConfig>('storageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Environment] resource's state with the given [name] and [id].
  static Environment get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Environment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Environment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:composer/environment:Environment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    config = registerOutput<EnvironmentConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
    storageConfig = registerOutput<EnvironmentStorageConfig>('storageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Environment] resource.
  Environment.reference(String urn)
    : super(
        'gcp:composer/environment:Environment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    config = registerOutput<EnvironmentConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
    storageConfig = registerOutput<EnvironmentStorageConfig>('storageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
