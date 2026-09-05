import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_args.dart';
import 'job_binary_authorization.dart';
import 'job_condition.dart';
import 'job_latest_created_execution.dart';
import 'job_state.dart';
import 'job_template.dart';
import 'job_terminal_condition.dart';

/// A Cloud Run Job resource that references a container image which is run to completion.
///
///
/// To get more information about Job, see:
///
/// * [API documentation](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.jobs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/run/docs/)
///
/// ## Example Usage
///
/// ### Cloudrunv2 Job Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Job("default", {
///     name: "cloudrun-job",
///     location: "us-central1",
///     deletionProtection: false,
///     template: {
///         template: {
///             containers: [{
///                 image: "us-docker.pkg.dev/cloudrun/container/job",
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Job("default",
///     name="cloudrun-job",
///     location="us-central1",
///     deletion_protection=False,
///     template={
///         "template": {
///             "containers": [{
///                 "image": "us-docker.pkg.dev/cloudrun/container/job",
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
///     var @default = new Gcp.CloudRunV2.Job("default", new()
///     {
///         Name = "cloudrun-job",
///         Location = "us-central1",
///         DeletionProtection = false,
///         Template = new Gcp.CloudRunV2.Inputs.JobTemplateArgs
///         {
///             Template = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerArgs
///                     {
///                         Image = "us-docker.pkg.dev/cloudrun/container/job",
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
/// 		_, err := cloudrunv2.NewJob(ctx, "default", &cloudrunv2.JobArgs{
/// 			Name:               pulumi.String("cloudrun-job"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Template: &cloudrunv2.JobTemplateArgs{
/// 				Template: &cloudrunv2.JobTemplateTemplateArgs{
/// 					Containers: cloudrunv2.JobTemplateTemplateContainerArray{
/// 						&cloudrunv2.JobTemplateTemplateContainerArgs{
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/job"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrunv2_job" "default" {
///   name                = "cloudrun-job"
///   location            = "us-central1"
///   deletion_protection = false
///   template = {
///     template = {
///       containers = [{
///         "image" = "us-docker.pkg.dev/cloudrun/container/job"
///       }]
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
/// import com.pulumi.gcp.cloudrunv2.Job;
/// import com.pulumi.gcp.cloudrunv2.JobArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerArgs;
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
///         var default_ = new Job("default", JobArgs.builder()
///             .name("cloudrun-job")
///             .location("us-central1")
///             .deletionProtection(false)
///             .template(JobTemplateArgs.builder()
///                 .template(JobTemplateTemplateArgs.builder()
///                     .containers(JobTemplateTemplateContainerArgs.builder()
///                         .image("us-docker.pkg.dev/cloudrun/container/job")
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
///     type: gcp:cloudrunv2:Job
///     properties:
///       name: cloudrun-job
///       location: us-central1
///       deletionProtection: false
///       template:
///         template:
///           containers:
///             - image: us-docker.pkg.dev/cloudrun/container/job
/// ```
///
/// ### Cloudrunv2 Job Limits
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Job("default", {
///     name: "cloudrun-job",
///     location: "us-central1",
///     deletionProtection: false,
///     template: {
///         template: {
///             containers: [{
///                 image: "us-docker.pkg.dev/cloudrun/container/job",
///                 resources: {
///                     limits: {
///                         cpu: "2",
///                         memory: "1024Mi",
///                     },
///                 },
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Job("default",
///     name="cloudrun-job",
///     location="us-central1",
///     deletion_protection=False,
///     template={
///         "template": {
///             "containers": [{
///                 "image": "us-docker.pkg.dev/cloudrun/container/job",
///                 "resources": {
///                     "limits": {
///                         "cpu": "2",
///                         "memory": "1024Mi",
///                     },
///                 },
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
///     var @default = new Gcp.CloudRunV2.Job("default", new()
///     {
///         Name = "cloudrun-job",
///         Location = "us-central1",
///         DeletionProtection = false,
///         Template = new Gcp.CloudRunV2.Inputs.JobTemplateArgs
///         {
///             Template = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerArgs
///                     {
///                         Image = "us-docker.pkg.dev/cloudrun/container/job",
///                         Resources = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerResourcesArgs
///                         {
///                             Limits =
///                             {
///                                 { "cpu", "2" },
///                                 { "memory", "1024Mi" },
///                             },
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
/// 		_, err := cloudrunv2.NewJob(ctx, "default", &cloudrunv2.JobArgs{
/// 			Name:               pulumi.String("cloudrun-job"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Template: &cloudrunv2.JobTemplateArgs{
/// 				Template: &cloudrunv2.JobTemplateTemplateArgs{
/// 					Containers: cloudrunv2.JobTemplateTemplateContainerArray{
/// 						&cloudrunv2.JobTemplateTemplateContainerArgs{
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/job"),
/// 							Resources: &cloudrunv2.JobTemplateTemplateContainerResourcesArgs{
/// 								Limits: pulumi.StringMap{
/// 									"cpu":    pulumi.String("2"),
/// 									"memory": pulumi.String("1024Mi"),
/// 								},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrunv2_job" "default" {
///   name                = "cloudrun-job"
///   location            = "us-central1"
///   deletion_protection = false
///   template = {
///     template = {
///       containers = [{
///         "image" = "us-docker.pkg.dev/cloudrun/container/job"
///         "resources" = {
///           "limits" = {
///             "cpu"    = "2"
///             "memory" = "1024Mi"
///           }
///         }
///       }]
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
/// import com.pulumi.gcp.cloudrunv2.Job;
/// import com.pulumi.gcp.cloudrunv2.JobArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerResourcesArgs;
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
///         var default_ = new Job("default", JobArgs.builder()
///             .name("cloudrun-job")
///             .location("us-central1")
///             .deletionProtection(false)
///             .template(JobTemplateArgs.builder()
///                 .template(JobTemplateTemplateArgs.builder()
///                     .containers(JobTemplateTemplateContainerArgs.builder()
///                         .image("us-docker.pkg.dev/cloudrun/container/job")
///                         .resources(JobTemplateTemplateContainerResourcesArgs.builder()
///                             .limits(Map.ofEntries(
///                                 Map.entry("cpu", "2"),
///                                 Map.entry("memory", "1024Mi")
///                             ))
///                             .build())
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
///     type: gcp:cloudrunv2:Job
///     properties:
///       name: cloudrun-job
///       location: us-central1
///       deletionProtection: false
///       template:
///         template:
///           containers:
///             - image: us-docker.pkg.dev/cloudrun/container/job
///               resources:
///                 limits:
///                   cpu: '2'
///                   memory: 1024Mi
/// ```
///
/// ### Cloudrunv2 Job Sql
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret = new gcp.secretmanager.Secret("secret", {
///     secretId: "secret",
///     replication: {
///         auto: {},
///     },
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
/// const _default = new gcp.cloudrunv2.Job("default", {
///     name: "cloudrun-job",
///     location: "us-central1",
///     deletionProtection: false,
///     template: {
///         template: {
///             volumes: [{
///                 name: "cloudsql",
///                 cloudSqlInstance: {
///                     instances: [instance.connectionName],
///                 },
///             }],
///             containers: [{
///                 image: "us-docker.pkg.dev/cloudrun/container/job",
///                 envs: [
///                     {
///                         name: "FOO",
///                         value: "bar",
///                     },
///                     {
///                         name: "latestdclsecret",
///                         valueSource: {
///                             secretKeyRef: {
///                                 secret: secret.secretId,
///                                 version: "1",
///                             },
///                         },
///                     },
///                 ],
///                 volumeMounts: [{
///                     name: "cloudsql",
///                     mountPath: "/cloudsql",
///                 }],
///             }],
///         },
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// const secret_version_data = new gcp.secretmanager.SecretVersion("secret-version-data", {
///     secret: secret.name,
///     secretData: "secret-data",
/// });
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
///     secret_id="secret",
///     replication={
///         "auto": {},
///     })
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="cloudrun-sql",
///     region="us-central1",
///     database_version="MYSQL_5_7",
///     settings={
///         "tier": "db-f1-micro",
///     },
///     deletion_protection=True)
/// default = gcp.cloudrunv2.Job("default",
///     name="cloudrun-job",
///     location="us-central1",
///     deletion_protection=False,
///     template={
///         "template": {
///             "volumes": [{
///                 "name": "cloudsql",
///                 "cloud_sql_instance": {
///                     "instances": [instance.connection_name],
///                 },
///             }],
///             "containers": [{
///                 "image": "us-docker.pkg.dev/cloudrun/container/job",
///                 "envs": [
///                     {
///                         "name": "FOO",
///                         "value": "bar",
///                     },
///                     {
///                         "name": "latestdclsecret",
///                         "value_source": {
///                             "secret_key_ref": {
///                                 "secret": secret.secret_id,
///                                 "version": "1",
///                             },
///                         },
///                     },
///                 ],
///                 "volume_mounts": [{
///                     "name": "cloudsql",
///                     "mount_path": "/cloudsql",
///                 }],
///             }],
///         },
///     })
/// project = gcp.organizations.get_project()
/// secret_version_data = gcp.secretmanager.SecretVersion("secret-version-data",
///     secret=secret.name,
///     secret_data="secret-data")
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
///         SecretId = "secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
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
///     var @default = new Gcp.CloudRunV2.Job("default", new()
///     {
///         Name = "cloudrun-job",
///         Location = "us-central1",
///         DeletionProtection = false,
///         Template = new Gcp.CloudRunV2.Inputs.JobTemplateArgs
///         {
///             Template = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateArgs
///             {
///                 Volumes = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.JobTemplateTemplateVolumeArgs
///                     {
///                         Name = "cloudsql",
///                         CloudSqlInstance = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateVolumeCloudSqlInstanceArgs
///                         {
///                             Instances = new[]
///                             {
///                                 instance.ConnectionName,
///                             },
///                         },
///                     },
///                 },
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerArgs
///                     {
///                         Image = "us-docker.pkg.dev/cloudrun/container/job",
///                         Envs = new[]
///                         {
///                             new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerEnvArgs
///                             {
///                                 Name = "FOO",
///                                 Value = "bar",
///                             },
///                             new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerEnvArgs
///                             {
///                                 Name = "latestdclsecret",
///                                 ValueSource = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerEnvValueSourceArgs
///                                 {
///                                     SecretKeyRef = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerEnvValueSourceSecretKeyRefArgs
///                                     {
///                                         Secret = secret.SecretId,
///                                         Version = "1",
///                                     },
///                                 },
///                             },
///                         },
///                         VolumeMounts = new[]
///                         {
///                             new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerVolumeMountArgs
///                             {
///                                 Name = "cloudsql",
///                                 MountPath = "/cloudsql",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var secret_version_data = new Gcp.SecretManager.SecretVersion("secret-version-data", new()
///     {
///         Secret = secret.Name,
///         SecretData = "secret-data",
///     });
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
/// 			SecretId: pulumi.String("secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
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
/// 		_, err = cloudrunv2.NewJob(ctx, "default", &cloudrunv2.JobArgs{
/// 			Name:               pulumi.String("cloudrun-job"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Template: &cloudrunv2.JobTemplateArgs{
/// 				Template: &cloudrunv2.JobTemplateTemplateArgs{
/// 					Volumes: cloudrunv2.JobTemplateTemplateVolumeArray{
/// 						&cloudrunv2.JobTemplateTemplateVolumeArgs{
/// 							Name: pulumi.String("cloudsql"),
/// 							CloudSqlInstance: &cloudrunv2.JobTemplateTemplateVolumeCloudSqlInstanceArgs{
/// 								Instances: pulumi.StringArray{
/// 									instance.ConnectionName,
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Containers: cloudrunv2.JobTemplateTemplateContainerArray{
/// 						&cloudrunv2.JobTemplateTemplateContainerArgs{
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/job"),
/// 							Envs: cloudrunv2.JobTemplateTemplateContainerEnvArray{
/// 								&cloudrunv2.JobTemplateTemplateContainerEnvArgs{
/// 									Name:  pulumi.String("FOO"),
/// 									Value: pulumi.String("bar"),
/// 								},
/// 								&cloudrunv2.JobTemplateTemplateContainerEnvArgs{
/// 									Name: pulumi.String("latestdclsecret"),
/// 									ValueSource: &cloudrunv2.JobTemplateTemplateContainerEnvValueSourceArgs{
/// 										SecretKeyRef: &cloudrunv2.JobTemplateTemplateContainerEnvValueSourceSecretKeyRefArgs{
/// 											Secret:  secret.SecretId,
/// 											Version: pulumi.String("1"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							VolumeMounts: cloudrunv2.JobTemplateTemplateContainerVolumeMountArray{
/// 								&cloudrunv2.JobTemplateTemplateContainerVolumeMountArgs{
/// 									Name:      pulumi.String("cloudsql"),
/// 									MountPath: pulumi.String("/cloudsql"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretVersion(ctx, "secret-version-data", &secretmanager.SecretVersionArgs{
/// 			Secret:     secret.Name,
/// 			SecretData: pulumi.String("secret-data"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretIamMember(ctx, "secret-access", &secretmanager.SecretIamMemberArgs{
/// 			SecretId: secret.ID().ToIDOutput().ToStringOutput(),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_cloudrunv2_job" "default" {
///   name                = "cloudrun-job"
///   location            = "us-central1"
///   deletion_protection = false
///   template = {
///     template = {
///       volumes = [{
///         "name" = "cloudsql"
///         "cloudSqlInstance" = {
///           "instances" = [gcp_sql_databaseinstance.instance.connection_name]
///         }
///       }]
///       containers = [{
///         "image" = "us-docker.pkg.dev/cloudrun/container/job"
///         "envs" = [{
///           "name"  = "FOO"
///           "value" = "bar"
///           }, {
///           "name" = "latestdclsecret"
///           "valueSource" = {
///             "secretKeyRef" = {
///               "secret"  = gcp_secretmanager_secret.secret.secret_id
///               "version" = "1"
///             }
///           }
///         }]
///         "volumeMounts" = [{
///           "name"      = "cloudsql"
///           "mountPath" = "/cloudsql"
///         }]
///       }]
///     }
///   }
/// }
/// resource "gcp_secretmanager_secret" "secret" {
///   secret_id = "secret"
///   replication = {
///     auto = {}
///   }
/// }
/// resource "gcp_secretmanager_secretversion" "secret-version-data" {
///   secret      = gcp_secretmanager_secret.secret.name
///   secret_data = "secret-data"
/// }
/// resource "gcp_secretmanager_secretiammember" "secret-access" {
///   depends_on = [gcp_secretmanager_secret.secret]
///   secret_id  = gcp_secretmanager_secret.secret.id
///   role       = "roles/secretmanager.secretAccessor"
///   member     ="serviceAccount:${data.gcp_organizations_getproject.project.number}-compute@developer.gserviceaccount.com"
/// }
/// resource "gcp_sql_databaseinstance" "instance" {
///   name             = "cloudrun-sql"
///   region           = "us-central1"
///   database_version = "MYSQL_5_7"
///   settings = {
///     tier = "db-f1-micro"
///   }
///   deletion_protection = true
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
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.cloudrunv2.Job;
/// import com.pulumi.gcp.cloudrunv2.JobArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateVolumeArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateVolumeCloudSqlInstanceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerEnvArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerEnvValueSourceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerEnvValueSourceSecretKeyRefArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerVolumeMountArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamMember;
/// import com.pulumi.gcp.secretmanager.SecretIamMemberArgs;
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
///         var secret = new Secret("secret", SecretArgs.builder()
///             .secretId("secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
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
///         var default_ = new Job("default", JobArgs.builder()
///             .name("cloudrun-job")
///             .location("us-central1")
///             .deletionProtection(false)
///             .template(JobTemplateArgs.builder()
///                 .template(JobTemplateTemplateArgs.builder()
///                     .volumes(JobTemplateTemplateVolumeArgs.builder()
///                         .name("cloudsql")
///                         .cloudSqlInstance(JobTemplateTemplateVolumeCloudSqlInstanceArgs.builder()
///                             .instances(instance.connectionName())
///                             .build())
///                         .build())
///                     .containers(JobTemplateTemplateContainerArgs.builder()
///                         .image("us-docker.pkg.dev/cloudrun/container/job")
///                         .envs(
///                             JobTemplateTemplateContainerEnvArgs.builder()
///                                 .name("FOO")
///                                 .value("bar")
///                                 .build(),
///                             JobTemplateTemplateContainerEnvArgs.builder()
///                                 .name("latestdclsecret")
///                                 .valueSource(JobTemplateTemplateContainerEnvValueSourceArgs.builder()
///                                     .secretKeyRef(JobTemplateTemplateContainerEnvValueSourceSecretKeyRefArgs.builder()
///                                         .secret(secret.secretId())
///                                         .version("1")
///                                         .build())
///                                     .build())
///                                 .build())
///                         .volumeMounts(JobTemplateTemplateContainerVolumeMountArgs.builder()
///                             .name("cloudsql")
///                             .mountPath("/cloudsql")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var secret_version_data = new SecretVersion("secret-version-data", SecretVersionArgs.builder()
///             .secret(secret.name())
///             .secretData("secret-data")
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
///     type: gcp:cloudrunv2:Job
///     properties:
///       name: cloudrun-job
///       location: us-central1
///       deletionProtection: false
///       template:
///         template:
///           volumes:
///             - name: cloudsql
///               cloudSqlInstance:
///                 instances:
///                   - ${instance.connectionName}
///           containers:
///             - image: us-docker.pkg.dev/cloudrun/container/job
///               envs:
///                 - name: FOO
///                   value: bar
///                 - name: latestdclsecret
///                   valueSource:
///                     secretKeyRef:
///                       secret: ${secret.secretId}
///                       version: '1'
///               volumeMounts:
///                 - name: cloudsql
///                   mountPath: /cloudsql
///   secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret
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
/// ### Cloudrunv2 Job Vpcaccess
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const customTestNetwork = new gcp.compute.Network("custom_test", {
///     name: "run-network",
///     autoCreateSubnetworks: false,
/// });
/// const customTest = new gcp.compute.Subnetwork("custom_test", {
///     name: "run-subnetwork",
///     ipCidrRange: "10.2.0.0/28",
///     region: "us-central1",
///     network: customTestNetwork.id,
/// });
/// const connector = new gcp.vpcaccess.Connector("connector", {
///     name: "run-vpc",
///     subnet: {
///         name: customTest.name,
///     },
///     machineType: "e2-standard-4",
///     minInstances: 2,
///     maxInstances: 3,
///     region: "us-central1",
/// });
/// const _default = new gcp.cloudrunv2.Job("default", {
///     name: "cloudrun-job",
///     location: "us-central1",
///     deletionProtection: false,
///     template: {
///         template: {
///             containers: [{
///                 image: "us-docker.pkg.dev/cloudrun/container/job",
///             }],
///             vpcAccess: {
///                 connector: connector.id,
///                 egress: "ALL_TRAFFIC",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test_network = gcp.compute.Network("custom_test",
///     name="run-network",
///     auto_create_subnetworks=False)
/// custom_test = gcp.compute.Subnetwork("custom_test",
///     name="run-subnetwork",
///     ip_cidr_range="10.2.0.0/28",
///     region="us-central1",
///     network=custom_test_network.id)
/// connector = gcp.vpcaccess.Connector("connector",
///     name="run-vpc",
///     subnet={
///         "name": custom_test.name,
///     },
///     machine_type="e2-standard-4",
///     min_instances=2,
///     max_instances=3,
///     region="us-central1")
/// default = gcp.cloudrunv2.Job("default",
///     name="cloudrun-job",
///     location="us-central1",
///     deletion_protection=False,
///     template={
///         "template": {
///             "containers": [{
///                 "image": "us-docker.pkg.dev/cloudrun/container/job",
///             }],
///             "vpc_access": {
///                 "connector": connector.id,
///                 "egress": "ALL_TRAFFIC",
///             },
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
///     var customTestNetwork = new Gcp.Compute.Network("custom_test", new()
///     {
///         Name = "run-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var customTest = new Gcp.Compute.Subnetwork("custom_test", new()
///     {
///         Name = "run-subnetwork",
///         IpCidrRange = "10.2.0.0/28",
///         Region = "us-central1",
///         Network = customTestNetwork.Id,
///     });
///
///     var connector = new Gcp.VpcAccess.Connector("connector", new()
///     {
///         Name = "run-vpc",
///         Subnet = new Gcp.VpcAccess.Inputs.ConnectorSubnetArgs
///         {
///             Name = customTest.Name,
///         },
///         MachineType = "e2-standard-4",
///         MinInstances = 2,
///         MaxInstances = 3,
///         Region = "us-central1",
///     });
///
///     var @default = new Gcp.CloudRunV2.Job("default", new()
///     {
///         Name = "cloudrun-job",
///         Location = "us-central1",
///         DeletionProtection = false,
///         Template = new Gcp.CloudRunV2.Inputs.JobTemplateArgs
///         {
///             Template = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerArgs
///                     {
///                         Image = "us-docker.pkg.dev/cloudrun/container/job",
///                     },
///                 },
///                 VpcAccess = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateVpcAccessArgs
///                 {
///                     Connector = connector.Id,
///                     Egress = "ALL_TRAFFIC",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vpcaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		customTestNetwork, err := compute.NewNetwork(ctx, "custom_test", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("run-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		customTest, err := compute.NewSubnetwork(ctx, "custom_test", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("run-subnetwork"),
/// 			IpCidrRange: pulumi.String("10.2.0.0/28"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     customTestNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		connector, err := vpcaccess.NewConnector(ctx, "connector", &vpcaccess.ConnectorArgs{
/// 			Name: pulumi.String("run-vpc"),
/// 			Subnet: &vpcaccess.ConnectorSubnetArgs{
/// 				Name: customTest.Name,
/// 			},
/// 			MachineType:  pulumi.String("e2-standard-4"),
/// 			MinInstances: pulumi.Int(2),
/// 			MaxInstances: pulumi.Int(3),
/// 			Region:       pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudrunv2.NewJob(ctx, "default", &cloudrunv2.JobArgs{
/// 			Name:               pulumi.String("cloudrun-job"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Template: &cloudrunv2.JobTemplateArgs{
/// 				Template: &cloudrunv2.JobTemplateTemplateArgs{
/// 					Containers: cloudrunv2.JobTemplateTemplateContainerArray{
/// 						&cloudrunv2.JobTemplateTemplateContainerArgs{
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/job"),
/// 						},
/// 					},
/// 					VpcAccess: &cloudrunv2.JobTemplateTemplateVpcAccessArgs{
/// 						Connector: connector.ID().ToIDOutput().ToStringOutput(),
/// 						Egress:    pulumi.String("ALL_TRAFFIC"),
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
/// resource "gcp_cloudrunv2_job" "default" {
///   name                = "cloudrun-job"
///   location            = "us-central1"
///   deletion_protection = false
///   template = {
///     template = {
///       containers = [{
///         "image" = "us-docker.pkg.dev/cloudrun/container/job"
///       }]
///       vpc_access = {
///         connector = gcp_vpcaccess_connector.connector.id
///         egress    = "ALL_TRAFFIC"
///       }
///     }
///   }
/// }
/// resource "gcp_vpcaccess_connector" "connector" {
///   name = "run-vpc"
///   subnet = {
///     name = gcp_compute_subnetwork.custom_test.name
///   }
///   machine_type  = "e2-standard-4"
///   min_instances = 2
///   max_instances = 3
///   region        = "us-central1"
/// }
/// resource "gcp_compute_subnetwork" "custom_test" {
///   name          = "run-subnetwork"
///   ip_cidr_range = "10.2.0.0/28"
///   region        = "us-central1"
///   network       = gcp_compute_network.custom_test.id
/// }
/// resource "gcp_compute_network" "custom_test" {
///   name                    = "run-network"
///   auto_create_subnetworks = false
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
/// import com.pulumi.gcp.vpcaccess.Connector;
/// import com.pulumi.gcp.vpcaccess.ConnectorArgs;
/// import com.pulumi.gcp.vpcaccess.inputs.ConnectorSubnetArgs;
/// import com.pulumi.gcp.cloudrunv2.Job;
/// import com.pulumi.gcp.cloudrunv2.JobArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateVpcAccessArgs;
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
///         var customTestNetwork = new Network("customTestNetwork", NetworkArgs.builder()
///             .name("run-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var customTest = new Subnetwork("customTest", SubnetworkArgs.builder()
///             .name("run-subnetwork")
///             .ipCidrRange("10.2.0.0/28")
///             .region("us-central1")
///             .network(customTestNetwork.id())
///             .build());
///
///         var connector = new Connector("connector", ConnectorArgs.builder()
///             .name("run-vpc")
///             .subnet(ConnectorSubnetArgs.builder()
///                 .name(customTest.name())
///                 .build())
///             .machineType("e2-standard-4")
///             .minInstances(2)
///             .maxInstances(3)
///             .region("us-central1")
///             .build());
///
///         var default_ = new Job("default", JobArgs.builder()
///             .name("cloudrun-job")
///             .location("us-central1")
///             .deletionProtection(false)
///             .template(JobTemplateArgs.builder()
///                 .template(JobTemplateTemplateArgs.builder()
///                     .containers(JobTemplateTemplateContainerArgs.builder()
///                         .image("us-docker.pkg.dev/cloudrun/container/job")
///                         .build())
///                     .vpcAccess(JobTemplateTemplateVpcAccessArgs.builder()
///                         .connector(connector.id())
///                         .egress("ALL_TRAFFIC")
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
///     type: gcp:cloudrunv2:Job
///     properties:
///       name: cloudrun-job
///       location: us-central1
///       deletionProtection: false
///       template:
///         template:
///           containers:
///             - image: us-docker.pkg.dev/cloudrun/container/job
///           vpcAccess:
///             connector: ${connector.id}
///             egress: ALL_TRAFFIC
///   connector:
///     type: gcp:vpcaccess:Connector
///     properties:
///       name: run-vpc
///       subnet:
///         name: ${customTest.name}
///       machineType: e2-standard-4
///       minInstances: 2
///       maxInstances: 3
///       region: us-central1
///   customTest:
///     type: gcp:compute:Subnetwork
///     name: custom_test
///     properties:
///       name: run-subnetwork
///       ipCidrRange: 10.2.0.0/28
///       region: us-central1
///       network: ${customTestNetwork.id}
///   customTestNetwork:
///     type: gcp:compute:Network
///     name: custom_test
///     properties:
///       name: run-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Cloudrunv2 Job Directvpc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Job("default", {
///     name: "cloudrun-job",
///     location: "us-central1",
///     deletionProtection: false,
///     launchStage: "GA",
///     template: {
///         template: {
///             containers: [{
///                 image: "us-docker.pkg.dev/cloudrun/container/job",
///             }],
///             vpcAccess: {
///                 networkInterfaces: [{
///                     network: "default",
///                     subnetwork: "default",
///                     tags: [
///                         "tag1",
///                         "tag2",
///                         "tag3",
///                     ],
///                 }],
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Job("default",
///     name="cloudrun-job",
///     location="us-central1",
///     deletion_protection=False,
///     launch_stage="GA",
///     template={
///         "template": {
///             "containers": [{
///                 "image": "us-docker.pkg.dev/cloudrun/container/job",
///             }],
///             "vpc_access": {
///                 "network_interfaces": [{
///                     "network": "default",
///                     "subnetwork": "default",
///                     "tags": [
///                         "tag1",
///                         "tag2",
///                         "tag3",
///                     ],
///                 }],
///             },
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
///     var @default = new Gcp.CloudRunV2.Job("default", new()
///     {
///         Name = "cloudrun-job",
///         Location = "us-central1",
///         DeletionProtection = false,
///         LaunchStage = "GA",
///         Template = new Gcp.CloudRunV2.Inputs.JobTemplateArgs
///         {
///             Template = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerArgs
///                     {
///                         Image = "us-docker.pkg.dev/cloudrun/container/job",
///                     },
///                 },
///                 VpcAccess = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateVpcAccessArgs
///                 {
///                     NetworkInterfaces = new[]
///                     {
///                         new Gcp.CloudRunV2.Inputs.JobTemplateTemplateVpcAccessNetworkInterfaceArgs
///                         {
///                             Network = "default",
///                             Subnetwork = "default",
///                             Tags = new[]
///                             {
///                                 "tag1",
///                                 "tag2",
///                                 "tag3",
///                             },
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
/// 		_, err := cloudrunv2.NewJob(ctx, "default", &cloudrunv2.JobArgs{
/// 			Name:               pulumi.String("cloudrun-job"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			LaunchStage:        pulumi.String("GA"),
/// 			Template: &cloudrunv2.JobTemplateArgs{
/// 				Template: &cloudrunv2.JobTemplateTemplateArgs{
/// 					Containers: cloudrunv2.JobTemplateTemplateContainerArray{
/// 						&cloudrunv2.JobTemplateTemplateContainerArgs{
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/job"),
/// 						},
/// 					},
/// 					VpcAccess: &cloudrunv2.JobTemplateTemplateVpcAccessArgs{
/// 						NetworkInterfaces: cloudrunv2.JobTemplateTemplateVpcAccessNetworkInterfaceArray{
/// 							&cloudrunv2.JobTemplateTemplateVpcAccessNetworkInterfaceArgs{
/// 								Network:    pulumi.String("default"),
/// 								Subnetwork: pulumi.String("default"),
/// 								Tags: pulumi.StringArray{
/// 									pulumi.String("tag1"),
/// 									pulumi.String("tag2"),
/// 									pulumi.String("tag3"),
/// 								},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrunv2_job" "default" {
///   name                = "cloudrun-job"
///   location            = "us-central1"
///   deletion_protection = false
///   launch_stage        = "GA"
///   template = {
///     template = {
///       containers = [{
///         "image" = "us-docker.pkg.dev/cloudrun/container/job"
///       }]
///       vpc_access = {
///         network_interfaces = [{
///           "network"    = "default"
///           "subnetwork" = "default"
///           "tags"       = ["tag1", "tag2", "tag3"]
///         }]
///       }
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
/// import com.pulumi.gcp.cloudrunv2.Job;
/// import com.pulumi.gcp.cloudrunv2.JobArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateVpcAccessArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateVpcAccessNetworkInterfaceArgs;
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
///         var default_ = new Job("default", JobArgs.builder()
///             .name("cloudrun-job")
///             .location("us-central1")
///             .deletionProtection(false)
///             .launchStage("GA")
///             .template(JobTemplateArgs.builder()
///                 .template(JobTemplateTemplateArgs.builder()
///                     .containers(JobTemplateTemplateContainerArgs.builder()
///                         .image("us-docker.pkg.dev/cloudrun/container/job")
///                         .build())
///                     .vpcAccess(JobTemplateTemplateVpcAccessArgs.builder()
///                         .networkInterfaces(JobTemplateTemplateVpcAccessNetworkInterfaceArgs.builder()
///                             .network("default")
///                             .subnetwork("default")
///                             .tags(
///                                 "tag1",
///                                 "tag2",
///                                 "tag3")
///                             .build())
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
///     type: gcp:cloudrunv2:Job
///     properties:
///       name: cloudrun-job
///       location: us-central1
///       deletionProtection: false
///       launchStage: GA
///       template:
///         template:
///           containers:
///             - image: us-docker.pkg.dev/cloudrun/container/job
///           vpcAccess:
///             networkInterfaces:
///               - network: default
///                 subnetwork: default
///                 tags:
///                   - tag1
///                   - tag2
///                   - tag3
/// ```
///
/// ### Cloudrunv2 Job Secret
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret = new gcp.secretmanager.Secret("secret", {
///     secretId: "secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const secret_version_data = new gcp.secretmanager.SecretVersion("secret-version-data", {
///     secret: secret.name,
///     secretData: "secret-data",
/// });
/// const project = gcp.organizations.getProject({});
/// const secret_access = new gcp.secretmanager.SecretIamMember("secret-access", {
///     secretId: secret.id,
///     role: "roles/secretmanager.secretAccessor",
///     member: project.then(project => `serviceAccount:${project.number}-compute@developer.gserviceaccount.com`),
/// }, {
///     dependsOn: [secret],
/// });
/// const _default = new gcp.cloudrunv2.Job("default", {
///     name: "cloudrun-job",
///     location: "us-central1",
///     deletionProtection: false,
///     template: {
///         template: {
///             volumes: [{
///                 name: "a-volume",
///                 secret: {
///                     secret: secret.secretId,
///                     defaultMode: 292,
///                     items: [{
///                         version: "1",
///                         path: "my-secret",
///                         mode: 256,
///                     }],
///                 },
///             }],
///             containers: [{
///                 image: "us-docker.pkg.dev/cloudrun/container/job",
///                 volumeMounts: [{
///                     name: "a-volume",
///                     mountPath: "/secrets",
///                 }],
///             }],
///         },
///     },
/// }, {
///     dependsOn: [
///         secret_version_data,
///         secret_access,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret = gcp.secretmanager.Secret("secret",
///     secret_id="secret",
///     replication={
///         "auto": {},
///     })
/// secret_version_data = gcp.secretmanager.SecretVersion("secret-version-data",
///     secret=secret.name,
///     secret_data="secret-data")
/// project = gcp.organizations.get_project()
/// secret_access = gcp.secretmanager.SecretIamMember("secret-access",
///     secret_id=secret.id,
///     role="roles/secretmanager.secretAccessor",
///     member=f"serviceAccount:{project.number}-compute@developer.gserviceaccount.com",
///     opts = pulumi.ResourceOptions(depends_on=[secret]))
/// default = gcp.cloudrunv2.Job("default",
///     name="cloudrun-job",
///     location="us-central1",
///     deletion_protection=False,
///     template={
///         "template": {
///             "volumes": [{
///                 "name": "a-volume",
///                 "secret": {
///                     "secret": secret.secret_id,
///                     "default_mode": 292,
///                     "items": [{
///                         "version": "1",
///                         "path": "my-secret",
///                         "mode": 256,
///                     }],
///                 },
///             }],
///             "containers": [{
///                 "image": "us-docker.pkg.dev/cloudrun/container/job",
///                 "volume_mounts": [{
///                     "name": "a-volume",
///                     "mount_path": "/secrets",
///                 }],
///             }],
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             secret_version_data,
///             secret_access,
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
///     var secret = new Gcp.SecretManager.Secret("secret", new()
///     {
///         SecretId = "secret",
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
///     var @default = new Gcp.CloudRunV2.Job("default", new()
///     {
///         Name = "cloudrun-job",
///         Location = "us-central1",
///         DeletionProtection = false,
///         Template = new Gcp.CloudRunV2.Inputs.JobTemplateArgs
///         {
///             Template = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateArgs
///             {
///                 Volumes = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.JobTemplateTemplateVolumeArgs
///                     {
///                         Name = "a-volume",
///                         Secret = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateVolumeSecretArgs
///                         {
///                             Secret = secret.SecretId,
///                             DefaultMode = 292,
///                             Items = new[]
///                             {
///                                 new Gcp.CloudRunV2.Inputs.JobTemplateTemplateVolumeSecretItemArgs
///                                 {
///                                     Version = "1",
///                                     Path = "my-secret",
///                                     Mode = 256,
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerArgs
///                     {
///                         Image = "us-docker.pkg.dev/cloudrun/container/job",
///                         VolumeMounts = new[]
///                         {
///                             new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerVolumeMountArgs
///                             {
///                                 Name = "a-volume",
///                                 MountPath = "/secrets",
///                             },
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
///             secret_access,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret, err := secretmanager.NewSecret(ctx, "secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret"),
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
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secret_access, err := secretmanager.NewSecretIamMember(ctx, "secret-access", &secretmanager.SecretIamMemberArgs{
/// 			SecretId: secret.ID().ToIDOutput().ToStringOutput(),
/// 			Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// 			Member:   pulumi.Sprintf("serviceAccount:%v-compute@developer.gserviceaccount.com", project.Number),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			secret,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudrunv2.NewJob(ctx, "default", &cloudrunv2.JobArgs{
/// 			Name:               pulumi.String("cloudrun-job"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Template: &cloudrunv2.JobTemplateArgs{
/// 				Template: &cloudrunv2.JobTemplateTemplateArgs{
/// 					Volumes: cloudrunv2.JobTemplateTemplateVolumeArray{
/// 						&cloudrunv2.JobTemplateTemplateVolumeArgs{
/// 							Name: pulumi.String("a-volume"),
/// 							Secret: &cloudrunv2.JobTemplateTemplateVolumeSecretArgs{
/// 								Secret:      secret.SecretId,
/// 								DefaultMode: pulumi.Int(292),
/// 								Items: cloudrunv2.JobTemplateTemplateVolumeSecretItemArray{
/// 									&cloudrunv2.JobTemplateTemplateVolumeSecretItemArgs{
/// 										Version: pulumi.String("1"),
/// 										Path:    pulumi.String("my-secret"),
/// 										Mode:    pulumi.Int(256),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Containers: cloudrunv2.JobTemplateTemplateContainerArray{
/// 						&cloudrunv2.JobTemplateTemplateContainerArgs{
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/job"),
/// 							VolumeMounts: cloudrunv2.JobTemplateTemplateContainerVolumeMountArray{
/// 								&cloudrunv2.JobTemplateTemplateContainerVolumeMountArgs{
/// 									Name:      pulumi.String("a-volume"),
/// 									MountPath: pulumi.String("/secrets"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			secret_version_data,
/// 			secret_access,
/// 		}))
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_cloudrunv2_job" "default" {
///   depends_on          = [gcp_secretmanager_secretversion.secret-version-data, gcp_secretmanager_secretiammember.secret-access]
///   name                = "cloudrun-job"
///   location            = "us-central1"
///   deletion_protection = false
///   template = {
///     template = {
///       volumes = [{
///         "name" = "a-volume"
///         "secret" = {
///           "secret"      = gcp_secretmanager_secret.secret.secret_id
///           "defaultMode" = 292
///           "items" = [{
///             "version" = "1"
///             "path"    = "my-secret"
///             "mode"    = 256
///           }]
///         }
///       }]
///       containers = [{
///         "image" = "us-docker.pkg.dev/cloudrun/container/job"
///         "volumeMounts" = [{
///           "name"      = "a-volume"
///           "mountPath" = "/secrets"
///         }]
///       }]
///     }
///   }
/// }
/// resource "gcp_secretmanager_secret" "secret" {
///   secret_id = "secret"
///   replication = {
///     auto = {}
///   }
/// }
/// resource "gcp_secretmanager_secretversion" "secret-version-data" {
///   secret      = gcp_secretmanager_secret.secret.name
///   secret_data = "secret-data"
/// }
/// resource "gcp_secretmanager_secretiammember" "secret-access" {
///   depends_on = [gcp_secretmanager_secret.secret]
///   secret_id  = gcp_secretmanager_secret.secret.id
///   role       = "roles/secretmanager.secretAccessor"
///   member     ="serviceAccount:${data.gcp_organizations_getproject.project.number}-compute@developer.gserviceaccount.com"
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamMember;
/// import com.pulumi.gcp.secretmanager.SecretIamMemberArgs;
/// import com.pulumi.gcp.cloudrunv2.Job;
/// import com.pulumi.gcp.cloudrunv2.JobArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateVolumeArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateVolumeSecretArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateVolumeSecretItemArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerVolumeMountArgs;
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
///         var secret = new Secret("secret", SecretArgs.builder()
///             .secretId("secret")
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
///         var default_ = new Job("default", JobArgs.builder()
///             .name("cloudrun-job")
///             .location("us-central1")
///             .deletionProtection(false)
///             .template(JobTemplateArgs.builder()
///                 .template(JobTemplateTemplateArgs.builder()
///                     .volumes(JobTemplateTemplateVolumeArgs.builder()
///                         .name("a-volume")
///                         .secret(JobTemplateTemplateVolumeSecretArgs.builder()
///                             .secret(secret.secretId())
///                             .defaultMode(292)
///                             .items(JobTemplateTemplateVolumeSecretItemArgs.builder()
///                                 .version("1")
///                                 .path("my-secret")
///                                 .mode(256)
///                                 .build())
///                             .build())
///                         .build())
///                     .containers(JobTemplateTemplateContainerArgs.builder()
///                         .image("us-docker.pkg.dev/cloudrun/container/job")
///                         .volumeMounts(JobTemplateTemplateContainerVolumeMountArgs.builder()
///                             .name("a-volume")
///                             .mountPath("/secrets")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     secret_version_data,
///                     secret_access)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrunv2:Job
///     properties:
///       name: cloudrun-job
///       location: us-central1
///       deletionProtection: false
///       template:
///         template:
///           volumes:
///             - name: a-volume
///               secret:
///                 secret: ${secret.secretId}
///                 defaultMode: 292
///                 items:
///                   - version: '1'
///                     path: my-secret
///                     mode: 256
///           containers:
///             - image: us-docker.pkg.dev/cloudrun/container/job
///               volumeMounts:
///                 - name: a-volume
///                   mountPath: /secrets
///     options:
///       dependsOn:
///         - ${["secret-version-data"]}
///         - ${["secret-access"]}
///   secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret
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
/// ### Cloudrunv2 Job Emptydir
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Job("default", {
///     name: "cloudrun-job",
///     location: "us-central1",
///     deletionProtection: false,
///     template: {
///         template: {
///             containers: [{
///                 image: "us-docker.pkg.dev/cloudrun/container/job",
///                 volumeMounts: [{
///                     name: "empty-dir-volume",
///                     mountPath: "/mnt",
///                 }],
///             }],
///             volumes: [{
///                 name: "empty-dir-volume",
///                 emptyDir: {
///                     medium: "MEMORY",
///                     sizeLimit: "128Mi",
///                 },
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Job("default",
///     name="cloudrun-job",
///     location="us-central1",
///     deletion_protection=False,
///     template={
///         "template": {
///             "containers": [{
///                 "image": "us-docker.pkg.dev/cloudrun/container/job",
///                 "volume_mounts": [{
///                     "name": "empty-dir-volume",
///                     "mount_path": "/mnt",
///                 }],
///             }],
///             "volumes": [{
///                 "name": "empty-dir-volume",
///                 "empty_dir": {
///                     "medium": "MEMORY",
///                     "size_limit": "128Mi",
///                 },
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
///     var @default = new Gcp.CloudRunV2.Job("default", new()
///     {
///         Name = "cloudrun-job",
///         Location = "us-central1",
///         DeletionProtection = false,
///         Template = new Gcp.CloudRunV2.Inputs.JobTemplateArgs
///         {
///             Template = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerArgs
///                     {
///                         Image = "us-docker.pkg.dev/cloudrun/container/job",
///                         VolumeMounts = new[]
///                         {
///                             new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerVolumeMountArgs
///                             {
///                                 Name = "empty-dir-volume",
///                                 MountPath = "/mnt",
///                             },
///                         },
///                     },
///                 },
///                 Volumes = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.JobTemplateTemplateVolumeArgs
///                     {
///                         Name = "empty-dir-volume",
///                         EmptyDir = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateVolumeEmptyDirArgs
///                         {
///                             Medium = "MEMORY",
///                             SizeLimit = "128Mi",
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
/// 		_, err := cloudrunv2.NewJob(ctx, "default", &cloudrunv2.JobArgs{
/// 			Name:               pulumi.String("cloudrun-job"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Template: &cloudrunv2.JobTemplateArgs{
/// 				Template: &cloudrunv2.JobTemplateTemplateArgs{
/// 					Containers: cloudrunv2.JobTemplateTemplateContainerArray{
/// 						&cloudrunv2.JobTemplateTemplateContainerArgs{
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/job"),
/// 							VolumeMounts: cloudrunv2.JobTemplateTemplateContainerVolumeMountArray{
/// 								&cloudrunv2.JobTemplateTemplateContainerVolumeMountArgs{
/// 									Name:      pulumi.String("empty-dir-volume"),
/// 									MountPath: pulumi.String("/mnt"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Volumes: cloudrunv2.JobTemplateTemplateVolumeArray{
/// 						&cloudrunv2.JobTemplateTemplateVolumeArgs{
/// 							Name: pulumi.String("empty-dir-volume"),
/// 							EmptyDir: &cloudrunv2.JobTemplateTemplateVolumeEmptyDirArgs{
/// 								Medium:    pulumi.String("MEMORY"),
/// 								SizeLimit: pulumi.String("128Mi"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrunv2_job" "default" {
///   name                = "cloudrun-job"
///   location            = "us-central1"
///   deletion_protection = false
///   template = {
///     template = {
///       containers = [{
///         "image" = "us-docker.pkg.dev/cloudrun/container/job"
///         "volumeMounts" = [{
///           "name"      = "empty-dir-volume"
///           "mountPath" = "/mnt"
///         }]
///       }]
///       volumes = [{
///         "name" = "empty-dir-volume"
///         "emptyDir" = {
///           "medium"    = "MEMORY"
///           "sizeLimit" = "128Mi"
///         }
///       }]
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
/// import com.pulumi.gcp.cloudrunv2.Job;
/// import com.pulumi.gcp.cloudrunv2.JobArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerVolumeMountArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateVolumeArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateVolumeEmptyDirArgs;
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
///         var default_ = new Job("default", JobArgs.builder()
///             .name("cloudrun-job")
///             .location("us-central1")
///             .deletionProtection(false)
///             .template(JobTemplateArgs.builder()
///                 .template(JobTemplateTemplateArgs.builder()
///                     .containers(JobTemplateTemplateContainerArgs.builder()
///                         .image("us-docker.pkg.dev/cloudrun/container/job")
///                         .volumeMounts(JobTemplateTemplateContainerVolumeMountArgs.builder()
///                             .name("empty-dir-volume")
///                             .mountPath("/mnt")
///                             .build())
///                         .build())
///                     .volumes(JobTemplateTemplateVolumeArgs.builder()
///                         .name("empty-dir-volume")
///                         .emptyDir(JobTemplateTemplateVolumeEmptyDirArgs.builder()
///                             .medium("MEMORY")
///                             .sizeLimit("128Mi")
///                             .build())
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
///     type: gcp:cloudrunv2:Job
///     properties:
///       name: cloudrun-job
///       location: us-central1
///       deletionProtection: false
///       template:
///         template:
///           containers:
///             - image: us-docker.pkg.dev/cloudrun/container/job
///               volumeMounts:
///                 - name: empty-dir-volume
///                   mountPath: /mnt
///           volumes:
///             - name: empty-dir-volume
///               emptyDir:
///                 medium: MEMORY
///                 sizeLimit: 128Mi
/// ```
///
/// ### Cloudrunv2 Job Emptydir Disk
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Job("default", {
///     name: "cloudrun-job",
///     location: "us-central1",
///     launchStage: "BETA",
///     deletionProtection: true,
///     template: {
///         template: {
///             containers: [{
///                 image: "us-docker.pkg.dev/cloudrun/container/job",
///                 volumeMounts: [{
///                     name: "empty-dir-volume",
///                     mountPath: "/mnt",
///                 }],
///             }],
///             volumes: [{
///                 name: "empty-dir-volume",
///                 emptyDir: {
///                     medium: "DISK",
///                     sizeLimit: "10Gi",
///                 },
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Job("default",
///     name="cloudrun-job",
///     location="us-central1",
///     launch_stage="BETA",
///     deletion_protection=True,
///     template={
///         "template": {
///             "containers": [{
///                 "image": "us-docker.pkg.dev/cloudrun/container/job",
///                 "volume_mounts": [{
///                     "name": "empty-dir-volume",
///                     "mount_path": "/mnt",
///                 }],
///             }],
///             "volumes": [{
///                 "name": "empty-dir-volume",
///                 "empty_dir": {
///                     "medium": "DISK",
///                     "size_limit": "10Gi",
///                 },
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
///     var @default = new Gcp.CloudRunV2.Job("default", new()
///     {
///         Name = "cloudrun-job",
///         Location = "us-central1",
///         LaunchStage = "BETA",
///         DeletionProtection = true,
///         Template = new Gcp.CloudRunV2.Inputs.JobTemplateArgs
///         {
///             Template = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerArgs
///                     {
///                         Image = "us-docker.pkg.dev/cloudrun/container/job",
///                         VolumeMounts = new[]
///                         {
///                             new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerVolumeMountArgs
///                             {
///                                 Name = "empty-dir-volume",
///                                 MountPath = "/mnt",
///                             },
///                         },
///                     },
///                 },
///                 Volumes = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.JobTemplateTemplateVolumeArgs
///                     {
///                         Name = "empty-dir-volume",
///                         EmptyDir = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateVolumeEmptyDirArgs
///                         {
///                             Medium = "DISK",
///                             SizeLimit = "10Gi",
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
/// 		_, err := cloudrunv2.NewJob(ctx, "default", &cloudrunv2.JobArgs{
/// 			Name:               pulumi.String("cloudrun-job"),
/// 			Location:           pulumi.String("us-central1"),
/// 			LaunchStage:        pulumi.String("BETA"),
/// 			DeletionProtection: pulumi.Bool(true),
/// 			Template: &cloudrunv2.JobTemplateArgs{
/// 				Template: &cloudrunv2.JobTemplateTemplateArgs{
/// 					Containers: cloudrunv2.JobTemplateTemplateContainerArray{
/// 						&cloudrunv2.JobTemplateTemplateContainerArgs{
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/job"),
/// 							VolumeMounts: cloudrunv2.JobTemplateTemplateContainerVolumeMountArray{
/// 								&cloudrunv2.JobTemplateTemplateContainerVolumeMountArgs{
/// 									Name:      pulumi.String("empty-dir-volume"),
/// 									MountPath: pulumi.String("/mnt"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Volumes: cloudrunv2.JobTemplateTemplateVolumeArray{
/// 						&cloudrunv2.JobTemplateTemplateVolumeArgs{
/// 							Name: pulumi.String("empty-dir-volume"),
/// 							EmptyDir: &cloudrunv2.JobTemplateTemplateVolumeEmptyDirArgs{
/// 								Medium:    pulumi.String("DISK"),
/// 								SizeLimit: pulumi.String("10Gi"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrunv2_job" "default" {
///   name                = "cloudrun-job"
///   location            = "us-central1"
///   launch_stage        = "BETA"
///   deletion_protection = "true"
///   template = {
///     template = {
///       containers = [{
///         "image" = "us-docker.pkg.dev/cloudrun/container/job"
///         "volumeMounts" = [{
///           "name"      = "empty-dir-volume"
///           "mountPath" = "/mnt"
///         }]
///       }]
///       volumes = [{
///         "name" = "empty-dir-volume"
///         "emptyDir" = {
///           "medium"    = "DISK"
///           "sizeLimit" = "10Gi"
///         }
///       }]
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
/// import com.pulumi.gcp.cloudrunv2.Job;
/// import com.pulumi.gcp.cloudrunv2.JobArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerVolumeMountArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateVolumeArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateVolumeEmptyDirArgs;
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
///         var default_ = new Job("default", JobArgs.builder()
///             .name("cloudrun-job")
///             .location("us-central1")
///             .launchStage("BETA")
///             .deletionProtection(true)
///             .template(JobTemplateArgs.builder()
///                 .template(JobTemplateTemplateArgs.builder()
///                     .containers(JobTemplateTemplateContainerArgs.builder()
///                         .image("us-docker.pkg.dev/cloudrun/container/job")
///                         .volumeMounts(JobTemplateTemplateContainerVolumeMountArgs.builder()
///                             .name("empty-dir-volume")
///                             .mountPath("/mnt")
///                             .build())
///                         .build())
///                     .volumes(JobTemplateTemplateVolumeArgs.builder()
///                         .name("empty-dir-volume")
///                         .emptyDir(JobTemplateTemplateVolumeEmptyDirArgs.builder()
///                             .medium("DISK")
///                             .sizeLimit("10Gi")
///                             .build())
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
///     type: gcp:cloudrunv2:Job
///     properties:
///       name: cloudrun-job
///       location: us-central1
///       launchStage: BETA
///       deletionProtection: 'true'
///       template:
///         template:
///           containers:
///             - image: us-docker.pkg.dev/cloudrun/container/job
///               volumeMounts:
///                 - name: empty-dir-volume
///                   mountPath: /mnt
///           volumes:
///             - name: empty-dir-volume
///               emptyDir:
///                 medium: DISK
///                 sizeLimit: 10Gi
/// ```
///
/// ### Cloudrunv2 Job Run Job
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Job("default", {
///     name: "cloudrun-job",
///     location: "us-central1",
///     deletionProtection: false,
///     startExecutionToken: "start-once-created",
///     template: {
///         template: {
///             containers: [{
///                 image: "us-docker.pkg.dev/cloudrun/container/job",
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Job("default",
///     name="cloudrun-job",
///     location="us-central1",
///     deletion_protection=False,
///     start_execution_token="start-once-created",
///     template={
///         "template": {
///             "containers": [{
///                 "image": "us-docker.pkg.dev/cloudrun/container/job",
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
///     var @default = new Gcp.CloudRunV2.Job("default", new()
///     {
///         Name = "cloudrun-job",
///         Location = "us-central1",
///         DeletionProtection = false,
///         StartExecutionToken = "start-once-created",
///         Template = new Gcp.CloudRunV2.Inputs.JobTemplateArgs
///         {
///             Template = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerArgs
///                     {
///                         Image = "us-docker.pkg.dev/cloudrun/container/job",
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
/// 		_, err := cloudrunv2.NewJob(ctx, "default", &cloudrunv2.JobArgs{
/// 			Name:                pulumi.String("cloudrun-job"),
/// 			Location:            pulumi.String("us-central1"),
/// 			DeletionProtection:  pulumi.Bool(false),
/// 			StartExecutionToken: pulumi.String("start-once-created"),
/// 			Template: &cloudrunv2.JobTemplateArgs{
/// 				Template: &cloudrunv2.JobTemplateTemplateArgs{
/// 					Containers: cloudrunv2.JobTemplateTemplateContainerArray{
/// 						&cloudrunv2.JobTemplateTemplateContainerArgs{
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/job"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrunv2_job" "default" {
///   name                  = "cloudrun-job"
///   location              = "us-central1"
///   deletion_protection   = false
///   start_execution_token = "start-once-created"
///   template = {
///     template = {
///       containers = [{
///         "image" = "us-docker.pkg.dev/cloudrun/container/job"
///       }]
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
/// import com.pulumi.gcp.cloudrunv2.Job;
/// import com.pulumi.gcp.cloudrunv2.JobArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerArgs;
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
///         var default_ = new Job("default", JobArgs.builder()
///             .name("cloudrun-job")
///             .location("us-central1")
///             .deletionProtection(false)
///             .startExecutionToken("start-once-created")
///             .template(JobTemplateArgs.builder()
///                 .template(JobTemplateTemplateArgs.builder()
///                     .containers(JobTemplateTemplateContainerArgs.builder()
///                         .image("us-docker.pkg.dev/cloudrun/container/job")
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
///     type: gcp:cloudrunv2:Job
///     properties:
///       name: cloudrun-job
///       location: us-central1
///       deletionProtection: false
///       startExecutionToken: start-once-created
///       template:
///         template:
///           containers:
///             - image: us-docker.pkg.dev/cloudrun/container/job
/// ```
///
/// ### Cloudrunv2 Job Multicontainer
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Job("default", {
///     name: "cloudrun-job",
///     location: "us-central1",
///     deletionProtection: false,
///     template: {
///         template: {
///             containers: [
///                 {
///                     name: "job-1",
///                     image: "us-docker.pkg.dev/cloudrun/container/job",
///                 },
///                 {
///                     name: "job-2",
///                     image: "us-docker.pkg.dev/cloudrun/container/job",
///                 },
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Job("default",
///     name="cloudrun-job",
///     location="us-central1",
///     deletion_protection=False,
///     template={
///         "template": {
///             "containers": [
///                 {
///                     "name": "job-1",
///                     "image": "us-docker.pkg.dev/cloudrun/container/job",
///                 },
///                 {
///                     "name": "job-2",
///                     "image": "us-docker.pkg.dev/cloudrun/container/job",
///                 },
///             ],
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
///     var @default = new Gcp.CloudRunV2.Job("default", new()
///     {
///         Name = "cloudrun-job",
///         Location = "us-central1",
///         DeletionProtection = false,
///         Template = new Gcp.CloudRunV2.Inputs.JobTemplateArgs
///         {
///             Template = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerArgs
///                     {
///                         Name = "job-1",
///                         Image = "us-docker.pkg.dev/cloudrun/container/job",
///                     },
///                     new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerArgs
///                     {
///                         Name = "job-2",
///                         Image = "us-docker.pkg.dev/cloudrun/container/job",
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
/// 		_, err := cloudrunv2.NewJob(ctx, "default", &cloudrunv2.JobArgs{
/// 			Name:               pulumi.String("cloudrun-job"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Template: &cloudrunv2.JobTemplateArgs{
/// 				Template: &cloudrunv2.JobTemplateTemplateArgs{
/// 					Containers: cloudrunv2.JobTemplateTemplateContainerArray{
/// 						&cloudrunv2.JobTemplateTemplateContainerArgs{
/// 							Name:  pulumi.String("job-1"),
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/job"),
/// 						},
/// 						&cloudrunv2.JobTemplateTemplateContainerArgs{
/// 							Name:  pulumi.String("job-2"),
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/job"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrunv2_job" "default" {
///   name                = "cloudrun-job"
///   location            = "us-central1"
///   deletion_protection = false
///   template = {
///     template = {
///       containers = [{
///         "name"  = "job-1"
///         "image" = "us-docker.pkg.dev/cloudrun/container/job"
///         }, {
///         "name"  = "job-2"
///         "image" = "us-docker.pkg.dev/cloudrun/container/job"
///       }]
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
/// import com.pulumi.gcp.cloudrunv2.Job;
/// import com.pulumi.gcp.cloudrunv2.JobArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerArgs;
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
///         var default_ = new Job("default", JobArgs.builder()
///             .name("cloudrun-job")
///             .location("us-central1")
///             .deletionProtection(false)
///             .template(JobTemplateArgs.builder()
///                 .template(JobTemplateTemplateArgs.builder()
///                     .containers(
///                         JobTemplateTemplateContainerArgs.builder()
///                             .name("job-1")
///                             .image("us-docker.pkg.dev/cloudrun/container/job")
///                             .build(),
///                         JobTemplateTemplateContainerArgs.builder()
///                             .name("job-2")
///                             .image("us-docker.pkg.dev/cloudrun/container/job")
///                             .build())
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
///     type: gcp:cloudrunv2:Job
///     properties:
///       name: cloudrun-job
///       location: us-central1
///       deletionProtection: false
///       template:
///         template:
///           containers:
///             - name: job-1
///               image: us-docker.pkg.dev/cloudrun/container/job
///             - name: job-2
///               image: us-docker.pkg.dev/cloudrun/container/job
/// ```
///
/// ### Cloudrunv2 Job Gpu
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Job("default", {
///     name: "cloudrun-job",
///     location: "us-central1",
///     deletionProtection: false,
///     template: {
///         template: {
///             containers: [{
///                 image: "us-docker.pkg.dev/cloudrun/container/job",
///             }],
///             nodeSelector: {
///                 accelerator: "nvidia-l4",
///             },
///             gpuZonalRedundancyDisabled: true,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Job("default",
///     name="cloudrun-job",
///     location="us-central1",
///     deletion_protection=False,
///     template={
///         "template": {
///             "containers": [{
///                 "image": "us-docker.pkg.dev/cloudrun/container/job",
///             }],
///             "node_selector": {
///                 "accelerator": "nvidia-l4",
///             },
///             "gpu_zonal_redundancy_disabled": True,
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
///     var @default = new Gcp.CloudRunV2.Job("default", new()
///     {
///         Name = "cloudrun-job",
///         Location = "us-central1",
///         DeletionProtection = false,
///         Template = new Gcp.CloudRunV2.Inputs.JobTemplateArgs
///         {
///             Template = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerArgs
///                     {
///                         Image = "us-docker.pkg.dev/cloudrun/container/job",
///                     },
///                 },
///                 NodeSelector = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateNodeSelectorArgs
///                 {
///                     Accelerator = "nvidia-l4",
///                 },
///                 GpuZonalRedundancyDisabled = true,
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
/// 		_, err := cloudrunv2.NewJob(ctx, "default", &cloudrunv2.JobArgs{
/// 			Name:               pulumi.String("cloudrun-job"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Template: &cloudrunv2.JobTemplateArgs{
/// 				Template: &cloudrunv2.JobTemplateTemplateArgs{
/// 					Containers: cloudrunv2.JobTemplateTemplateContainerArray{
/// 						&cloudrunv2.JobTemplateTemplateContainerArgs{
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/job"),
/// 						},
/// 					},
/// 					NodeSelector: &cloudrunv2.JobTemplateTemplateNodeSelectorArgs{
/// 						Accelerator: pulumi.String("nvidia-l4"),
/// 					},
/// 					GpuZonalRedundancyDisabled: pulumi.Bool(true),
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
/// resource "gcp_cloudrunv2_job" "default" {
///   name                = "cloudrun-job"
///   location            = "us-central1"
///   deletion_protection = false
///   template = {
///     template = {
///       containers = [{
///         "image" = "us-docker.pkg.dev/cloudrun/container/job"
///       }]
///       node_selector = {
///         accelerator = "nvidia-l4"
///       }
///       gpu_zonal_redundancy_disabled = true
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
/// import com.pulumi.gcp.cloudrunv2.Job;
/// import com.pulumi.gcp.cloudrunv2.JobArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateNodeSelectorArgs;
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
///         var default_ = new Job("default", JobArgs.builder()
///             .name("cloudrun-job")
///             .location("us-central1")
///             .deletionProtection(false)
///             .template(JobTemplateArgs.builder()
///                 .template(JobTemplateTemplateArgs.builder()
///                     .containers(JobTemplateTemplateContainerArgs.builder()
///                         .image("us-docker.pkg.dev/cloudrun/container/job")
///                         .build())
///                     .nodeSelector(JobTemplateTemplateNodeSelectorArgs.builder()
///                         .accelerator("nvidia-l4")
///                         .build())
///                     .gpuZonalRedundancyDisabled(true)
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
///     type: gcp:cloudrunv2:Job
///     properties:
///       name: cloudrun-job
///       location: us-central1
///       deletionProtection: false
///       template:
///         template:
///           containers:
///             - image: us-docker.pkg.dev/cloudrun/container/job
///           nodeSelector:
///             accelerator: nvidia-l4
///           gpuZonalRedundancyDisabled: true
/// ```
///
/// ### Cloudrunv2 Job Tags
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Job("default", {
///     name: "cloudrun-job",
///     location: "us-central1",
///     deletionProtection: false,
///     tags: {
///         "tagKeys/1234": "tagValues/5678",
///     },
///     template: {
///         template: {
///             containers: [{
///                 image: "us-docker.pkg.dev/cloudrun/container/job",
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Job("default",
///     name="cloudrun-job",
///     location="us-central1",
///     deletion_protection=False,
///     tags={
///         "tagKeys/1234": "tagValues/5678",
///     },
///     template={
///         "template": {
///             "containers": [{
///                 "image": "us-docker.pkg.dev/cloudrun/container/job",
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
///     var @default = new Gcp.CloudRunV2.Job("default", new()
///     {
///         Name = "cloudrun-job",
///         Location = "us-central1",
///         DeletionProtection = false,
///         Tags =
///         {
///             { "tagKeys/1234", "tagValues/5678" },
///         },
///         Template = new Gcp.CloudRunV2.Inputs.JobTemplateArgs
///         {
///             Template = new Gcp.CloudRunV2.Inputs.JobTemplateTemplateArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.JobTemplateTemplateContainerArgs
///                     {
///                         Image = "us-docker.pkg.dev/cloudrun/container/job",
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
/// 		_, err := cloudrunv2.NewJob(ctx, "default", &cloudrunv2.JobArgs{
/// 			Name:               pulumi.String("cloudrun-job"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Tags: pulumi.StringMap{
/// 				"tagKeys/1234": pulumi.String("tagValues/5678"),
/// 			},
/// 			Template: &cloudrunv2.JobTemplateArgs{
/// 				Template: &cloudrunv2.JobTemplateTemplateArgs{
/// 					Containers: cloudrunv2.JobTemplateTemplateContainerArray{
/// 						&cloudrunv2.JobTemplateTemplateContainerArgs{
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/job"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrunv2_job" "default" {
///   name                = "cloudrun-job"
///   location            = "us-central1"
///   deletion_protection = false
///   tags = {
///     "tagKeys/1234" = "tagValues/5678"
///   }
///   template = {
///     template = {
///       containers = [{
///         "image" = "us-docker.pkg.dev/cloudrun/container/job"
///       }]
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
/// import com.pulumi.gcp.cloudrunv2.Job;
/// import com.pulumi.gcp.cloudrunv2.JobArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.JobTemplateTemplateContainerArgs;
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
///         var default_ = new Job("default", JobArgs.builder()
///             .name("cloudrun-job")
///             .location("us-central1")
///             .deletionProtection(false)
///             .tags(Map.of("tagKeys/1234", "tagValues/5678"))
///             .template(JobTemplateArgs.builder()
///                 .template(JobTemplateTemplateArgs.builder()
///                     .containers(JobTemplateTemplateContainerArgs.builder()
///                         .image("us-docker.pkg.dev/cloudrun/container/job")
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
///     type: gcp:cloudrunv2:Job
///     properties:
///       name: cloudrun-job
///       location: us-central1
///       deletionProtection: false
///       tags:
///         tagKeys/1234: tagValues/5678
///       template:
///         template:
///           containers:
///             - image: us-docker.pkg.dev/cloudrun/container/job
/// ```
///
///
/// ## Import
///
/// Job can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/jobs/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Job can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/job:Job default projects/{{project}}/locations/{{location}}/jobs/{{name}}
/// $ pulumi import gcp:cloudrunv2/job:Job default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:cloudrunv2/job:Job default {{location}}/{{name}}
/// ```
class Job extends pulumi.CustomResource {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected on new resources.
  /// All system annotations in v1 now have a corresponding field in v2 Job.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Settings for the Binary Authorization feature.
  /// Structure is documented below.
  late final pulumi.Output<JobBinaryAuthorization?> binaryAuthorization;
  /// Arbitrary identifier for the API client.
  late final pulumi.Output<String?> client;
  /// Arbitrary version identifier for the API client.
  late final pulumi.Output<String?> clientVersion;
  /// The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Job does not reach its desired state. See comments in reconciling for additional information on `reconciliation` process in Cloud Run.
  /// Structure is documented below.
  late final pulumi.Output<List<JobCondition>> conditions;
  /// (Output)
  /// Creation timestamp of the execution.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  /// Email address of the authenticated creator.
  late final pulumi.Output<String> creator;
  /// The deletion time.
  late final pulumi.Output<String> deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Whether Terraform will be prevented from destroying the job. Defaults to true.
  /// When a`terraform destroy` or `pulumi up` would delete the job,
  /// the command will fail if this field is not set to false in Terraform state.
  /// When the field is set to true or unset in Terraform state, a `pulumi up`
  /// or `terraform destroy` that would delete the job will fail.
  /// When the field is set to false, deleting the job is allowed.
  late final pulumi.Output<bool?> deletionProtection;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  late final pulumi.Output<String> etag;
  /// Number of executions created for this job.
  late final pulumi.Output<int> executionCount;
  /// For a deleted resource, the time after which it will be permanently deleted.
  late final pulumi.Output<String> expireTime;
  /// A number that monotonically increases every time the user modifies the desired state.
  late final pulumi.Output<String> generation;
  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 Job.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Email address of the last authenticated modifier.
  late final pulumi.Output<String> lastModifier;
  /// Name of the last created execution.
  /// Structure is documented below.
  late final pulumi.Output<List<JobLatestCreatedExecution>> latestCreatedExecutions;
  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// Possible values are: `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  late final pulumi.Output<String> launchStage;
  /// The location of the cloud run job
  late final pulumi.Output<String> location;
  /// Name of the Job.
  late final pulumi.Output<String> name;
  /// The generation of this Job. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  late final pulumi.Output<String> observedGeneration;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Returns true if the Job is currently being acted upon by the system to bring it into the desired state.
  /// When a new Job is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Job to the desired state. This process is called reconciliation. While reconciliation is in process, observedGeneration and latest_succeeded_execution, will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the state matches the Job, or there was an error, and reconciliation failed. This state can be found in terminalCondition.state.
  /// If reconciliation succeeded, the following fields will match: observedGeneration and generation, latestSucceededExecution and latestCreatedExecution.
  /// If reconciliation failed, observedGeneration and latestSucceededExecution will have the state of the last succeeded execution or empty for newly created Job. Additional information on the failure can be found in terminalCondition and conditions
  late final pulumi.Output<bool> reconciling;
  /// A unique string used as a suffix creating a new execution upon job create or update. The Job will become ready when the execution is successfully completed.
  /// The sum of job name and token length must be fewer than 63 characters.
  late final pulumi.Output<String?> runExecutionToken;
  /// A unique string used as a suffix creating a new execution upon job create or update. The Job will become ready when the execution is successfully started.
  /// The sum of job name and token length must be fewer than 63 characters.
  late final pulumi.Output<String?> startExecutionToken;
  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The template used to create executions for this Job.
  /// Structure is documented below.
  late final pulumi.Output<JobTemplate> template;
  /// The Condition of this Job, containing its readiness status, and detailed error information in case it did not reach the desired state
  /// Structure is documented below.
  late final pulumi.Output<List<JobTerminalCondition>> terminalConditions;
  /// Server assigned unique identifier for the Execution. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  late final pulumi.Output<String> uid;
  /// The last-modified time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_cloudrunv2_job_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(
    String name, {
    JobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudrunv2/job:Job',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    binaryAuthorization = registerOutput<JobBinaryAuthorization?>('binaryAuthorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobBinaryAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    client = registerOutput<String?>('client');
    clientVersion = registerOutput<String?>('clientVersion');
    conditions = registerOutput<List<JobCondition>>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobCondition>(guardedValue, (value) => JobCondition.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    creator = registerOutput<String>('creator');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    executionCount = registerOutput<int>('executionCount');
    expireTime = registerOutput<String>('expireTime');
    generation = registerOutput<String>('generation');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lastModifier = registerOutput<String>('lastModifier');
    latestCreatedExecutions = registerOutput<List<JobLatestCreatedExecution>>('latestCreatedExecutions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobLatestCreatedExecution>(guardedValue, (value) => JobLatestCreatedExecution.fromMap((value as Map).cast<String, dynamic>())); });
    launchStage = registerOutput<String>('launchStage');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    observedGeneration = registerOutput<String>('observedGeneration');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    runExecutionToken = registerOutput<String?>('runExecutionToken');
    startExecutionToken = registerOutput<String?>('startExecutionToken');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    template = registerOutput<JobTemplate>('template', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    terminalConditions = registerOutput<List<JobTerminalCondition>>('terminalConditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobTerminalCondition>(guardedValue, (value) => JobTerminalCondition.fromMap((value as Map).cast<String, dynamic>())); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Job] resource's state with the given [name] and [id].
  static Job get(
    String name,
    pulumi.Input<String> id, {
    JobState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Job._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Job._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudrunv2/job:Job',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    binaryAuthorization = registerOutput<JobBinaryAuthorization?>('binaryAuthorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobBinaryAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    client = registerOutput<String?>('client');
    clientVersion = registerOutput<String?>('clientVersion');
    conditions = registerOutput<List<JobCondition>>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobCondition>(guardedValue, (value) => JobCondition.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    creator = registerOutput<String>('creator');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    executionCount = registerOutput<int>('executionCount');
    expireTime = registerOutput<String>('expireTime');
    generation = registerOutput<String>('generation');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lastModifier = registerOutput<String>('lastModifier');
    latestCreatedExecutions = registerOutput<List<JobLatestCreatedExecution>>('latestCreatedExecutions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobLatestCreatedExecution>(guardedValue, (value) => JobLatestCreatedExecution.fromMap((value as Map).cast<String, dynamic>())); });
    launchStage = registerOutput<String>('launchStage');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    observedGeneration = registerOutput<String>('observedGeneration');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    runExecutionToken = registerOutput<String?>('runExecutionToken');
    startExecutionToken = registerOutput<String?>('startExecutionToken');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    template = registerOutput<JobTemplate>('template', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    terminalConditions = registerOutput<List<JobTerminalCondition>>('terminalConditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobTerminalCondition>(guardedValue, (value) => JobTerminalCondition.fromMap((value as Map).cast<String, dynamic>())); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Job] resource.
  Job.reference(String urn)
    : super(
        'gcp:cloudrunv2/job:Job',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    binaryAuthorization = registerOutput<JobBinaryAuthorization?>('binaryAuthorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobBinaryAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    client = registerOutput<String?>('client');
    clientVersion = registerOutput<String?>('clientVersion');
    conditions = registerOutput<List<JobCondition>>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobCondition>(guardedValue, (value) => JobCondition.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    creator = registerOutput<String>('creator');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    executionCount = registerOutput<int>('executionCount');
    expireTime = registerOutput<String>('expireTime');
    generation = registerOutput<String>('generation');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lastModifier = registerOutput<String>('lastModifier');
    latestCreatedExecutions = registerOutput<List<JobLatestCreatedExecution>>('latestCreatedExecutions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobLatestCreatedExecution>(guardedValue, (value) => JobLatestCreatedExecution.fromMap((value as Map).cast<String, dynamic>())); });
    launchStage = registerOutput<String>('launchStage');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    observedGeneration = registerOutput<String>('observedGeneration');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    runExecutionToken = registerOutput<String?>('runExecutionToken');
    startExecutionToken = registerOutput<String?>('startExecutionToken');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    template = registerOutput<JobTemplate>('template', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    terminalConditions = registerOutput<List<JobTerminalCondition>>('terminalConditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobTerminalCondition>(guardedValue, (value) => JobTerminalCondition.fromMap((value as Map).cast<String, dynamic>())); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
