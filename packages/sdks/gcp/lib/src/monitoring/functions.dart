import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_engine_service_args.dart';
import 'get_app_engine_service_result.dart';
import 'get_cluster_istio_service_args.dart';
import 'get_cluster_istio_service_result.dart';
import 'get_istio_canonical_service_args.dart';
import 'get_istio_canonical_service_result.dart';
import 'get_mesh_istio_service_args.dart';
import 'get_mesh_istio_service_result.dart';
import 'get_notification_channel_args.dart';
import 'get_notification_channel_result.dart';
import 'get_secret_version_args.dart';
import 'get_secret_version_result.dart';
import 'get_uptime_check_ips_result.dart';

/// A Monitoring Service is the root resource under which operational aspects of a
/// generic service are accessible. A service is some discrete, autonomous, and
/// network-accessible unit, designed to solve an individual concern
///
/// An App Engine monitoring service is automatically created by GCP to monitor
/// App Engine services.
///
///
/// To get more information about Service, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/services)
/// * How-to Guides
/// * [Service Monitoring](https://cloud.google.com/monitoring/service-monitoring)
/// * [Monitoring API Documentation](https://cloud.google.com/monitoring/api/v3/)
///
/// ## Example Usage
///
/// ### Monitoring App Engine Service
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "appengine-static-content",
///     location: "US",
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "hello-world.zip",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("./test-fixtures/hello-world.zip"),
/// });
/// const myapp = new gcp.appengine.StandardAppVersion("myapp", {
///     versionId: "v1",
///     service: "myapp",
///     runtime: "nodejs20",
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
///     deleteServiceOnDestroy: false,
/// });
/// // Monitors the default AppEngine service
/// const srv = gcp.monitoring.getAppEngineServiceOutput({
///     moduleId: myapp.service,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="appengine-static-content",
///     location="US")
/// object = gcp.storage.BucketObject("object",
///     name="hello-world.zip",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("./test-fixtures/hello-world.zip"))
/// myapp = gcp.appengine.StandardAppVersion("myapp",
///     version_id="v1",
///     service="myapp",
///     runtime="nodejs20",
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
///     delete_service_on_destroy=False)
/// # Monitors the default AppEngine service
/// srv = gcp.monitoring.get_app_engine_service_output(module_id=myapp.service)
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
///     var myapp = new Gcp.AppEngine.StandardAppVersion("myapp", new()
///     {
///         VersionId = "v1",
///         Service = "myapp",
///         Runtime = "nodejs20",
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
///         DeleteServiceOnDestroy = false,
///     });
///
///     // Monitors the default AppEngine service
///     var srv = Gcp.Monitoring.GetAppEngineService.Invoke(new()
///     {
///         ModuleId = myapp.Service,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
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
/// 		myapp, err := appengine.NewStandardAppVersion(ctx, "myapp", &appengine.StandardAppVersionArgs{
/// 			VersionId: pulumi.String("v1"),
/// 			Service:   pulumi.String("myapp"),
/// 			Runtime:   pulumi.String("nodejs20"),
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
/// 			DeleteServiceOnDestroy: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Monitors the default AppEngine service
/// 		_ = monitoring.GetAppEngineServiceOutput(ctx, monitoring.GetAppEngineServiceOutputArgs{
/// 			ModuleId: myapp.Service,
/// 		}, nil)
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
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.appengine.StandardAppVersion;
/// import com.pulumi.gcp.appengine.StandardAppVersionArgs;
/// import com.pulumi.gcp.appengine.inputs.StandardAppVersionEntrypointArgs;
/// import com.pulumi.gcp.appengine.inputs.StandardAppVersionDeploymentArgs;
/// import com.pulumi.gcp.appengine.inputs.StandardAppVersionDeploymentZipArgs;
/// import com.pulumi.gcp.monitoring.MonitoringFunctions;
/// import com.pulumi.gcp.monitoring.inputs.GetAppEngineServiceArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var myapp = new StandardAppVersion("myapp", StandardAppVersionArgs.builder()
///             .versionId("v1")
///             .service("myapp")
///             .runtime("nodejs20")
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
///             .deleteServiceOnDestroy(false)
///             .build());
///
///         // Monitors the default AppEngine service
///         final var srv = MonitoringFunctions.getAppEngineService(GetAppEngineServiceArgs.builder()
///             .moduleId(myapp.service())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myapp:
///     type: gcp:appengine:StandardAppVersion
///     properties:
///       versionId: v1
///       service: myapp
///       runtime: nodejs20
///       entrypoint:
///         shell: node ./app.js
///       deployment:
///         zip:
///           sourceUrl: https://storage.googleapis.com/${bucket.name}/${object.name}
///       envVariables:
///         port: '8080'
///       deleteServiceOnDestroy: false
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
///         fn::FileAsset: ./test-fixtures/hello-world.zip
/// variables:
///   # Monitors the default AppEngine service
///   srv:
///     fn::invoke:
///       function: gcp:monitoring:getAppEngineService
///       arguments:
///         moduleId: ${myapp.service}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_get_app_engine_service_get_app_engine_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppEngineServiceResult> getAppEngineService(
  GetAppEngineServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:monitoring/getAppEngineService:getAppEngineService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppEngineServiceResult.fromMap(result);
}

/// A Monitoring Service is the root resource under which operational aspects of a
/// generic service are accessible. A service is some discrete, autonomous, and
/// network-accessible unit, designed to solve an individual concern
///
/// An Cluster Istio monitoring service is automatically created by GCP to monitor
/// Cluster Istio services.
///
///
/// To get more information about Service, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/services)
/// * How-to Guides
/// * [Service Monitoring](https://cloud.google.com/monitoring/service-monitoring)
/// * [Monitoring API Documentation](https://cloud.google.com/monitoring/api/v3/)
///
/// ## Example Usage
///
/// ### Monitoring Cluster Istio Service
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Monitors the default ClusterIstio service
/// const _default = gcp.monitoring.getClusterIstioService({
///     location: "us-west2-a",
///     clusterName: "west",
///     serviceNamespace: "istio-system",
///     serviceName: "istio-policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Monitors the default ClusterIstio service
/// default = gcp.monitoring.get_cluster_istio_service(location="us-west2-a",
///     cluster_name="west",
///     service_namespace="istio-system",
///     service_name="istio-policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Monitors the default ClusterIstio service
///     var @default = Gcp.Monitoring.GetClusterIstioService.Invoke(new()
///     {
///         Location = "us-west2-a",
///         ClusterName = "west",
///         ServiceNamespace = "istio-system",
///         ServiceName = "istio-policy",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Monitors the default ClusterIstio service
/// 		_, err := monitoring.GetClusterIstioService(ctx, &monitoring.GetClusterIstioServiceArgs{
/// 			Location:         "us-west2-a",
/// 			ClusterName:      "west",
/// 			ServiceNamespace: "istio-system",
/// 			ServiceName:      "istio-policy",
/// 		}, nil)
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
/// import com.pulumi.gcp.monitoring.MonitoringFunctions;
/// import com.pulumi.gcp.monitoring.inputs.GetClusterIstioServiceArgs;
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
///         // Monitors the default ClusterIstio service
///         final var default = MonitoringFunctions.getClusterIstioService(GetClusterIstioServiceArgs.builder()
///             .location("us-west2-a")
///             .clusterName("west")
///             .serviceNamespace("istio-system")
///             .serviceName("istio-policy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Monitors the default ClusterIstio service
///   default:
///     fn::invoke:
///       function: gcp:monitoring:getClusterIstioService
///       arguments:
///         location: us-west2-a
///         clusterName: west
///         serviceNamespace: istio-system
///         serviceName: istio-policy
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_get_cluster_istio_service_get_cluster_istio_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterIstioServiceResult> getClusterIstioService(
  GetClusterIstioServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:monitoring/getClusterIstioService:getClusterIstioService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterIstioServiceResult.fromMap(result);
}

/// A Monitoring Service is the root resource under which operational aspects of a
/// generic service are accessible. A service is some discrete, autonomous, and
/// network-accessible unit, designed to solve an individual concern
///
/// A monitoring Istio Canonical Service is automatically created by GCP to monitor
/// Istio Canonical Services.
///
///
/// To get more information about Service, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/services)
/// * How-to Guides
/// * [Service Monitoring](https://cloud.google.com/monitoring/service-monitoring)
/// * [Monitoring API Documentation](https://cloud.google.com/monitoring/api/v3/)
///
/// ## Example Usage
///
/// ### Monitoring Istio Canonical Service
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Monitors the default MeshIstio service
/// const _default = gcp.monitoring.getIstioCanonicalService({
///     meshUid: "proj-573164786102",
///     canonicalServiceNamespace: "istio-system",
///     canonicalService: "prometheus",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Monitors the default MeshIstio service
/// default = gcp.monitoring.get_istio_canonical_service(mesh_uid="proj-573164786102",
///     canonical_service_namespace="istio-system",
///     canonical_service="prometheus")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Monitors the default MeshIstio service
///     var @default = Gcp.Monitoring.GetIstioCanonicalService.Invoke(new()
///     {
///         MeshUid = "proj-573164786102",
///         CanonicalServiceNamespace = "istio-system",
///         CanonicalService = "prometheus",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Monitors the default MeshIstio service
/// 		_, err := monitoring.GetIstioCanonicalService(ctx, &monitoring.GetIstioCanonicalServiceArgs{
/// 			MeshUid:                   "proj-573164786102",
/// 			CanonicalServiceNamespace: "istio-system",
/// 			CanonicalService:          "prometheus",
/// 		}, nil)
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
/// import com.pulumi.gcp.monitoring.MonitoringFunctions;
/// import com.pulumi.gcp.monitoring.inputs.GetIstioCanonicalServiceArgs;
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
///         // Monitors the default MeshIstio service
///         final var default = MonitoringFunctions.getIstioCanonicalService(GetIstioCanonicalServiceArgs.builder()
///             .meshUid("proj-573164786102")
///             .canonicalServiceNamespace("istio-system")
///             .canonicalService("prometheus")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Monitors the default MeshIstio service
///   default:
///     fn::invoke:
///       function: gcp:monitoring:getIstioCanonicalService
///       arguments:
///         meshUid: proj-573164786102
///         canonicalServiceNamespace: istio-system
///         canonicalService: prometheus
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_get_istio_canonical_service_get_istio_canonical_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIstioCanonicalServiceResult> getIstioCanonicalService(
  GetIstioCanonicalServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:monitoring/getIstioCanonicalService:getIstioCanonicalService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIstioCanonicalServiceResult.fromMap(result);
}

/// A Monitoring Service is the root resource under which operational aspects of a
/// generic service are accessible. A service is some discrete, autonomous, and
/// network-accessible unit, designed to solve an individual concern
///
/// An Mesh Istio monitoring service is automatically created by GCP to monitor
/// Mesh Istio services.
///
///
/// To get more information about Service, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/services)
/// * How-to Guides
/// * [Service Monitoring](https://cloud.google.com/monitoring/service-monitoring)
/// * [Monitoring API Documentation](https://cloud.google.com/monitoring/api/v3/)
///
/// ## Example Usage
///
/// ### Monitoring Mesh Istio Service
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Monitors the default MeshIstio service
/// const _default = gcp.monitoring.getMeshIstioService({
///     meshUid: "proj-573164786102",
///     serviceNamespace: "istio-system",
///     serviceName: "prometheus",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Monitors the default MeshIstio service
/// default = gcp.monitoring.get_mesh_istio_service(mesh_uid="proj-573164786102",
///     service_namespace="istio-system",
///     service_name="prometheus")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Monitors the default MeshIstio service
///     var @default = Gcp.Monitoring.GetMeshIstioService.Invoke(new()
///     {
///         MeshUid = "proj-573164786102",
///         ServiceNamespace = "istio-system",
///         ServiceName = "prometheus",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Monitors the default MeshIstio service
/// 		_, err := monitoring.GetMeshIstioService(ctx, &monitoring.GetMeshIstioServiceArgs{
/// 			MeshUid:          "proj-573164786102",
/// 			ServiceNamespace: "istio-system",
/// 			ServiceName:      "prometheus",
/// 		}, nil)
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
/// import com.pulumi.gcp.monitoring.MonitoringFunctions;
/// import com.pulumi.gcp.monitoring.inputs.GetMeshIstioServiceArgs;
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
///         // Monitors the default MeshIstio service
///         final var default = MonitoringFunctions.getMeshIstioService(GetMeshIstioServiceArgs.builder()
///             .meshUid("proj-573164786102")
///             .serviceNamespace("istio-system")
///             .serviceName("prometheus")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Monitors the default MeshIstio service
///   default:
///     fn::invoke:
///       function: gcp:monitoring:getMeshIstioService
///       arguments:
///         meshUid: proj-573164786102
///         serviceNamespace: istio-system
///         serviceName: prometheus
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_get_mesh_istio_service_get_mesh_istio_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMeshIstioServiceResult> getMeshIstioService(
  GetMeshIstioServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:monitoring/getMeshIstioService:getMeshIstioService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMeshIstioServiceResult.fromMap(result);
}

/// A NotificationChannel is a medium through which an alert is delivered
/// when a policy violation is detected. Examples of channels include email, SMS,
/// and third-party messaging applications. Fields containing sensitive information
/// like authentication tokens or contact info are only partially populated on retrieval.
///
///
/// To get more information about NotificationChannel, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannels)
/// * How-to Guides
/// * [Notification Options](https://cloud.google.com/monitoring/support/notification-options)
/// * [Monitoring API Documentation](https://cloud.google.com/monitoring/api/v3/)
///
///
/// ## Example Usage
///
/// ### Notification Channel Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = gcp.monitoring.getNotificationChannel({
///     displayName: "Test Notification Channel",
/// });
/// const alertPolicy = new gcp.monitoring.AlertPolicy("alert_policy", {
///     displayName: "My Alert Policy",
///     notificationChannels: [basic.then(basic => basic.name)],
///     combiner: "OR",
///     conditions: [{
///         displayName: "test condition",
///         conditionThreshold: {
///             filter: "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\"",
///             duration: "60s",
///             comparison: "COMPARISON_GT",
///             aggregations: [{
///                 alignmentPeriod: "60s",
///                 perSeriesAligner: "ALIGN_RATE",
///             }],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.monitoring.get_notification_channel(display_name="Test Notification Channel")
/// alert_policy = gcp.monitoring.AlertPolicy("alert_policy",
///     display_name="My Alert Policy",
///     notification_channels=[basic.name],
///     combiner="OR",
///     conditions=[{
///         "display_name": "test condition",
///         "condition_threshold": {
///             "filter": "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\"",
///             "duration": "60s",
///             "comparison": "COMPARISON_GT",
///             "aggregations": [{
///                 "alignment_period": "60s",
///                 "per_series_aligner": "ALIGN_RATE",
///             }],
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = Gcp.Monitoring.GetNotificationChannel.Invoke(new()
///     {
///         DisplayName = "Test Notification Channel",
///     });
///
///     var alertPolicy = new Gcp.Monitoring.AlertPolicy("alert_policy", new()
///     {
///         DisplayName = "My Alert Policy",
///         NotificationChannels = new[]
///         {
///             basic.Apply(getNotificationChannelResult => getNotificationChannelResult.Name),
///         },
///         Combiner = "OR",
///         Conditions = new[]
///         {
///             new Gcp.Monitoring.Inputs.AlertPolicyConditionArgs
///             {
///                 DisplayName = "test condition",
///                 ConditionThreshold = new Gcp.Monitoring.Inputs.AlertPolicyConditionConditionThresholdArgs
///                 {
///                     Filter = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\"",
///                     Duration = "60s",
///                     Comparison = "COMPARISON_GT",
///                     Aggregations = new[]
///                     {
///                         new Gcp.Monitoring.Inputs.AlertPolicyConditionConditionThresholdAggregationArgs
///                         {
///                             AlignmentPeriod = "60s",
///                             PerSeriesAligner = "ALIGN_RATE",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basic, err := monitoring.LookupNotificationChannel(ctx, &monitoring.LookupNotificationChannelArgs{
/// 			DisplayName: pulumi.StringRef("Test Notification Channel"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewAlertPolicy(ctx, "alert_policy", &monitoring.AlertPolicyArgs{
/// 			DisplayName: pulumi.String("My Alert Policy"),
/// 			NotificationChannels: pulumi.StringArray{
/// 				pulumi.String(basic.Name),
/// 			},
/// 			Combiner: pulumi.String("OR"),
/// 			Conditions: monitoring.AlertPolicyConditionArray{
/// 				&monitoring.AlertPolicyConditionArgs{
/// 					DisplayName: pulumi.String("test condition"),
/// 					ConditionThreshold: &monitoring.AlertPolicyConditionConditionThresholdArgs{
/// 						Filter:     pulumi.String("metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""),
/// 						Duration:   pulumi.String("60s"),
/// 						Comparison: pulumi.String("COMPARISON_GT"),
/// 						Aggregations: monitoring.AlertPolicyConditionConditionThresholdAggregationArray{
/// 							&monitoring.AlertPolicyConditionConditionThresholdAggregationArgs{
/// 								AlignmentPeriod:  pulumi.String("60s"),
/// 								PerSeriesAligner: pulumi.String("ALIGN_RATE"),
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
/// import com.pulumi.gcp.monitoring.MonitoringFunctions;
/// import com.pulumi.gcp.monitoring.inputs.GetNotificationChannelArgs;
/// import com.pulumi.gcp.monitoring.AlertPolicy;
/// import com.pulumi.gcp.monitoring.AlertPolicyArgs;
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyConditionArgs;
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyConditionConditionThresholdArgs;
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
///         final var basic = MonitoringFunctions.getNotificationChannel(GetNotificationChannelArgs.builder()
///             .displayName("Test Notification Channel")
///             .build());
///
///         var alertPolicy = new AlertPolicy("alertPolicy", AlertPolicyArgs.builder()
///             .displayName("My Alert Policy")
///             .notificationChannels(basic.name())
///             .combiner("OR")
///             .conditions(AlertPolicyConditionArgs.builder()
///                 .displayName("test condition")
///                 .conditionThreshold(AlertPolicyConditionConditionThresholdArgs.builder()
///                     .filter("metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\"")
///                     .duration("60s")
///                     .comparison("COMPARISON_GT")
///                     .aggregations(AlertPolicyConditionConditionThresholdAggregationArgs.builder()
///                         .alignmentPeriod("60s")
///                         .perSeriesAligner("ALIGN_RATE")
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
///   alertPolicy:
///     type: gcp:monitoring:AlertPolicy
///     name: alert_policy
///     properties:
///       displayName: My Alert Policy
///       notificationChannels:
///         - ${basic.name}
///       combiner: OR
///       conditions:
///         - displayName: test condition
///           conditionThreshold:
///             filter: metric.type="compute.googleapis.com/instance/disk/write_bytes_count" AND resource.type="gce_instance"
///             duration: 60s
///             comparison: COMPARISON_GT
///             aggregations:
///               - alignmentPeriod: 60s
///                 perSeriesAligner: ALIGN_RATE
/// variables:
///   basic:
///     fn::invoke:
///       function: gcp:monitoring:getNotificationChannel
///       arguments:
///         displayName: Test Notification Channel
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_get_notification_channel_get_notification_channel_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotificationChannelResult> getNotificationChannel(
  GetNotificationChannelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:monitoring/getNotificationChannel:getNotificationChannel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotificationChannelResult.fromMap(result);
}

/// Get the value and metadata from a Secret Manager secret version. For more information see the [official documentation](https://cloud.google.com/secret-manager/docs/) and [API](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.secrets.versions). If you don't need the metadata (i.e., if you want to use a more limited role to access the secret version only), see also the gcp.secretmanager.getSecretVersionAccess datasource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = gcp.secretmanager.getSecretVersion({
///     secret: "my-secret",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.secretmanager.get_secret_version(secret="my-secret")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = Gcp.SecretManager.GetSecretVersion.Invoke(new()
///     {
///         Secret = "my-secret",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretmanager.LookupSecretVersion(ctx, &secretmanager.LookupSecretVersionArgs{
/// 			Secret: "my-secret",
/// 		}, nil)
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
/// import com.pulumi.gcp.secretmanager.SecretmanagerFunctions;
/// import com.pulumi.gcp.secretmanager.inputs.GetSecretVersionArgs;
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
///         final var basic = SecretmanagerFunctions.getSecretVersion(GetSecretVersionArgs.builder()
///             .secret("my-secret")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   basic:
///     fn::invoke:
///       function: gcp:secretmanager:getSecretVersion
///       arguments:
///         secret: my-secret
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_get_secret_version_get_secret_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretVersionResult> getSecretVersion(
  GetSecretVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:monitoring/getSecretVersion:getSecretVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretVersionResult.fromMap(result);
}

/// Returns the list of IP addresses that checkers run from. For more information see
/// the [official documentation](https://cloud.google.com/monitoring/uptime-checks#get-ips).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const ips = gcp.monitoring.getUptimeCheckIPs({});
/// export const ipList = ips.then(ips => ips.uptimeCheckIps);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ips = gcp.monitoring.get_uptime_check_i_ps()
/// pulumi.export("ipList", ips.uptime_check_ips)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ips = Gcp.Monitoring.GetUptimeCheckIPs.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["ipList"] = ips.Apply(getUptimeCheckIPsResult => getUptimeCheckIPsResult.UptimeCheckIps),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ips, err := monitoring.GetUptimeCheckIPs(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ipList", ips.UptimeCheckIps)
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
/// import com.pulumi.gcp.monitoring.MonitoringFunctions;
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
///         final var ips = MonitoringFunctions.getUptimeCheckIPs(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         ctx.export("ipList", ips.uptimeCheckIps());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ips:
///     fn::invoke:
///       function: gcp:monitoring:getUptimeCheckIPs
///       arguments: {}
/// outputs:
///   ipList: ${ips.uptimeCheckIps}
/// ```
/// [options] Invoke options controlling this call.
Future<GetUptimeCheckIPsResult> getUptimeCheckIPs(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:monitoring/getUptimeCheckIPs:getUptimeCheckIPs',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUptimeCheckIPsResult.fromMap(result);
}
