import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_version_annotations.dart';
import 'worker_version_args.dart';
import 'worker_version_assets.dart';
import 'worker_version_binding.dart';
import 'worker_version_cache_options.dart';
import 'worker_version_container.dart';
import 'worker_version_exports.dart';
import 'worker_version_limits.dart';
import 'worker_version_migrations.dart';
import 'worker_version_module.dart';
import 'worker_version_package_dependency.dart';
import 'worker_version_placement.dart';
import 'worker_version_state.dart';

/// Accepted Permissions
///
/// - `Workers Scripts Read`
/// - `Workers Scripts Write`
/// - `Workers Tail Read`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleWorkerVersion = new cloudflare.WorkerVersion("example_worker_version", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     workerId: "worker_id",
///     annotations: {
///         workersMessage: "Fixed bug.",
///         workersTag: "v1.0.1",
///     },
///     assets: {
///         config: {
///             htmlHandling: "auto-trailing-slash",
///             notFoundHandling: "404-page",
///             runWorkerFirst: [],
///         },
///         jwt: "jwt",
///     },
///     bindings: [{
///         name: "MY_ENV_VAR",
///         text: "my_data",
///         type: "plain_text",
///     }],
///     cacheOptions: {
///         enabled: true,
///         crossVersionCache: true,
///     },
///     compatibilityDate: "2021-01-01",
///     compatibilityFlags: ["nodejs_compat"],
///     containers: [{
///         className: "MyDurableObject",
///     }],
///     limits: {
///         cpuMs: 50,
///         subrequests: 1000,
///     },
///     mainModule: "index.js",
///     migrations: {
///         deletedClasses: ["string"],
///         newClasses: ["string"],
///         newSqliteClasses: ["string"],
///         newTag: "v2",
///         oldTag: "v1",
///         renamedClasses: [{
///             from: "from",
///             to: "to",
///         }],
///         transferredClasses: [{
///             from: "from",
///             fromScript: "from_script",
///             to: "to",
///         }],
///     },
///     modules: [{
///         contentFile: "dist/index.js",
///         contentType: "application/javascript+module",
///         name: "index.js",
///     }],
///     packageDependencies: [{
///         installedVersion: "4.17.22",
///         name: "lodash",
///         packageJsonVersion: "^4.17.21",
///     }],
///     placement: {
///         mode: "smart",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_worker_version = cloudflare.WorkerVersion("example_worker_version",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     worker_id="worker_id",
///     annotations={
///         "workers_message": "Fixed bug.",
///         "workers_tag": "v1.0.1",
///     },
///     assets={
///         "config": {
///             "html_handling": "auto-trailing-slash",
///             "not_found_handling": "404-page",
///             "run_worker_first": [],
///         },
///         "jwt": "jwt",
///     },
///     bindings=[{
///         "name": "MY_ENV_VAR",
///         "text": "my_data",
///         "type": "plain_text",
///     }],
///     cache_options={
///         "enabled": True,
///         "cross_version_cache": True,
///     },
///     compatibility_date="2021-01-01",
///     compatibility_flags=["nodejs_compat"],
///     containers=[{
///         "class_name": "MyDurableObject",
///     }],
///     limits={
///         "cpu_ms": 50,
///         "subrequests": 1000,
///     },
///     main_module="index.js",
///     migrations={
///         "deleted_classes": ["string"],
///         "new_classes": ["string"],
///         "new_sqlite_classes": ["string"],
///         "new_tag": "v2",
///         "old_tag": "v1",
///         "renamed_classes": [{
///             "from_": "from",
///             "to": "to",
///         }],
///         "transferred_classes": [{
///             "from_": "from",
///             "from_script": "from_script",
///             "to": "to",
///         }],
///     },
///     modules=[{
///         "content_file": "dist/index.js",
///         "content_type": "application/javascript+module",
///         "name": "index.js",
///     }],
///     package_dependencies=[{
///         "installed_version": "4.17.22",
///         "name": "lodash",
///         "package_json_version": "^4.17.21",
///     }],
///     placement={
///         "mode": "smart",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleWorkerVersion = new Cloudflare.WorkerVersion("example_worker_version", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         WorkerId = "worker_id",
///         Annotations = new Cloudflare.Inputs.WorkerVersionAnnotationsArgs
///         {
///             WorkersMessage = "Fixed bug.",
///             WorkersTag = "v1.0.1",
///         },
///         Assets = new Cloudflare.Inputs.WorkerVersionAssetsArgs
///         {
///             Config = new Cloudflare.Inputs.WorkerVersionAssetsConfigArgs
///             {
///                 HtmlHandling = "auto-trailing-slash",
///                 NotFoundHandling = "404-page",
///                 RunWorkerFirst = new() { },
///             },
///             Jwt = "jwt",
///         },
///         Bindings = new[]
///         {
///             new Cloudflare.Inputs.WorkerVersionBindingArgs
///             {
///                 Name = "MY_ENV_VAR",
///                 Text = "my_data",
///                 Type = "plain_text",
///             },
///         },
///         CacheOptions = new Cloudflare.Inputs.WorkerVersionCacheOptionsArgs
///         {
///             Enabled = true,
///             CrossVersionCache = true,
///         },
///         CompatibilityDate = "2021-01-01",
///         CompatibilityFlags = new[]
///         {
///             "nodejs_compat",
///         },
///         Containers = new[]
///         {
///             new Cloudflare.Inputs.WorkerVersionContainerArgs
///             {
///                 ClassName = "MyDurableObject",
///             },
///         },
///         Limits = new Cloudflare.Inputs.WorkerVersionLimitsArgs
///         {
///             CpuMs = 50,
///             Subrequests = 1000,
///         },
///         MainModule = "index.js",
///         Migrations = new Cloudflare.Inputs.WorkerVersionMigrationsArgs
///         {
///             DeletedClasses = new[]
///             {
///                 "string",
///             },
///             NewClasses = new[]
///             {
///                 "string",
///             },
///             NewSqliteClasses = new[]
///             {
///                 "string",
///             },
///             NewTag = "v2",
///             OldTag = "v1",
///             RenamedClasses = new[]
///             {
///                 new Cloudflare.Inputs.WorkerVersionMigrationsRenamedClassArgs
///                 {
///                     From = "from",
///                     To = "to",
///                 },
///             },
///             TransferredClasses = new[]
///             {
///                 new Cloudflare.Inputs.WorkerVersionMigrationsTransferredClassArgs
///                 {
///                     From = "from",
///                     FromScript = "from_script",
///                     To = "to",
///                 },
///             },
///         },
///         Modules = new[]
///         {
///             new Cloudflare.Inputs.WorkerVersionModuleArgs
///             {
///                 ContentFile = "dist/index.js",
///                 ContentType = "application/javascript+module",
///                 Name = "index.js",
///             },
///         },
///         PackageDependencies = new[]
///         {
///             new Cloudflare.Inputs.WorkerVersionPackageDependencyArgs
///             {
///                 InstalledVersion = "4.17.22",
///                 Name = "lodash",
///                 PackageJsonVersion = "^4.17.21",
///             },
///         },
///         Placement = new Cloudflare.Inputs.WorkerVersionPlacementArgs
///         {
///             Mode = "smart",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewWorkerVersion(ctx, "example_worker_version", &cloudflare.WorkerVersionArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			WorkerId:  pulumi.String("worker_id"),
/// 			Annotations: &cloudflare.WorkerVersionAnnotationsArgs{
/// 				WorkersMessage: pulumi.String("Fixed bug."),
/// 				WorkersTag:     pulumi.String("v1.0.1"),
/// 			},
/// 			Assets: &cloudflare.WorkerVersionAssetsArgs{
/// 				Config: &cloudflare.WorkerVersionAssetsConfigArgs{
/// 					HtmlHandling:     pulumi.String("auto-trailing-slash"),
/// 					NotFoundHandling: pulumi.String("404-page"),
/// 					RunWorkerFirst:   pulumi.Any{},
/// 				},
/// 				Jwt: pulumi.String("jwt"),
/// 			},
/// 			Bindings: cloudflare.WorkerVersionBindingArray{
/// 				&cloudflare.WorkerVersionBindingArgs{
/// 					Name: pulumi.String("MY_ENV_VAR"),
/// 					Text: pulumi.String("my_data"),
/// 					Type: pulumi.String("plain_text"),
/// 				},
/// 			},
/// 			CacheOptions: &cloudflare.WorkerVersionCacheOptionsArgs{
/// 				Enabled:           pulumi.Bool(true),
/// 				CrossVersionCache: pulumi.Bool(true),
/// 			},
/// 			CompatibilityDate: pulumi.String("2021-01-01"),
/// 			CompatibilityFlags: pulumi.StringArray{
/// 				pulumi.String("nodejs_compat"),
/// 			},
/// 			Containers: cloudflare.WorkerVersionContainerArray{
/// 				&cloudflare.WorkerVersionContainerArgs{
/// 					ClassName: pulumi.String("MyDurableObject"),
/// 				},
/// 			},
/// 			Limits: &cloudflare.WorkerVersionLimitsArgs{
/// 				CpuMs:       pulumi.Int(50),
/// 				Subrequests: pulumi.Int(1000),
/// 			},
/// 			MainModule: pulumi.String("index.js"),
/// 			Migrations: &cloudflare.WorkerVersionMigrationsArgs{
/// 				DeletedClasses: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				NewClasses: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				NewSqliteClasses: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				NewTag: pulumi.String("v2"),
/// 				OldTag: pulumi.String("v1"),
/// 				RenamedClasses: cloudflare.WorkerVersionMigrationsRenamedClassArray{
/// 					&cloudflare.WorkerVersionMigrationsRenamedClassArgs{
/// 						From: pulumi.String("from"),
/// 						To:   pulumi.String("to"),
/// 					},
/// 				},
/// 				TransferredClasses: cloudflare.WorkerVersionMigrationsTransferredClassArray{
/// 					&cloudflare.WorkerVersionMigrationsTransferredClassArgs{
/// 						From:       pulumi.String("from"),
/// 						FromScript: pulumi.String("from_script"),
/// 						To:         pulumi.String("to"),
/// 					},
/// 				},
/// 			},
/// 			Modules: cloudflare.WorkerVersionModuleArray{
/// 				&cloudflare.WorkerVersionModuleArgs{
/// 					ContentFile: pulumi.String("dist/index.js"),
/// 					ContentType: pulumi.String("application/javascript+module"),
/// 					Name:        pulumi.String("index.js"),
/// 				},
/// 			},
/// 			PackageDependencies: cloudflare.WorkerVersionPackageDependencyArray{
/// 				&cloudflare.WorkerVersionPackageDependencyArgs{
/// 					InstalledVersion:   pulumi.String("4.17.22"),
/// 					Name:               pulumi.String("lodash"),
/// 					PackageJsonVersion: pulumi.String("^4.17.21"),
/// 				},
/// 			},
/// 			Placement: &cloudflare.WorkerVersionPlacementArgs{
/// 				Mode: pulumi.String("smart"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_workerversion" "example_worker_version" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   worker_id  = "worker_id"
///   annotations = {
///     workers_message = "Fixed bug."
///     workers_tag     = "v1.0.1"
///   }
///   assets = {
///     config = {
///       html_handling      = "auto-trailing-slash"
///       not_found_handling = "404-page"
///       run_worker_first   = []
///     }
///     jwt = "jwt"
///   }
///   bindings {
///     name = "MY_ENV_VAR"
///     text = "my_data"
///     type = "plain_text"
///   }
///   cache_options = {
///     enabled             = true
///     cross_version_cache = true
///   }
///   compatibility_date  = "2021-01-01"
///   compatibility_flags = ["nodejs_compat"]
///   containers {
///     class_name = "MyDurableObject"
///   }
///   limits = {
///     cpu_ms      = 50
///     subrequests = 1000
///   }
///   main_module = "index.js"
///   migrations = {
///     deleted_classes    = ["string"]
///     new_classes        = ["string"]
///     new_sqlite_classes = ["string"]
///     new_tag            = "v2"
///     old_tag            = "v1"
///     renamed_classes = [{
///       "from" = "from"
///       "to"   = "to"
///     }]
///     transferred_classes = [{
///       "from"       = "from"
///       "fromScript" = "from_script"
///       "to"         = "to"
///     }]
///   }
///   modules {
///     content_file = "dist/index.js"
///     content_type = "application/javascript+module"
///     name         = "index.js"
///   }
///   package_dependencies {
///     installed_version    = "4.17.22"
///     name                 = "lodash"
///     package_json_version = "^4.17.21"
///   }
///   placement = {
///     mode = "smart"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.WorkerVersion;
/// import com.pulumi.cloudflare.WorkerVersionArgs;
/// import com.pulumi.cloudflare.inputs.WorkerVersionAnnotationsArgs;
/// import com.pulumi.cloudflare.inputs.WorkerVersionAssetsArgs;
/// import com.pulumi.cloudflare.inputs.WorkerVersionAssetsConfigArgs;
/// import com.pulumi.cloudflare.inputs.WorkerVersionBindingArgs;
/// import com.pulumi.cloudflare.inputs.WorkerVersionCacheOptionsArgs;
/// import com.pulumi.cloudflare.inputs.WorkerVersionContainerArgs;
/// import com.pulumi.cloudflare.inputs.WorkerVersionLimitsArgs;
/// import com.pulumi.cloudflare.inputs.WorkerVersionMigrationsArgs;
/// import com.pulumi.cloudflare.inputs.WorkerVersionMigrationsRenamedClassArgs;
/// import com.pulumi.cloudflare.inputs.WorkerVersionMigrationsTransferredClassArgs;
/// import com.pulumi.cloudflare.inputs.WorkerVersionModuleArgs;
/// import com.pulumi.cloudflare.inputs.WorkerVersionPackageDependencyArgs;
/// import com.pulumi.cloudflare.inputs.WorkerVersionPlacementArgs;
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
///         var exampleWorkerVersion = new WorkerVersion("exampleWorkerVersion", WorkerVersionArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .workerId("worker_id")
///             .annotations(WorkerVersionAnnotationsArgs.builder()
///                 .workersMessage("Fixed bug.")
///                 .workersTag("v1.0.1")
///                 .build())
///             .assets(WorkerVersionAssetsArgs.builder()
///                 .config(WorkerVersionAssetsConfigArgs.builder()
///                     .htmlHandling("auto-trailing-slash")
///                     .notFoundHandling("404-page")
///                     .runWorkerFirst()
///                     .build())
///                 .jwt("jwt")
///                 .build())
///             .bindings(WorkerVersionBindingArgs.builder()
///                 .name("MY_ENV_VAR")
///                 .text("my_data")
///                 .type("plain_text")
///                 .build())
///             .cacheOptions(WorkerVersionCacheOptionsArgs.builder()
///                 .enabled(true)
///                 .crossVersionCache(true)
///                 .build())
///             .compatibilityDate("2021-01-01")
///             .compatibilityFlags("nodejs_compat")
///             .containers(WorkerVersionContainerArgs.builder()
///                 .className("MyDurableObject")
///                 .build())
///             .limits(WorkerVersionLimitsArgs.builder()
///                 .cpuMs(50)
///                 .subrequests(1000)
///                 .build())
///             .mainModule("index.js")
///             .migrations(WorkerVersionMigrationsArgs.builder()
///                 .deletedClasses("string")
///                 .newClasses("string")
///                 .newSqliteClasses("string")
///                 .newTag("v2")
///                 .oldTag("v1")
///                 .renamedClasses(WorkerVersionMigrationsRenamedClassArgs.builder()
///                     .from("from")
///                     .to("to")
///                     .build())
///                 .transferredClasses(WorkerVersionMigrationsTransferredClassArgs.builder()
///                     .from("from")
///                     .fromScript("from_script")
///                     .to("to")
///                     .build())
///                 .build())
///             .modules(WorkerVersionModuleArgs.builder()
///                 .contentFile("dist/index.js")
///                 .contentType("application/javascript+module")
///                 .name("index.js")
///                 .build())
///             .packageDependencies(WorkerVersionPackageDependencyArgs.builder()
///                 .installedVersion("4.17.22")
///                 .name("lodash")
///                 .packageJsonVersion("^4.17.21")
///                 .build())
///             .placement(WorkerVersionPlacementArgs.builder()
///                 .mode("smart")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWorkerVersion:
///     type: cloudflare:WorkerVersion
///     name: example_worker_version
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       workerId: worker_id
///       annotations:
///         workersMessage: Fixed bug.
///         workersTag: v1.0.1
///       assets:
///         config:
///           htmlHandling: auto-trailing-slash
///           notFoundHandling: 404-page
///           runWorkerFirst: []
///         jwt: jwt
///       bindings:
///         - name: MY_ENV_VAR
///           text: my_data
///           type: plain_text
///       cacheOptions:
///         enabled: true
///         crossVersionCache: true
///       compatibilityDate: 2021-01-01
///       compatibilityFlags:
///         - nodejs_compat
///       containers:
///         - className: MyDurableObject
///       limits:
///         cpuMs: 50
///         subrequests: 1000
///       mainModule: index.js
///       migrations:
///         deletedClasses:
///           - string
///         newClasses:
///           - string
///         newSqliteClasses:
///           - string
///         newTag: v2
///         oldTag: v1
///         renamedClasses:
///           - from: from
///             to: to
///         transferredClasses:
///           - from: from
///             fromScript: from_script
///             to: to
///       modules:
///         - contentFile: dist/index.js
///           contentType: application/javascript+module
///           name: index.js
///       packageDependencies:
///         - installedVersion: 4.17.22
///           name: lodash
///           packageJsonVersion: ^4.17.21
///       placement:
///         mode: smart
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/workerVersion:WorkerVersion example '<account_id>/<worker_id>/<version_id>'
/// ```
class WorkerVersion extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// Metadata about the version.
  late final pulumi.Output<WorkerVersionAnnotations> annotations;
  /// Configuration for assets within a Worker.
  late final pulumi.Output<WorkerVersionAssets?> assets;
  /// List of bindings attached to a Worker. You can find more about bindings on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/#bindings.
  late final pulumi.Output<List<WorkerVersionBinding>?> bindings;
  /// Global CacheW configuration for the Worker. When caching is on,
  /// the platform provisions a `cloudflare.app` zone for the Worker.
  /// A `type: worker` entry in the `exports` map can override this
  /// value for a single entrypoint.
  late final pulumi.Output<WorkerVersionCacheOptions> cacheOptions;
  /// Date indicating targeted support in the Workers runtime. Backwards incompatible fixes to the runtime following this date will not affect this Worker.
  late final pulumi.Output<String?> compatibilityDate;
  /// Flags that enable or disable certain features in the Workers runtime. Used to enable upcoming features or opt in or out of specific changes not included in a `compatibilityDate`.
  late final pulumi.Output<List<String>> compatibilityFlags;
  /// List of containers attached to a Worker. Containers can only be attached to Durable Object classes of this Worker script.
  late final pulumi.Output<List<WorkerVersionContainer>?> containers;
  /// When the version was created.
  late final pulumi.Output<String> createdOn;
  /// Declarative exports for the version, including Durable Object
  /// classes (with their `storage` backend) and named Worker
  /// entrypoints. On reads, tombstoned lifecycle entries are
  /// omitted, so only live exports (`created` and
  /// `expecting-transfer`) are returned. `exports` and `migrations`
  /// are mutually exclusive on upload.
  late final pulumi.Output<Map<String, WorkerVersionExports>?> exports;
  /// Resource limits enforced at runtime.
  late final pulumi.Output<WorkerVersionLimits> limits;
  /// The name of the main module in the `modules` array (e.g. the name of the module that exports a `fetch` handler).
  late final pulumi.Output<String?> mainModule;
  /// The base64-encoded main script content. This is only returned for service worker syntax workers (not ES modules). Used when importing existing workers that use the older service worker syntax.
  late final pulumi.Output<String> mainScriptBase64;
  /// Durable Object migration tag. Set when the version is deployed. Omitted if the version has not been deployed or the Worker does not use Durable Objects.
  late final pulumi.Output<String> migrationTag;
  /// Migrations for Durable Objects associated with the version. Migrations are applied when the version is deployed.
  late final pulumi.Output<WorkerVersionMigrations?> migrations;
  /// Code, sourcemaps, and other content used at runtime.
  ///
  /// This includes [`_headers`](https://developers.cloudflare.com/workers/static-assets/headers/#custom-headers) and
  /// [`_redirects`](https://developers.cloudflare.com/workers/static-assets/redirects/) files used to configure
  /// [Static Assets](https://developers.cloudflare.com/workers/static-assets/). `_headers` and `_redirects` files should be
  /// included as modules named `_headers` and `_redirects` with content type `text/plain`.
  late final pulumi.Output<List<WorkerVersionModule>?> modules;
  /// The integer version number, starting from one.
  late final pulumi.Output<int> number;
  /// The list of npm packages that were installed and used when this Worker
  /// version was built.
  late final pulumi.Output<List<WorkerVersionPackageDependency>?> packageDependencies;
  /// Configuration for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement). Specify mode='smart' for Smart Placement, or one of region/hostname/host.
  late final pulumi.Output<WorkerVersionPlacement?> placement;
  /// The client used to create the version.
  late final pulumi.Output<String> source;
  /// Time in milliseconds spent on [Worker startup](https://developers.cloudflare.com/workers/platform/limits/#worker-startup-time).
  late final pulumi.Output<int> startupTimeMs;
  /// All routable URLs that always point to this version. Does not include alias URLs, since aliases can be updated to point to a different version.
  late final pulumi.Output<List<String>> urls;
  /// Usage model for the version.
  /// Available values: "standard", "bundled", "unbound".
  late final pulumi.Output<String> usageModel;
  /// Identifier for the Worker, which can be ID or name.
  late final pulumi.Output<String> workerId;

  /// Creates a new [WorkerVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkerVersion]. {@macro pulumi_index_worker_version_worker_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkerVersion(
    String name, {
    WorkerVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workerVersion:WorkerVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    annotations = registerOutput<WorkerVersionAnnotations>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerVersionAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    assets = registerOutput<WorkerVersionAssets?>('assets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerVersionAssets.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bindings = registerOutput<List<WorkerVersionBinding>?>('bindings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerVersionBinding>(guardedValue, (value) => WorkerVersionBinding.fromMap((value as Map).cast<String, dynamic>())); });
    cacheOptions = registerOutput<WorkerVersionCacheOptions>('cacheOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerVersionCacheOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compatibilityDate = registerOutput<String?>('compatibilityDate');
    compatibilityFlags = registerOutput<List<String>>('compatibilityFlags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    containers = registerOutput<List<WorkerVersionContainer>?>('containers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerVersionContainer>(guardedValue, (value) => WorkerVersionContainer.fromMap((value as Map).cast<String, dynamic>())); });
    createdOn = registerOutput<String>('createdOn');
    exports = registerOutput<Map<String, WorkerVersionExports>?>('exports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<WorkerVersionExports>(guardedValue, (value) => WorkerVersionExports.fromMap((value as Map).cast<String, dynamic>())); });
    limits = registerOutput<WorkerVersionLimits>('limits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerVersionLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mainModule = registerOutput<String?>('mainModule');
    mainScriptBase64 = registerOutput<String>('mainScriptBase64');
    migrationTag = registerOutput<String>('migrationTag');
    migrations = registerOutput<WorkerVersionMigrations?>('migrations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerVersionMigrations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modules = registerOutput<List<WorkerVersionModule>?>('modules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerVersionModule>(guardedValue, (value) => WorkerVersionModule.fromMap((value as Map).cast<String, dynamic>())); });
    number = registerOutput<int>('number');
    packageDependencies = registerOutput<List<WorkerVersionPackageDependency>?>('packageDependencies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerVersionPackageDependency>(guardedValue, (value) => WorkerVersionPackageDependency.fromMap((value as Map).cast<String, dynamic>())); });
    placement = registerOutput<WorkerVersionPlacement?>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerVersionPlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    source = registerOutput<String>('source');
    startupTimeMs = registerOutput<int>('startupTimeMs');
    urls = registerOutput<List<String>>('urls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    usageModel = registerOutput<String>('usageModel');
    workerId = registerOutput<String>('workerId');
  }

  /// Gets an existing [WorkerVersion] resource's state with the given [name] and [id].
  static WorkerVersion get(
    String name,
    pulumi.Input<String> id, {
    WorkerVersionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WorkerVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WorkerVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workerVersion:WorkerVersion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    annotations = registerOutput<WorkerVersionAnnotations>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerVersionAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    assets = registerOutput<WorkerVersionAssets?>('assets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerVersionAssets.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bindings = registerOutput<List<WorkerVersionBinding>?>('bindings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerVersionBinding>(guardedValue, (value) => WorkerVersionBinding.fromMap((value as Map).cast<String, dynamic>())); });
    cacheOptions = registerOutput<WorkerVersionCacheOptions>('cacheOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerVersionCacheOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compatibilityDate = registerOutput<String?>('compatibilityDate');
    compatibilityFlags = registerOutput<List<String>>('compatibilityFlags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    containers = registerOutput<List<WorkerVersionContainer>?>('containers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerVersionContainer>(guardedValue, (value) => WorkerVersionContainer.fromMap((value as Map).cast<String, dynamic>())); });
    createdOn = registerOutput<String>('createdOn');
    exports = registerOutput<Map<String, WorkerVersionExports>?>('exports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<WorkerVersionExports>(guardedValue, (value) => WorkerVersionExports.fromMap((value as Map).cast<String, dynamic>())); });
    limits = registerOutput<WorkerVersionLimits>('limits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerVersionLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mainModule = registerOutput<String?>('mainModule');
    mainScriptBase64 = registerOutput<String>('mainScriptBase64');
    migrationTag = registerOutput<String>('migrationTag');
    migrations = registerOutput<WorkerVersionMigrations?>('migrations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerVersionMigrations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modules = registerOutput<List<WorkerVersionModule>?>('modules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerVersionModule>(guardedValue, (value) => WorkerVersionModule.fromMap((value as Map).cast<String, dynamic>())); });
    number = registerOutput<int>('number');
    packageDependencies = registerOutput<List<WorkerVersionPackageDependency>?>('packageDependencies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerVersionPackageDependency>(guardedValue, (value) => WorkerVersionPackageDependency.fromMap((value as Map).cast<String, dynamic>())); });
    placement = registerOutput<WorkerVersionPlacement?>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerVersionPlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    source = registerOutput<String>('source');
    startupTimeMs = registerOutput<int>('startupTimeMs');
    urls = registerOutput<List<String>>('urls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    usageModel = registerOutput<String>('usageModel');
    workerId = registerOutput<String>('workerId');
  }

  /// Creates a typed reference to an existing [WorkerVersion] resource.
  WorkerVersion.reference(String urn)
    : super(
        'cloudflare:index/workerVersion:WorkerVersion',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    annotations = registerOutput<WorkerVersionAnnotations>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerVersionAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    assets = registerOutput<WorkerVersionAssets?>('assets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerVersionAssets.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bindings = registerOutput<List<WorkerVersionBinding>?>('bindings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerVersionBinding>(guardedValue, (value) => WorkerVersionBinding.fromMap((value as Map).cast<String, dynamic>())); });
    cacheOptions = registerOutput<WorkerVersionCacheOptions>('cacheOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerVersionCacheOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compatibilityDate = registerOutput<String?>('compatibilityDate');
    compatibilityFlags = registerOutput<List<String>>('compatibilityFlags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    containers = registerOutput<List<WorkerVersionContainer>?>('containers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerVersionContainer>(guardedValue, (value) => WorkerVersionContainer.fromMap((value as Map).cast<String, dynamic>())); });
    createdOn = registerOutput<String>('createdOn');
    exports = registerOutput<Map<String, WorkerVersionExports>?>('exports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<WorkerVersionExports>(guardedValue, (value) => WorkerVersionExports.fromMap((value as Map).cast<String, dynamic>())); });
    limits = registerOutput<WorkerVersionLimits>('limits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerVersionLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mainModule = registerOutput<String?>('mainModule');
    mainScriptBase64 = registerOutput<String>('mainScriptBase64');
    migrationTag = registerOutput<String>('migrationTag');
    migrations = registerOutput<WorkerVersionMigrations?>('migrations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerVersionMigrations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modules = registerOutput<List<WorkerVersionModule>?>('modules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerVersionModule>(guardedValue, (value) => WorkerVersionModule.fromMap((value as Map).cast<String, dynamic>())); });
    number = registerOutput<int>('number');
    packageDependencies = registerOutput<List<WorkerVersionPackageDependency>?>('packageDependencies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerVersionPackageDependency>(guardedValue, (value) => WorkerVersionPackageDependency.fromMap((value as Map).cast<String, dynamic>())); });
    placement = registerOutput<WorkerVersionPlacement?>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerVersionPlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    source = registerOutput<String>('source');
    startupTimeMs = registerOutput<int>('startupTimeMs');
    urls = registerOutput<List<String>>('urls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    usageModel = registerOutput<String>('usageModel');
    workerId = registerOutput<String>('workerId');
  }
}
