import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_endpoint_group_app_engine.dart';
import 'region_network_endpoint_group_args.dart';
import 'region_network_endpoint_group_cloud_function.dart';
import 'region_network_endpoint_group_cloud_run.dart';
import 'region_network_endpoint_group_psc_data.dart';
import 'region_network_endpoint_group_serverless_deployment.dart';
import 'region_network_endpoint_group_state.dart';

/// A regional NEG that can support Serverless Products, proxying traffic to
/// external backends and providing traffic to the PSC port mapping endpoints.
///
/// To get more information about RegionNetworkEndpointGroup, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/regionNetworkEndpointGroups)
/// * How-to Guides
/// * [Internet NEGs Official Documentation](https://cloud.google.com/load-balancing/docs/negs/internet-neg-concepts)
/// * [Serverless NEGs Official Documentation](https://cloud.google.com/load-balancing/docs/negs/serverless-neg-concepts)
///
/// ## Example Usage
///
/// ### Region Network Endpoint Group Functions
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "cloudfunctions-function-example-bucket",
///     location: "US",
/// });
/// const archive = new gcp.storage.BucketObject("archive", {
///     name: "index.zip",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("path/to/index.zip"),
/// });
/// const functionNegFunction = new gcp.cloudfunctions.Function("function_neg", {
///     name: "function-neg",
///     description: "My function",
///     runtime: "nodejs20",
///     availableMemoryMb: 128,
///     sourceArchiveBucket: bucket.name,
///     sourceArchiveObject: archive.name,
///     triggerHttp: true,
///     timeout: 60,
///     entryPoint: "helloGET",
/// });
/// // Cloud Functions Example
/// const functionNeg = new gcp.compute.RegionNetworkEndpointGroup("function_neg", {
///     name: "function-neg",
///     networkEndpointType: "SERVERLESS",
///     region: "us-central1",
///     cloudFunction: {
///         "function": functionNegFunction.name,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="cloudfunctions-function-example-bucket",
///     location="US")
/// archive = gcp.storage.BucketObject("archive",
///     name="index.zip",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("path/to/index.zip"))
/// function_neg_function = gcp.cloudfunctions.Function("function_neg",
///     name="function-neg",
///     description="My function",
///     runtime="nodejs20",
///     available_memory_mb=128,
///     source_archive_bucket=bucket.name,
///     source_archive_object=archive.name,
///     trigger_http=True,
///     timeout=60,
///     entry_point="helloGET")
/// # Cloud Functions Example
/// function_neg = gcp.compute.RegionNetworkEndpointGroup("function_neg",
///     name="function-neg",
///     network_endpoint_type="SERVERLESS",
///     region="us-central1",
///     cloud_function={
///         "function": function_neg_function.name,
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
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "cloudfunctions-function-example-bucket",
///         Location = "US",
///     });
///
///     var archive = new Gcp.Storage.BucketObject("archive", new()
///     {
///         Name = "index.zip",
///         Bucket = bucket.Name,
///         Source = new FileAsset("path/to/index.zip"),
///     });
///
///     var functionNegFunction = new Gcp.CloudFunctions.Function("function_neg", new()
///     {
///         Name = "function-neg",
///         Description = "My function",
///         Runtime = "nodejs20",
///         AvailableMemoryMb = 128,
///         SourceArchiveBucket = bucket.Name,
///         SourceArchiveObject = archive.Name,
///         TriggerHttp = true,
///         Timeout = 60,
///         EntryPoint = "helloGET",
///     });
///
///     // Cloud Functions Example
///     var functionNeg = new Gcp.Compute.RegionNetworkEndpointGroup("function_neg", new()
///     {
///         Name = "function-neg",
///         NetworkEndpointType = "SERVERLESS",
///         Region = "us-central1",
///         CloudFunction = new Gcp.Compute.Inputs.RegionNetworkEndpointGroupCloudFunctionArgs
///         {
///             Function = functionNegFunction.Name,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctions"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:     pulumi.String("cloudfunctions-function-example-bucket"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		archive, err := storage.NewBucketObject(ctx, "archive", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("index.zip"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("path/to/index.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		functionNegFunction, err := cloudfunctions.NewFunction(ctx, "function_neg", &cloudfunctions.FunctionArgs{
/// 			Name:                pulumi.String("function-neg"),
/// 			Description:         pulumi.String("My function"),
/// 			Runtime:             pulumi.String("nodejs20"),
/// 			AvailableMemoryMb:   pulumi.Int(128),
/// 			SourceArchiveBucket: bucket.Name,
/// 			SourceArchiveObject: archive.Name,
/// 			TriggerHttp:         pulumi.Bool(true),
/// 			Timeout:             pulumi.Int(60),
/// 			EntryPoint:          pulumi.String("helloGET"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Cloud Functions Example
/// 		_, err = compute.NewRegionNetworkEndpointGroup(ctx, "function_neg", &compute.RegionNetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("function-neg"),
/// 			NetworkEndpointType: pulumi.String("SERVERLESS"),
/// 			Region:              pulumi.String("us-central1"),
/// 			CloudFunction: &compute.RegionNetworkEndpointGroupCloudFunctionArgs{
/// 				Function: functionNegFunction.Name,
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
/// // Cloud Functions Example
/// resource "gcp_compute_regionnetworkendpointgroup" "function_neg" {
///   name                  = "function-neg"
///   network_endpoint_type = "SERVERLESS"
///   region                = "us-central1"
///   cloud_function = {
///     function = gcp_cloudfunctions_function.function_neg.name
///   }
/// }
/// resource "gcp_cloudfunctions_function" "function_neg" {
///   name                  = "function-neg"
///   description           = "My function"
///   runtime               = "nodejs20"
///   available_memory_mb   = 128
///   source_archive_bucket = gcp_storage_bucket.bucket.name
///   source_archive_object = gcp_storage_bucketobject.archive.name
///   trigger_http          = true
///   timeout               = 60
///   entry_point           = "helloGET"
/// }
/// resource "gcp_storage_bucket" "bucket" {
///   name     = "cloudfunctions-function-example-bucket"
///   location = "US"
/// }
/// resource "gcp_storage_bucketobject" "archive" {
///   name   = "index.zip"
///   bucket = gcp_storage_bucket.bucket.name
///   source = fileAsset("path/to/index.zip")
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
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.cloudfunctions.Function;
/// import com.pulumi.gcp.cloudfunctions.FunctionArgs;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroup;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroupArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkEndpointGroupCloudFunctionArgs;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("cloudfunctions-function-example-bucket")
///             .location("US")
///             .build());
///
///         var archive = new BucketObject("archive", BucketObjectArgs.builder()
///             .name("index.zip")
///             .bucket(bucket.name())
///             .source(new FileAsset("path/to/index.zip"))
///             .build());
///
///         var functionNegFunction = new Function("functionNegFunction", FunctionArgs.builder()
///             .name("function-neg")
///             .description("My function")
///             .runtime("nodejs20")
///             .availableMemoryMb(128)
///             .sourceArchiveBucket(bucket.name())
///             .sourceArchiveObject(archive.name())
///             .triggerHttp(true)
///             .timeout(60)
///             .entryPoint("helloGET")
///             .build());
///
///         // Cloud Functions Example
///         var functionNeg = new RegionNetworkEndpointGroup("functionNeg", RegionNetworkEndpointGroupArgs.builder()
///             .name("function-neg")
///             .networkEndpointType("SERVERLESS")
///             .region("us-central1")
///             .cloudFunction(RegionNetworkEndpointGroupCloudFunctionArgs.builder()
///                 .function(functionNegFunction.name())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Cloud Functions Example
///   functionNeg:
///     type: gcp:compute:RegionNetworkEndpointGroup
///     name: function_neg
///     properties:
///       name: function-neg
///       networkEndpointType: SERVERLESS
///       region: us-central1
///       cloudFunction:
///         function: ${functionNegFunction.name}
///   functionNegFunction:
///     type: gcp:cloudfunctions:Function
///     name: function_neg
///     properties:
///       name: function-neg
///       description: My function
///       runtime: nodejs20
///       availableMemoryMb: 128
///       sourceArchiveBucket: ${bucket.name}
///       sourceArchiveObject: ${archive.name}
///       triggerHttp: true
///       timeout: 60
///       entryPoint: helloGET
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: cloudfunctions-function-example-bucket
///       location: US
///   archive:
///     type: gcp:storage:BucketObject
///     properties:
///       name: index.zip
///       bucket: ${bucket.name}
///       source:
///         fn::fileAsset: path/to/index.zip
/// ```
///
/// ### Region Network Endpoint Group Cloudrun
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cloudrunNegService = new gcp.cloudrun.Service("cloudrun_neg", {
///     name: "cloudrun-neg",
///     location: "us-central1",
///     template: {
///         spec: {
///             containers: [{
///                 image: "us-docker.pkg.dev/cloudrun/container/hello",
///             }],
///         },
///     },
///     traffics: [{
///         percent: 100,
///         latestRevision: true,
///     }],
/// });
/// // Cloud Run Example
/// const cloudrunNeg = new gcp.compute.RegionNetworkEndpointGroup("cloudrun_neg", {
///     name: "cloudrun-neg",
///     networkEndpointType: "SERVERLESS",
///     region: "us-central1",
///     cloudRun: {
///         service: cloudrunNegService.name,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cloudrun_neg_service = gcp.cloudrun.Service("cloudrun_neg",
///     name="cloudrun-neg",
///     location="us-central1",
///     template={
///         "spec": {
///             "containers": [{
///                 "image": "us-docker.pkg.dev/cloudrun/container/hello",
///             }],
///         },
///     },
///     traffics=[{
///         "percent": 100,
///         "latest_revision": True,
///     }])
/// # Cloud Run Example
/// cloudrun_neg = gcp.compute.RegionNetworkEndpointGroup("cloudrun_neg",
///     name="cloudrun-neg",
///     network_endpoint_type="SERVERLESS",
///     region="us-central1",
///     cloud_run={
///         "service": cloudrun_neg_service.name,
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
///     var cloudrunNegService = new Gcp.CloudRun.Service("cloudrun_neg", new()
///     {
///         Name = "cloudrun-neg",
///         Location = "us-central1",
///         Template = new Gcp.CloudRun.Inputs.ServiceTemplateArgs
///         {
///             Spec = new Gcp.CloudRun.Inputs.ServiceTemplateSpecArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerArgs
///                     {
///                         Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                     },
///                 },
///             },
///         },
///         Traffics = new[]
///         {
///             new Gcp.CloudRun.Inputs.ServiceTrafficArgs
///             {
///                 Percent = 100,
///                 LatestRevision = true,
///             },
///         },
///     });
///
///     // Cloud Run Example
///     var cloudrunNeg = new Gcp.Compute.RegionNetworkEndpointGroup("cloudrun_neg", new()
///     {
///         Name = "cloudrun-neg",
///         NetworkEndpointType = "SERVERLESS",
///         Region = "us-central1",
///         CloudRun = new Gcp.Compute.Inputs.RegionNetworkEndpointGroupCloudRunArgs
///         {
///             Service = cloudrunNegService.Name,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cloudrunNegService, err := cloudrun.NewService(ctx, "cloudrun_neg", &cloudrun.ServiceArgs{
/// 			Name:     pulumi.String("cloudrun-neg"),
/// 			Location: pulumi.String("us-central1"),
/// 			Template: &cloudrun.ServiceTemplateArgs{
/// 				Spec: &cloudrun.ServiceTemplateSpecArgs{
/// 					Containers: cloudrun.ServiceTemplateSpecContainerArray{
/// 						&cloudrun.ServiceTemplateSpecContainerArgs{
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Traffics: cloudrun.ServiceTrafficArray{
/// 				&cloudrun.ServiceTrafficArgs{
/// 					Percent:        pulumi.Int(100),
/// 					LatestRevision: pulumi.Bool(true),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Cloud Run Example
/// 		_, err = compute.NewRegionNetworkEndpointGroup(ctx, "cloudrun_neg", &compute.RegionNetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("cloudrun-neg"),
/// 			NetworkEndpointType: pulumi.String("SERVERLESS"),
/// 			Region:              pulumi.String("us-central1"),
/// 			CloudRun: &compute.RegionNetworkEndpointGroupCloudRunArgs{
/// 				Service: cloudrunNegService.Name,
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
/// // Cloud Run Example
/// resource "gcp_compute_regionnetworkendpointgroup" "cloudrun_neg" {
///   name                  = "cloudrun-neg"
///   network_endpoint_type = "SERVERLESS"
///   region                = "us-central1"
///   cloud_run = {
///     service = gcp_cloudrun_service.cloudrun_neg.name
///   }
/// }
/// resource "gcp_cloudrun_service" "cloudrun_neg" {
///   name     = "cloudrun-neg"
///   location = "us-central1"
///   template = {
///     spec = {
///       containers = [{
///         "image" = "us-docker.pkg.dev/cloudrun/container/hello"
///       }]
///     }
///   }
///   traffics {
///     percent         = 100
///     latest_revision = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrun.Service;
/// import com.pulumi.gcp.cloudrun.ServiceArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTrafficArgs;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroup;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroupArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkEndpointGroupCloudRunArgs;
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
///         var cloudrunNegService = new Service("cloudrunNegService", ServiceArgs.builder()
///             .name("cloudrun-neg")
///             .location("us-central1")
///             .template(ServiceTemplateArgs.builder()
///                 .spec(ServiceTemplateSpecArgs.builder()
///                     .containers(ServiceTemplateSpecContainerArgs.builder()
///                         .image("us-docker.pkg.dev/cloudrun/container/hello")
///                         .build())
///                     .build())
///                 .build())
///             .traffics(ServiceTrafficArgs.builder()
///                 .percent(100)
///                 .latestRevision(true)
///                 .build())
///             .build());
///
///         // Cloud Run Example
///         var cloudrunNeg = new RegionNetworkEndpointGroup("cloudrunNeg", RegionNetworkEndpointGroupArgs.builder()
///             .name("cloudrun-neg")
///             .networkEndpointType("SERVERLESS")
///             .region("us-central1")
///             .cloudRun(RegionNetworkEndpointGroupCloudRunArgs.builder()
///                 .service(cloudrunNegService.name())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Cloud Run Example
///   cloudrunNeg:
///     type: gcp:compute:RegionNetworkEndpointGroup
///     name: cloudrun_neg
///     properties:
///       name: cloudrun-neg
///       networkEndpointType: SERVERLESS
///       region: us-central1
///       cloudRun:
///         service: ${cloudrunNegService.name}
///   cloudrunNegService:
///     type: gcp:cloudrun:Service
///     name: cloudrun_neg
///     properties:
///       name: cloudrun-neg
///       location: us-central1
///       template:
///         spec:
///           containers:
///             - image: us-docker.pkg.dev/cloudrun/container/hello
///       traffics:
///         - percent: 100
///           latestRevision: true
/// ```
///
/// ### Region Network Endpoint Group Appengine
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const appengineNegBucket = new gcp.storage.Bucket("appengine_neg", {
///     name: "appengine-neg",
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const appengineNegBucketObject = new gcp.storage.BucketObject("appengine_neg", {
///     name: "hello-world.zip",
///     bucket: appengineNegBucket.name,
///     source: new pulumi.asset.FileAsset("./test-fixtures/hello-world.zip"),
/// });
/// const appengineNegFlexibleAppVersion = new gcp.appengine.FlexibleAppVersion("appengine_neg", {
///     versionId: "v1",
///     service: "appengine-neg",
///     runtime: "nodejs",
///     flexibleRuntimeSettings: {
///         operatingSystem: "ubuntu24",
///         runtimeVersion: "24",
///     },
///     entrypoint: {
///         shell: "node ./app.js",
///     },
///     deployment: {
///         zip: {
///             sourceUrl: pulumi.interpolate`https://storage.googleapis.com/${appengineNegBucket.name}/${appengineNegBucketObject.name}`,
///         },
///     },
///     livenessCheck: {
///         path: "/",
///     },
///     readinessCheck: {
///         path: "/",
///     },
///     envVariables: {
///         port: "8080",
///     },
///     handlers: [{
///         urlRegex: ".*\\/my-path\\/*",
///         securityLevel: "SECURE_ALWAYS",
///         login: "LOGIN_REQUIRED",
///         authFailAction: "AUTH_FAIL_ACTION_REDIRECT",
///         staticFiles: {
///             path: "my-other-path",
///             uploadPathRegex: ".*\\/my-path\\/*",
///         },
///     }],
///     automaticScaling: {
///         coolDownPeriod: "120s",
///         cpuUtilization: {
///             targetUtilization: 0.5,
///         },
///     },
///     deleteServiceOnDestroy: true,
/// });
/// // App Engine Example
/// const appengineNeg = new gcp.compute.RegionNetworkEndpointGroup("appengine_neg", {
///     name: "appengine-neg",
///     networkEndpointType: "SERVERLESS",
///     region: "us-central1",
///     appEngine: {
///         service: appengineNegFlexibleAppVersion.service,
///         version: appengineNegFlexibleAppVersion.versionId,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// appengine_neg_bucket = gcp.storage.Bucket("appengine_neg",
///     name="appengine-neg",
///     location="US",
///     uniform_bucket_level_access=True)
/// appengine_neg_bucket_object = gcp.storage.BucketObject("appengine_neg",
///     name="hello-world.zip",
///     bucket=appengine_neg_bucket.name,
///     source=pulumi.FileAsset("./test-fixtures/hello-world.zip"))
/// appengine_neg_flexible_app_version = gcp.appengine.FlexibleAppVersion("appengine_neg",
///     version_id="v1",
///     service="appengine-neg",
///     runtime="nodejs",
///     flexible_runtime_settings={
///         "operating_system": "ubuntu24",
///         "runtime_version": "24",
///     },
///     entrypoint={
///         "shell": "node ./app.js",
///     },
///     deployment={
///         "zip": {
///             "source_url": pulumi.Output.all(
///                 appengineNegBucketName=appengine_neg_bucket.name,
///                 appengineNegBucketObjectName=appengine_neg_bucket_object.name
/// ).apply(lambda resolved_outputs: f"https://storage.googleapis.com/{resolved_outputs['appengineNegBucketName']}/{resolved_outputs['appengineNegBucketObjectName']}")
/// ,
///         },
///     },
///     liveness_check={
///         "path": "/",
///     },
///     readiness_check={
///         "path": "/",
///     },
///     env_variables={
///         "port": "8080",
///     },
///     handlers=[{
///         "url_regex": ".*\\/my-path\\/*",
///         "security_level": "SECURE_ALWAYS",
///         "login": "LOGIN_REQUIRED",
///         "auth_fail_action": "AUTH_FAIL_ACTION_REDIRECT",
///         "static_files": {
///             "path": "my-other-path",
///             "upload_path_regex": ".*\\/my-path\\/*",
///         },
///     }],
///     automatic_scaling={
///         "cool_down_period": "120s",
///         "cpu_utilization": {
///             "target_utilization": 0.5,
///         },
///     },
///     delete_service_on_destroy=True)
/// # App Engine Example
/// appengine_neg = gcp.compute.RegionNetworkEndpointGroup("appengine_neg",
///     name="appengine-neg",
///     network_endpoint_type="SERVERLESS",
///     region="us-central1",
///     app_engine={
///         "service": appengine_neg_flexible_app_version.service,
///         "version": appengine_neg_flexible_app_version.version_id,
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
///     var appengineNegBucket = new Gcp.Storage.Bucket("appengine_neg", new()
///     {
///         Name = "appengine-neg",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var appengineNegBucketObject = new Gcp.Storage.BucketObject("appengine_neg", new()
///     {
///         Name = "hello-world.zip",
///         Bucket = appengineNegBucket.Name,
///         Source = new FileAsset("./test-fixtures/hello-world.zip"),
///     });
///
///     var appengineNegFlexibleAppVersion = new Gcp.AppEngine.FlexibleAppVersion("appengine_neg", new()
///     {
///         VersionId = "v1",
///         Service = "appengine-neg",
///         Runtime = "nodejs",
///         FlexibleRuntimeSettings = new Gcp.AppEngine.Inputs.FlexibleAppVersionFlexibleRuntimeSettingsArgs
///         {
///             OperatingSystem = "ubuntu24",
///             RuntimeVersion = "24",
///         },
///         Entrypoint = new Gcp.AppEngine.Inputs.FlexibleAppVersionEntrypointArgs
///         {
///             Shell = "node ./app.js",
///         },
///         Deployment = new Gcp.AppEngine.Inputs.FlexibleAppVersionDeploymentArgs
///         {
///             Zip = new Gcp.AppEngine.Inputs.FlexibleAppVersionDeploymentZipArgs
///             {
///                 SourceUrl = Output.Tuple(appengineNegBucket.Name, appengineNegBucketObject.Name).Apply(values =>
///                 {
///                     var appengineNegBucketName = values.Item1;
///                     var appengineNegBucketObjectName = values.Item2;
///                     return $"https://storage.googleapis.com/{appengineNegBucketName}/{appengineNegBucketObjectName}";
///                 }),
///             },
///         },
///         LivenessCheck = new Gcp.AppEngine.Inputs.FlexibleAppVersionLivenessCheckArgs
///         {
///             Path = "/",
///         },
///         ReadinessCheck = new Gcp.AppEngine.Inputs.FlexibleAppVersionReadinessCheckArgs
///         {
///             Path = "/",
///         },
///         EnvVariables =
///         {
///             { "port", "8080" },
///         },
///         Handlers = new[]
///         {
///             new Gcp.AppEngine.Inputs.FlexibleAppVersionHandlerArgs
///             {
///                 UrlRegex = ".*\\/my-path\\/*",
///                 SecurityLevel = "SECURE_ALWAYS",
///                 Login = "LOGIN_REQUIRED",
///                 AuthFailAction = "AUTH_FAIL_ACTION_REDIRECT",
///                 StaticFiles = new Gcp.AppEngine.Inputs.FlexibleAppVersionHandlerStaticFilesArgs
///                 {
///                     Path = "my-other-path",
///                     UploadPathRegex = ".*\\/my-path\\/*",
///                 },
///             },
///         },
///         AutomaticScaling = new Gcp.AppEngine.Inputs.FlexibleAppVersionAutomaticScalingArgs
///         {
///             CoolDownPeriod = "120s",
///             CpuUtilization = new Gcp.AppEngine.Inputs.FlexibleAppVersionAutomaticScalingCpuUtilizationArgs
///             {
///                 TargetUtilization = 0.5,
///             },
///         },
///         DeleteServiceOnDestroy = true,
///     });
///
///     // App Engine Example
///     var appengineNeg = new Gcp.Compute.RegionNetworkEndpointGroup("appengine_neg", new()
///     {
///         Name = "appengine-neg",
///         NetworkEndpointType = "SERVERLESS",
///         Region = "us-central1",
///         AppEngine = new Gcp.Compute.Inputs.RegionNetworkEndpointGroupAppEngineArgs
///         {
///             Service = appengineNegFlexibleAppVersion.Service,
///             Version = appengineNegFlexibleAppVersion.VersionId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		appengineNegBucket, err := storage.NewBucket(ctx, "appengine_neg", &storage.BucketArgs{
/// 			Name:                     pulumi.String("appengine-neg"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		appengineNegBucketObject, err := storage.NewBucketObject(ctx, "appengine_neg", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("hello-world.zip"),
/// 			Bucket: appengineNegBucket.Name,
/// 			Source: pulumi.NewFileAsset("./test-fixtures/hello-world.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		appengineNegFlexibleAppVersion, err := appengine.NewFlexibleAppVersion(ctx, "appengine_neg", &appengine.FlexibleAppVersionArgs{
/// 			VersionId: pulumi.String("v1"),
/// 			Service:   pulumi.String("appengine-neg"),
/// 			Runtime:   pulumi.String("nodejs"),
/// 			FlexibleRuntimeSettings: &appengine.FlexibleAppVersionFlexibleRuntimeSettingsArgs{
/// 				OperatingSystem: pulumi.String("ubuntu24"),
/// 				RuntimeVersion:  pulumi.String("24"),
/// 			},
/// 			Entrypoint: &appengine.FlexibleAppVersionEntrypointArgs{
/// 				Shell: pulumi.String("node ./app.js"),
/// 			},
/// 			Deployment: &appengine.FlexibleAppVersionDeploymentArgs{
/// 				Zip: &appengine.FlexibleAppVersionDeploymentZipArgs{
/// 					SourceUrl: pulumi.All(appengineNegBucket.Name, appengineNegBucketObject.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						appengineNegBucketName := _args[0].(string)
/// 						appengineNegBucketObjectName := _args[1].(string)
/// 						return fmt.Sprintf("https://storage.googleapis.com/%v/%v", appengineNegBucketName, appengineNegBucketObjectName), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 			LivenessCheck: &appengine.FlexibleAppVersionLivenessCheckArgs{
/// 				Path: pulumi.String("/"),
/// 			},
/// 			ReadinessCheck: &appengine.FlexibleAppVersionReadinessCheckArgs{
/// 				Path: pulumi.String("/"),
/// 			},
/// 			EnvVariables: pulumi.StringMap{
/// 				"port": pulumi.String("8080"),
/// 			},
/// 			Handlers: appengine.FlexibleAppVersionHandlerArray{
/// 				&appengine.FlexibleAppVersionHandlerArgs{
/// 					UrlRegex:       pulumi.String(".*\\/my-path\\/*"),
/// 					SecurityLevel:  pulumi.String("SECURE_ALWAYS"),
/// 					Login:          pulumi.String("LOGIN_REQUIRED"),
/// 					AuthFailAction: pulumi.String("AUTH_FAIL_ACTION_REDIRECT"),
/// 					StaticFiles: &appengine.FlexibleAppVersionHandlerStaticFilesArgs{
/// 						Path:            pulumi.String("my-other-path"),
/// 						UploadPathRegex: pulumi.String(".*\\/my-path\\/*"),
/// 					},
/// 				},
/// 			},
/// 			AutomaticScaling: &appengine.FlexibleAppVersionAutomaticScalingArgs{
/// 				CoolDownPeriod: pulumi.String("120s"),
/// 				CpuUtilization: &appengine.FlexibleAppVersionAutomaticScalingCpuUtilizationArgs{
/// 					TargetUtilization: pulumi.Float64(0.5),
/// 				},
/// 			},
/// 			DeleteServiceOnDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// App Engine Example
/// 		_, err = compute.NewRegionNetworkEndpointGroup(ctx, "appengine_neg", &compute.RegionNetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("appengine-neg"),
/// 			NetworkEndpointType: pulumi.String("SERVERLESS"),
/// 			Region:              pulumi.String("us-central1"),
/// 			AppEngine: &compute.RegionNetworkEndpointGroupAppEngineArgs{
/// 				Service: appengineNegFlexibleAppVersion.Service,
/// 				Version: appengineNegFlexibleAppVersion.VersionId,
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
/// // App Engine Example
/// resource "gcp_compute_regionnetworkendpointgroup" "appengine_neg" {
///   name                  = "appengine-neg"
///   network_endpoint_type = "SERVERLESS"
///   region                = "us-central1"
///   app_engine = {
///     service = gcp_appengine_flexibleappversion.appengine_neg.service
///     version = gcp_appengine_flexibleappversion.appengine_neg.version_id
///   }
/// }
/// resource "gcp_appengine_flexibleappversion" "appengine_neg" {
///   version_id = "v1"
///   service    = "appengine-neg"
///   runtime    = "nodejs"
///   flexible_runtime_settings = {
///     operating_system = "ubuntu24"
///     runtime_version  = "24"
///   }
///   entrypoint = {
///     shell = "node ./app.js"
///   }
///   deployment = {
///     zip = {
///       source_url ="https://storage.googleapis.com/${gcp_storage_bucket.appengine_neg.name}/${gcp_storage_bucketobject.appengine_neg.name}"
///     }
///   }
///   liveness_check = {
///     path = "/"
///   }
///   readiness_check = {
///     path = "/"
///   }
///   env_variables = {
///     "port" = "8080"
///   }
///   handlers {
///     url_regex        = ".*\\/my-path\\/*"
///     security_level   = "SECURE_ALWAYS"
///     login            = "LOGIN_REQUIRED"
///     auth_fail_action = "AUTH_FAIL_ACTION_REDIRECT"
///     static_files = {
///       path              = "my-other-path"
///       upload_path_regex = ".*\\/my-path\\/*"
///     }
///   }
///   automatic_scaling = {
///     cool_down_period = "120s"
///     cpu_utilization = {
///       target_utilization = 0.5
///     }
///   }
///   delete_service_on_destroy = true
/// }
/// resource "gcp_storage_bucket" "appengine_neg" {
///   name                        = "appengine-neg"
///   location                    = "US"
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_storage_bucketobject" "appengine_neg" {
///   name   = "hello-world.zip"
///   bucket = gcp_storage_bucket.appengine_neg.name
///   source = fileAsset("./test-fixtures/hello-world.zip")
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
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.appengine.FlexibleAppVersion;
/// import com.pulumi.gcp.appengine.FlexibleAppVersionArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionFlexibleRuntimeSettingsArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionEntrypointArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionDeploymentArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionDeploymentZipArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionLivenessCheckArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionReadinessCheckArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionHandlerArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionHandlerStaticFilesArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionAutomaticScalingArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionAutomaticScalingCpuUtilizationArgs;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroup;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroupArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkEndpointGroupAppEngineArgs;
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
///         var appengineNegBucket = new Bucket("appengineNegBucket", BucketArgs.builder()
///             .name("appengine-neg")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var appengineNegBucketObject = new BucketObject("appengineNegBucketObject", BucketObjectArgs.builder()
///             .name("hello-world.zip")
///             .bucket(appengineNegBucket.name())
///             .source(new FileAsset("./test-fixtures/hello-world.zip"))
///             .build());
///
///         var appengineNegFlexibleAppVersion = new FlexibleAppVersion("appengineNegFlexibleAppVersion", FlexibleAppVersionArgs.builder()
///             .versionId("v1")
///             .service("appengine-neg")
///             .runtime("nodejs")
///             .flexibleRuntimeSettings(FlexibleAppVersionFlexibleRuntimeSettingsArgs.builder()
///                 .operatingSystem("ubuntu24")
///                 .runtimeVersion("24")
///                 .build())
///             .entrypoint(FlexibleAppVersionEntrypointArgs.builder()
///                 .shell("node ./app.js")
///                 .build())
///             .deployment(FlexibleAppVersionDeploymentArgs.builder()
///                 .zip(FlexibleAppVersionDeploymentZipArgs.builder()
///                     .sourceUrl(Output.tuple(appengineNegBucket.name(), appengineNegBucketObject.name()).applyValue(values -> {
///                         var appengineNegBucketName = values.t1;
///                         var appengineNegBucketObjectName = values.t2;
///                         return String.format("https://storage.googleapis.com/%s/%s", appengineNegBucketName,appengineNegBucketObjectName);
///                     }))
///                     .build())
///                 .build())
///             .livenessCheck(FlexibleAppVersionLivenessCheckArgs.builder()
///                 .path("/")
///                 .build())
///             .readinessCheck(FlexibleAppVersionReadinessCheckArgs.builder()
///                 .path("/")
///                 .build())
///             .envVariables(Map.of("port", "8080"))
///             .handlers(FlexibleAppVersionHandlerArgs.builder()
///                 .urlRegex(".*\\/my-path\\/*")
///                 .securityLevel("SECURE_ALWAYS")
///                 .login("LOGIN_REQUIRED")
///                 .authFailAction("AUTH_FAIL_ACTION_REDIRECT")
///                 .staticFiles(FlexibleAppVersionHandlerStaticFilesArgs.builder()
///                     .path("my-other-path")
///                     .uploadPathRegex(".*\\/my-path\\/*")
///                     .build())
///                 .build())
///             .automaticScaling(FlexibleAppVersionAutomaticScalingArgs.builder()
///                 .coolDownPeriod("120s")
///                 .cpuUtilization(FlexibleAppVersionAutomaticScalingCpuUtilizationArgs.builder()
///                     .targetUtilization(0.5)
///                     .build())
///                 .build())
///             .deleteServiceOnDestroy(true)
///             .build());
///
///         // App Engine Example
///         var appengineNeg = new RegionNetworkEndpointGroup("appengineNeg", RegionNetworkEndpointGroupArgs.builder()
///             .name("appengine-neg")
///             .networkEndpointType("SERVERLESS")
///             .region("us-central1")
///             .appEngine(RegionNetworkEndpointGroupAppEngineArgs.builder()
///                 .service(appengineNegFlexibleAppVersion.service())
///                 .version(appengineNegFlexibleAppVersion.versionId())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # App Engine Example
///   appengineNeg:
///     type: gcp:compute:RegionNetworkEndpointGroup
///     name: appengine_neg
///     properties:
///       name: appengine-neg
///       networkEndpointType: SERVERLESS
///       region: us-central1
///       appEngine:
///         service: ${appengineNegFlexibleAppVersion.service}
///         version: ${appengineNegFlexibleAppVersion.versionId}
///   appengineNegFlexibleAppVersion:
///     type: gcp:appengine:FlexibleAppVersion
///     name: appengine_neg
///     properties:
///       versionId: v1
///       service: appengine-neg
///       runtime: nodejs
///       flexibleRuntimeSettings:
///         operatingSystem: ubuntu24
///         runtimeVersion: '24'
///       entrypoint:
///         shell: node ./app.js
///       deployment:
///         zip:
///           sourceUrl: https://storage.googleapis.com/${appengineNegBucket.name}/${appengineNegBucketObject.name}
///       livenessCheck:
///         path: /
///       readinessCheck:
///         path: /
///       envVariables:
///         port: '8080'
///       handlers:
///         - urlRegex: .*\/my-path\/*
///           securityLevel: SECURE_ALWAYS
///           login: LOGIN_REQUIRED
///           authFailAction: AUTH_FAIL_ACTION_REDIRECT
///           staticFiles:
///             path: my-other-path
///             uploadPathRegex: .*\/my-path\/*
///       automaticScaling:
///         coolDownPeriod: 120s
///         cpuUtilization:
///           targetUtilization: 0.5
///       deleteServiceOnDestroy: true
///   appengineNegBucket:
///     type: gcp:storage:Bucket
///     name: appengine_neg
///     properties:
///       name: appengine-neg
///       location: US
///       uniformBucketLevelAccess: true
///   appengineNegBucketObject:
///     type: gcp:storage:BucketObject
///     name: appengine_neg
///     properties:
///       name: hello-world.zip
///       bucket: ${appengineNegBucket.name}
///       source:
///         fn::fileAsset: ./test-fixtures/hello-world.zip
/// ```
///
/// ### Region Network Endpoint Group Appengine Empty
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // App Engine Example
/// const appengineNeg = new gcp.compute.RegionNetworkEndpointGroup("appengine_neg", {
///     name: "appengine-neg",
///     networkEndpointType: "SERVERLESS",
///     region: "us-central1",
///     appEngine: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # App Engine Example
/// appengine_neg = gcp.compute.RegionNetworkEndpointGroup("appengine_neg",
///     name="appengine-neg",
///     network_endpoint_type="SERVERLESS",
///     region="us-central1",
///     app_engine={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // App Engine Example
///     var appengineNeg = new Gcp.Compute.RegionNetworkEndpointGroup("appengine_neg", new()
///     {
///         Name = "appengine-neg",
///         NetworkEndpointType = "SERVERLESS",
///         Region = "us-central1",
///         AppEngine = null,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// App Engine Example
/// 		_, err := compute.NewRegionNetworkEndpointGroup(ctx, "appengine_neg", &compute.RegionNetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("appengine-neg"),
/// 			NetworkEndpointType: pulumi.String("SERVERLESS"),
/// 			Region:              pulumi.String("us-central1"),
/// 			AppEngine:           &compute.RegionNetworkEndpointGroupAppEngineArgs{},
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
/// // App Engine Example
/// resource "gcp_compute_regionnetworkendpointgroup" "appengine_neg" {
///   name                  = "appengine-neg"
///   network_endpoint_type = "SERVERLESS"
///   region                = "us-central1"
///   app_engine            = {}
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroup;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroupArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkEndpointGroupAppEngineArgs;
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
///         // App Engine Example
///         var appengineNeg = new RegionNetworkEndpointGroup("appengineNeg", RegionNetworkEndpointGroupArgs.builder()
///             .name("appengine-neg")
///             .networkEndpointType("SERVERLESS")
///             .region("us-central1")
///             .appEngine(RegionNetworkEndpointGroupAppEngineArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # App Engine Example
///   appengineNeg:
///     type: gcp:compute:RegionNetworkEndpointGroup
///     name: appengine_neg
///     properties:
///       name: appengine-neg
///       networkEndpointType: SERVERLESS
///       region: us-central1
///       appEngine: {}
/// ```
///
/// ### Region Network Endpoint Group Psc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pscNeg = new gcp.compute.RegionNetworkEndpointGroup("psc_neg", {
///     name: "psc-neg",
///     region: "asia-northeast3",
///     networkEndpointType: "PRIVATE_SERVICE_CONNECT",
///     pscTargetService: "asia-northeast3-cloudkms.googleapis.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// psc_neg = gcp.compute.RegionNetworkEndpointGroup("psc_neg",
///     name="psc-neg",
///     region="asia-northeast3",
///     network_endpoint_type="PRIVATE_SERVICE_CONNECT",
///     psc_target_service="asia-northeast3-cloudkms.googleapis.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pscNeg = new Gcp.Compute.RegionNetworkEndpointGroup("psc_neg", new()
///     {
///         Name = "psc-neg",
///         Region = "asia-northeast3",
///         NetworkEndpointType = "PRIVATE_SERVICE_CONNECT",
///         PscTargetService = "asia-northeast3-cloudkms.googleapis.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewRegionNetworkEndpointGroup(ctx, "psc_neg", &compute.RegionNetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("psc-neg"),
/// 			Region:              pulumi.String("asia-northeast3"),
/// 			NetworkEndpointType: pulumi.String("PRIVATE_SERVICE_CONNECT"),
/// 			PscTargetService:    pulumi.String("asia-northeast3-cloudkms.googleapis.com"),
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
/// resource "gcp_compute_regionnetworkendpointgroup" "psc_neg" {
///   name                  = "psc-neg"
///   region                = "asia-northeast3"
///   network_endpoint_type = "PRIVATE_SERVICE_CONNECT"
///   psc_target_service    = "asia-northeast3-cloudkms.googleapis.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroup;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroupArgs;
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
///         var pscNeg = new RegionNetworkEndpointGroup("pscNeg", RegionNetworkEndpointGroupArgs.builder()
///             .name("psc-neg")
///             .region("asia-northeast3")
///             .networkEndpointType("PRIVATE_SERVICE_CONNECT")
///             .pscTargetService("asia-northeast3-cloudkms.googleapis.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pscNeg:
///     type: gcp:compute:RegionNetworkEndpointGroup
///     name: psc_neg
///     properties:
///       name: psc-neg
///       region: asia-northeast3
///       networkEndpointType: PRIVATE_SERVICE_CONNECT
///       pscTargetService: asia-northeast3-cloudkms.googleapis.com
/// ```
///
/// ### Region Network Endpoint Group Psc Service Attachment
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {name: "psc-network"});
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "psc-subnetwork",
///     ipCidrRange: "10.0.0.0/16",
///     region: "europe-west4",
///     network: _default.id,
/// });
/// const pscSubnetwork = new gcp.compute.Subnetwork("psc_subnetwork", {
///     name: "psc-subnetwork-nat",
///     ipCidrRange: "10.1.0.0/16",
///     region: "europe-west4",
///     purpose: "PRIVATE_SERVICE_CONNECT",
///     network: _default.id,
/// });
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "psc-healthcheck",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
///     name: "psc-backend",
///     region: "europe-west4",
///     healthChecks: defaultHealthCheck.id,
/// });
/// const defaultForwardingRule = new gcp.compute.ForwardingRule("default", {
///     name: "psc-forwarding-rule",
///     region: "europe-west4",
///     loadBalancingScheme: "INTERNAL",
///     backendService: defaultRegionBackendService.id,
///     ports: [
///         "80",
///         "88",
///         "443",
///     ],
///     network: _default.name,
///     subnetwork: defaultSubnetwork.name,
/// });
/// const defaultServiceAttachment = new gcp.compute.ServiceAttachment("default", {
///     name: "psc-service-attachment",
///     region: "europe-west4",
///     description: "A service attachment configured with Terraform",
///     enableProxyProtocol: false,
///     connectionPreference: "ACCEPT_AUTOMATIC",
///     natSubnets: [pscSubnetwork.selfLink],
///     targetService: defaultForwardingRule.selfLink,
/// });
/// const pscNegServiceAttachment = new gcp.compute.RegionNetworkEndpointGroup("psc_neg_service_attachment", {
///     name: "psc-neg",
///     region: "europe-west4",
///     networkEndpointType: "PRIVATE_SERVICE_CONNECT",
///     pscTargetService: defaultServiceAttachment.selfLink,
///     pscData: {
///         producerPort: "88",
///     },
///     subnetwork: defaultSubnetwork.selfLink,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default", name="psc-network")
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="psc-subnetwork",
///     ip_cidr_range="10.0.0.0/16",
///     region="europe-west4",
///     network=default.id)
/// psc_subnetwork = gcp.compute.Subnetwork("psc_subnetwork",
///     name="psc-subnetwork-nat",
///     ip_cidr_range="10.1.0.0/16",
///     region="europe-west4",
///     purpose="PRIVATE_SERVICE_CONNECT",
///     network=default.id)
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="psc-healthcheck",
///     check_interval_sec=1,
///     timeout_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
///     name="psc-backend",
///     region="europe-west4",
///     health_checks=default_health_check.id)
/// default_forwarding_rule = gcp.compute.ForwardingRule("default",
///     name="psc-forwarding-rule",
///     region="europe-west4",
///     load_balancing_scheme="INTERNAL",
///     backend_service=default_region_backend_service.id,
///     ports=[
///         "80",
///         "88",
///         "443",
///     ],
///     network=default.name,
///     subnetwork=default_subnetwork.name)
/// default_service_attachment = gcp.compute.ServiceAttachment("default",
///     name="psc-service-attachment",
///     region="europe-west4",
///     description="A service attachment configured with Terraform",
///     enable_proxy_protocol=False,
///     connection_preference="ACCEPT_AUTOMATIC",
///     nat_subnets=[psc_subnetwork.self_link],
///     target_service=default_forwarding_rule.self_link)
/// psc_neg_service_attachment = gcp.compute.RegionNetworkEndpointGroup("psc_neg_service_attachment",
///     name="psc-neg",
///     region="europe-west4",
///     network_endpoint_type="PRIVATE_SERVICE_CONNECT",
///     psc_target_service=default_service_attachment.self_link,
///     psc_data={
///         "producer_port": "88",
///     },
///     subnetwork=default_subnetwork.self_link)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "psc-network",
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "psc-subnetwork",
///         IpCidrRange = "10.0.0.0/16",
///         Region = "europe-west4",
///         Network = @default.Id,
///     });
///
///     var pscSubnetwork = new Gcp.Compute.Subnetwork("psc_subnetwork", new()
///     {
///         Name = "psc-subnetwork-nat",
///         IpCidrRange = "10.1.0.0/16",
///         Region = "europe-west4",
///         Purpose = "PRIVATE_SERVICE_CONNECT",
///         Network = @default.Id,
///     });
///
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "psc-healthcheck",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Name = "psc-backend",
///         Region = "europe-west4",
///         HealthChecks = defaultHealthCheck.Id,
///     });
///
///     var defaultForwardingRule = new Gcp.Compute.ForwardingRule("default", new()
///     {
///         Name = "psc-forwarding-rule",
///         Region = "europe-west4",
///         LoadBalancingScheme = "INTERNAL",
///         BackendService = defaultRegionBackendService.Id,
///         Ports = new[]
///         {
///             "80",
///             "88",
///             "443",
///         },
///         Network = @default.Name,
///         Subnetwork = defaultSubnetwork.Name,
///     });
///
///     var defaultServiceAttachment = new Gcp.Compute.ServiceAttachment("default", new()
///     {
///         Name = "psc-service-attachment",
///         Region = "europe-west4",
///         Description = "A service attachment configured with Terraform",
///         EnableProxyProtocol = false,
///         ConnectionPreference = "ACCEPT_AUTOMATIC",
///         NatSubnets = new[]
///         {
///             pscSubnetwork.SelfLink,
///         },
///         TargetService = defaultForwardingRule.SelfLink,
///     });
///
///     var pscNegServiceAttachment = new Gcp.Compute.RegionNetworkEndpointGroup("psc_neg_service_attachment", new()
///     {
///         Name = "psc-neg",
///         Region = "europe-west4",
///         NetworkEndpointType = "PRIVATE_SERVICE_CONNECT",
///         PscTargetService = defaultServiceAttachment.SelfLink,
///         PscData = new Gcp.Compute.Inputs.RegionNetworkEndpointGroupPscDataArgs
///         {
///             ProducerPort = "88",
///         },
///         Subnetwork = defaultSubnetwork.SelfLink,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("psc-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("psc-subnetwork"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 			Region:      pulumi.String("europe-west4"),
/// 			Network:     _default.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscSubnetwork, err := compute.NewSubnetwork(ctx, "psc_subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("psc-subnetwork-nat"),
/// 			IpCidrRange: pulumi.String("10.1.0.0/16"),
/// 			Region:      pulumi.String("europe-west4"),
/// 			Purpose:     pulumi.String("PRIVATE_SERVICE_CONNECT"),
/// 			Network:     _default.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("psc-healthcheck"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegionBackendService, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Name:         pulumi.String("psc-backend"),
/// 			Region:       pulumi.String("europe-west4"),
/// 			HealthChecks: defaultHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultForwardingRule, err := compute.NewForwardingRule(ctx, "default", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("psc-forwarding-rule"),
/// 			Region:              pulumi.String("europe-west4"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL"),
/// 			BackendService:      defaultRegionBackendService.ID().ToIDOutput().ToStringOutput(),
/// 			Ports: pulumi.StringArray{
/// 				pulumi.String("80"),
/// 				pulumi.String("88"),
/// 				pulumi.String("443"),
/// 			},
/// 			Network:    _default.Name,
/// 			Subnetwork: defaultSubnetwork.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultServiceAttachment, err := compute.NewServiceAttachment(ctx, "default", &compute.ServiceAttachmentArgs{
/// 			Name:                 pulumi.String("psc-service-attachment"),
/// 			Region:               pulumi.String("europe-west4"),
/// 			Description:          pulumi.String("A service attachment configured with Terraform"),
/// 			EnableProxyProtocol:  pulumi.Bool(false),
/// 			ConnectionPreference: pulumi.String("ACCEPT_AUTOMATIC"),
/// 			NatSubnets: pulumi.StringArray{
/// 				pscSubnetwork.SelfLink,
/// 			},
/// 			TargetService: defaultForwardingRule.SelfLink,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionNetworkEndpointGroup(ctx, "psc_neg_service_attachment", &compute.RegionNetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("psc-neg"),
/// 			Region:              pulumi.String("europe-west4"),
/// 			NetworkEndpointType: pulumi.String("PRIVATE_SERVICE_CONNECT"),
/// 			PscTargetService:    defaultServiceAttachment.SelfLink,
/// 			PscData: &compute.RegionNetworkEndpointGroupPscDataArgs{
/// 				ProducerPort: pulumi.String("88"),
/// 			},
/// 			Subnetwork: defaultSubnetwork.SelfLink,
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
/// resource "gcp_compute_network" "default" {
///   name = "psc-network"
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "psc-subnetwork"
///   ip_cidr_range = "10.0.0.0/16"
///   region        = "europe-west4"
///   network       = gcp_compute_network.default.id
/// }
/// resource "gcp_compute_subnetwork" "psc_subnetwork" {
///   name          = "psc-subnetwork-nat"
///   ip_cidr_range = "10.1.0.0/16"
///   region        = "europe-west4"
///   purpose       = "PRIVATE_SERVICE_CONNECT"
///   network       = gcp_compute_network.default.id
/// }
/// resource "gcp_compute_healthcheck" "default" {
///   name               = "psc-healthcheck"
///   check_interval_sec = 1
///   timeout_sec        = 1
///   tcp_health_check = {
///     port = "80"
///   }
/// }
/// resource "gcp_compute_regionbackendservice" "default" {
///   name          = "psc-backend"
///   region        = "europe-west4"
///   health_checks = gcp_compute_healthcheck.default.id
/// }
/// resource "gcp_compute_forwardingrule" "default" {
///   name                  = "psc-forwarding-rule"
///   region                = "europe-west4"
///   load_balancing_scheme = "INTERNAL"
///   backend_service       = gcp_compute_regionbackendservice.default.id
///   ports                 = ["80", "88", "443"]
///   network               = gcp_compute_network.default.name
///   subnetwork            = gcp_compute_subnetwork.default.name
/// }
/// resource "gcp_compute_serviceattachment" "default" {
///   name                  = "psc-service-attachment"
///   region                = "europe-west4"
///   description           = "A service attachment configured with Terraform"
///   enable_proxy_protocol = false
///   connection_preference = "ACCEPT_AUTOMATIC"
///   nat_subnets           = [gcp_compute_subnetwork.psc_subnetwork.self_link]
///   target_service        = gcp_compute_forwardingrule.default.self_link
/// }
/// resource "gcp_compute_regionnetworkendpointgroup" "psc_neg_service_attachment" {
///   name                  = "psc-neg"
///   region                = "europe-west4"
///   network_endpoint_type = "PRIVATE_SERVICE_CONNECT"
///   psc_target_service    = gcp_compute_serviceattachment.default.self_link
///   psc_data = {
///     producer_port = "88"
///   }
///   subnetwork = gcp_compute_subnetwork.default.self_link
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.compute.ServiceAttachment;
/// import com.pulumi.gcp.compute.ServiceAttachmentArgs;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroup;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroupArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkEndpointGroupPscDataArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("psc-network")
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("psc-subnetwork")
///             .ipCidrRange("10.0.0.0/16")
///             .region("europe-west4")
///             .network(default_.id())
///             .build());
///
///         var pscSubnetwork = new Subnetwork("pscSubnetwork", SubnetworkArgs.builder()
///             .name("psc-subnetwork-nat")
///             .ipCidrRange("10.1.0.0/16")
///             .region("europe-west4")
///             .purpose("PRIVATE_SERVICE_CONNECT")
///             .network(default_.id())
///             .build());
///
///         var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
///             .name("psc-healthcheck")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
///             .name("psc-backend")
///             .region("europe-west4")
///             .healthChecks(defaultHealthCheck.id())
///             .build());
///
///         var defaultForwardingRule = new ForwardingRule("defaultForwardingRule", ForwardingRuleArgs.builder()
///             .name("psc-forwarding-rule")
///             .region("europe-west4")
///             .loadBalancingScheme("INTERNAL")
///             .backendService(defaultRegionBackendService.id())
///             .ports(
///                 "80",
///                 "88",
///                 "443")
///             .network(default_.name())
///             .subnetwork(defaultSubnetwork.name())
///             .build());
///
///         var defaultServiceAttachment = new ServiceAttachment("defaultServiceAttachment", ServiceAttachmentArgs.builder()
///             .name("psc-service-attachment")
///             .region("europe-west4")
///             .description("A service attachment configured with Terraform")
///             .enableProxyProtocol(false)
///             .connectionPreference("ACCEPT_AUTOMATIC")
///             .natSubnets(pscSubnetwork.selfLink())
///             .targetService(defaultForwardingRule.selfLink())
///             .build());
///
///         var pscNegServiceAttachment = new RegionNetworkEndpointGroup("pscNegServiceAttachment", RegionNetworkEndpointGroupArgs.builder()
///             .name("psc-neg")
///             .region("europe-west4")
///             .networkEndpointType("PRIVATE_SERVICE_CONNECT")
///             .pscTargetService(defaultServiceAttachment.selfLink())
///             .pscData(RegionNetworkEndpointGroupPscDataArgs.builder()
///                 .producerPort("88")
///                 .build())
///             .subnetwork(defaultSubnetwork.selfLink())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: psc-network
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: psc-subnetwork
///       ipCidrRange: 10.0.0.0/16
///       region: europe-west4
///       network: ${default.id}
///   pscSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: psc_subnetwork
///     properties:
///       name: psc-subnetwork-nat
///       ipCidrRange: 10.1.0.0/16
///       region: europe-west4
///       purpose: PRIVATE_SERVICE_CONNECT
///       network: ${default.id}
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: psc-healthcheck
///       checkIntervalSec: 1
///       timeoutSec: 1
///       tcpHealthCheck:
///         port: '80'
///   defaultRegionBackendService:
///     type: gcp:compute:RegionBackendService
///     name: default
///     properties:
///       name: psc-backend
///       region: europe-west4
///       healthChecks: ${defaultHealthCheck.id}
///   defaultForwardingRule:
///     type: gcp:compute:ForwardingRule
///     name: default
///     properties:
///       name: psc-forwarding-rule
///       region: europe-west4
///       loadBalancingScheme: INTERNAL
///       backendService: ${defaultRegionBackendService.id}
///       ports:
///         - '80'
///         - '88'
///         - '443'
///       network: ${default.name}
///       subnetwork: ${defaultSubnetwork.name}
///   defaultServiceAttachment:
///     type: gcp:compute:ServiceAttachment
///     name: default
///     properties:
///       name: psc-service-attachment
///       region: europe-west4
///       description: A service attachment configured with Terraform
///       enableProxyProtocol: false
///       connectionPreference: ACCEPT_AUTOMATIC
///       natSubnets:
///         - ${pscSubnetwork.selfLink}
///       targetService: ${defaultForwardingRule.selfLink}
///   pscNegServiceAttachment:
///     type: gcp:compute:RegionNetworkEndpointGroup
///     name: psc_neg_service_attachment
///     properties:
///       name: psc-neg
///       region: europe-west4
///       networkEndpointType: PRIVATE_SERVICE_CONNECT
///       pscTargetService: ${defaultServiceAttachment.selfLink}
///       pscData:
///         producerPort: '88'
///       subnetwork: ${defaultSubnetwork.selfLink}
/// ```
///
/// ### Region Network Endpoint Group Internet Ip Port
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {name: "network"});
/// const regionNetworkEndpointGroupInternetIpPort = new gcp.compute.RegionNetworkEndpointGroup("region_network_endpoint_group_internet_ip_port", {
///     name: "ip-port-neg",
///     region: "us-central1",
///     network: _default.id,
///     networkEndpointType: "INTERNET_IP_PORT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default", name="network")
/// region_network_endpoint_group_internet_ip_port = gcp.compute.RegionNetworkEndpointGroup("region_network_endpoint_group_internet_ip_port",
///     name="ip-port-neg",
///     region="us-central1",
///     network=default.id,
///     network_endpoint_type="INTERNET_IP_PORT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "network",
///     });
///
///     var regionNetworkEndpointGroupInternetIpPort = new Gcp.Compute.RegionNetworkEndpointGroup("region_network_endpoint_group_internet_ip_port", new()
///     {
///         Name = "ip-port-neg",
///         Region = "us-central1",
///         Network = @default.Id,
///         NetworkEndpointType = "INTERNET_IP_PORT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionNetworkEndpointGroup(ctx, "region_network_endpoint_group_internet_ip_port", &compute.RegionNetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("ip-port-neg"),
/// 			Region:              pulumi.String("us-central1"),
/// 			Network:             _default.ID().ToIDOutput().ToStringOutput(),
/// 			NetworkEndpointType: pulumi.String("INTERNET_IP_PORT"),
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
/// resource "gcp_compute_regionnetworkendpointgroup" "region_network_endpoint_group_internet_ip_port" {
///   name                  = "ip-port-neg"
///   region                = "us-central1"
///   network               = gcp_compute_network.default.id
///   network_endpoint_type = "INTERNET_IP_PORT"
/// }
/// resource "gcp_compute_network" "default" {
///   name = "network"
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
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroup;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroupArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("network")
///             .build());
///
///         var regionNetworkEndpointGroupInternetIpPort = new RegionNetworkEndpointGroup("regionNetworkEndpointGroupInternetIpPort", RegionNetworkEndpointGroupArgs.builder()
///             .name("ip-port-neg")
///             .region("us-central1")
///             .network(default_.id())
///             .networkEndpointType("INTERNET_IP_PORT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regionNetworkEndpointGroupInternetIpPort:
///     type: gcp:compute:RegionNetworkEndpointGroup
///     name: region_network_endpoint_group_internet_ip_port
///     properties:
///       name: ip-port-neg
///       region: us-central1
///       network: ${default.id}
///       networkEndpointType: INTERNET_IP_PORT
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: network
/// ```
///
/// ### Region Network Endpoint Group Internet Fqdn Port
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {name: "network"});
/// const regionNetworkEndpointGroupInternetFqdnPort = new gcp.compute.RegionNetworkEndpointGroup("region_network_endpoint_group_internet_fqdn_port", {
///     name: "ip-port-neg",
///     region: "us-central1",
///     network: _default.id,
///     networkEndpointType: "INTERNET_FQDN_PORT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default", name="network")
/// region_network_endpoint_group_internet_fqdn_port = gcp.compute.RegionNetworkEndpointGroup("region_network_endpoint_group_internet_fqdn_port",
///     name="ip-port-neg",
///     region="us-central1",
///     network=default.id,
///     network_endpoint_type="INTERNET_FQDN_PORT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "network",
///     });
///
///     var regionNetworkEndpointGroupInternetFqdnPort = new Gcp.Compute.RegionNetworkEndpointGroup("region_network_endpoint_group_internet_fqdn_port", new()
///     {
///         Name = "ip-port-neg",
///         Region = "us-central1",
///         Network = @default.Id,
///         NetworkEndpointType = "INTERNET_FQDN_PORT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionNetworkEndpointGroup(ctx, "region_network_endpoint_group_internet_fqdn_port", &compute.RegionNetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("ip-port-neg"),
/// 			Region:              pulumi.String("us-central1"),
/// 			Network:             _default.ID().ToIDOutput().ToStringOutput(),
/// 			NetworkEndpointType: pulumi.String("INTERNET_FQDN_PORT"),
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
/// resource "gcp_compute_regionnetworkendpointgroup" "region_network_endpoint_group_internet_fqdn_port" {
///   name                  = "ip-port-neg"
///   region                = "us-central1"
///   network               = gcp_compute_network.default.id
///   network_endpoint_type = "INTERNET_FQDN_PORT"
/// }
/// resource "gcp_compute_network" "default" {
///   name = "network"
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
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroup;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroupArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("network")
///             .build());
///
///         var regionNetworkEndpointGroupInternetFqdnPort = new RegionNetworkEndpointGroup("regionNetworkEndpointGroupInternetFqdnPort", RegionNetworkEndpointGroupArgs.builder()
///             .name("ip-port-neg")
///             .region("us-central1")
///             .network(default_.id())
///             .networkEndpointType("INTERNET_FQDN_PORT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regionNetworkEndpointGroupInternetFqdnPort:
///     type: gcp:compute:RegionNetworkEndpointGroup
///     name: region_network_endpoint_group_internet_fqdn_port
///     properties:
///       name: ip-port-neg
///       region: us-central1
///       network: ${default.id}
///       networkEndpointType: INTERNET_FQDN_PORT
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: network
/// ```
///
/// ### Region Network Endpoint Group Portmap
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {name: "network"});
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "subnetwork",
///     ipCidrRange: "10.0.0.0/16",
///     region: "us-central1",
///     network: _default.id,
/// });
/// const regionNetworkEndpointGroupPortmap = new gcp.compute.RegionNetworkEndpointGroup("region_network_endpoint_group_portmap", {
///     name: "portmap-neg",
///     region: "us-central1",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     networkEndpointType: "GCE_VM_IP_PORTMAP",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default", name="network")
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="subnetwork",
///     ip_cidr_range="10.0.0.0/16",
///     region="us-central1",
///     network=default.id)
/// region_network_endpoint_group_portmap = gcp.compute.RegionNetworkEndpointGroup("region_network_endpoint_group_portmap",
///     name="portmap-neg",
///     region="us-central1",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     network_endpoint_type="GCE_VM_IP_PORTMAP")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "network",
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "subnetwork",
///         IpCidrRange = "10.0.0.0/16",
///         Region = "us-central1",
///         Network = @default.Id,
///     });
///
///     var regionNetworkEndpointGroupPortmap = new Gcp.Compute.RegionNetworkEndpointGroup("region_network_endpoint_group_portmap", new()
///     {
///         Name = "portmap-neg",
///         Region = "us-central1",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         NetworkEndpointType = "GCE_VM_IP_PORTMAP",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("subnetwork"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     _default.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionNetworkEndpointGroup(ctx, "region_network_endpoint_group_portmap", &compute.RegionNetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("portmap-neg"),
/// 			Region:              pulumi.String("us-central1"),
/// 			Network:             _default.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:          defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			NetworkEndpointType: pulumi.String("GCE_VM_IP_PORTMAP"),
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
/// resource "gcp_compute_regionnetworkendpointgroup" "region_network_endpoint_group_portmap" {
///   name                  = "portmap-neg"
///   region                = "us-central1"
///   network               = gcp_compute_network.default.id
///   subnetwork            = gcp_compute_subnetwork.default.id
///   network_endpoint_type = "GCE_VM_IP_PORTMAP"
/// }
/// resource "gcp_compute_network" "default" {
///   name = "network"
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "subnetwork"
///   ip_cidr_range = "10.0.0.0/16"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.id
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
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroup;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroupArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("network")
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("subnetwork")
///             .ipCidrRange("10.0.0.0/16")
///             .region("us-central1")
///             .network(default_.id())
///             .build());
///
///         var regionNetworkEndpointGroupPortmap = new RegionNetworkEndpointGroup("regionNetworkEndpointGroupPortmap", RegionNetworkEndpointGroupArgs.builder()
///             .name("portmap-neg")
///             .region("us-central1")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .networkEndpointType("GCE_VM_IP_PORTMAP")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regionNetworkEndpointGroupPortmap:
///     type: gcp:compute:RegionNetworkEndpointGroup
///     name: region_network_endpoint_group_portmap
///     properties:
///       name: portmap-neg
///       region: us-central1
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       networkEndpointType: GCE_VM_IP_PORTMAP
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: network
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: subnetwork
///       ipCidrRange: 10.0.0.0/16
///       region: us-central1
///       network: ${default.id}
/// ```
///
///
/// ## Import
///
/// RegionNetworkEndpointGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/networkEndpointGroups/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, RegionNetworkEndpointGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkEndpointGroup:RegionNetworkEndpointGroup default projects/{{project}}/regions/{{region}}/networkEndpointGroups/{{name}}
/// $ pulumi import gcp:compute/regionNetworkEndpointGroup:RegionNetworkEndpointGroup default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:compute/regionNetworkEndpointGroup:RegionNetworkEndpointGroup default {{region}}/{{name}}
/// $ pulumi import gcp:compute/regionNetworkEndpointGroup:RegionNetworkEndpointGroup default {{name}}
/// ```
class RegionNetworkEndpointGroup extends pulumi.CustomResource {
  /// This field is only used for SERVERLESS NEGs.
  /// Only one of cloud_run, app_engine, cloudFunction or serverlessDeployment may be set.
  /// Structure is documented below.
  late final pulumi.Output<RegionNetworkEndpointGroupAppEngine?> appEngine;
  /// This field is only used for SERVERLESS NEGs.
  /// Only one of cloud_run, app_engine, cloudFunction or serverlessDeployment may be set.
  /// Structure is documented below.
  late final pulumi.Output<RegionNetworkEndpointGroupCloudFunction?> cloudFunction;
  /// This field is only used for SERVERLESS NEGs.
  /// Only one of cloud_run, app_engine, cloudFunction or serverlessDeployment may be set.
  /// Structure is documented below.
  late final pulumi.Output<RegionNetworkEndpointGroupCloudRun?> cloudRun;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final pulumi.Output<String?> description;
  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// This field is only used for PSC and INTERNET NEGs.
  /// The URL of the network to which all network endpoints in the NEG belong. Uses
  /// "default" project network if unspecified.
  late final pulumi.Output<String> network;
  /// Type of network endpoints in this network endpoint group. Defaults to SERVERLESS.
  /// Default value is `SERVERLESS`.
  /// Possible values are: `SERVERLESS`, `PRIVATE_SERVICE_CONNECT`, `INTERNET_IP_PORT`, `INTERNET_FQDN_PORT`, `GCE_VM_IP_PORTMAP`.
  late final pulumi.Output<String?> networkEndpointType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// This field is only used for PSC NEGs.
  /// Structure is documented below.
  late final pulumi.Output<RegionNetworkEndpointGroupPscData> pscData;
  /// This field is only used for PSC and INTERNET NEGs.
  /// The target service url used to set up private service connection to
  /// a Google API or a PSC Producer Service Attachment.
  late final pulumi.Output<String?> pscTargetService;
  /// A reference to the region where the regional NEGs reside.
  late final pulumi.Output<String> region;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// (Optional, Beta)
  /// This field is only used for SERVERLESS NEGs.
  /// Only one of cloudRun, appEngine, cloudFunction or serverlessDeployment may be set.
  /// Structure is documented below.
  late final pulumi.Output<RegionNetworkEndpointGroupServerlessDeployment?> serverlessDeployment;
  /// This field is only used for PSC NEGs.
  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  late final pulumi.Output<String?> subnetwork;

  /// Creates a new [RegionNetworkEndpointGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionNetworkEndpointGroup]. {@macro pulumi_compute_region_network_endpoint_group_region_network_endpoint_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionNetworkEndpointGroup(
    String name, {
    RegionNetworkEndpointGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkEndpointGroup:RegionNetworkEndpointGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    appEngine = registerOutput<RegionNetworkEndpointGroupAppEngine?>('appEngine', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkEndpointGroupAppEngine.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudFunction = registerOutput<RegionNetworkEndpointGroupCloudFunction?>('cloudFunction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkEndpointGroupCloudFunction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudRun = registerOutput<RegionNetworkEndpointGroupCloudRun?>('cloudRun', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkEndpointGroupCloudRun.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    networkEndpointType = registerOutput<String?>('networkEndpointType');
    project = registerOutput<String>('project');
    pscData = registerOutput<RegionNetworkEndpointGroupPscData>('pscData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkEndpointGroupPscData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pscTargetService = registerOutput<String?>('pscTargetService');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
    serverlessDeployment = registerOutput<RegionNetworkEndpointGroupServerlessDeployment?>('serverlessDeployment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkEndpointGroupServerlessDeployment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subnetwork = registerOutput<String?>('subnetwork');
  }

  /// Gets an existing [RegionNetworkEndpointGroup] resource's state with the given [name] and [id].
  static RegionNetworkEndpointGroup get(
    String name,
    pulumi.Input<String> id, {
    RegionNetworkEndpointGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegionNetworkEndpointGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegionNetworkEndpointGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkEndpointGroup:RegionNetworkEndpointGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appEngine = registerOutput<RegionNetworkEndpointGroupAppEngine?>('appEngine', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkEndpointGroupAppEngine.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudFunction = registerOutput<RegionNetworkEndpointGroupCloudFunction?>('cloudFunction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkEndpointGroupCloudFunction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudRun = registerOutput<RegionNetworkEndpointGroupCloudRun?>('cloudRun', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkEndpointGroupCloudRun.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    networkEndpointType = registerOutput<String?>('networkEndpointType');
    project = registerOutput<String>('project');
    pscData = registerOutput<RegionNetworkEndpointGroupPscData>('pscData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkEndpointGroupPscData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pscTargetService = registerOutput<String?>('pscTargetService');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
    serverlessDeployment = registerOutput<RegionNetworkEndpointGroupServerlessDeployment?>('serverlessDeployment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkEndpointGroupServerlessDeployment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subnetwork = registerOutput<String?>('subnetwork');
  }

  /// Creates a typed reference to an existing [RegionNetworkEndpointGroup] resource.
  RegionNetworkEndpointGroup.reference(String urn)
    : super(
        'gcp:compute/regionNetworkEndpointGroup:RegionNetworkEndpointGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    appEngine = registerOutput<RegionNetworkEndpointGroupAppEngine?>('appEngine', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkEndpointGroupAppEngine.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudFunction = registerOutput<RegionNetworkEndpointGroupCloudFunction?>('cloudFunction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkEndpointGroupCloudFunction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudRun = registerOutput<RegionNetworkEndpointGroupCloudRun?>('cloudRun', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkEndpointGroupCloudRun.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    networkEndpointType = registerOutput<String?>('networkEndpointType');
    project = registerOutput<String>('project');
    pscData = registerOutput<RegionNetworkEndpointGroupPscData>('pscData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkEndpointGroupPscData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pscTargetService = registerOutput<String?>('pscTargetService');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
    serverlessDeployment = registerOutput<RegionNetworkEndpointGroupServerlessDeployment?>('serverlessDeployment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkEndpointGroupServerlessDeployment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subnetwork = registerOutput<String?>('subnetwork');
  }
}
