import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_app_version_args.dart';
import 'standard_app_version_automatic_scaling.dart';
import 'standard_app_version_basic_scaling.dart';
import 'standard_app_version_deployment.dart';
import 'standard_app_version_entrypoint.dart';
import 'standard_app_version_handler.dart';
import 'standard_app_version_library.dart';
import 'standard_app_version_manual_scaling.dart';
import 'standard_app_version_state.dart';
import 'standard_app_version_vpc_access_connector.dart';

/// Standard App Version resource to create a new version of standard GAE Application.
/// Learn about the differences between the standard environment and the flexible environment
/// at https://cloud.google.com/appengine/docs/the-appengine-environments.
/// Currently supporting Zip and File Containers.
///
///
/// To get more information about StandardAppVersion, see:
///
/// * [API documentation](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/appengine/docs/standard)
///
/// ## Example Usage
///
/// ### App Engine Standard App Version
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const customServiceAccount = new gcp.serviceaccount.Account("custom_service_account", {
///     accountId: "my-account",
///     displayName: "Custom Service Account",
/// });
/// const gaeApi = new gcp.projects.IAMMember("gae_api", {
///     project: customServiceAccount.project,
///     role: "roles/compute.networkUser",
///     member: pulumi.interpolate`serviceAccount:${customServiceAccount.email}`,
/// });
/// const storageViewer = new gcp.projects.IAMMember("storage_viewer", {
///     project: customServiceAccount.project,
///     role: "roles/storage.objectViewer",
///     member: pulumi.interpolate`serviceAccount:${customServiceAccount.email}`,
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "appengine-static-content",
///     location: "US",
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "hello-world.zip",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("./test-fixtures/hello-world.zip"),
/// });
/// const myappV1 = new gcp.appengine.StandardAppVersion("myapp_v1", {
///     versionId: "v1",
///     service: "myapp",
///     runtime: "nodejs22",
///     entrypoint: {
///         shell: "node ./app.js",
///     },
///     deployment: {
///         zip: {
///             sourceUrl: pulumi.interpolate`https://storage.googleapis.com/${bucket.name}/${object.name}`,
///         },
///     },
///     envVariables: {
///         port: "8080",
///     },
///     automaticScaling: {
///         maxConcurrentRequests: 10,
///         minIdleInstances: 1,
///         maxIdleInstances: 3,
///         minPendingLatency: "1s",
///         maxPendingLatency: "5s",
///         standardSchedulerSettings: {
///             targetCpuUtilization: 0.5,
///             targetThroughputUtilization: 0.75,
///             minInstances: 2,
///             maxInstances: 10,
///         },
///     },
///     deleteServiceOnDestroy: true,
///     serviceAccount: customServiceAccount.email,
/// });
/// const myappV2 = new gcp.appengine.StandardAppVersion("myapp_v2", {
///     versionId: "v2",
///     service: "myapp",
///     runtime: "nodejs22",
///     appEngineApis: true,
///     entrypoint: {
///         shell: "node ./app.js",
///     },
///     deployment: {
///         zip: {
///             sourceUrl: pulumi.interpolate`https://storage.googleapis.com/${bucket.name}/${object.name}`,
///         },
///     },
///     envVariables: {
///         port: "8080",
///     },
///     basicScaling: {
///         maxInstances: 5,
///     },
///     noopOnDestroy: true,
///     serviceAccount: customServiceAccount.email,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_service_account = gcp.serviceaccount.Account("custom_service_account",
///     account_id="my-account",
///     display_name="Custom Service Account")
/// gae_api = gcp.projects.IAMMember("gae_api",
///     project=custom_service_account.project,
///     role="roles/compute.networkUser",
///     member=custom_service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// storage_viewer = gcp.projects.IAMMember("storage_viewer",
///     project=custom_service_account.project,
///     role="roles/storage.objectViewer",
///     member=custom_service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// bucket = gcp.storage.Bucket("bucket",
///     name="appengine-static-content",
///     location="US")
/// object = gcp.storage.BucketObject("object",
///     name="hello-world.zip",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("./test-fixtures/hello-world.zip"))
/// myapp_v1 = gcp.appengine.StandardAppVersion("myapp_v1",
///     version_id="v1",
///     service="myapp",
///     runtime="nodejs22",
///     entrypoint={
///         "shell": "node ./app.js",
///     },
///     deployment={
///         "zip": {
///             "source_url": pulumi.Output.all(
///                 bucketName=bucket.name,
///                 objectName=object.name
/// ).apply(lambda resolved_outputs: f"https://storage.googleapis.com/{resolved_outputs['bucketName']}/{resolved_outputs['objectName']}")
/// ,
///         },
///     },
///     env_variables={
///         "port": "8080",
///     },
///     automatic_scaling={
///         "max_concurrent_requests": 10,
///         "min_idle_instances": 1,
///         "max_idle_instances": 3,
///         "min_pending_latency": "1s",
///         "max_pending_latency": "5s",
///         "standard_scheduler_settings": {
///             "target_cpu_utilization": 0.5,
///             "target_throughput_utilization": 0.75,
///             "min_instances": 2,
///             "max_instances": 10,
///         },
///     },
///     delete_service_on_destroy=True,
///     service_account=custom_service_account.email)
/// myapp_v2 = gcp.appengine.StandardAppVersion("myapp_v2",
///     version_id="v2",
///     service="myapp",
///     runtime="nodejs22",
///     app_engine_apis=True,
///     entrypoint={
///         "shell": "node ./app.js",
///     },
///     deployment={
///         "zip": {
///             "source_url": pulumi.Output.all(
///                 bucketName=bucket.name,
///                 objectName=object.name
/// ).apply(lambda resolved_outputs: f"https://storage.googleapis.com/{resolved_outputs['bucketName']}/{resolved_outputs['objectName']}")
/// ,
///         },
///     },
///     env_variables={
///         "port": "8080",
///     },
///     basic_scaling={
///         "max_instances": 5,
///     },
///     noop_on_destroy=True,
///     service_account=custom_service_account.email)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customServiceAccount = new Gcp.ServiceAccount.Account("custom_service_account", new()
///     {
///         AccountId = "my-account",
///         DisplayName = "Custom Service Account",
///     });
///
///     var gaeApi = new Gcp.Projects.IAMMember("gae_api", new()
///     {
///         Project = customServiceAccount.Project,
///         Role = "roles/compute.networkUser",
///         Member = customServiceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var storageViewer = new Gcp.Projects.IAMMember("storage_viewer", new()
///     {
///         Project = customServiceAccount.Project,
///         Role = "roles/storage.objectViewer",
///         Member = customServiceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "appengine-static-content",
///         Location = "US",
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "hello-world.zip",
///         Bucket = bucket.Name,
///         Source = new FileAsset("./test-fixtures/hello-world.zip"),
///     });
///
///     var myappV1 = new Gcp.AppEngine.StandardAppVersion("myapp_v1", new()
///     {
///         VersionId = "v1",
///         Service = "myapp",
///         Runtime = "nodejs22",
///         Entrypoint = new Gcp.AppEngine.Inputs.StandardAppVersionEntrypointArgs
///         {
///             Shell = "node ./app.js",
///         },
///         Deployment = new Gcp.AppEngine.Inputs.StandardAppVersionDeploymentArgs
///         {
///             Zip = new Gcp.AppEngine.Inputs.StandardAppVersionDeploymentZipArgs
///             {
///                 SourceUrl = Output.Tuple(bucket.Name, @object.Name).Apply(values =>
///                 {
///                     var bucketName = values.Item1;
///                     var objectName = values.Item2;
///                     return $"https://storage.googleapis.com/{bucketName}/{objectName}";
///                 }),
///             },
///         },
///         EnvVariables =
///         {
///             { "port", "8080" },
///         },
///         AutomaticScaling = new Gcp.AppEngine.Inputs.StandardAppVersionAutomaticScalingArgs
///         {
///             MaxConcurrentRequests = 10,
///             MinIdleInstances = 1,
///             MaxIdleInstances = 3,
///             MinPendingLatency = "1s",
///             MaxPendingLatency = "5s",
///             StandardSchedulerSettings = new Gcp.AppEngine.Inputs.StandardAppVersionAutomaticScalingStandardSchedulerSettingsArgs
///             {
///                 TargetCpuUtilization = 0.5,
///                 TargetThroughputUtilization = 0.75,
///                 MinInstances = 2,
///                 MaxInstances = 10,
///             },
///         },
///         DeleteServiceOnDestroy = true,
///         ServiceAccount = customServiceAccount.Email,
///     });
///
///     var myappV2 = new Gcp.AppEngine.StandardAppVersion("myapp_v2", new()
///     {
///         VersionId = "v2",
///         Service = "myapp",
///         Runtime = "nodejs22",
///         AppEngineApis = true,
///         Entrypoint = new Gcp.AppEngine.Inputs.StandardAppVersionEntrypointArgs
///         {
///             Shell = "node ./app.js",
///         },
///         Deployment = new Gcp.AppEngine.Inputs.StandardAppVersionDeploymentArgs
///         {
///             Zip = new Gcp.AppEngine.Inputs.StandardAppVersionDeploymentZipArgs
///             {
///                 SourceUrl = Output.Tuple(bucket.Name, @object.Name).Apply(values =>
///                 {
///                     var bucketName = values.Item1;
///                     var objectName = values.Item2;
///                     return $"https://storage.googleapis.com/{bucketName}/{objectName}";
///                 }),
///             },
///         },
///         EnvVariables =
///         {
///             { "port", "8080" },
///         },
///         BasicScaling = new Gcp.AppEngine.Inputs.StandardAppVersionBasicScalingArgs
///         {
///             MaxInstances = 5,
///         },
///         NoopOnDestroy = true,
///         ServiceAccount = customServiceAccount.Email,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/appengine"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		customServiceAccount, err := serviceaccount.NewAccount(ctx, "custom_service_account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("my-account"),
/// 			DisplayName: pulumi.String("Custom Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "gae_api", &projects.IAMMemberArgs{
/// 			Project: customServiceAccount.Project,
/// 			Role:    pulumi.String("roles/compute.networkUser"),
/// 			Member: customServiceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "storage_viewer", &projects.IAMMemberArgs{
/// 			Project: customServiceAccount.Project,
/// 			Role:    pulumi.String("roles/storage.objectViewer"),
/// 			Member: customServiceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:     pulumi.String("appengine-static-content"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("hello-world.zip"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("./test-fixtures/hello-world.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appengine.NewStandardAppVersion(ctx, "myapp_v1", &appengine.StandardAppVersionArgs{
/// 			VersionId: pulumi.String("v1"),
/// 			Service:   pulumi.String("myapp"),
/// 			Runtime:   pulumi.String("nodejs22"),
/// 			Entrypoint: &appengine.StandardAppVersionEntrypointArgs{
/// 				Shell: pulumi.String("node ./app.js"),
/// 			},
/// 			Deployment: &appengine.StandardAppVersionDeploymentArgs{
/// 				Zip: &appengine.StandardAppVersionDeploymentZipArgs{
/// 					SourceUrl: pulumi.All(bucket.Name, object.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						bucketName := _args[0].(string)
/// 						objectName := _args[1].(string)
/// 						return fmt.Sprintf("https://storage.googleapis.com/%v/%v", bucketName, objectName), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 			EnvVariables: pulumi.StringMap{
/// 				"port": pulumi.String("8080"),
/// 			},
/// 			AutomaticScaling: &appengine.StandardAppVersionAutomaticScalingArgs{
/// 				MaxConcurrentRequests: pulumi.Int(10),
/// 				MinIdleInstances:      pulumi.Int(1),
/// 				MaxIdleInstances:      pulumi.Int(3),
/// 				MinPendingLatency:     pulumi.String("1s"),
/// 				MaxPendingLatency:     pulumi.String("5s"),
/// 				StandardSchedulerSettings: &appengine.StandardAppVersionAutomaticScalingStandardSchedulerSettingsArgs{
/// 					TargetCpuUtilization:        pulumi.Float64(0.5),
/// 					TargetThroughputUtilization: pulumi.Float64(0.75),
/// 					MinInstances:                pulumi.Int(2),
/// 					MaxInstances:                pulumi.Int(10),
/// 				},
/// 			},
/// 			DeleteServiceOnDestroy: pulumi.Bool(true),
/// 			ServiceAccount:         customServiceAccount.Email,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appengine.NewStandardAppVersion(ctx, "myapp_v2", &appengine.StandardAppVersionArgs{
/// 			VersionId:     pulumi.String("v2"),
/// 			Service:       pulumi.String("myapp"),
/// 			Runtime:       pulumi.String("nodejs22"),
/// 			AppEngineApis: pulumi.Bool(true),
/// 			Entrypoint: &appengine.StandardAppVersionEntrypointArgs{
/// 				Shell: pulumi.String("node ./app.js"),
/// 			},
/// 			Deployment: &appengine.StandardAppVersionDeploymentArgs{
/// 				Zip: &appengine.StandardAppVersionDeploymentZipArgs{
/// 					SourceUrl: pulumi.All(bucket.Name, object.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						bucketName := _args[0].(string)
/// 						objectName := _args[1].(string)
/// 						return fmt.Sprintf("https://storage.googleapis.com/%v/%v", bucketName, objectName), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 			EnvVariables: pulumi.StringMap{
/// 				"port": pulumi.String("8080"),
/// 			},
/// 			BasicScaling: &appengine.StandardAppVersionBasicScalingArgs{
/// 				MaxInstances: pulumi.Int(5),
/// 			},
/// 			NoopOnDestroy:  pulumi.Bool(true),
/// 			ServiceAccount: customServiceAccount.Email,
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
/// resource "gcp_serviceaccount_account" "custom_service_account" {
///   account_id   = "my-account"
///   display_name = "Custom Service Account"
/// }
/// resource "gcp_projects_iammember" "gae_api" {
///   project = gcp_serviceaccount_account.custom_service_account.project
///   role    = "roles/compute.networkUser"
///   member  ="serviceAccount:${gcp_serviceaccount_account.custom_service_account.email}"
/// }
/// resource "gcp_projects_iammember" "storage_viewer" {
///   project = gcp_serviceaccount_account.custom_service_account.project
///   role    = "roles/storage.objectViewer"
///   member  ="serviceAccount:${gcp_serviceaccount_account.custom_service_account.email}"
/// }
/// resource "gcp_appengine_standardappversion" "myapp_v1" {
///   version_id = "v1"
///   service    = "myapp"
///   runtime    = "nodejs22"
///   entrypoint = {
///     shell = "node ./app.js"
///   }
///   deployment = {
///     zip = {
///       source_url ="https://storage.googleapis.com/${gcp_storage_bucket.bucket.name}/${gcp_storage_bucketobject.object.name}"
///     }
///   }
///   env_variables = {
///     "port" = "8080"
///   }
///   automatic_scaling = {
///     max_concurrent_requests = 10
///     min_idle_instances      = 1
///     max_idle_instances      = 3
///     min_pending_latency     = "1s"
///     max_pending_latency     = "5s"
///     standard_scheduler_settings = {
///       target_cpu_utilization        = 0.5
///       target_throughput_utilization = 0.75
///       min_instances                 = 2
///       max_instances                 = 10
///     }
///   }
///   delete_service_on_destroy = true
///   service_account           = gcp_serviceaccount_account.custom_service_account.email
/// }
/// resource "gcp_appengine_standardappversion" "myapp_v2" {
///   version_id      = "v2"
///   service         = "myapp"
///   runtime         = "nodejs22"
///   app_engine_apis = true
///   entrypoint = {
///     shell = "node ./app.js"
///   }
///   deployment = {
///     zip = {
///       source_url ="https://storage.googleapis.com/${gcp_storage_bucket.bucket.name}/${gcp_storage_bucketobject.object.name}"
///     }
///   }
///   env_variables = {
///     "port" = "8080"
///   }
///   basic_scaling = {
///     max_instances = 5
///   }
///   noop_on_destroy = true
///   service_account = gcp_serviceaccount_account.custom_service_account.email
/// }
/// resource "gcp_storage_bucket" "bucket" {
///   name     = "appengine-static-content"
///   location = "US"
/// }
/// resource "gcp_storage_bucketobject" "object" {
///   name   = "hello-world.zip"
///   bucket = gcp_storage_bucket.bucket.name
///   source = fileAsset("./test-fixtures/hello-world.zip")
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
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.appengine.StandardAppVersion;
/// import com.pulumi.gcp.appengine.StandardAppVersionArgs;
/// import com.pulumi.gcp.appengine.inputs.StandardAppVersionEntrypointArgs;
/// import com.pulumi.gcp.appengine.inputs.StandardAppVersionDeploymentArgs;
/// import com.pulumi.gcp.appengine.inputs.StandardAppVersionDeploymentZipArgs;
/// import com.pulumi.gcp.appengine.inputs.StandardAppVersionAutomaticScalingArgs;
/// import com.pulumi.gcp.appengine.inputs.StandardAppVersionAutomaticScalingStandardSchedulerSettingsArgs;
/// import com.pulumi.gcp.appengine.inputs.StandardAppVersionBasicScalingArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var customServiceAccount = new Account("customServiceAccount", AccountArgs.builder()
///             .accountId("my-account")
///             .displayName("Custom Service Account")
///             .build());
///
///         var gaeApi = new IAMMember("gaeApi", IAMMemberArgs.builder()
///             .project(customServiceAccount.project())
///             .role("roles/compute.networkUser")
///             .member(customServiceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var storageViewer = new IAMMember("storageViewer", IAMMemberArgs.builder()
///             .project(customServiceAccount.project())
///             .role("roles/storage.objectViewer")
///             .member(customServiceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("appengine-static-content")
///             .location("US")
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("hello-world.zip")
///             .bucket(bucket.name())
///             .source(new FileAsset("./test-fixtures/hello-world.zip"))
///             .build());
///
///         var myappV1 = new StandardAppVersion("myappV1", StandardAppVersionArgs.builder()
///             .versionId("v1")
///             .service("myapp")
///             .runtime("nodejs22")
///             .entrypoint(StandardAppVersionEntrypointArgs.builder()
///                 .shell("node ./app.js")
///                 .build())
///             .deployment(StandardAppVersionDeploymentArgs.builder()
///                 .zip(StandardAppVersionDeploymentZipArgs.builder()
///                     .sourceUrl(Output.tuple(bucket.name(), object.name()).applyValue(values -> {
///                         var bucketName = values.t1;
///                         var objectName = values.t2;
///                         return String.format("https://storage.googleapis.com/%s/%s", bucketName,objectName);
///                     }))
///                     .build())
///                 .build())
///             .envVariables(Map.of("port", "8080"))
///             .automaticScaling(StandardAppVersionAutomaticScalingArgs.builder()
///                 .maxConcurrentRequests(10)
///                 .minIdleInstances(1)
///                 .maxIdleInstances(3)
///                 .minPendingLatency("1s")
///                 .maxPendingLatency("5s")
///                 .standardSchedulerSettings(StandardAppVersionAutomaticScalingStandardSchedulerSettingsArgs.builder()
///                     .targetCpuUtilization(0.5)
///                     .targetThroughputUtilization(0.75)
///                     .minInstances(2)
///                     .maxInstances(10)
///                     .build())
///                 .build())
///             .deleteServiceOnDestroy(true)
///             .serviceAccount(customServiceAccount.email())
///             .build());
///
///         var myappV2 = new StandardAppVersion("myappV2", StandardAppVersionArgs.builder()
///             .versionId("v2")
///             .service("myapp")
///             .runtime("nodejs22")
///             .appEngineApis(true)
///             .entrypoint(StandardAppVersionEntrypointArgs.builder()
///                 .shell("node ./app.js")
///                 .build())
///             .deployment(StandardAppVersionDeploymentArgs.builder()
///                 .zip(StandardAppVersionDeploymentZipArgs.builder()
///                     .sourceUrl(Output.tuple(bucket.name(), object.name()).applyValue(values -> {
///                         var bucketName = values.t1;
///                         var objectName = values.t2;
///                         return String.format("https://storage.googleapis.com/%s/%s", bucketName,objectName);
///                     }))
///                     .build())
///                 .build())
///             .envVariables(Map.of("port", "8080"))
///             .basicScaling(StandardAppVersionBasicScalingArgs.builder()
///                 .maxInstances(5)
///                 .build())
///             .noopOnDestroy(true)
///             .serviceAccount(customServiceAccount.email())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   customServiceAccount:
///     type: gcp:serviceaccount:Account
///     name: custom_service_account
///     properties:
///       accountId: my-account
///       displayName: Custom Service Account
///   gaeApi:
///     type: gcp:projects:IAMMember
///     name: gae_api
///     properties:
///       project: ${customServiceAccount.project}
///       role: roles/compute.networkUser
///       member: serviceAccount:${customServiceAccount.email}
///   storageViewer:
///     type: gcp:projects:IAMMember
///     name: storage_viewer
///     properties:
///       project: ${customServiceAccount.project}
///       role: roles/storage.objectViewer
///       member: serviceAccount:${customServiceAccount.email}
///   myappV1:
///     type: gcp:appengine:StandardAppVersion
///     name: myapp_v1
///     properties:
///       versionId: v1
///       service: myapp
///       runtime: nodejs22
///       entrypoint:
///         shell: node ./app.js
///       deployment:
///         zip:
///           sourceUrl: https://storage.googleapis.com/${bucket.name}/${object.name}
///       envVariables:
///         port: '8080'
///       automaticScaling:
///         maxConcurrentRequests: 10
///         minIdleInstances: 1
///         maxIdleInstances: 3
///         minPendingLatency: 1s
///         maxPendingLatency: 5s
///         standardSchedulerSettings:
///           targetCpuUtilization: 0.5
///           targetThroughputUtilization: 0.75
///           minInstances: 2
///           maxInstances: 10
///       deleteServiceOnDestroy: true
///       serviceAccount: ${customServiceAccount.email}
///   myappV2:
///     type: gcp:appengine:StandardAppVersion
///     name: myapp_v2
///     properties:
///       versionId: v2
///       service: myapp
///       runtime: nodejs22
///       appEngineApis: true
///       entrypoint:
///         shell: node ./app.js
///       deployment:
///         zip:
///           sourceUrl: https://storage.googleapis.com/${bucket.name}/${object.name}
///       envVariables:
///         port: '8080'
///       basicScaling:
///         maxInstances: 5
///       noopOnDestroy: true
///       serviceAccount: ${customServiceAccount.email}
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: appengine-static-content
///       location: US
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: hello-world.zip
///       bucket: ${bucket.name}
///       source:
///         fn::fileAsset: ./test-fixtures/hello-world.zip
/// ```
///
/// ### App Engine Standard App Version Bundled Services
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
///     accountId: "gae-sa",
///     displayName: "Test Service Account for GAE",
/// });
/// const gaeApi = new gcp.projects.IAMMember("gae_api", {
///     project: serviceAccount.project,
///     role: "roles/compute.networkUser",
///     member: pulumi.interpolate`serviceAccount:${serviceAccount.email}`,
/// });
/// const storageViewer = new gcp.projects.IAMMember("storage_viewer", {
///     project: serviceAccount.project,
///     role: "roles/storage.objectViewer",
///     member: pulumi.interpolate`serviceAccount:${serviceAccount.email}`,
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "tf-test-gae-bkt-bundled",
///     location: "US",
/// });
/// const requirements = new gcp.storage.BucketObject("requirements", {
///     name: "requirements.txt",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("./test-fixtures/hello-world-flask/requirements.txt"),
/// });
/// const main = new gcp.storage.BucketObject("main", {
///     name: "main.py",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("./test-fixtures/hello-world-flask/main.py"),
/// });
/// const gae_std_app_ver_bundled = new gcp.appengine.StandardAppVersion("gae-std-app-ver-bundled", {
///     versionId: "v1",
///     service: "bundled-service",
///     runtime: "python310",
///     deployment: {
///         files: [
///             {
///                 name: "main.py",
///                 sourceUrl: pulumi.interpolate`https://storage.googleapis.com/${bucket.name}/${main.name}`,
///             },
///             {
///                 name: "requirements.txt",
///                 sourceUrl: pulumi.interpolate`https://storage.googleapis.com/${bucket.name}/${requirements.name}`,
///             },
///         ],
///     },
///     entrypoint: {
///         shell: "gunicorn -b :$PORT main:app",
///     },
///     appEngineBundledServices: [
///         "BUNDLED_SERVICE_TYPE_MAIL",
///         "BUNDLED_SERVICE_TYPE_DATASTORE_V3",
///     ],
///     deleteServiceOnDestroy: true,
///     serviceAccount: serviceAccount.email,
/// }, {
///     dependsOn: [
///         gaeApi,
///         storageViewer,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_account = gcp.serviceaccount.Account("service_account",
///     account_id="gae-sa",
///     display_name="Test Service Account for GAE")
/// gae_api = gcp.projects.IAMMember("gae_api",
///     project=service_account.project,
///     role="roles/compute.networkUser",
///     member=service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// storage_viewer = gcp.projects.IAMMember("storage_viewer",
///     project=service_account.project,
///     role="roles/storage.objectViewer",
///     member=service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// bucket = gcp.storage.Bucket("bucket",
///     name="tf-test-gae-bkt-bundled",
///     location="US")
/// requirements = gcp.storage.BucketObject("requirements",
///     name="requirements.txt",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("./test-fixtures/hello-world-flask/requirements.txt"))
/// main = gcp.storage.BucketObject("main",
///     name="main.py",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("./test-fixtures/hello-world-flask/main.py"))
/// gae_std_app_ver_bundled = gcp.appengine.StandardAppVersion("gae-std-app-ver-bundled",
///     version_id="v1",
///     service="bundled-service",
///     runtime="python310",
///     deployment={
///         "files": [
///             {
///                 "name": "main.py",
///                 "source_url": pulumi.Output.all(
///                     bucketName=bucket.name,
///                     mainName=main.name
/// ).apply(lambda resolved_outputs: f"https://storage.googleapis.com/{resolved_outputs['bucketName']}/{resolved_outputs['mainName']}")
/// ,
///             },
///             {
///                 "name": "requirements.txt",
///                 "source_url": pulumi.Output.all(
///                     bucketName=bucket.name,
///                     requirementsName=requirements.name
/// ).apply(lambda resolved_outputs: f"https://storage.googleapis.com/{resolved_outputs['bucketName']}/{resolved_outputs['requirementsName']}")
/// ,
///             },
///         ],
///     },
///     entrypoint={
///         "shell": "gunicorn -b :$PORT main:app",
///     },
///     app_engine_bundled_services=[
///         "BUNDLED_SERVICE_TYPE_MAIL",
///         "BUNDLED_SERVICE_TYPE_DATASTORE_V3",
///     ],
///     delete_service_on_destroy=True,
///     service_account=service_account.email,
///     opts = pulumi.ResourceOptions(depends_on=[
///             gae_api,
///             storage_viewer,
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
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         AccountId = "gae-sa",
///         DisplayName = "Test Service Account for GAE",
///     });
///
///     var gaeApi = new Gcp.Projects.IAMMember("gae_api", new()
///     {
///         Project = serviceAccount.Project,
///         Role = "roles/compute.networkUser",
///         Member = serviceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var storageViewer = new Gcp.Projects.IAMMember("storage_viewer", new()
///     {
///         Project = serviceAccount.Project,
///         Role = "roles/storage.objectViewer",
///         Member = serviceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "tf-test-gae-bkt-bundled",
///         Location = "US",
///     });
///
///     var requirements = new Gcp.Storage.BucketObject("requirements", new()
///     {
///         Name = "requirements.txt",
///         Bucket = bucket.Name,
///         Source = new FileAsset("./test-fixtures/hello-world-flask/requirements.txt"),
///     });
///
///     var main = new Gcp.Storage.BucketObject("main", new()
///     {
///         Name = "main.py",
///         Bucket = bucket.Name,
///         Source = new FileAsset("./test-fixtures/hello-world-flask/main.py"),
///     });
///
///     var gae_std_app_ver_bundled = new Gcp.AppEngine.StandardAppVersion("gae-std-app-ver-bundled", new()
///     {
///         VersionId = "v1",
///         Service = "bundled-service",
///         Runtime = "python310",
///         Deployment = new Gcp.AppEngine.Inputs.StandardAppVersionDeploymentArgs
///         {
///             Files = new[]
///             {
///                 new Gcp.AppEngine.Inputs.StandardAppVersionDeploymentFileArgs
///                 {
///                     Name = "main.py",
///                     SourceUrl = Output.Tuple(bucket.Name, main.Name).Apply(values =>
///                     {
///                         var bucketName = values.Item1;
///                         var mainName = values.Item2;
///                         return $"https://storage.googleapis.com/{bucketName}/{mainName}";
///                     }),
///                 },
///                 new Gcp.AppEngine.Inputs.StandardAppVersionDeploymentFileArgs
///                 {
///                     Name = "requirements.txt",
///                     SourceUrl = Output.Tuple(bucket.Name, requirements.Name).Apply(values =>
///                     {
///                         var bucketName = values.Item1;
///                         var requirementsName = values.Item2;
///                         return $"https://storage.googleapis.com/{bucketName}/{requirementsName}";
///                     }),
///                 },
///             },
///         },
///         Entrypoint = new Gcp.AppEngine.Inputs.StandardAppVersionEntrypointArgs
///         {
///             Shell = "gunicorn -b :$PORT main:app",
///         },
///         AppEngineBundledServices = new[]
///         {
///             "BUNDLED_SERVICE_TYPE_MAIL",
///             "BUNDLED_SERVICE_TYPE_DATASTORE_V3",
///         },
///         DeleteServiceOnDestroy = true,
///         ServiceAccount = serviceAccount.Email,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             gaeApi,
///             storageViewer,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/appengine"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("gae-sa"),
/// 			DisplayName: pulumi.String("Test Service Account for GAE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		gaeApi, err := projects.NewIAMMember(ctx, "gae_api", &projects.IAMMemberArgs{
/// 			Project: serviceAccount.Project,
/// 			Role:    pulumi.String("roles/compute.networkUser"),
/// 			Member: serviceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		storageViewer, err := projects.NewIAMMember(ctx, "storage_viewer", &projects.IAMMemberArgs{
/// 			Project: serviceAccount.Project,
/// 			Role:    pulumi.String("roles/storage.objectViewer"),
/// 			Member: serviceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:     pulumi.String("tf-test-gae-bkt-bundled"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		requirements, err := storage.NewBucketObject(ctx, "requirements", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("requirements.txt"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("./test-fixtures/hello-world-flask/requirements.txt"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		main, err := storage.NewBucketObject(ctx, "main", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("main.py"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("./test-fixtures/hello-world-flask/main.py"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appengine.NewStandardAppVersion(ctx, "gae-std-app-ver-bundled", &appengine.StandardAppVersionArgs{
/// 			VersionId: pulumi.String("v1"),
/// 			Service:   pulumi.String("bundled-service"),
/// 			Runtime:   pulumi.String("python310"),
/// 			Deployment: &appengine.StandardAppVersionDeploymentArgs{
/// 				Files: appengine.StandardAppVersionDeploymentFileArray{
/// 					&appengine.StandardAppVersionDeploymentFileArgs{
/// 						Name: pulumi.String("main.py"),
/// 						SourceUrl: pulumi.All(bucket.Name, main.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 							bucketName := _args[0].(string)
/// 							mainName := _args[1].(string)
/// 							return fmt.Sprintf("https://storage.googleapis.com/%v/%v", bucketName, mainName), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 					&appengine.StandardAppVersionDeploymentFileArgs{
/// 						Name: pulumi.String("requirements.txt"),
/// 						SourceUrl: pulumi.All(bucket.Name, requirements.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 							bucketName := _args[0].(string)
/// 							requirementsName := _args[1].(string)
/// 							return fmt.Sprintf("https://storage.googleapis.com/%v/%v", bucketName, requirementsName), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 			Entrypoint: &appengine.StandardAppVersionEntrypointArgs{
/// 				Shell: pulumi.String("gunicorn -b :$PORT main:app"),
/// 			},
/// 			AppEngineBundledServices: pulumi.StringArray{
/// 				pulumi.String("BUNDLED_SERVICE_TYPE_MAIL"),
/// 				pulumi.String("BUNDLED_SERVICE_TYPE_DATASTORE_V3"),
/// 			},
/// 			DeleteServiceOnDestroy: pulumi.Bool(true),
/// 			ServiceAccount:         serviceAccount.Email,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			gaeApi,
/// 			storageViewer,
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
/// resource "gcp_serviceaccount_account" "service_account" {
///   account_id   = "gae-sa"
///   display_name = "Test Service Account for GAE"
/// }
/// resource "gcp_projects_iammember" "gae_api" {
///   project = gcp_serviceaccount_account.service_account.project
///   role    = "roles/compute.networkUser"
///   member  ="serviceAccount:${gcp_serviceaccount_account.service_account.email}"
/// }
/// resource "gcp_projects_iammember" "storage_viewer" {
///   project = gcp_serviceaccount_account.service_account.project
///   role    = "roles/storage.objectViewer"
///   member  ="serviceAccount:${gcp_serviceaccount_account.service_account.email}"
/// }
/// resource "gcp_storage_bucket" "bucket" {
///   name     = "tf-test-gae-bkt-bundled"
///   location = "US"
/// }
/// resource "gcp_storage_bucketobject" "requirements" {
///   name   = "requirements.txt"
///   bucket = gcp_storage_bucket.bucket.name
///   source = fileAsset("./test-fixtures/hello-world-flask/requirements.txt")
/// }
/// resource "gcp_storage_bucketobject" "main" {
///   name   = "main.py"
///   bucket = gcp_storage_bucket.bucket.name
///   source = fileAsset("./test-fixtures/hello-world-flask/main.py")
/// }
/// resource "gcp_appengine_standardappversion" "gae-std-app-ver-bundled" {
///   depends_on = [gcp_projects_iammember.gae_api, gcp_projects_iammember.storage_viewer]
///   version_id = "v1"
///   service    = "bundled-service"
///   runtime    = "python310"
///   deployment = {
///     files = [{
///       "name"      = "main.py"
///       "sourceUrl" ="https://storage.googleapis.com/${gcp_storage_bucket.bucket.name}/${gcp_storage_bucketobject.main.name}"
///       }, {
///       "name"      = "requirements.txt"
///       "sourceUrl" ="https://storage.googleapis.com/${gcp_storage_bucket.bucket.name}/${gcp_storage_bucketobject.requirements.name}"
///     }]
///   }
///   entrypoint = {
///     shell = "gunicorn -b :$PORT main:app"
///   }
///   app_engine_bundled_services = ["BUNDLED_SERVICE_TYPE_MAIL", "BUNDLED_SERVICE_TYPE_DATASTORE_V3"]
///   delete_service_on_destroy   = true
///   service_account             = gcp_serviceaccount_account.service_account.email
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
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.appengine.StandardAppVersion;
/// import com.pulumi.gcp.appengine.StandardAppVersionArgs;
/// import com.pulumi.gcp.appengine.inputs.StandardAppVersionDeploymentArgs;
/// import com.pulumi.gcp.appengine.inputs.StandardAppVersionDeploymentFileArgs;
/// import com.pulumi.gcp.appengine.inputs.StandardAppVersionEntrypointArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .accountId("gae-sa")
///             .displayName("Test Service Account for GAE")
///             .build());
///
///         var gaeApi = new IAMMember("gaeApi", IAMMemberArgs.builder()
///             .project(serviceAccount.project())
///             .role("roles/compute.networkUser")
///             .member(serviceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var storageViewer = new IAMMember("storageViewer", IAMMemberArgs.builder()
///             .project(serviceAccount.project())
///             .role("roles/storage.objectViewer")
///             .member(serviceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("tf-test-gae-bkt-bundled")
///             .location("US")
///             .build());
///
///         var requirements = new BucketObject("requirements", BucketObjectArgs.builder()
///             .name("requirements.txt")
///             .bucket(bucket.name())
///             .source(new FileAsset("./test-fixtures/hello-world-flask/requirements.txt"))
///             .build());
///
///         var main = new BucketObject("main", BucketObjectArgs.builder()
///             .name("main.py")
///             .bucket(bucket.name())
///             .source(new FileAsset("./test-fixtures/hello-world-flask/main.py"))
///             .build());
///
///         var gae_std_app_ver_bundled = new StandardAppVersion("gae-std-app-ver-bundled", StandardAppVersionArgs.builder()
///             .versionId("v1")
///             .service("bundled-service")
///             .runtime("python310")
///             .deployment(StandardAppVersionDeploymentArgs.builder()
///                 .files(
///                     StandardAppVersionDeploymentFileArgs.builder()
///                         .name("main.py")
///                         .sourceUrl(Output.tuple(bucket.name(), main.name()).applyValue(values -> {
///                             var bucketName = values.t1;
///                             var mainName = values.t2;
///                             return String.format("https://storage.googleapis.com/%s/%s", bucketName,mainName);
///                         }))
///                         .build(),
///                     StandardAppVersionDeploymentFileArgs.builder()
///                         .name("requirements.txt")
///                         .sourceUrl(Output.tuple(bucket.name(), requirements.name()).applyValue(values -> {
///                             var bucketName = values.t1;
///                             var requirementsName = values.t2;
///                             return String.format("https://storage.googleapis.com/%s/%s", bucketName,requirementsName);
///                         }))
///                         .build())
///                 .build())
///             .entrypoint(StandardAppVersionEntrypointArgs.builder()
///                 .shell("gunicorn -b :$PORT main:app")
///                 .build())
///             .appEngineBundledServices(
///                 "BUNDLED_SERVICE_TYPE_MAIL",
///                 "BUNDLED_SERVICE_TYPE_DATASTORE_V3")
///             .deleteServiceOnDestroy(true)
///             .serviceAccount(serviceAccount.email())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     gaeApi,
///                     storageViewer)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       accountId: gae-sa
///       displayName: Test Service Account for GAE
///   gaeApi:
///     type: gcp:projects:IAMMember
///     name: gae_api
///     properties:
///       project: ${serviceAccount.project}
///       role: roles/compute.networkUser
///       member: serviceAccount:${serviceAccount.email}
///   storageViewer:
///     type: gcp:projects:IAMMember
///     name: storage_viewer
///     properties:
///       project: ${serviceAccount.project}
///       role: roles/storage.objectViewer
///       member: serviceAccount:${serviceAccount.email}
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: tf-test-gae-bkt-bundled
///       location: US
///   requirements:
///     type: gcp:storage:BucketObject
///     properties:
///       name: requirements.txt
///       bucket: ${bucket.name}
///       source:
///         fn::fileAsset: ./test-fixtures/hello-world-flask/requirements.txt
///   main:
///     type: gcp:storage:BucketObject
///     properties:
///       name: main.py
///       bucket: ${bucket.name}
///       source:
///         fn::fileAsset: ./test-fixtures/hello-world-flask/main.py
///   gae-std-app-ver-bundled:
///     type: gcp:appengine:StandardAppVersion
///     properties:
///       versionId: v1
///       service: bundled-service
///       runtime: python310
///       deployment:
///         files:
///           - name: main.py
///             sourceUrl: https://storage.googleapis.com/${bucket.name}/${main.name}
///           - name: requirements.txt
///             sourceUrl: https://storage.googleapis.com/${bucket.name}/${requirements.name}
///       entrypoint:
///         shell: gunicorn -b :$PORT main:app
///       appEngineBundledServices:
///         - BUNDLED_SERVICE_TYPE_MAIL
///         - BUNDLED_SERVICE_TYPE_DATASTORE_V3
///       deleteServiceOnDestroy: true
///       serviceAccount: ${serviceAccount.email}
///     options:
///       dependsOn:
///         - ${gaeApi}
///         - ${storageViewer}
/// ```
///
///
/// ## Import
///
/// StandardAppVersion can be imported using any of these accepted formats:
///
/// * `apps/{{project}}/services/{{service}}/versions/{{version_id}}`
/// * `{{project}}/{{service}}/{{version_id}}`
/// * `{{service}}/{{version_id}}`
///
///
/// When using the `pulumi import` command, StandardAppVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:appengine/standardAppVersion:StandardAppVersion default apps/{{project}}/services/{{service}}/versions/{{version_id}}
/// $ pulumi import gcp:appengine/standardAppVersion:StandardAppVersion default {{project}}/{{service}}/{{version_id}}
/// $ pulumi import gcp:appengine/standardAppVersion:StandardAppVersion default {{service}}/{{version_id}}
/// ```
class StandardAppVersion extends pulumi.CustomResource {
  /// Allows App Engine second generation runtimes to access the legacy bundled services.
  /// Cannot specify both `appEngineApis` and `appEngineBundledServices` together.
  late final pulumi.Output<bool?> appEngineApis;
  /// A list of legacy bundled services to enable for this version on an App Engine second-generation runtime.
  /// Cannot specify both `appEngineApis` and `appEngineBundledServices` together.
  /// Each value may be one of: `BUNDLED_SERVICE_TYPE_APP_IDENTITY_SERVICE`, `BUNDLED_SERVICE_TYPE_BLOBSTORE`, `BUNDLED_SERVICE_TYPE_CAPABILITY_SERVICE`, `BUNDLED_SERVICE_TYPE_DATASTORE_V3`, `BUNDLED_SERVICE_TYPE_IMAGES`, `BUNDLED_SERVICE_TYPE_MAIL`, `BUNDLED_SERVICE_TYPE_MEMCACHE`, `BUNDLED_SERVICE_TYPE_MODULES`, `BUNDLED_SERVICE_TYPE_SEARCH`, `BUNDLED_SERVICE_TYPE_TASKQUEUES`, `BUNDLED_SERVICE_TYPE_URLFETCH`, `BUNDLED_SERVICE_TYPE_USERS`.
  late final pulumi.Output<List<String>?> appEngineBundledServices;
  /// Automatic scaling is based on request rate, response latencies, and other application metrics.
  /// Structure is documented below.
  late final pulumi.Output<StandardAppVersionAutomaticScaling> automaticScaling;
  /// Basic scaling creates instances when your application receives requests. Each instance will be shut down when the application becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
  /// Structure is documented below.
  late final pulumi.Output<StandardAppVersionBasicScaling?> basicScaling;
  /// If set to `true`, the service will be deleted if it is the last version.
  late final pulumi.Output<bool?> deleteServiceOnDestroy;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Code and application artifacts that make up this version.
  /// Structure is documented below.
  late final pulumi.Output<StandardAppVersionDeployment> deployment;
  /// The entrypoint for the application.
  /// Structure is documented below.
  late final pulumi.Output<StandardAppVersionEntrypoint> entrypoint;
  /// Environment variables available to the application.
  late final pulumi.Output<Map<String, String>?> envVariables;
  /// An ordered list of URL-matching patterns that should be applied to incoming requests.
  /// The first matching URL handles the request and other request handlers are not attempted.
  /// Structure is documented below.
  late final pulumi.Output<List<StandardAppVersionHandler>> handlers;
  /// A list of the types of messages that this application is able to receive.
  /// Each value may be one of: `INBOUND_SERVICE_MAIL`, `INBOUND_SERVICE_MAIL_BOUNCE`, `INBOUND_SERVICE_XMPP_ERROR`, `INBOUND_SERVICE_XMPP_MESSAGE`, `INBOUND_SERVICE_XMPP_SUBSCRIBE`, `INBOUND_SERVICE_XMPP_PRESENCE`, `INBOUND_SERVICE_CHANNEL_PRESENCE`, `INBOUND_SERVICE_WARMUP`.
  late final pulumi.Output<List<String>?> inboundServices;
  /// Instance class that is used to run this version. Valid values are
  /// AutomaticScaling: F1, F2, F4, F4_1G
  /// BasicScaling or ManualScaling: B1, B2, B4, B4_1G, B8
  /// Defaults to F1 for AutomaticScaling and B2 for ManualScaling and BasicScaling. If no scaling is specified, AutomaticScaling is chosen.
  late final pulumi.Output<String> instanceClass;
  /// Configuration for third-party Python runtime libraries that are required by the application.
  /// Structure is documented below.
  late final pulumi.Output<List<StandardAppVersionLibrary>?> libraries;
  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  late final pulumi.Output<StandardAppVersionManualScaling?> manualScaling;
  /// Full path to the Version resource in the API. Example, "v1".
  late final pulumi.Output<String> name;
  /// If set to `true`, the application version will not be deleted.
  late final pulumi.Output<bool?> noopOnDestroy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Desired runtime. Example python27.
  late final pulumi.Output<String> runtime;
  /// The version of the API in the given runtime environment.
  /// Please see the app.yaml reference for valid values at `https://cloud.google.com/appengine/docs/standard/&lt;language&gt;/config/appref`\
  /// Substitute `&lt;language&gt;` with `python`, `java`, `php`, `ruby`, `go` or `nodejs`.
  late final pulumi.Output<String?> runtimeApiVersion;
  /// AppEngine service resource
  late final pulumi.Output<String> service;
  /// The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.
  late final pulumi.Output<String> serviceAccount;
  /// Whether multiple requests can be dispatched to this version at once.
  late final pulumi.Output<bool?> threadsafe;
  /// Relative name of the version within the service. For example, `v1`. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names,"default", "latest", and any name with the prefix "ah-".
  late final pulumi.Output<String?> versionId;
  /// Enables VPC connectivity for standard apps.
  /// Structure is documented below.
  late final pulumi.Output<StandardAppVersionVpcAccessConnector?> vpcAccessConnector;

  /// Creates a new [StandardAppVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StandardAppVersion]. {@macro pulumi_appengine_standard_app_version_standard_app_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StandardAppVersion(
    String name, {
    StandardAppVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:appengine/standardAppVersion:StandardAppVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    appEngineApis = registerOutput<bool?>('appEngineApis');
    appEngineBundledServices = registerOutput<List<String>?>('appEngineBundledServices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    automaticScaling = registerOutput<StandardAppVersionAutomaticScaling>('automaticScaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardAppVersionAutomaticScaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    basicScaling = registerOutput<StandardAppVersionBasicScaling?>('basicScaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardAppVersionBasicScaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deleteServiceOnDestroy = registerOutput<bool?>('deleteServiceOnDestroy');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deployment = registerOutput<StandardAppVersionDeployment>('deployment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardAppVersionDeployment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    entrypoint = registerOutput<StandardAppVersionEntrypoint>('entrypoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardAppVersionEntrypoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    envVariables = registerOutput<Map<String, String>?>('envVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    handlers = registerOutput<List<StandardAppVersionHandler>>('handlers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StandardAppVersionHandler>(guardedValue, (value) => StandardAppVersionHandler.fromMap((value as Map).cast<String, dynamic>())); });
    inboundServices = registerOutput<List<String>?>('inboundServices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    instanceClass = registerOutput<String>('instanceClass');
    libraries = registerOutput<List<StandardAppVersionLibrary>?>('libraries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StandardAppVersionLibrary>(guardedValue, (value) => StandardAppVersionLibrary.fromMap((value as Map).cast<String, dynamic>())); });
    manualScaling = registerOutput<StandardAppVersionManualScaling?>('manualScaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardAppVersionManualScaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    noopOnDestroy = registerOutput<bool?>('noopOnDestroy');
    project = registerOutput<String>('project');
    runtime = registerOutput<String>('runtime');
    runtimeApiVersion = registerOutput<String?>('runtimeApiVersion');
    service = registerOutput<String>('service');
    serviceAccount = registerOutput<String>('serviceAccount');
    threadsafe = registerOutput<bool?>('threadsafe');
    versionId = registerOutput<String?>('versionId');
    vpcAccessConnector = registerOutput<StandardAppVersionVpcAccessConnector?>('vpcAccessConnector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardAppVersionVpcAccessConnector.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [StandardAppVersion] resource's state with the given [name] and [id].
  static StandardAppVersion get(
    String name,
    pulumi.Input<String> id, {
    StandardAppVersionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return StandardAppVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  StandardAppVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:appengine/standardAppVersion:StandardAppVersion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appEngineApis = registerOutput<bool?>('appEngineApis');
    appEngineBundledServices = registerOutput<List<String>?>('appEngineBundledServices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    automaticScaling = registerOutput<StandardAppVersionAutomaticScaling>('automaticScaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardAppVersionAutomaticScaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    basicScaling = registerOutput<StandardAppVersionBasicScaling?>('basicScaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardAppVersionBasicScaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deleteServiceOnDestroy = registerOutput<bool?>('deleteServiceOnDestroy');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deployment = registerOutput<StandardAppVersionDeployment>('deployment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardAppVersionDeployment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    entrypoint = registerOutput<StandardAppVersionEntrypoint>('entrypoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardAppVersionEntrypoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    envVariables = registerOutput<Map<String, String>?>('envVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    handlers = registerOutput<List<StandardAppVersionHandler>>('handlers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StandardAppVersionHandler>(guardedValue, (value) => StandardAppVersionHandler.fromMap((value as Map).cast<String, dynamic>())); });
    inboundServices = registerOutput<List<String>?>('inboundServices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    instanceClass = registerOutput<String>('instanceClass');
    libraries = registerOutput<List<StandardAppVersionLibrary>?>('libraries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StandardAppVersionLibrary>(guardedValue, (value) => StandardAppVersionLibrary.fromMap((value as Map).cast<String, dynamic>())); });
    manualScaling = registerOutput<StandardAppVersionManualScaling?>('manualScaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardAppVersionManualScaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    noopOnDestroy = registerOutput<bool?>('noopOnDestroy');
    project = registerOutput<String>('project');
    runtime = registerOutput<String>('runtime');
    runtimeApiVersion = registerOutput<String?>('runtimeApiVersion');
    service = registerOutput<String>('service');
    serviceAccount = registerOutput<String>('serviceAccount');
    threadsafe = registerOutput<bool?>('threadsafe');
    versionId = registerOutput<String?>('versionId');
    vpcAccessConnector = registerOutput<StandardAppVersionVpcAccessConnector?>('vpcAccessConnector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardAppVersionVpcAccessConnector.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [StandardAppVersion] resource.
  StandardAppVersion.reference(String urn)
    : super(
        'gcp:appengine/standardAppVersion:StandardAppVersion',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    appEngineApis = registerOutput<bool?>('appEngineApis');
    appEngineBundledServices = registerOutput<List<String>?>('appEngineBundledServices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    automaticScaling = registerOutput<StandardAppVersionAutomaticScaling>('automaticScaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardAppVersionAutomaticScaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    basicScaling = registerOutput<StandardAppVersionBasicScaling?>('basicScaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardAppVersionBasicScaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deleteServiceOnDestroy = registerOutput<bool?>('deleteServiceOnDestroy');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deployment = registerOutput<StandardAppVersionDeployment>('deployment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardAppVersionDeployment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    entrypoint = registerOutput<StandardAppVersionEntrypoint>('entrypoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardAppVersionEntrypoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    envVariables = registerOutput<Map<String, String>?>('envVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    handlers = registerOutput<List<StandardAppVersionHandler>>('handlers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StandardAppVersionHandler>(guardedValue, (value) => StandardAppVersionHandler.fromMap((value as Map).cast<String, dynamic>())); });
    inboundServices = registerOutput<List<String>?>('inboundServices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    instanceClass = registerOutput<String>('instanceClass');
    libraries = registerOutput<List<StandardAppVersionLibrary>?>('libraries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StandardAppVersionLibrary>(guardedValue, (value) => StandardAppVersionLibrary.fromMap((value as Map).cast<String, dynamic>())); });
    manualScaling = registerOutput<StandardAppVersionManualScaling?>('manualScaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardAppVersionManualScaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    noopOnDestroy = registerOutput<bool?>('noopOnDestroy');
    project = registerOutput<String>('project');
    runtime = registerOutput<String>('runtime');
    runtimeApiVersion = registerOutput<String?>('runtimeApiVersion');
    service = registerOutput<String>('service');
    serviceAccount = registerOutput<String>('serviceAccount');
    threadsafe = registerOutput<bool?>('threadsafe');
    versionId = registerOutput<String?>('versionId');
    vpcAccessConnector = registerOutput<StandardAppVersionVpcAccessConnector?>('vpcAccessConnector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardAppVersionVpcAccessConnector.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
