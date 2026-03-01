import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_pool_args.dart';
import 'worker_pool_binary_authorization.dart';
import 'worker_pool_condition.dart';
import 'worker_pool_instance_split.dart';
import 'worker_pool_instance_split_status.dart';
import 'worker_pool_scaling.dart';
import 'worker_pool_state.dart';
import 'worker_pool_template.dart';
import 'worker_pool_terminal_condition.dart';

/// WorkerPool acts as a top-level container that manages a set of configurations and revision templates which implement a pull-based workload. WorkerPool exists to provide a singular abstraction which can be access controlled, reasoned about, and which encapsulates software lifecycle decisions such as rollout policy and team resource ownership.
///
///
/// To get more information about WorkerPool, see:
///
/// * [API documentation](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.workerPools)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/run/docs/)
///
/// ## Example Usage
///
/// ### Cloudrunv2 Worker Pool Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.WorkerPool("default", {
///     name: "cloudrun-worker-pool",
///     location: "us-central1",
///     deletionProtection: false,
///     launchStage: "BETA",
///     template: {
///         containers: [{
///             image: "us-docker.pkg.dev/cloudrun/container/worker-pool",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.WorkerPool("default",
///     name="cloudrun-worker-pool",
///     location="us-central1",
///     deletion_protection=False,
///     launch_stage="BETA",
///     template={
///         "containers": [{
///             "image": "us-docker.pkg.dev/cloudrun/container/worker-pool",
///         }],
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
///     var @default = new Gcp.CloudRunV2.WorkerPool("default", new()
///     {
///         Name = "cloudrun-worker-pool",
///         Location = "us-central1",
///         DeletionProtection = false,
///         LaunchStage = "BETA",
///         Template = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateArgs
///         {
///             Containers = new[]
///             {
///                 new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerArgs
///                 {
///                     Image = "us-docker.pkg.dev/cloudrun/container/worker-pool",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.NewWorkerPool(ctx, "default", &cloudrunv2.WorkerPoolArgs{
/// 			Name:               pulumi.String("cloudrun-worker-pool"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			LaunchStage:        pulumi.String("BETA"),
/// 			Template: &cloudrunv2.WorkerPoolTemplateArgs{
/// 				Containers: cloudrunv2.WorkerPoolTemplateContainerArray{
/// 					&cloudrunv2.WorkerPoolTemplateContainerArgs{
/// 						Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/worker-pool"),
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
/// import com.pulumi.gcp.cloudrunv2.WorkerPool;
/// import com.pulumi.gcp.cloudrunv2.WorkerPoolArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.WorkerPoolTemplateArgs;
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
///         var default_ = new WorkerPool("default", WorkerPoolArgs.builder()
///             .name("cloudrun-worker-pool")
///             .location("us-central1")
///             .deletionProtection(false)
///             .launchStage("BETA")
///             .template(WorkerPoolTemplateArgs.builder()
///                 .containers(WorkerPoolTemplateContainerArgs.builder()
///                     .image("us-docker.pkg.dev/cloudrun/container/worker-pool")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrunv2:WorkerPool
///     properties:
///       name: cloudrun-worker-pool
///       location: us-central1
///       deletionProtection: false
///       launchStage: BETA
///       template:
///         containers:
///           - image: us-docker.pkg.dev/cloudrun/container/worker-pool
/// ```
///
/// ### Cloudrunv2 Worker Pool Basic Depends On
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.WorkerPool("default", {
///     name: "cloudrun-worker-pool",
///     location: "us-central1",
///     deletionProtection: false,
///     launchStage: "BETA",
///     template: {
///         containers: [
///             {
///                 name: "foo-1",
///                 image: "us-docker.pkg.dev/cloudrun/container/worker-pool",
///                 dependsOns: ["foo-2"],
///             },
///             {
///                 name: "foo-2",
///                 image: "us-docker.pkg.dev/cloudrun/container/worker-pool",
///                 startupProbe: {
///                     httpGet: {
///                         path: "/healthz",
///                         port: 8080,
///                     },
///                     periodSeconds: 5,
///                     timeoutSeconds: 2,
///                     failureThreshold: 3,
///                 },
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.WorkerPool("default",
///     name="cloudrun-worker-pool",
///     location="us-central1",
///     deletion_protection=False,
///     launch_stage="BETA",
///     template={
///         "containers": [
///             {
///                 "name": "foo-1",
///                 "image": "us-docker.pkg.dev/cloudrun/container/worker-pool",
///                 "depends_ons": ["foo-2"],
///             },
///             {
///                 "name": "foo-2",
///                 "image": "us-docker.pkg.dev/cloudrun/container/worker-pool",
///                 "startup_probe": {
///                     "http_get": {
///                         "path": "/healthz",
///                         "port": 8080,
///                     },
///                     "period_seconds": 5,
///                     "timeout_seconds": 2,
///                     "failure_threshold": 3,
///                 },
///             },
///         ],
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
///     var @default = new Gcp.CloudRunV2.WorkerPool("default", new()
///     {
///         Name = "cloudrun-worker-pool",
///         Location = "us-central1",
///         DeletionProtection = false,
///         LaunchStage = "BETA",
///         Template = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateArgs
///         {
///             Containers = new[]
///             {
///                 new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerArgs
///                 {
///                     Name = "foo-1",
///                     Image = "us-docker.pkg.dev/cloudrun/container/worker-pool",
///                     DependsOns = new[]
///                     {
///                         "foo-2",
///                     },
///                 },
///                 new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerArgs
///                 {
///                     Name = "foo-2",
///                     Image = "us-docker.pkg.dev/cloudrun/container/worker-pool",
///                     StartupProbe = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerStartupProbeArgs
///                     {
///                         HttpGet = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerStartupProbeHttpGetArgs
///                         {
///                             Path = "/healthz",
///                             Port = 8080,
///                         },
///                         PeriodSeconds = 5,
///                         TimeoutSeconds = 2,
///                         FailureThreshold = 3,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.NewWorkerPool(ctx, "default", &cloudrunv2.WorkerPoolArgs{
/// 			Name:               pulumi.String("cloudrun-worker-pool"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			LaunchStage:        pulumi.String("BETA"),
/// 			Template: &cloudrunv2.WorkerPoolTemplateArgs{
/// 				Containers: cloudrunv2.WorkerPoolTemplateContainerArray{
/// 					&cloudrunv2.WorkerPoolTemplateContainerArgs{
/// 						Name:  pulumi.String("foo-1"),
/// 						Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/worker-pool"),
/// 						DependsOns: pulumi.StringArray{
/// 							pulumi.String("foo-2"),
/// 						},
/// 					},
/// 					&cloudrunv2.WorkerPoolTemplateContainerArgs{
/// 						Name:  pulumi.String("foo-2"),
/// 						Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/worker-pool"),
/// 						StartupProbe: &cloudrunv2.WorkerPoolTemplateContainerStartupProbeArgs{
/// 							HttpGet: &cloudrunv2.WorkerPoolTemplateContainerStartupProbeHttpGetArgs{
/// 								Path: pulumi.String("/healthz"),
/// 								Port: pulumi.Int(8080),
/// 							},
/// 							PeriodSeconds:    pulumi.Int(5),
/// 							TimeoutSeconds:   pulumi.Int(2),
/// 							FailureThreshold: pulumi.Int(3),
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
/// import com.pulumi.gcp.cloudrunv2.WorkerPool;
/// import com.pulumi.gcp.cloudrunv2.WorkerPoolArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.WorkerPoolTemplateArgs;
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
///         var default_ = new WorkerPool("default", WorkerPoolArgs.builder()
///             .name("cloudrun-worker-pool")
///             .location("us-central1")
///             .deletionProtection(false)
///             .launchStage("BETA")
///             .template(WorkerPoolTemplateArgs.builder()
///                 .containers(
///                     WorkerPoolTemplateContainerArgs.builder()
///                         .name("foo-1")
///                         .image("us-docker.pkg.dev/cloudrun/container/worker-pool")
///                         .dependsOns("foo-2")
///                         .build(),
///                     WorkerPoolTemplateContainerArgs.builder()
///                         .name("foo-2")
///                         .image("us-docker.pkg.dev/cloudrun/container/worker-pool")
///                         .startupProbe(WorkerPoolTemplateContainerStartupProbeArgs.builder()
///                             .httpGet(WorkerPoolTemplateContainerStartupProbeHttpGetArgs.builder()
///                                 .path("/healthz")
///                                 .port(8080)
///                                 .build())
///                             .periodSeconds(5)
///                             .timeoutSeconds(2)
///                             .failureThreshold(3)
///                             .build())
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrunv2:WorkerPool
///     properties:
///       name: cloudrun-worker-pool
///       location: us-central1
///       deletionProtection: false
///       launchStage: BETA
///       template:
///         containers:
///           - name: foo-1
///             image: us-docker.pkg.dev/cloudrun/container/worker-pool
///             dependsOns:
///               - foo-2
///           - name: foo-2
///             image: us-docker.pkg.dev/cloudrun/container/worker-pool
///             startupProbe:
///               httpGet:
///                 path: /healthz
///                 port: 8080
///               periodSeconds: 5
///               timeoutSeconds: 2
///               failureThreshold: 3
/// ```
///
/// ### Cloudrunv2 Worker Pool Limits
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.WorkerPool("default", {
///     name: "cloudrun-worker-pool",
///     location: "us-central1",
///     deletionProtection: false,
///     launchStage: "BETA",
///     template: {
///         containers: [{
///             image: "us-docker.pkg.dev/cloudrun/container/worker-pool",
///             resources: {
///                 limits: {
///                     cpu: "2",
///                     memory: "1024Mi",
///                 },
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.WorkerPool("default",
///     name="cloudrun-worker-pool",
///     location="us-central1",
///     deletion_protection=False,
///     launch_stage="BETA",
///     template={
///         "containers": [{
///             "image": "us-docker.pkg.dev/cloudrun/container/worker-pool",
///             "resources": {
///                 "limits": {
///                     "cpu": "2",
///                     "memory": "1024Mi",
///                 },
///             },
///         }],
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
///     var @default = new Gcp.CloudRunV2.WorkerPool("default", new()
///     {
///         Name = "cloudrun-worker-pool",
///         Location = "us-central1",
///         DeletionProtection = false,
///         LaunchStage = "BETA",
///         Template = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateArgs
///         {
///             Containers = new[]
///             {
///                 new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerArgs
///                 {
///                     Image = "us-docker.pkg.dev/cloudrun/container/worker-pool",
///                     Resources = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerResourcesArgs
///                     {
///                         Limits =
///                         {
///                             { "cpu", "2" },
///                             { "memory", "1024Mi" },
///                         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.NewWorkerPool(ctx, "default", &cloudrunv2.WorkerPoolArgs{
/// 			Name:               pulumi.String("cloudrun-worker-pool"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			LaunchStage:        pulumi.String("BETA"),
/// 			Template: &cloudrunv2.WorkerPoolTemplateArgs{
/// 				Containers: cloudrunv2.WorkerPoolTemplateContainerArray{
/// 					&cloudrunv2.WorkerPoolTemplateContainerArgs{
/// 						Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/worker-pool"),
/// 						Resources: &cloudrunv2.WorkerPoolTemplateContainerResourcesArgs{
/// 							Limits: pulumi.StringMap{
/// 								"cpu":    pulumi.String("2"),
/// 								"memory": pulumi.String("1024Mi"),
/// 							},
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
/// import com.pulumi.gcp.cloudrunv2.WorkerPool;
/// import com.pulumi.gcp.cloudrunv2.WorkerPoolArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.WorkerPoolTemplateArgs;
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
///         var default_ = new WorkerPool("default", WorkerPoolArgs.builder()
///             .name("cloudrun-worker-pool")
///             .location("us-central1")
///             .deletionProtection(false)
///             .launchStage("BETA")
///             .template(WorkerPoolTemplateArgs.builder()
///                 .containers(WorkerPoolTemplateContainerArgs.builder()
///                     .image("us-docker.pkg.dev/cloudrun/container/worker-pool")
///                     .resources(WorkerPoolTemplateContainerResourcesArgs.builder()
///                         .limits(Map.ofEntries(
///                             Map.entry("cpu", "2"),
///                             Map.entry("memory", "1024Mi")
///                         ))
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
///   default:
///     type: gcp:cloudrunv2:WorkerPool
///     properties:
///       name: cloudrun-worker-pool
///       location: us-central1
///       deletionProtection: false
///       launchStage: BETA
///       template:
///         containers:
///           - image: us-docker.pkg.dev/cloudrun/container/worker-pool
///             resources:
///               limits:
///                 cpu: '2'
///                 memory: 1024Mi
/// ```
///
/// ### Cloudrunv2 Worker Pool Sql
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret = new gcp.secretmanager.Secret("secret", {
///     secretId: "secret-1",
///     replication: {
///         auto: {},
///     },
/// });
/// const secret_version_data = new gcp.secretmanager.SecretVersion("secret-version-data", {
///     secret: secret.name,
///     secretData: "secret-data",
/// });
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "cloudrun-sql",
///     region: "us-central1",
///     databaseVersion: "MYSQL_5_7",
///     settings: {
///         tier: "db-f1-micro",
///     },
///     deletionProtection: true,
/// });
/// const _default = new gcp.cloudrunv2.WorkerPool("default", {
///     name: "cloudrun-worker-pool",
///     location: "us-central1",
///     deletionProtection: false,
///     launchStage: "BETA",
///     template: {
///         volumes: [{
///             name: "cloudsql",
///             cloudSqlInstance: {
///                 instances: [instance.connectionName],
///             },
///         }],
///         containers: [{
///             image: "us-docker.pkg.dev/cloudrun/container/worker-pool",
///             envs: [
///                 {
///                     name: "FOO",
///                     value: "bar",
///                 },
///                 {
///                     name: "SECRET_ENV_VAR",
///                     valueSource: {
///                         secretKeyRef: {
///                             secret: secret.secretId,
///                             version: "1",
///                         },
///                     },
///                 },
///             ],
///             volumeMounts: [{
///                 name: "cloudsql",
///                 mountPath: "/cloudsql",
///             }],
///         }],
///     },
///     instanceSplits: [{
///         type: "INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST",
///         percent: 100,
///     }],
/// }, {
///     dependsOn: [secret_version_data],
/// });
/// const project = gcp.organizations.getProject({});
/// const secret_access = new gcp.secretmanager.SecretIamMember("secret-access", {
///     secretId: secret.id,
///     role: "roles/secretmanager.secretAccessor",
///     member: project.then(project => `serviceAccount:${project.number}-compute@developer.gserviceaccount.com`),
/// }, {
///     dependsOn: [secret],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret = gcp.secretmanager.Secret("secret",
///     secret_id="secret-1",
///     replication={
///         "auto": {},
///     })
/// secret_version_data = gcp.secretmanager.SecretVersion("secret-version-data",
///     secret=secret.name,
///     secret_data="secret-data")
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="cloudrun-sql",
///     region="us-central1",
///     database_version="MYSQL_5_7",
///     settings={
///         "tier": "db-f1-micro",
///     },
///     deletion_protection=True)
/// default = gcp.cloudrunv2.WorkerPool("default",
///     name="cloudrun-worker-pool",
///     location="us-central1",
///     deletion_protection=False,
///     launch_stage="BETA",
///     template={
///         "volumes": [{
///             "name": "cloudsql",
///             "cloud_sql_instance": {
///                 "instances": [instance.connection_name],
///             },
///         }],
///         "containers": [{
///             "image": "us-docker.pkg.dev/cloudrun/container/worker-pool",
///             "envs": [
///                 {
///                     "name": "FOO",
///                     "value": "bar",
///                 },
///                 {
///                     "name": "SECRET_ENV_VAR",
///                     "value_source": {
///                         "secret_key_ref": {
///                             "secret": secret.secret_id,
///                             "version": "1",
///                         },
///                     },
///                 },
///             ],
///             "volume_mounts": [{
///                 "name": "cloudsql",
///                 "mount_path": "/cloudsql",
///             }],
///         }],
///     },
///     instance_splits=[{
///         "type": "INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST",
///         "percent": 100,
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[secret_version_data]))
/// project = gcp.organizations.get_project()
/// secret_access = gcp.secretmanager.SecretIamMember("secret-access",
///     secret_id=secret.id,
///     role="roles/secretmanager.secretAccessor",
///     member=f"serviceAccount:{project.number}-compute@developer.gserviceaccount.com",
///     opts = pulumi.ResourceOptions(depends_on=[secret]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret = new Gcp.SecretManager.Secret("secret", new()
///     {
///         SecretId = "secret-1",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var secret_version_data = new Gcp.SecretManager.SecretVersion("secret-version-data", new()
///     {
///         Secret = secret.Name,
///         SecretData = "secret-data",
///     });
///
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "cloudrun-sql",
///         Region = "us-central1",
///         DatabaseVersion = "MYSQL_5_7",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///         },
///         DeletionProtection = true,
///     });
///
///     var @default = new Gcp.CloudRunV2.WorkerPool("default", new()
///     {
///         Name = "cloudrun-worker-pool",
///         Location = "us-central1",
///         DeletionProtection = false,
///         LaunchStage = "BETA",
///         Template = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateArgs
///         {
///             Volumes = new[]
///             {
///                 new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateVolumeArgs
///                 {
///                     Name = "cloudsql",
///                     CloudSqlInstance = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateVolumeCloudSqlInstanceArgs
///                     {
///                         Instances = new[]
///                         {
///                             instance.ConnectionName,
///                         },
///                     },
///                 },
///             },
///             Containers = new[]
///             {
///                 new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerArgs
///                 {
///                     Image = "us-docker.pkg.dev/cloudrun/container/worker-pool",
///                     Envs = new[]
///                     {
///                         new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerEnvArgs
///                         {
///                             Name = "FOO",
///                             Value = "bar",
///                         },
///                         new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerEnvArgs
///                         {
///                             Name = "SECRET_ENV_VAR",
///                             ValueSource = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerEnvValueSourceArgs
///                             {
///                                 SecretKeyRef = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerEnvValueSourceSecretKeyRefArgs
///                                 {
///                                     Secret = secret.SecretId,
///                                     Version = "1",
///                                 },
///                             },
///                         },
///                     },
///                     VolumeMounts = new[]
///                     {
///                         new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerVolumeMountArgs
///                         {
///                             Name = "cloudsql",
///                             MountPath = "/cloudsql",
///                         },
///                     },
///                 },
///             },
///         },
///         InstanceSplits = new[]
///         {
///             new Gcp.CloudRunV2.Inputs.WorkerPoolInstanceSplitArgs
///             {
///                 Type = "INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST",
///                 Percent = 100,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             secret_version_data,
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var secret_access = new Gcp.SecretManager.SecretIamMember("secret-access", new()
///     {
///         SecretId = secret.Id,
///         Role = "roles/secretmanager.secretAccessor",
///         Member = $"serviceAccount:{project.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             secret,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret, err := secretmanager.NewSecret(ctx, "secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret-1"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secret_version_data, err := secretmanager.NewSecretVersion(ctx, "secret-version-data", &secretmanager.SecretVersionArgs{
/// 			Secret:     secret.Name,
/// 			SecretData: pulumi.String("secret-data"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("cloudrun-sql"),
/// 			Region:          pulumi.String("us-central1"),
/// 			DatabaseVersion: pulumi.String("MYSQL_5_7"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudrunv2.NewWorkerPool(ctx, "default", &cloudrunv2.WorkerPoolArgs{
/// 			Name:               pulumi.String("cloudrun-worker-pool"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			LaunchStage:        pulumi.String("BETA"),
/// 			Template: &cloudrunv2.WorkerPoolTemplateArgs{
/// 				Volumes: cloudrunv2.WorkerPoolTemplateVolumeArray{
/// 					&cloudrunv2.WorkerPoolTemplateVolumeArgs{
/// 						Name: pulumi.String("cloudsql"),
/// 						CloudSqlInstance: &cloudrunv2.WorkerPoolTemplateVolumeCloudSqlInstanceArgs{
/// 							Instances: pulumi.StringArray{
/// 								instance.ConnectionName,
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Containers: cloudrunv2.WorkerPoolTemplateContainerArray{
/// 					&cloudrunv2.WorkerPoolTemplateContainerArgs{
/// 						Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/worker-pool"),
/// 						Envs: cloudrunv2.WorkerPoolTemplateContainerEnvArray{
/// 							&cloudrunv2.WorkerPoolTemplateContainerEnvArgs{
/// 								Name:  pulumi.String("FOO"),
/// 								Value: pulumi.String("bar"),
/// 							},
/// 							&cloudrunv2.WorkerPoolTemplateContainerEnvArgs{
/// 								Name: pulumi.String("SECRET_ENV_VAR"),
/// 								ValueSource: &cloudrunv2.WorkerPoolTemplateContainerEnvValueSourceArgs{
/// 									SecretKeyRef: &cloudrunv2.WorkerPoolTemplateContainerEnvValueSourceSecretKeyRefArgs{
/// 										Secret:  secret.SecretId,
/// 										Version: pulumi.String("1"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						VolumeMounts: cloudrunv2.WorkerPoolTemplateContainerVolumeMountArray{
/// 							&cloudrunv2.WorkerPoolTemplateContainerVolumeMountArgs{
/// 								Name:      pulumi.String("cloudsql"),
/// 								MountPath: pulumi.String("/cloudsql"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			InstanceSplits: cloudrunv2.WorkerPoolInstanceSplitArray{
/// 				&cloudrunv2.WorkerPoolInstanceSplitArgs{
/// 					Type:    pulumi.String("INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST"),
/// 					Percent: pulumi.Int(100),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			secret_version_data,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretIamMember(ctx, "secret-access", &secretmanager.SecretIamMemberArgs{
/// 			SecretId: secret.ID(),
/// 			Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// 			Member:   pulumi.Sprintf("serviceAccount:%v-compute@developer.gserviceaccount.com", project.Number),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			secret,
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.cloudrunv2.WorkerPool;
/// import com.pulumi.gcp.cloudrunv2.WorkerPoolArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.WorkerPoolTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.WorkerPoolInstanceSplitArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamMember;
/// import com.pulumi.gcp.secretmanager.SecretIamMemberArgs;
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
///         var secret = new Secret("secret", SecretArgs.builder()
///             .secretId("secret-1")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var secret_version_data = new SecretVersion("secret-version-data", SecretVersionArgs.builder()
///             .secret(secret.name())
///             .secretData("secret-data")
///             .build());
///
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("cloudrun-sql")
///             .region("us-central1")
///             .databaseVersion("MYSQL_5_7")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var default_ = new WorkerPool("default", WorkerPoolArgs.builder()
///             .name("cloudrun-worker-pool")
///             .location("us-central1")
///             .deletionProtection(false)
///             .launchStage("BETA")
///             .template(WorkerPoolTemplateArgs.builder()
///                 .volumes(WorkerPoolTemplateVolumeArgs.builder()
///                     .name("cloudsql")
///                     .cloudSqlInstance(WorkerPoolTemplateVolumeCloudSqlInstanceArgs.builder()
///                         .instances(instance.connectionName())
///                         .build())
///                     .build())
///                 .containers(WorkerPoolTemplateContainerArgs.builder()
///                     .image("us-docker.pkg.dev/cloudrun/container/worker-pool")
///                     .envs(
///                         WorkerPoolTemplateContainerEnvArgs.builder()
///                             .name("FOO")
///                             .value("bar")
///                             .build(),
///                         WorkerPoolTemplateContainerEnvArgs.builder()
///                             .name("SECRET_ENV_VAR")
///                             .valueSource(WorkerPoolTemplateContainerEnvValueSourceArgs.builder()
///                                 .secretKeyRef(WorkerPoolTemplateContainerEnvValueSourceSecretKeyRefArgs.builder()
///                                     .secret(secret.secretId())
///                                     .version("1")
///                                     .build())
///                                 .build())
///                             .build())
///                     .volumeMounts(WorkerPoolTemplateContainerVolumeMountArgs.builder()
///                         .name("cloudsql")
///                         .mountPath("/cloudsql")
///                         .build())
///                     .build())
///                 .build())
///             .instanceSplits(WorkerPoolInstanceSplitArgs.builder()
///                 .type("INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST")
///                 .percent(100)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(secret_version_data)
///                 .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var secret_access = new SecretIamMember("secret-access", SecretIamMemberArgs.builder()
///             .secretId(secret.id())
///             .role("roles/secretmanager.secretAccessor")
///             .member(String.format("serviceAccount:%s-compute@developer.gserviceaccount.com", project.number()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(secret)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrunv2:WorkerPool
///     properties:
///       name: cloudrun-worker-pool
///       location: us-central1
///       deletionProtection: false
///       launchStage: BETA
///       template:
///         volumes:
///           - name: cloudsql
///             cloudSqlInstance:
///               instances:
///                 - ${instance.connectionName}
///         containers:
///           - image: us-docker.pkg.dev/cloudrun/container/worker-pool
///             envs:
///               - name: FOO
///                 value: bar
///               - name: SECRET_ENV_VAR
///                 valueSource:
///                   secretKeyRef:
///                     secret: ${secret.secretId}
///                     version: '1'
///             volumeMounts:
///               - name: cloudsql
///                 mountPath: /cloudsql
///       instanceSplits:
///         - type: INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST
///           percent: 100
///     options:
///       dependsOn:
///         - ${["secret-version-data"]}
///   secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret-1
///       replication:
///         auto: {}
///   secret-version-data:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${secret.name}
///       secretData: secret-data
///   secret-access:
///     type: gcp:secretmanager:SecretIamMember
///     properties:
///       secretId: ${secret.id}
///       role: roles/secretmanager.secretAccessor
///       member: serviceAccount:${project.number}-compute@developer.gserviceaccount.com
///     options:
///       dependsOn:
///         - ${secret}
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: cloudrun-sql
///       region: us-central1
///       databaseVersion: MYSQL_5_7
///       settings:
///         tier: db-f1-micro
///       deletionProtection: true
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Cloudrunv2 Worker Pool Directvpc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.WorkerPool("default", {
///     name: "cloudrun-worker-pool",
///     location: "us-central1",
///     deletionProtection: false,
///     launchStage: "BETA",
///     template: {
///         containers: [{
///             image: "us-docker.pkg.dev/cloudrun/container/worker-pool",
///         }],
///         vpcAccess: {
///             networkInterfaces: [{
///                 network: "default",
///                 subnetwork: "default",
///                 tags: [
///                     "tag1",
///                     "tag2",
///                     "tag3",
///                 ],
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.WorkerPool("default",
///     name="cloudrun-worker-pool",
///     location="us-central1",
///     deletion_protection=False,
///     launch_stage="BETA",
///     template={
///         "containers": [{
///             "image": "us-docker.pkg.dev/cloudrun/container/worker-pool",
///         }],
///         "vpc_access": {
///             "network_interfaces": [{
///                 "network": "default",
///                 "subnetwork": "default",
///                 "tags": [
///                     "tag1",
///                     "tag2",
///                     "tag3",
///                 ],
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
///     var @default = new Gcp.CloudRunV2.WorkerPool("default", new()
///     {
///         Name = "cloudrun-worker-pool",
///         Location = "us-central1",
///         DeletionProtection = false,
///         LaunchStage = "BETA",
///         Template = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateArgs
///         {
///             Containers = new[]
///             {
///                 new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerArgs
///                 {
///                     Image = "us-docker.pkg.dev/cloudrun/container/worker-pool",
///                 },
///             },
///             VpcAccess = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateVpcAccessArgs
///             {
///                 NetworkInterfaces = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateVpcAccessNetworkInterfaceArgs
///                     {
///                         Network = "default",
///                         Subnetwork = "default",
///                         Tags = new[]
///                         {
///                             "tag1",
///                             "tag2",
///                             "tag3",
///                         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.NewWorkerPool(ctx, "default", &cloudrunv2.WorkerPoolArgs{
/// 			Name:               pulumi.String("cloudrun-worker-pool"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			LaunchStage:        pulumi.String("BETA"),
/// 			Template: &cloudrunv2.WorkerPoolTemplateArgs{
/// 				Containers: cloudrunv2.WorkerPoolTemplateContainerArray{
/// 					&cloudrunv2.WorkerPoolTemplateContainerArgs{
/// 						Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/worker-pool"),
/// 					},
/// 				},
/// 				VpcAccess: &cloudrunv2.WorkerPoolTemplateVpcAccessArgs{
/// 					NetworkInterfaces: cloudrunv2.WorkerPoolTemplateVpcAccessNetworkInterfaceArray{
/// 						&cloudrunv2.WorkerPoolTemplateVpcAccessNetworkInterfaceArgs{
/// 							Network:    pulumi.String("default"),
/// 							Subnetwork: pulumi.String("default"),
/// 							Tags: pulumi.StringArray{
/// 								pulumi.String("tag1"),
/// 								pulumi.String("tag2"),
/// 								pulumi.String("tag3"),
/// 							},
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
/// import com.pulumi.gcp.cloudrunv2.WorkerPool;
/// import com.pulumi.gcp.cloudrunv2.WorkerPoolArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.WorkerPoolTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.WorkerPoolTemplateVpcAccessArgs;
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
///         var default_ = new WorkerPool("default", WorkerPoolArgs.builder()
///             .name("cloudrun-worker-pool")
///             .location("us-central1")
///             .deletionProtection(false)
///             .launchStage("BETA")
///             .template(WorkerPoolTemplateArgs.builder()
///                 .containers(WorkerPoolTemplateContainerArgs.builder()
///                     .image("us-docker.pkg.dev/cloudrun/container/worker-pool")
///                     .build())
///                 .vpcAccess(WorkerPoolTemplateVpcAccessArgs.builder()
///                     .networkInterfaces(WorkerPoolTemplateVpcAccessNetworkInterfaceArgs.builder()
///                         .network("default")
///                         .subnetwork("default")
///                         .tags(
///                             "tag1",
///                             "tag2",
///                             "tag3")
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
///   default:
///     type: gcp:cloudrunv2:WorkerPool
///     properties:
///       name: cloudrun-worker-pool
///       location: us-central1
///       deletionProtection: false
///       launchStage: BETA
///       template:
///         containers:
///           - image: us-docker.pkg.dev/cloudrun/container/worker-pool
///         vpcAccess:
///           networkInterfaces:
///             - network: default
///               subnetwork: default
///               tags:
///                 - tag1
///                 - tag2
///                 - tag3
/// ```
///
/// ### Cloudrunv2 Worker Pool Gpu
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.WorkerPool("default", {
///     name: "cloudrun-worker-pool",
///     location: "us-central1",
///     deletionProtection: false,
///     launchStage: "BETA",
///     template: {
///         containers: [{
///             image: "us-docker.pkg.dev/cloudrun/container/worker-pool",
///             resources: {
///                 limits: {
///                     cpu: "4",
///                     memory: "16Gi",
///                     "nvidia.com/gpu": "1",
///                 },
///             },
///         }],
///         nodeSelector: {
///             accelerator: "nvidia-l4",
///         },
///         gpuZonalRedundancyDisabled: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.WorkerPool("default",
///     name="cloudrun-worker-pool",
///     location="us-central1",
///     deletion_protection=False,
///     launch_stage="BETA",
///     template={
///         "containers": [{
///             "image": "us-docker.pkg.dev/cloudrun/container/worker-pool",
///             "resources": {
///                 "limits": {
///                     "cpu": "4",
///                     "memory": "16Gi",
///                     "nvidia.com/gpu": "1",
///                 },
///             },
///         }],
///         "node_selector": {
///             "accelerator": "nvidia-l4",
///         },
///         "gpu_zonal_redundancy_disabled": True,
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
///     var @default = new Gcp.CloudRunV2.WorkerPool("default", new()
///     {
///         Name = "cloudrun-worker-pool",
///         Location = "us-central1",
///         DeletionProtection = false,
///         LaunchStage = "BETA",
///         Template = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateArgs
///         {
///             Containers = new[]
///             {
///                 new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerArgs
///                 {
///                     Image = "us-docker.pkg.dev/cloudrun/container/worker-pool",
///                     Resources = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerResourcesArgs
///                     {
///                         Limits =
///                         {
///                             { "cpu", "4" },
///                             { "memory", "16Gi" },
///                             { "nvidia.com/gpu", "1" },
///                         },
///                     },
///                 },
///             },
///             NodeSelector = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateNodeSelectorArgs
///             {
///                 Accelerator = "nvidia-l4",
///             },
///             GpuZonalRedundancyDisabled = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.NewWorkerPool(ctx, "default", &cloudrunv2.WorkerPoolArgs{
/// 			Name:               pulumi.String("cloudrun-worker-pool"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			LaunchStage:        pulumi.String("BETA"),
/// 			Template: &cloudrunv2.WorkerPoolTemplateArgs{
/// 				Containers: cloudrunv2.WorkerPoolTemplateContainerArray{
/// 					&cloudrunv2.WorkerPoolTemplateContainerArgs{
/// 						Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/worker-pool"),
/// 						Resources: &cloudrunv2.WorkerPoolTemplateContainerResourcesArgs{
/// 							Limits: pulumi.StringMap{
/// 								"cpu":            pulumi.String("4"),
/// 								"memory":         pulumi.String("16Gi"),
/// 								"nvidia.com/gpu": pulumi.String("1"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				NodeSelector: &cloudrunv2.WorkerPoolTemplateNodeSelectorArgs{
/// 					Accelerator: pulumi.String("nvidia-l4"),
/// 				},
/// 				GpuZonalRedundancyDisabled: pulumi.Bool(true),
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
/// import com.pulumi.gcp.cloudrunv2.WorkerPool;
/// import com.pulumi.gcp.cloudrunv2.WorkerPoolArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.WorkerPoolTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.WorkerPoolTemplateNodeSelectorArgs;
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
///         var default_ = new WorkerPool("default", WorkerPoolArgs.builder()
///             .name("cloudrun-worker-pool")
///             .location("us-central1")
///             .deletionProtection(false)
///             .launchStage("BETA")
///             .template(WorkerPoolTemplateArgs.builder()
///                 .containers(WorkerPoolTemplateContainerArgs.builder()
///                     .image("us-docker.pkg.dev/cloudrun/container/worker-pool")
///                     .resources(WorkerPoolTemplateContainerResourcesArgs.builder()
///                         .limits(Map.ofEntries(
///                             Map.entry("cpu", "4"),
///                             Map.entry("memory", "16Gi"),
///                             Map.entry("nvidia.com/gpu", "1")
///                         ))
///                         .build())
///                     .build())
///                 .nodeSelector(WorkerPoolTemplateNodeSelectorArgs.builder()
///                     .accelerator("nvidia-l4")
///                     .build())
///                 .gpuZonalRedundancyDisabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrunv2:WorkerPool
///     properties:
///       name: cloudrun-worker-pool
///       location: us-central1
///       deletionProtection: false
///       launchStage: BETA
///       template:
///         containers:
///           - image: us-docker.pkg.dev/cloudrun/container/worker-pool
///             resources:
///               limits:
///                 cpu: '4'
///                 memory: 16Gi
///                 nvidia.com/gpu: '1'
///         nodeSelector:
///           accelerator: nvidia-l4
///         gpuZonalRedundancyDisabled: true
/// ```
///
/// ### Cloudrunv2 Worker Pool Secret
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret = new gcp.secretmanager.Secret("secret", {
///     secretId: "secret-1",
///     replication: {
///         auto: {},
///     },
/// });
/// const secret_version_data = new gcp.secretmanager.SecretVersion("secret-version-data", {
///     secret: secret.name,
///     secretData: "secret-data",
/// });
/// const _default = new gcp.cloudrunv2.WorkerPool("default", {
///     name: "cloudrun-worker-pool",
///     location: "us-central1",
///     deletionProtection: false,
///     launchStage: "BETA",
///     template: {
///         volumes: [{
///             name: "a-volume",
///             secret: {
///                 secret: secret.secretId,
///                 defaultMode: 292,
///                 items: [{
///                     version: "1",
///                     path: "my-secret",
///                     mode: 444,
///                 }],
///             },
///         }],
///         containers: [{
///             image: "us-docker.pkg.dev/cloudrun/container/worker-pool",
///             volumeMounts: [{
///                 name: "a-volume",
///                 mountPath: "/secrets",
///             }],
///         }],
///     },
/// }, {
///     dependsOn: [secret_version_data],
/// });
/// const project = gcp.organizations.getProject({});
/// const secret_access = new gcp.secretmanager.SecretIamMember("secret-access", {
///     secretId: secret.id,
///     role: "roles/secretmanager.secretAccessor",
///     member: project.then(project => `serviceAccount:${project.number}-compute@developer.gserviceaccount.com`),
/// }, {
///     dependsOn: [secret],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret = gcp.secretmanager.Secret("secret",
///     secret_id="secret-1",
///     replication={
///         "auto": {},
///     })
/// secret_version_data = gcp.secretmanager.SecretVersion("secret-version-data",
///     secret=secret.name,
///     secret_data="secret-data")
/// default = gcp.cloudrunv2.WorkerPool("default",
///     name="cloudrun-worker-pool",
///     location="us-central1",
///     deletion_protection=False,
///     launch_stage="BETA",
///     template={
///         "volumes": [{
///             "name": "a-volume",
///             "secret": {
///                 "secret": secret.secret_id,
///                 "default_mode": 292,
///                 "items": [{
///                     "version": "1",
///                     "path": "my-secret",
///                     "mode": 444,
///                 }],
///             },
///         }],
///         "containers": [{
///             "image": "us-docker.pkg.dev/cloudrun/container/worker-pool",
///             "volume_mounts": [{
///                 "name": "a-volume",
///                 "mount_path": "/secrets",
///             }],
///         }],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[secret_version_data]))
/// project = gcp.organizations.get_project()
/// secret_access = gcp.secretmanager.SecretIamMember("secret-access",
///     secret_id=secret.id,
///     role="roles/secretmanager.secretAccessor",
///     member=f"serviceAccount:{project.number}-compute@developer.gserviceaccount.com",
///     opts = pulumi.ResourceOptions(depends_on=[secret]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret = new Gcp.SecretManager.Secret("secret", new()
///     {
///         SecretId = "secret-1",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var secret_version_data = new Gcp.SecretManager.SecretVersion("secret-version-data", new()
///     {
///         Secret = secret.Name,
///         SecretData = "secret-data",
///     });
///
///     var @default = new Gcp.CloudRunV2.WorkerPool("default", new()
///     {
///         Name = "cloudrun-worker-pool",
///         Location = "us-central1",
///         DeletionProtection = false,
///         LaunchStage = "BETA",
///         Template = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateArgs
///         {
///             Volumes = new[]
///             {
///                 new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateVolumeArgs
///                 {
///                     Name = "a-volume",
///                     Secret = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateVolumeSecretArgs
///                     {
///                         Secret = secret.SecretId,
///                         DefaultMode = 292,
///                         Items = new[]
///                         {
///                             new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateVolumeSecretItemArgs
///                             {
///                                 Version = "1",
///                                 Path = "my-secret",
///                                 Mode = 444,
///                             },
///                         },
///                     },
///                 },
///             },
///             Containers = new[]
///             {
///                 new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerArgs
///                 {
///                     Image = "us-docker.pkg.dev/cloudrun/container/worker-pool",
///                     VolumeMounts = new[]
///                     {
///                         new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerVolumeMountArgs
///                         {
///                             Name = "a-volume",
///                             MountPath = "/secrets",
///                         },
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             secret_version_data,
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var secret_access = new Gcp.SecretManager.SecretIamMember("secret-access", new()
///     {
///         SecretId = secret.Id,
///         Role = "roles/secretmanager.secretAccessor",
///         Member = $"serviceAccount:{project.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             secret,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret, err := secretmanager.NewSecret(ctx, "secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret-1"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secret_version_data, err := secretmanager.NewSecretVersion(ctx, "secret-version-data", &secretmanager.SecretVersionArgs{
/// 			Secret:     secret.Name,
/// 			SecretData: pulumi.String("secret-data"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudrunv2.NewWorkerPool(ctx, "default", &cloudrunv2.WorkerPoolArgs{
/// 			Name:               pulumi.String("cloudrun-worker-pool"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			LaunchStage:        pulumi.String("BETA"),
/// 			Template: &cloudrunv2.WorkerPoolTemplateArgs{
/// 				Volumes: cloudrunv2.WorkerPoolTemplateVolumeArray{
/// 					&cloudrunv2.WorkerPoolTemplateVolumeArgs{
/// 						Name: pulumi.String("a-volume"),
/// 						Secret: &cloudrunv2.WorkerPoolTemplateVolumeSecretArgs{
/// 							Secret:      secret.SecretId,
/// 							DefaultMode: pulumi.Int(292),
/// 							Items: cloudrunv2.WorkerPoolTemplateVolumeSecretItemArray{
/// 								&cloudrunv2.WorkerPoolTemplateVolumeSecretItemArgs{
/// 									Version: pulumi.String("1"),
/// 									Path:    pulumi.String("my-secret"),
/// 									Mode:    pulumi.Int(444),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Containers: cloudrunv2.WorkerPoolTemplateContainerArray{
/// 					&cloudrunv2.WorkerPoolTemplateContainerArgs{
/// 						Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/worker-pool"),
/// 						VolumeMounts: cloudrunv2.WorkerPoolTemplateContainerVolumeMountArray{
/// 							&cloudrunv2.WorkerPoolTemplateContainerVolumeMountArgs{
/// 								Name:      pulumi.String("a-volume"),
/// 								MountPath: pulumi.String("/secrets"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			secret_version_data,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretIamMember(ctx, "secret-access", &secretmanager.SecretIamMemberArgs{
/// 			SecretId: secret.ID(),
/// 			Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// 			Member:   pulumi.Sprintf("serviceAccount:%v-compute@developer.gserviceaccount.com", project.Number),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			secret,
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.cloudrunv2.WorkerPool;
/// import com.pulumi.gcp.cloudrunv2.WorkerPoolArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.WorkerPoolTemplateArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamMember;
/// import com.pulumi.gcp.secretmanager.SecretIamMemberArgs;
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
///         var secret = new Secret("secret", SecretArgs.builder()
///             .secretId("secret-1")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var secret_version_data = new SecretVersion("secret-version-data", SecretVersionArgs.builder()
///             .secret(secret.name())
///             .secretData("secret-data")
///             .build());
///
///         var default_ = new WorkerPool("default", WorkerPoolArgs.builder()
///             .name("cloudrun-worker-pool")
///             .location("us-central1")
///             .deletionProtection(false)
///             .launchStage("BETA")
///             .template(WorkerPoolTemplateArgs.builder()
///                 .volumes(WorkerPoolTemplateVolumeArgs.builder()
///                     .name("a-volume")
///                     .secret(WorkerPoolTemplateVolumeSecretArgs.builder()
///                         .secret(secret.secretId())
///                         .defaultMode(292)
///                         .items(WorkerPoolTemplateVolumeSecretItemArgs.builder()
///                             .version("1")
///                             .path("my-secret")
///                             .mode(444)
///                             .build())
///                         .build())
///                     .build())
///                 .containers(WorkerPoolTemplateContainerArgs.builder()
///                     .image("us-docker.pkg.dev/cloudrun/container/worker-pool")
///                     .volumeMounts(WorkerPoolTemplateContainerVolumeMountArgs.builder()
///                         .name("a-volume")
///                         .mountPath("/secrets")
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(secret_version_data)
///                 .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var secret_access = new SecretIamMember("secret-access", SecretIamMemberArgs.builder()
///             .secretId(secret.id())
///             .role("roles/secretmanager.secretAccessor")
///             .member(String.format("serviceAccount:%s-compute@developer.gserviceaccount.com", project.number()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(secret)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrunv2:WorkerPool
///     properties:
///       name: cloudrun-worker-pool
///       location: us-central1
///       deletionProtection: false
///       launchStage: BETA
///       template:
///         volumes:
///           - name: a-volume
///             secret:
///               secret: ${secret.secretId}
///               defaultMode: 292
///               items:
///                 - version: '1'
///                   path: my-secret
///                   mode: 444
///         containers:
///           - image: us-docker.pkg.dev/cloudrun/container/worker-pool
///             volumeMounts:
///               - name: a-volume
///                 mountPath: /secrets
///     options:
///       dependsOn:
///         - ${["secret-version-data"]}
///   secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret-1
///       replication:
///         auto: {}
///   secret-version-data:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${secret.name}
///       secretData: secret-data
///   secret-access:
///     type: gcp:secretmanager:SecretIamMember
///     properties:
///       secretId: ${secret.id}
///       role: roles/secretmanager.secretAccessor
///       member: serviceAccount:${project.number}-compute@developer.gserviceaccount.com
///     options:
///       dependsOn:
///         - ${secret}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Cloudrunv2 Worker Pool Multicontainer
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.WorkerPool("default", {
///     name: "cloudrun-worker-pool",
///     location: "us-central1",
///     deletionProtection: false,
///     launchStage: "BETA",
///     template: {
///         containers: [
///             {
///                 name: "hello-1",
///                 image: "us-docker.pkg.dev/cloudrun/container/worker-pool",
///                 volumeMounts: [{
///                     name: "empty-dir-volume",
///                     mountPath: "/mnt",
///                 }],
///             },
///             {
///                 name: "hello-2",
///                 image: "us-docker.pkg.dev/cloudrun/container/worker-pool",
///             },
///         ],
///         volumes: [{
///             name: "empty-dir-volume",
///             emptyDir: {
///                 medium: "MEMORY",
///                 sizeLimit: "256Mi",
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.WorkerPool("default",
///     name="cloudrun-worker-pool",
///     location="us-central1",
///     deletion_protection=False,
///     launch_stage="BETA",
///     template={
///         "containers": [
///             {
///                 "name": "hello-1",
///                 "image": "us-docker.pkg.dev/cloudrun/container/worker-pool",
///                 "volume_mounts": [{
///                     "name": "empty-dir-volume",
///                     "mount_path": "/mnt",
///                 }],
///             },
///             {
///                 "name": "hello-2",
///                 "image": "us-docker.pkg.dev/cloudrun/container/worker-pool",
///             },
///         ],
///         "volumes": [{
///             "name": "empty-dir-volume",
///             "empty_dir": {
///                 "medium": "MEMORY",
///                 "size_limit": "256Mi",
///             },
///         }],
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
///     var @default = new Gcp.CloudRunV2.WorkerPool("default", new()
///     {
///         Name = "cloudrun-worker-pool",
///         Location = "us-central1",
///         DeletionProtection = false,
///         LaunchStage = "BETA",
///         Template = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateArgs
///         {
///             Containers = new[]
///             {
///                 new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerArgs
///                 {
///                     Name = "hello-1",
///                     Image = "us-docker.pkg.dev/cloudrun/container/worker-pool",
///                     VolumeMounts = new[]
///                     {
///                         new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerVolumeMountArgs
///                         {
///                             Name = "empty-dir-volume",
///                             MountPath = "/mnt",
///                         },
///                     },
///                 },
///                 new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerArgs
///                 {
///                     Name = "hello-2",
///                     Image = "us-docker.pkg.dev/cloudrun/container/worker-pool",
///                 },
///             },
///             Volumes = new[]
///             {
///                 new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateVolumeArgs
///                 {
///                     Name = "empty-dir-volume",
///                     EmptyDir = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateVolumeEmptyDirArgs
///                     {
///                         Medium = "MEMORY",
///                         SizeLimit = "256Mi",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.NewWorkerPool(ctx, "default", &cloudrunv2.WorkerPoolArgs{
/// 			Name:               pulumi.String("cloudrun-worker-pool"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			LaunchStage:        pulumi.String("BETA"),
/// 			Template: &cloudrunv2.WorkerPoolTemplateArgs{
/// 				Containers: cloudrunv2.WorkerPoolTemplateContainerArray{
/// 					&cloudrunv2.WorkerPoolTemplateContainerArgs{
/// 						Name:  pulumi.String("hello-1"),
/// 						Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/worker-pool"),
/// 						VolumeMounts: cloudrunv2.WorkerPoolTemplateContainerVolumeMountArray{
/// 							&cloudrunv2.WorkerPoolTemplateContainerVolumeMountArgs{
/// 								Name:      pulumi.String("empty-dir-volume"),
/// 								MountPath: pulumi.String("/mnt"),
/// 							},
/// 						},
/// 					},
/// 					&cloudrunv2.WorkerPoolTemplateContainerArgs{
/// 						Name:  pulumi.String("hello-2"),
/// 						Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/worker-pool"),
/// 					},
/// 				},
/// 				Volumes: cloudrunv2.WorkerPoolTemplateVolumeArray{
/// 					&cloudrunv2.WorkerPoolTemplateVolumeArgs{
/// 						Name: pulumi.String("empty-dir-volume"),
/// 						EmptyDir: &cloudrunv2.WorkerPoolTemplateVolumeEmptyDirArgs{
/// 							Medium:    pulumi.String("MEMORY"),
/// 							SizeLimit: pulumi.String("256Mi"),
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
/// import com.pulumi.gcp.cloudrunv2.WorkerPool;
/// import com.pulumi.gcp.cloudrunv2.WorkerPoolArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.WorkerPoolTemplateArgs;
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
///         var default_ = new WorkerPool("default", WorkerPoolArgs.builder()
///             .name("cloudrun-worker-pool")
///             .location("us-central1")
///             .deletionProtection(false)
///             .launchStage("BETA")
///             .template(WorkerPoolTemplateArgs.builder()
///                 .containers(
///                     WorkerPoolTemplateContainerArgs.builder()
///                         .name("hello-1")
///                         .image("us-docker.pkg.dev/cloudrun/container/worker-pool")
///                         .volumeMounts(WorkerPoolTemplateContainerVolumeMountArgs.builder()
///                             .name("empty-dir-volume")
///                             .mountPath("/mnt")
///                             .build())
///                         .build(),
///                     WorkerPoolTemplateContainerArgs.builder()
///                         .name("hello-2")
///                         .image("us-docker.pkg.dev/cloudrun/container/worker-pool")
///                         .build())
///                 .volumes(WorkerPoolTemplateVolumeArgs.builder()
///                     .name("empty-dir-volume")
///                     .emptyDir(WorkerPoolTemplateVolumeEmptyDirArgs.builder()
///                         .medium("MEMORY")
///                         .sizeLimit("256Mi")
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
///   default:
///     type: gcp:cloudrunv2:WorkerPool
///     properties:
///       name: cloudrun-worker-pool
///       location: us-central1
///       deletionProtection: false
///       launchStage: BETA
///       template:
///         containers:
///           - name: hello-1
///             image: us-docker.pkg.dev/cloudrun/container/worker-pool
///             volumeMounts:
///               - name: empty-dir-volume
///                 mountPath: /mnt
///           - name: hello-2
///             image: us-docker.pkg.dev/cloudrun/container/worker-pool
///         volumes:
///           - name: empty-dir-volume
///             emptyDir:
///               medium: MEMORY
///               sizeLimit: 256Mi
/// ```
///
/// ### Cloudrunv2 Worker Pool Mount Gcs
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultBucket = new gcp.storage.Bucket("default", {
///     name: "cloudrun-worker-pool",
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const _default = new gcp.cloudrunv2.WorkerPool("default", {
///     name: "cloudrun-worker-pool",
///     location: "us-central1",
///     deletionProtection: false,
///     launchStage: "BETA",
///     template: {
///         containers: [{
///             image: "us-docker.pkg.dev/cloudrun/container/worker-pool",
///             volumeMounts: [{
///                 name: "bucket",
///                 mountPath: "/var/www",
///             }],
///         }],
///         volumes: [{
///             name: "bucket",
///             gcs: {
///                 bucket: defaultBucket.name,
///                 readOnly: false,
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_bucket = gcp.storage.Bucket("default",
///     name="cloudrun-worker-pool",
///     location="US",
///     uniform_bucket_level_access=True)
/// default = gcp.cloudrunv2.WorkerPool("default",
///     name="cloudrun-worker-pool",
///     location="us-central1",
///     deletion_protection=False,
///     launch_stage="BETA",
///     template={
///         "containers": [{
///             "image": "us-docker.pkg.dev/cloudrun/container/worker-pool",
///             "volume_mounts": [{
///                 "name": "bucket",
///                 "mount_path": "/var/www",
///             }],
///         }],
///         "volumes": [{
///             "name": "bucket",
///             "gcs": {
///                 "bucket": default_bucket.name,
///                 "read_only": False,
///             },
///         }],
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
///     var defaultBucket = new Gcp.Storage.Bucket("default", new()
///     {
///         Name = "cloudrun-worker-pool",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var @default = new Gcp.CloudRunV2.WorkerPool("default", new()
///     {
///         Name = "cloudrun-worker-pool",
///         Location = "us-central1",
///         DeletionProtection = false,
///         LaunchStage = "BETA",
///         Template = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateArgs
///         {
///             Containers = new[]
///             {
///                 new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerArgs
///                 {
///                     Image = "us-docker.pkg.dev/cloudrun/container/worker-pool",
///                     VolumeMounts = new[]
///                     {
///                         new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerVolumeMountArgs
///                         {
///                             Name = "bucket",
///                             MountPath = "/var/www",
///                         },
///                     },
///                 },
///             },
///             Volumes = new[]
///             {
///                 new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateVolumeArgs
///                 {
///                     Name = "bucket",
///                     Gcs = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateVolumeGcsArgs
///                     {
///                         Bucket = defaultBucket.Name,
///                         ReadOnly = false,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultBucket, err := storage.NewBucket(ctx, "default", &storage.BucketArgs{
/// 			Name:                     pulumi.String("cloudrun-worker-pool"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudrunv2.NewWorkerPool(ctx, "default", &cloudrunv2.WorkerPoolArgs{
/// 			Name:               pulumi.String("cloudrun-worker-pool"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			LaunchStage:        pulumi.String("BETA"),
/// 			Template: &cloudrunv2.WorkerPoolTemplateArgs{
/// 				Containers: cloudrunv2.WorkerPoolTemplateContainerArray{
/// 					&cloudrunv2.WorkerPoolTemplateContainerArgs{
/// 						Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/worker-pool"),
/// 						VolumeMounts: cloudrunv2.WorkerPoolTemplateContainerVolumeMountArray{
/// 							&cloudrunv2.WorkerPoolTemplateContainerVolumeMountArgs{
/// 								Name:      pulumi.String("bucket"),
/// 								MountPath: pulumi.String("/var/www"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Volumes: cloudrunv2.WorkerPoolTemplateVolumeArray{
/// 					&cloudrunv2.WorkerPoolTemplateVolumeArgs{
/// 						Name: pulumi.String("bucket"),
/// 						Gcs: &cloudrunv2.WorkerPoolTemplateVolumeGcsArgs{
/// 							Bucket:   defaultBucket.Name,
/// 							ReadOnly: pulumi.Bool(false),
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.cloudrunv2.WorkerPool;
/// import com.pulumi.gcp.cloudrunv2.WorkerPoolArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.WorkerPoolTemplateArgs;
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
///         var defaultBucket = new Bucket("defaultBucket", BucketArgs.builder()
///             .name("cloudrun-worker-pool")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var default_ = new WorkerPool("default", WorkerPoolArgs.builder()
///             .name("cloudrun-worker-pool")
///             .location("us-central1")
///             .deletionProtection(false)
///             .launchStage("BETA")
///             .template(WorkerPoolTemplateArgs.builder()
///                 .containers(WorkerPoolTemplateContainerArgs.builder()
///                     .image("us-docker.pkg.dev/cloudrun/container/worker-pool")
///                     .volumeMounts(WorkerPoolTemplateContainerVolumeMountArgs.builder()
///                         .name("bucket")
///                         .mountPath("/var/www")
///                         .build())
///                     .build())
///                 .volumes(WorkerPoolTemplateVolumeArgs.builder()
///                     .name("bucket")
///                     .gcs(WorkerPoolTemplateVolumeGcsArgs.builder()
///                         .bucket(defaultBucket.name())
///                         .readOnly(false)
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
///   default:
///     type: gcp:cloudrunv2:WorkerPool
///     properties:
///       name: cloudrun-worker-pool
///       location: us-central1
///       deletionProtection: false
///       launchStage: BETA
///       template:
///         containers:
///           - image: us-docker.pkg.dev/cloudrun/container/worker-pool
///             volumeMounts:
///               - name: bucket
///                 mountPath: /var/www
///         volumes:
///           - name: bucket
///             gcs:
///               bucket: ${defaultBucket.name}
///               readOnly: false
///   defaultBucket:
///     type: gcp:storage:Bucket
///     name: default
///     properties:
///       name: cloudrun-worker-pool
///       location: US
///       uniformBucketLevelAccess: true
/// ```
///
/// ### Cloudrunv2 Worker Pool Mount Nfs
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultInstance = new gcp.filestore.Instance("default", {
///     name: "cloudrun-worker-pool",
///     location: "us-central1-b",
///     tier: "BASIC_HDD",
///     fileShares: {
///         capacityGb: 1024,
///         name: "share1",
///     },
///     networks: [{
///         network: "default",
///         modes: ["MODE_IPV4"],
///     }],
/// });
/// const _default = new gcp.cloudrunv2.WorkerPool("default", {
///     name: "cloudrun-worker-pool",
///     location: "us-central1",
///     deletionProtection: false,
///     launchStage: "BETA",
///     template: {
///         containers: [{
///             image: "us-docker.pkg.dev/cloudrun/container/worker-pool:latest",
///             volumeMounts: [{
///                 name: "nfs",
///                 mountPath: "/mnt/nfs/filestore",
///             }],
///         }],
///         vpcAccess: {
///             networkInterfaces: [{
///                 network: "default",
///                 subnetwork: "default",
///             }],
///         },
///         volumes: [{
///             name: "nfs",
///             nfs: {
///                 server: defaultInstance.networks.apply(networks => networks[0].ipAddresses?.[0]),
///                 path: "/share1",
///                 readOnly: false,
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_instance = gcp.filestore.Instance("default",
///     name="cloudrun-worker-pool",
///     location="us-central1-b",
///     tier="BASIC_HDD",
///     file_shares={
///         "capacity_gb": 1024,
///         "name": "share1",
///     },
///     networks=[{
///         "network": "default",
///         "modes": ["MODE_IPV4"],
///     }])
/// default = gcp.cloudrunv2.WorkerPool("default",
///     name="cloudrun-worker-pool",
///     location="us-central1",
///     deletion_protection=False,
///     launch_stage="BETA",
///     template={
///         "containers": [{
///             "image": "us-docker.pkg.dev/cloudrun/container/worker-pool:latest",
///             "volume_mounts": [{
///                 "name": "nfs",
///                 "mount_path": "/mnt/nfs/filestore",
///             }],
///         }],
///         "vpc_access": {
///             "network_interfaces": [{
///                 "network": "default",
///                 "subnetwork": "default",
///             }],
///         },
///         "volumes": [{
///             "name": "nfs",
///             "nfs": {
///                 "server": default_instance.networks[0].ip_addresses[0],
///                 "path": "/share1",
///                 "read_only": False,
///             },
///         }],
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
///     var defaultInstance = new Gcp.Filestore.Instance("default", new()
///     {
///         Name = "cloudrun-worker-pool",
///         Location = "us-central1-b",
///         Tier = "BASIC_HDD",
///         FileShares = new Gcp.Filestore.Inputs.InstanceFileSharesArgs
///         {
///             CapacityGb = 1024,
///             Name = "share1",
///         },
///         Networks = new[]
///         {
///             new Gcp.Filestore.Inputs.InstanceNetworkArgs
///             {
///                 Network = "default",
///                 Modes = new[]
///                 {
///                     "MODE_IPV4",
///                 },
///             },
///         },
///     });
///
///     var @default = new Gcp.CloudRunV2.WorkerPool("default", new()
///     {
///         Name = "cloudrun-worker-pool",
///         Location = "us-central1",
///         DeletionProtection = false,
///         LaunchStage = "BETA",
///         Template = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateArgs
///         {
///             Containers = new[]
///             {
///                 new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerArgs
///                 {
///                     Image = "us-docker.pkg.dev/cloudrun/container/worker-pool:latest",
///                     VolumeMounts = new[]
///                     {
///                         new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerVolumeMountArgs
///                         {
///                             Name = "nfs",
///                             MountPath = "/mnt/nfs/filestore",
///                         },
///                     },
///                 },
///             },
///             VpcAccess = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateVpcAccessArgs
///             {
///                 NetworkInterfaces = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateVpcAccessNetworkInterfaceArgs
///                     {
///                         Network = "default",
///                         Subnetwork = "default",
///                     },
///                 },
///             },
///             Volumes = new[]
///             {
///                 new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateVolumeArgs
///                 {
///                     Name = "nfs",
///                     Nfs = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateVolumeNfsArgs
///                     {
///                         Server = defaultInstance.Networks.Apply(networks => networks[0].IpAddresses[0]),
///                         Path = "/share1",
///                         ReadOnly = false,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/filestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultInstance, err := filestore.NewInstance(ctx, "default", &filestore.InstanceArgs{
/// 			Name:     pulumi.String("cloudrun-worker-pool"),
/// 			Location: pulumi.String("us-central1-b"),
/// 			Tier:     pulumi.String("BASIC_HDD"),
/// 			FileShares: &filestore.InstanceFileSharesArgs{
/// 				CapacityGb: pulumi.Int(1024),
/// 				Name:       pulumi.String("share1"),
/// 			},
/// 			Networks: filestore.InstanceNetworkArray{
/// 				&filestore.InstanceNetworkArgs{
/// 					Network: pulumi.String("default"),
/// 					Modes: pulumi.StringArray{
/// 						pulumi.String("MODE_IPV4"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudrunv2.NewWorkerPool(ctx, "default", &cloudrunv2.WorkerPoolArgs{
/// 			Name:               pulumi.String("cloudrun-worker-pool"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			LaunchStage:        pulumi.String("BETA"),
/// 			Template: &cloudrunv2.WorkerPoolTemplateArgs{
/// 				Containers: cloudrunv2.WorkerPoolTemplateContainerArray{
/// 					&cloudrunv2.WorkerPoolTemplateContainerArgs{
/// 						Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/worker-pool:latest"),
/// 						VolumeMounts: cloudrunv2.WorkerPoolTemplateContainerVolumeMountArray{
/// 							&cloudrunv2.WorkerPoolTemplateContainerVolumeMountArgs{
/// 								Name:      pulumi.String("nfs"),
/// 								MountPath: pulumi.String("/mnt/nfs/filestore"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				VpcAccess: &cloudrunv2.WorkerPoolTemplateVpcAccessArgs{
/// 					NetworkInterfaces: cloudrunv2.WorkerPoolTemplateVpcAccessNetworkInterfaceArray{
/// 						&cloudrunv2.WorkerPoolTemplateVpcAccessNetworkInterfaceArgs{
/// 							Network:    pulumi.String("default"),
/// 							Subnetwork: pulumi.String("default"),
/// 						},
/// 					},
/// 				},
/// 				Volumes: cloudrunv2.WorkerPoolTemplateVolumeArray{
/// 					&cloudrunv2.WorkerPoolTemplateVolumeArgs{
/// 						Name: pulumi.String("nfs"),
/// 						Nfs: &cloudrunv2.WorkerPoolTemplateVolumeNfsArgs{
/// 							Server: defaultInstance.Networks.ApplyT(func(networks []filestore.InstanceNetwork) (*string, error) {
/// 								return &networks[0].IpAddresses[0], nil
/// 							}).(pulumi.StringPtrOutput),
/// 							Path:     pulumi.String("/share1"),
/// 							ReadOnly: pulumi.Bool(false),
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
/// import com.pulumi.gcp.filestore.Instance;
/// import com.pulumi.gcp.filestore.InstanceArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceFileSharesArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceNetworkArgs;
/// import com.pulumi.gcp.cloudrunv2.WorkerPool;
/// import com.pulumi.gcp.cloudrunv2.WorkerPoolArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.WorkerPoolTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.WorkerPoolTemplateVpcAccessArgs;
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
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .name("cloudrun-worker-pool")
///             .location("us-central1-b")
///             .tier("BASIC_HDD")
///             .fileShares(InstanceFileSharesArgs.builder()
///                 .capacityGb(1024)
///                 .name("share1")
///                 .build())
///             .networks(InstanceNetworkArgs.builder()
///                 .network("default")
///                 .modes("MODE_IPV4")
///                 .build())
///             .build());
///
///         var default_ = new WorkerPool("default", WorkerPoolArgs.builder()
///             .name("cloudrun-worker-pool")
///             .location("us-central1")
///             .deletionProtection(false)
///             .launchStage("BETA")
///             .template(WorkerPoolTemplateArgs.builder()
///                 .containers(WorkerPoolTemplateContainerArgs.builder()
///                     .image("us-docker.pkg.dev/cloudrun/container/worker-pool:latest")
///                     .volumeMounts(WorkerPoolTemplateContainerVolumeMountArgs.builder()
///                         .name("nfs")
///                         .mountPath("/mnt/nfs/filestore")
///                         .build())
///                     .build())
///                 .vpcAccess(WorkerPoolTemplateVpcAccessArgs.builder()
///                     .networkInterfaces(WorkerPoolTemplateVpcAccessNetworkInterfaceArgs.builder()
///                         .network("default")
///                         .subnetwork("default")
///                         .build())
///                     .build())
///                 .volumes(WorkerPoolTemplateVolumeArgs.builder()
///                     .name("nfs")
///                     .nfs(WorkerPoolTemplateVolumeNfsArgs.builder()
///                         .server(defaultInstance.networks().applyValue(_networks -> _networks[0].ipAddresses()[0]))
///                         .path("/share1")
///                         .readOnly(false)
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
///   default:
///     type: gcp:cloudrunv2:WorkerPool
///     properties:
///       name: cloudrun-worker-pool
///       location: us-central1
///       deletionProtection: false
///       launchStage: BETA
///       template:
///         containers:
///           - image: us-docker.pkg.dev/cloudrun/container/worker-pool:latest
///             volumeMounts:
///               - name: nfs
///                 mountPath: /mnt/nfs/filestore
///         vpcAccess:
///           networkInterfaces:
///             - network: default
///               subnetwork: default
///         volumes:
///           - name: nfs
///             nfs:
///               server: ${defaultInstance.networks[0].ipAddresses[0]}
///               path: /share1
///               readOnly: false
///   defaultInstance:
///     type: gcp:filestore:Instance
///     name: default
///     properties:
///       name: cloudrun-worker-pool
///       location: us-central1-b
///       tier: BASIC_HDD
///       fileShares:
///         capacityGb: 1024
///         name: share1
///       networks:
///         - network: default
///           modes:
///             - MODE_IPV4
/// ```
///
/// ### Cloudrunv2 Worker Pool Startup Liveness Probe
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const customTest = new gcp.compute.Network("custom_test", {
///     name: "wp-net",
///     autoCreateSubnetworks: false,
/// });
/// const customTestSubnetwork = new gcp.compute.Subnetwork("custom_test", {
///     name: "wp-subnet",
///     ipCidrRange: "10.2.0.0/28",
///     region: "us-central1",
///     network: customTest.id,
/// });
/// const _default = new gcp.cloudrunv2.WorkerPool("default", {
///     name: "cloudrun-worker-pool",
///     location: "us-central1",
///     launchStage: "BETA",
///     deletionProtection: false,
///     template: {
///         annotations: {},
///         labels: {},
///         containers: [{
///             image: "us-docker.pkg.dev/cloudrun/container/hello",
///             commands: [],
///             args: [],
///             startupProbe: {
///                 initialDelaySeconds: 0,
///                 timeoutSeconds: 1,
///                 periodSeconds: 3,
///                 failureThreshold: 3,
///                 tcpSocket: {
///                     port: 8080,
///                 },
///             },
///             livenessProbe: {
///                 initialDelaySeconds: 0,
///                 timeoutSeconds: 1,
///                 periodSeconds: 10,
///                 failureThreshold: 3,
///                 httpGet: {
///                     path: "/",
///                     port: 8080,
///                 },
///             },
///         }],
///         vpcAccess: {
///             networkInterfaces: [{
///                 network: customTest.id,
///                 subnetwork: customTestSubnetwork.id,
///                 tags: [],
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test = gcp.compute.Network("custom_test",
///     name="wp-net",
///     auto_create_subnetworks=False)
/// custom_test_subnetwork = gcp.compute.Subnetwork("custom_test",
///     name="wp-subnet",
///     ip_cidr_range="10.2.0.0/28",
///     region="us-central1",
///     network=custom_test.id)
/// default = gcp.cloudrunv2.WorkerPool("default",
///     name="cloudrun-worker-pool",
///     location="us-central1",
///     launch_stage="BETA",
///     deletion_protection=False,
///     template={
///         "annotations": {},
///         "labels": {},
///         "containers": [{
///             "image": "us-docker.pkg.dev/cloudrun/container/hello",
///             "commands": [],
///             "args": [],
///             "startup_probe": {
///                 "initial_delay_seconds": 0,
///                 "timeout_seconds": 1,
///                 "period_seconds": 3,
///                 "failure_threshold": 3,
///                 "tcp_socket": {
///                     "port": 8080,
///                 },
///             },
///             "liveness_probe": {
///                 "initial_delay_seconds": 0,
///                 "timeout_seconds": 1,
///                 "period_seconds": 10,
///                 "failure_threshold": 3,
///                 "http_get": {
///                     "path": "/",
///                     "port": 8080,
///                 },
///             },
///         }],
///         "vpc_access": {
///             "network_interfaces": [{
///                 "network": custom_test.id,
///                 "subnetwork": custom_test_subnetwork.id,
///                 "tags": [],
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
///     var customTest = new Gcp.Compute.Network("custom_test", new()
///     {
///         Name = "wp-net",
///         AutoCreateSubnetworks = false,
///     });
///
///     var customTestSubnetwork = new Gcp.Compute.Subnetwork("custom_test", new()
///     {
///         Name = "wp-subnet",
///         IpCidrRange = "10.2.0.0/28",
///         Region = "us-central1",
///         Network = customTest.Id,
///     });
///
///     var @default = new Gcp.CloudRunV2.WorkerPool("default", new()
///     {
///         Name = "cloudrun-worker-pool",
///         Location = "us-central1",
///         LaunchStage = "BETA",
///         DeletionProtection = false,
///         Template = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateArgs
///         {
///             Annotations = null,
///             Labels = null,
///             Containers = new[]
///             {
///                 new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerArgs
///                 {
///                     Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                     Commands = new() { },
///                     Args = new() { },
///                     StartupProbe = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerStartupProbeArgs
///                     {
///                         InitialDelaySeconds = 0,
///                         TimeoutSeconds = 1,
///                         PeriodSeconds = 3,
///                         FailureThreshold = 3,
///                         TcpSocket = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerStartupProbeTcpSocketArgs
///                         {
///                             Port = 8080,
///                         },
///                     },
///                     LivenessProbe = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerLivenessProbeArgs
///                     {
///                         InitialDelaySeconds = 0,
///                         TimeoutSeconds = 1,
///                         PeriodSeconds = 10,
///                         FailureThreshold = 3,
///                         HttpGet = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateContainerLivenessProbeHttpGetArgs
///                         {
///                             Path = "/",
///                             Port = 8080,
///                         },
///                     },
///                 },
///             },
///             VpcAccess = new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateVpcAccessArgs
///             {
///                 NetworkInterfaces = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.WorkerPoolTemplateVpcAccessNetworkInterfaceArgs
///                     {
///                         Network = customTest.Id,
///                         Subnetwork = customTestSubnetwork.Id,
///                         Tags = new() { },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		customTest, err := compute.NewNetwork(ctx, "custom_test", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("wp-net"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		customTestSubnetwork, err := compute.NewSubnetwork(ctx, "custom_test", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("wp-subnet"),
/// 			IpCidrRange: pulumi.String("10.2.0.0/28"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     customTest.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudrunv2.NewWorkerPool(ctx, "default", &cloudrunv2.WorkerPoolArgs{
/// 			Name:               pulumi.String("cloudrun-worker-pool"),
/// 			Location:           pulumi.String("us-central1"),
/// 			LaunchStage:        pulumi.String("BETA"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Template: &cloudrunv2.WorkerPoolTemplateArgs{
/// 				Annotations: pulumi.StringMap{},
/// 				Labels:      pulumi.StringMap{},
/// 				Containers: cloudrunv2.WorkerPoolTemplateContainerArray{
/// 					&cloudrunv2.WorkerPoolTemplateContainerArgs{
/// 						Image:    pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 						Commands: pulumi.StringArray{},
/// 						Args:     pulumi.StringArray{},
/// 						StartupProbe: &cloudrunv2.WorkerPoolTemplateContainerStartupProbeArgs{
/// 							InitialDelaySeconds: pulumi.Int(0),
/// 							TimeoutSeconds:      pulumi.Int(1),
/// 							PeriodSeconds:       pulumi.Int(3),
/// 							FailureThreshold:    pulumi.Int(3),
/// 							TcpSocket: &cloudrunv2.WorkerPoolTemplateContainerStartupProbeTcpSocketArgs{
/// 								Port: pulumi.Int(8080),
/// 							},
/// 						},
/// 						LivenessProbe: &cloudrunv2.WorkerPoolTemplateContainerLivenessProbeArgs{
/// 							InitialDelaySeconds: pulumi.Int(0),
/// 							TimeoutSeconds:      pulumi.Int(1),
/// 							PeriodSeconds:       pulumi.Int(10),
/// 							FailureThreshold:    pulumi.Int(3),
/// 							HttpGet: &cloudrunv2.WorkerPoolTemplateContainerLivenessProbeHttpGetArgs{
/// 								Path: pulumi.String("/"),
/// 								Port: pulumi.Int(8080),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				VpcAccess: &cloudrunv2.WorkerPoolTemplateVpcAccessArgs{
/// 					NetworkInterfaces: cloudrunv2.WorkerPoolTemplateVpcAccessNetworkInterfaceArray{
/// 						&cloudrunv2.WorkerPoolTemplateVpcAccessNetworkInterfaceArgs{
/// 							Network:    customTest.ID(),
/// 							Subnetwork: customTestSubnetwork.ID(),
/// 							Tags:       pulumi.StringArray{},
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.cloudrunv2.WorkerPool;
/// import com.pulumi.gcp.cloudrunv2.WorkerPoolArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.WorkerPoolTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.WorkerPoolTemplateVpcAccessArgs;
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
///         var customTest = new Network("customTest", NetworkArgs.builder()
///             .name("wp-net")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var customTestSubnetwork = new Subnetwork("customTestSubnetwork", SubnetworkArgs.builder()
///             .name("wp-subnet")
///             .ipCidrRange("10.2.0.0/28")
///             .region("us-central1")
///             .network(customTest.id())
///             .build());
///
///         var default_ = new WorkerPool("default", WorkerPoolArgs.builder()
///             .name("cloudrun-worker-pool")
///             .location("us-central1")
///             .launchStage("BETA")
///             .deletionProtection(false)
///             .template(WorkerPoolTemplateArgs.builder()
///                 .annotations(Map.ofEntries(
///                 ))
///                 .labels(Map.ofEntries(
///                 ))
///                 .containers(WorkerPoolTemplateContainerArgs.builder()
///                     .image("us-docker.pkg.dev/cloudrun/container/hello")
///                     .commands()
///                     .args()
///                     .startupProbe(WorkerPoolTemplateContainerStartupProbeArgs.builder()
///                         .initialDelaySeconds(0)
///                         .timeoutSeconds(1)
///                         .periodSeconds(3)
///                         .failureThreshold(3)
///                         .tcpSocket(WorkerPoolTemplateContainerStartupProbeTcpSocketArgs.builder()
///                             .port(8080)
///                             .build())
///                         .build())
///                     .livenessProbe(WorkerPoolTemplateContainerLivenessProbeArgs.builder()
///                         .initialDelaySeconds(0)
///                         .timeoutSeconds(1)
///                         .periodSeconds(10)
///                         .failureThreshold(3)
///                         .httpGet(WorkerPoolTemplateContainerLivenessProbeHttpGetArgs.builder()
///                             .path("/")
///                             .port(8080)
///                             .build())
///                         .build())
///                     .build())
///                 .vpcAccess(WorkerPoolTemplateVpcAccessArgs.builder()
///                     .networkInterfaces(WorkerPoolTemplateVpcAccessNetworkInterfaceArgs.builder()
///                         .network(customTest.id())
///                         .subnetwork(customTestSubnetwork.id())
///                         .tags()
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
///   customTest:
///     type: gcp:compute:Network
///     name: custom_test
///     properties:
///       name: wp-net
///       autoCreateSubnetworks: false
///   customTestSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: custom_test
///     properties:
///       name: wp-subnet
///       ipCidrRange: 10.2.0.0/28
///       region: us-central1
///       network: ${customTest.id}
///   default:
///     type: gcp:cloudrunv2:WorkerPool
///     properties:
///       name: cloudrun-worker-pool
///       location: us-central1
///       launchStage: BETA
///       deletionProtection: false
///       template:
///         annotations: {}
///         labels: {}
///         containers:
///           - image: us-docker.pkg.dev/cloudrun/container/hello
///             commands: []
///             args: []
///             startupProbe:
///               initialDelaySeconds: 0
///               timeoutSeconds: 1
///               periodSeconds: 3
///               failureThreshold: 3
///               tcpSocket:
///                 port: 8080
///             livenessProbe:
///               initialDelaySeconds: 0
///               timeoutSeconds: 1
///               periodSeconds: 10
///               failureThreshold: 3
///               httpGet:
///                 path: /
///                 port: 8080
///         vpcAccess:
///           networkInterfaces:
///             - network: ${customTest.id}
///               subnetwork: ${customTestSubnetwork.id}
///               tags: []
/// ```
///
///
/// ## Import
///
/// WorkerPool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/workerPools/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, WorkerPool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/workerPool:WorkerPool default projects/{{project}}/locations/{{location}}/workerPools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/workerPool:WorkerPool default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/workerPool:WorkerPool default {{location}}/{{name}}
/// ```
class WorkerPool extends pulumi.CustomResource {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources.
  /// All system annotations in v1 now have a corresponding field in v2 WorkerPool.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Settings for the Binary Authorization feature.
  /// Structure is documented below.
  late final pulumi.Output<WorkerPoolBinaryAuthorization?> binaryAuthorization;
  /// Arbitrary identifier for the API client.
  late final pulumi.Output<String?> client;
  /// Arbitrary version identifier for the API client.
  late final pulumi.Output<String?> clientVersion;
  /// The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the WorkerPool does not reach its Serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  late final pulumi.Output<List<WorkerPoolCondition>> conditions;
  /// The creation time.
  late final pulumi.Output<String> createTime;
  /// Email address of the authenticated creator.
  late final pulumi.Output<String> creator;
  /// (Optional, Deprecated)
  /// One or more custom audiences that you want this worker pool to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests.
  /// For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.
  ///
  /// > **Warning:** `custom_audiences` is deprecated since it is not applicable to WorkerPool resource and will be removed in a future major release.
  late final pulumi.Output<List<String>?> customAudiences;
  /// The deletion time.
  late final pulumi.Output<String> deleteTime;
  late final pulumi.Output<bool?> deletionProtection;
  /// User-provided description of the WorkerPool. This field currently has a 512-character limit.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  late final pulumi.Output<String> etag;
  /// For a deleted resource, the time after which it will be permanently deleted.
  late final pulumi.Output<String> expireTime;
  /// A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  late final pulumi.Output<String> generation;
  /// Detailed status information for corresponding instance splits. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  late final pulumi.Output<List<WorkerPoolInstanceSplitStatus>> instanceSplitStatuses;
  /// Specifies how to distribute instances over a collection of Revisions belonging to the WorkerPool. If instance split is empty or not provided, defaults to 100% instances assigned to the latest Ready Revision.
  /// Structure is documented below.
  late final pulumi.Output<List<WorkerPoolInstanceSplit>> instanceSplits;
  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with  `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 WorkerPool.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Email address of the last authenticated modifier.
  late final pulumi.Output<String> lastModifier;
  /// Name of the last created revision. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  late final pulumi.Output<String> latestCreatedRevision;
  /// Name of the latest revision that is serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  late final pulumi.Output<String> latestReadyRevision;
  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// Possible values are: `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  late final pulumi.Output<String> launchStage;
  /// The location of the cloud run worker pool
  late final pulumi.Output<String> location;
  /// Name of the WorkerPool.
  late final pulumi.Output<String> name;
  /// The generation of this WorkerPool currently serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  late final pulumi.Output<String> observedGeneration;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Returns true if the WorkerPool is currently being acted upon by the system to bring it into the desired state.
  /// When a new WorkerPool is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the WorkerPool to the desired serving state. This process is called reconciliation. While reconciliation is in process, observedGeneration, latest_ready_revison, trafficStatuses, and uri will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the serving state matches the WorkerPool, or there was an error, and reconciliation failed. This state can be found in terminalCondition.state.
  /// If reconciliation succeeded, the following fields will match: traffic and trafficStatuses, observedGeneration and generation, latestReadyRevision and latestCreatedRevision.
  /// If reconciliation failed, trafficStatuses, observedGeneration, and latestReadyRevision will have the state of the last serving revision, or empty for newly created WorkerPools. Additional information on the failure can be found in terminalCondition and conditions.
  late final pulumi.Output<bool> reconciling;
  /// Scaling settings that apply to the worker pool.
  /// Structure is documented below.
  late final pulumi.Output<WorkerPoolScaling> scaling;
  /// The template used to create revisions for this WorkerPool.
  /// Structure is documented below.
  late final pulumi.Output<WorkerPoolTemplate> template;
  /// The Condition of this WorkerPool, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  late final pulumi.Output<List<WorkerPoolTerminalCondition>> terminalConditions;
  /// Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  late final pulumi.Output<String> uid;
  /// The last-modified time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [WorkerPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkerPool]. {@macro pulumi_cloudrunv2_worker_pool_worker_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkerPool(
    String name, {
    WorkerPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudrunv2/workerPool:WorkerPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.binaryAuthorization = registerOutput<WorkerPoolBinaryAuthorization?>('binaryAuthorization');
    this.client = registerOutput<String?>('client');
    this.clientVersion = registerOutput<String?>('clientVersion');
    this.conditions = registerOutput<List<WorkerPoolCondition>>('conditions');
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<String>('creator');
    this.customAudiences = registerOutput<List<String>?>('customAudiences');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.expireTime = registerOutput<String>('expireTime');
    this.generation = registerOutput<String>('generation');
    this.instanceSplitStatuses = registerOutput<List<WorkerPoolInstanceSplitStatus>>('instanceSplitStatuses');
    this.instanceSplits = registerOutput<List<WorkerPoolInstanceSplit>>('instanceSplits');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.lastModifier = registerOutput<String>('lastModifier');
    this.latestCreatedRevision = registerOutput<String>('latestCreatedRevision');
    this.latestReadyRevision = registerOutput<String>('latestReadyRevision');
    this.launchStage = registerOutput<String>('launchStage');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.observedGeneration = registerOutput<String>('observedGeneration');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.scaling = registerOutput<WorkerPoolScaling>('scaling');
    this.template = registerOutput<WorkerPoolTemplate>('template');
    this.terminalConditions = registerOutput<List<WorkerPoolTerminalCondition>>('terminalConditions');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [WorkerPool] resource's state with the given [name] and [id].
  static WorkerPool get(
    String name,
    pulumi.Input<String> id, {
    WorkerPoolState? state,
  }) {
    return WorkerPool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkerPool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudrunv2/workerPool:WorkerPool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.binaryAuthorization = registerOutput<WorkerPoolBinaryAuthorization?>('binaryAuthorization');
    this.client = registerOutput<String?>('client');
    this.clientVersion = registerOutput<String?>('clientVersion');
    this.conditions = registerOutput<List<WorkerPoolCondition>>('conditions');
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<String>('creator');
    this.customAudiences = registerOutput<List<String>?>('customAudiences');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.expireTime = registerOutput<String>('expireTime');
    this.generation = registerOutput<String>('generation');
    this.instanceSplitStatuses = registerOutput<List<WorkerPoolInstanceSplitStatus>>('instanceSplitStatuses');
    this.instanceSplits = registerOutput<List<WorkerPoolInstanceSplit>>('instanceSplits');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.lastModifier = registerOutput<String>('lastModifier');
    this.latestCreatedRevision = registerOutput<String>('latestCreatedRevision');
    this.latestReadyRevision = registerOutput<String>('latestReadyRevision');
    this.launchStage = registerOutput<String>('launchStage');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.observedGeneration = registerOutput<String>('observedGeneration');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.scaling = registerOutput<WorkerPoolScaling>('scaling');
    this.template = registerOutput<WorkerPoolTemplate>('template');
    this.terminalConditions = registerOutput<List<WorkerPoolTerminalCondition>>('terminalConditions');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
