import 'package:pulumi/pulumi.dart' as pulumi;
import 'engine_split_traffic_args.dart';
import 'engine_split_traffic_split.dart';
import 'engine_split_traffic_state.dart';

/// Traffic routing configuration for versions within a single service. Traffic splits define how traffic directed to the service is assigned to versions.
///
///
/// To get more information about ServiceSplitTraffic, see:
///
/// * [API documentation](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services)
///
/// ## Example Usage
///
/// ### App Engine Service Split Traffic
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
/// const liveappV1 = new gcp.appengine.StandardAppVersion("liveapp_v1", {
///     versionId: "v1",
///     service: "liveapp",
///     deleteServiceOnDestroy: true,
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
/// });
/// const liveappV2 = new gcp.appengine.StandardAppVersion("liveapp_v2", {
///     versionId: "v2",
///     service: "liveapp",
///     noopOnDestroy: true,
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
/// });
/// const liveapp = new gcp.appengine.EngineSplitTraffic("liveapp", {
///     service: liveappV2.service,
///     migrateTraffic: false,
///     split: {
///         shardBy: "IP",
///         allocations: pulumi.all([liveappV1.versionId, liveappV2.versionId]).apply(([liveappV1VersionId, liveappV2VersionId]) => {
///             [liveappV1VersionId]: 0.75,
///             [liveappV2VersionId]: 0.25,
///         }),
///     },
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
/// liveapp_v1 = gcp.appengine.StandardAppVersion("liveapp_v1",
///     version_id="v1",
///     service="liveapp",
///     delete_service_on_destroy=True,
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
///     })
/// liveapp_v2 = gcp.appengine.StandardAppVersion("liveapp_v2",
///     version_id="v2",
///     service="liveapp",
///     noop_on_destroy=True,
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
///     })
/// liveapp = gcp.appengine.EngineSplitTraffic("liveapp",
///     service=liveapp_v2.service,
///     migrate_traffic=False,
///     split={
///         "shard_by": "IP",
///         "allocations": pulumi.Output.all(
///             liveappV1Version_id=liveapp_v1.version_id,
///             liveappV2Version_id=liveapp_v2.version_id
/// ).apply(lambda resolved_outputs: {
///             str(resolved_outputs['liveappV1Version_id']): 0.75,
///             str(resolved_outputs['liveappV2Version_id']): 0.25,
///         })
/// ,
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
///     var liveappV1 = new Gcp.AppEngine.StandardAppVersion("liveapp_v1", new()
///     {
///         VersionId = "v1",
///         Service = "liveapp",
///         DeleteServiceOnDestroy = true,
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
///     });
///
///     var liveappV2 = new Gcp.AppEngine.StandardAppVersion("liveapp_v2", new()
///     {
///         VersionId = "v2",
///         Service = "liveapp",
///         NoopOnDestroy = true,
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
///     });
///
///     var liveapp = new Gcp.AppEngine.EngineSplitTraffic("liveapp", new()
///     {
///         Service = liveappV2.Service,
///         MigrateTraffic = false,
///         Split = new Gcp.AppEngine.Inputs.EngineSplitTrafficSplitArgs
///         {
///             ShardBy = "IP",
///             Allocations = Output.Tuple(liveappV1.VersionId, liveappV2.VersionId).Apply(values =>
///             {
///                 var liveappV1VersionId = values.Item1;
///                 var liveappV2VersionId = values.Item2;
///                 return
///                 {
///                     { liveappV1VersionId, 0.75 },
///                     { liveappV2VersionId, 0.25 },
///                 };
///             }),
///         },
///     });
///
/// });
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
/// resource "gcp_storage_bucket" "bucket" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "appengine-static-content"
///   location = "US"
/// }
/// resource "gcp_storage_bucket_object" "object" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name   = "hello-world.zip"
///   bucket = gcp_storage_bucket.bucket.name
///   source = fileasset("./test-fixtures/hello-world.zip")
/// }
/// resource "gcp_appengine_standard_app_version" "liveapp_v1" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   version_id                = "v1"
///   service                   = "liveapp"
///   delete_service_on_destroy = true
///   runtime                   = "nodejs22"
///   entrypoint = {
///     shell = "node ./app.js"
///   }
///   deployment = {
///     zip = {
///       source_url ="https://storage.googleapis.com/${gcp_storage_bucket.bucket.name}/${gcp_storage_bucket_object.object.name}"
///     }
///   }
///   env_variables = {
///     "port" = "8080"
///   }
/// }
/// resource "gcp_appengine_standard_app_version" "liveapp_v2" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   version_id      = "v2"
///   service         = "liveapp"
///   noop_on_destroy = true
///   runtime         = "nodejs22"
///   entrypoint = {
///     shell = "node ./app.js"
///   }
///   deployment = {
///     zip = {
///       source_url ="https://storage.googleapis.com/${gcp_storage_bucket.bucket.name}/${gcp_storage_bucket_object.object.name}"
///     }
///   }
///   env_variables = {
///     "port" = "8080"
///   }
/// }
/// resource "gcp_appengine_engine_split_traffic" "liveapp" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   service         = gcp_appengine_standard_app_version.liveapp_v2.service
///   migrate_traffic = false
///   split = {
///     shard_by = "IP"
///     allocations = {
///       gcp_appengine_standard_app_version.liveapp_v1.version_id = 0.75
///       gcp_appengine_standard_app_version.liveapp_v2.version_id = 0.25
///     }
///   }
/// }
/// ```
/// ```yaml
/// resources:
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
///   liveappV1:
///     type: gcp:appengine:StandardAppVersion
///     name: liveapp_v1
///     properties:
///       versionId: v1
///       service: liveapp
///       deleteServiceOnDestroy: true
///       runtime: nodejs22
///       entrypoint:
///         shell: node ./app.js
///       deployment:
///         zip:
///           sourceUrl: https://storage.googleapis.com/${bucket.name}/${object.name}
///       envVariables:
///         port: '8080'
///   liveappV2:
///     type: gcp:appengine:StandardAppVersion
///     name: liveapp_v2
///     properties:
///       versionId: v2
///       service: liveapp
///       noopOnDestroy: true
///       runtime: nodejs22
///       entrypoint:
///         shell: node ./app.js
///       deployment:
///         zip:
///           sourceUrl: https://storage.googleapis.com/${bucket.name}/${object.name}
///       envVariables:
///         port: '8080'
///   liveapp:
///     type: gcp:appengine:EngineSplitTraffic
///     properties:
///       service: ${liveappV2.service}
///       migrateTraffic: false
///       split:
///         shardBy: IP
///         allocations:
///           ${liveappV1.versionId}: 0.75
///           ${liveappV2.versionId}: 0.25
/// ```
///
///
/// ## Import
///
/// ServiceSplitTraffic can be imported using any of these accepted formats:
///
/// * `apps/{{project}}/services/{{service}}`
/// * `{{project}}/{{service}}`
/// * `{{service}}`
///
///
/// When using the `pulumi import` command, ServiceSplitTraffic can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:appengine/engineSplitTraffic:EngineSplitTraffic default apps/{{project}}/services/{{service}}
/// $ pulumi import gcp:appengine/engineSplitTraffic:EngineSplitTraffic default {{project}}/{{service}}
/// $ pulumi import gcp:appengine/engineSplitTraffic:EngineSplitTraffic default {{service}}
/// ```
class EngineSplitTraffic extends pulumi.CustomResource {
  /// If set to true traffic will be migrated to this version.
  late final pulumi.Output<bool?> migrateTraffic;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The name of the service these settings apply to.
  late final pulumi.Output<String> service;
  /// Mapping that defines fractional HTTP traffic diversion to different versions within the service.
  /// Structure is documented below.
  late final pulumi.Output<EngineSplitTrafficSplit> split;

  /// Creates a new [EngineSplitTraffic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EngineSplitTraffic]. {@macro pulumi_appengine_engine_split_traffic_engine_split_traffic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EngineSplitTraffic(
    String name, {
    EngineSplitTrafficArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:appengine/engineSplitTraffic:EngineSplitTraffic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.0').merge(options),
        ) {
    migrateTraffic = registerOutput<bool?>('migrateTraffic');
    project = registerOutput<String>('project');
    service = registerOutput<String>('service');
    split = registerOutput<EngineSplitTrafficSplit>('split', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EngineSplitTrafficSplit.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [EngineSplitTraffic] resource's state with the given [name] and [id].
  static EngineSplitTraffic get(
    String name,
    pulumi.Input<String> id, {
    EngineSplitTrafficState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EngineSplitTraffic._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EngineSplitTraffic._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:appengine/engineSplitTraffic:EngineSplitTraffic',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    migrateTraffic = registerOutput<bool?>('migrateTraffic');
    project = registerOutput<String>('project');
    service = registerOutput<String>('service');
    split = registerOutput<EngineSplitTrafficSplit>('split', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EngineSplitTrafficSplit.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [EngineSplitTraffic] resource.
  EngineSplitTraffic.reference(String urn)
    : super(
        'gcp:appengine/engineSplitTraffic:EngineSplitTraffic',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    migrateTraffic = registerOutput<bool?>('migrateTraffic');
    project = registerOutput<String>('project');
    service = registerOutput<String>('service');
    split = registerOutput<EngineSplitTrafficSplit>('split', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EngineSplitTrafficSplit.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
