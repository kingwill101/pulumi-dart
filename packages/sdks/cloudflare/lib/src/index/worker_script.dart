import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_script_annotations.dart';
import 'worker_script_args.dart';
import 'worker_script_assets.dart';
import 'worker_script_binding.dart';
import 'worker_script_cache_options.dart';
import 'worker_script_exports.dart';
import 'worker_script_files.dart';
import 'worker_script_limits.dart';
import 'worker_script_migrations.dart';
import 'worker_script_named_handler.dart';
import 'worker_script_observability.dart';
import 'worker_script_package_dependency.dart';
import 'worker_script_placement.dart';
import 'worker_script_state.dart';
import 'worker_script_tail_consumer.dart';

/// Accepted Permissions
///
/// - `Workers Scripts Read`
/// - `Workers Scripts Write`
/// - `Workers Tail Read`
///
/// &gt; For more direct control over Workers resources, we recommend the beta `cloudflare.Worker`, `cloudflare.WorkerVersion`, and `cloudflare.WorkersDeployment` resources. See how to use them in the [developer documentation](https://developers.cloudflare.com/workers/platform/infrastructure-as-code/).
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleWorkersScript = new cloudflare.WorkersScript("example_workers_script", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     scriptName: "this-is_my_script-01",
///     assets: {
///         config: {
///             headers: `        /dashboard/*
///         X-Frame-Options: DENY
///
///         /static/*
///         Access-Control-Allow-Origin: *
/// `,
///             redirects: `        /foo /bar 301
///         /news/* /blog/:splat
/// `,
///             htmlHandling: "auto-trailing-slash",
///             notFoundHandling: "404-page",
///             runWorkerFirst: [],
///             serveDirectly: true,
///         },
///         jwt: "jwt",
///     },
///     bindings: [{
///         name: "MY_ENV_VAR",
///         text: "my_data",
///         type: "plain_text",
///     }],
///     bodyPart: "worker.js",
///     cacheOptions: {
///         enabled: true,
///         crossVersionCache: true,
///     },
///     compatibilityDate: "2021-01-01T00:00:00Z",
///     compatibilityFlags: ["nodejs_compat"],
///     exports: {
///         Admin: {
///             type: "worker",
///             cache: {
///                 enabled: true,
///             },
///             renamedTo: "renamed_to",
///             state: "created",
///             storage: "sqlite",
///             transferFrom: "transfer_from",
///             transferredTo: "transferred_to",
///         },
///         "default": {
///             type: "worker",
///             cache: {
///                 enabled: false,
///             },
///             renamedTo: "renamed_to",
///             state: "created",
///             storage: "sqlite",
///             transferFrom: "transfer_from",
///             transferredTo: "transferred_to",
///         },
///     },
///     keepAssets: false,
///     keepBindings: ["string"],
///     limits: {
///         cpuMs: 50,
///         subrequests: 1000,
///     },
///     logpush: false,
///     mainModule: "worker.js",
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
///     observability: {
///         enabled: true,
///         headSamplingRate: 0.1,
///         logs: {
///             enabled: true,
///             invocationLogs: true,
///             destinations: ["cloudflare"],
///             headSamplingRate: 0.1,
///             persist: true,
///         },
///         redactQueryString: false,
///         traces: {
///             destinations: ["cloudflare"],
///             enabled: true,
///             headSamplingRate: 0.1,
///             persist: true,
///         },
///     },
///     packageDependencies: [{
///         installedVersion: "4.17.22",
///         name: "lodash",
///         packageJsonVersion: "^4.17.21",
///     }],
///     placement: {
///         mode: "smart",
///     },
///     tags: ["string"],
///     tailConsumers: [{
///         service: "my-log-consumer",
///         environment: "production",
///         namespace: "my-namespace",
///     }],
///     usageModel: "standard",
///     files: {
///         "module.wasm": {
///             contentBase64: "AGFzbQEAAAA=",
///             contentType: "application/wasm",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_workers_script = cloudflare.WorkersScript("example_workers_script",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     script_name="this-is_my_script-01",
///     assets={
///         "config": {
///             "headers": """        /dashboard/*
///         X-Frame-Options: DENY
///
///         /static/*
///         Access-Control-Allow-Origin: *
/// """,
///             "redirects": """        /foo /bar 301
///         /news/* /blog/:splat
/// """,
///             "html_handling": "auto-trailing-slash",
///             "not_found_handling": "404-page",
///             "run_worker_first": [],
///             "serve_directly": True,
///         },
///         "jwt": "jwt",
///     },
///     bindings=[{
///         "name": "MY_ENV_VAR",
///         "text": "my_data",
///         "type": "plain_text",
///     }],
///     body_part="worker.js",
///     cache_options={
///         "enabled": True,
///         "cross_version_cache": True,
///     },
///     compatibility_date="2021-01-01T00:00:00Z",
///     compatibility_flags=["nodejs_compat"],
///     exports={
///         "Admin": {
///             "type": "worker",
///             "cache": {
///                 "enabled": True,
///             },
///             "renamed_to": "renamed_to",
///             "state": "created",
///             "storage": "sqlite",
///             "transfer_from": "transfer_from",
///             "transferred_to": "transferred_to",
///         },
///         "default": {
///             "type": "worker",
///             "cache": {
///                 "enabled": False,
///             },
///             "renamed_to": "renamed_to",
///             "state": "created",
///             "storage": "sqlite",
///             "transfer_from": "transfer_from",
///             "transferred_to": "transferred_to",
///         },
///     },
///     keep_assets=False,
///     keep_bindings=["string"],
///     limits={
///         "cpu_ms": 50,
///         "subrequests": 1000,
///     },
///     logpush=False,
///     main_module="worker.js",
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
///     observability={
///         "enabled": True,
///         "head_sampling_rate": 0.1,
///         "logs": {
///             "enabled": True,
///             "invocation_logs": True,
///             "destinations": ["cloudflare"],
///             "head_sampling_rate": 0.1,
///             "persist": True,
///         },
///         "redact_query_string": False,
///         "traces": {
///             "destinations": ["cloudflare"],
///             "enabled": True,
///             "head_sampling_rate": 0.1,
///             "persist": True,
///         },
///     },
///     package_dependencies=[{
///         "installed_version": "4.17.22",
///         "name": "lodash",
///         "package_json_version": "^4.17.21",
///     }],
///     placement={
///         "mode": "smart",
///     },
///     tags=["string"],
///     tail_consumers=[{
///         "service": "my-log-consumer",
///         "environment": "production",
///         "namespace": "my-namespace",
///     }],
///     usage_model="standard",
///     files={
///         "module.wasm": {
///             "content_base64": "AGFzbQEAAAA=",
///             "content_type": "application/wasm",
///         },
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
///     var exampleWorkersScript = new Cloudflare.WorkersScript("example_workers_script", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         ScriptName = "this-is_my_script-01",
///         Assets = new Cloudflare.Inputs.WorkersScriptAssetsArgs
///         {
///             Config = new Cloudflare.Inputs.WorkersScriptAssetsConfigArgs
///             {
///                 Headers = @"        /dashboard/*
///         X-Frame-Options: DENY
///
///         /static/*
///         Access-Control-Allow-Origin: *
/// ",
///                 Redirects = @"        /foo /bar 301
///         /news/* /blog/:splat
/// ",
///                 HtmlHandling = "auto-trailing-slash",
///                 NotFoundHandling = "404-page",
///                 RunWorkerFirst = new() { },
///                 ServeDirectly = true,
///             },
///             Jwt = "jwt",
///         },
///         Bindings = new[]
///         {
///             new Cloudflare.Inputs.WorkersScriptBindingArgs
///             {
///                 Name = "MY_ENV_VAR",
///                 Text = "my_data",
///                 Type = "plain_text",
///             },
///         },
///         BodyPart = "worker.js",
///         CacheOptions = new Cloudflare.Inputs.WorkersScriptCacheOptionsArgs
///         {
///             Enabled = true,
///             CrossVersionCache = true,
///         },
///         CompatibilityDate = "2021-01-01T00:00:00Z",
///         CompatibilityFlags = new[]
///         {
///             "nodejs_compat",
///         },
///         Exports =
///         {
///             { "Admin", new Cloudflare.Inputs.WorkersScriptExportsArgs
///             {
///                 Type = "worker",
///                 Cache = new Cloudflare.Inputs.WorkersScriptExportsCacheArgs
///                 {
///                     Enabled = true,
///                 },
///                 RenamedTo = "renamed_to",
///                 State = "created",
///                 Storage = "sqlite",
///                 TransferFrom = "transfer_from",
///                 TransferredTo = "transferred_to",
///             } },
///             { "default", new Cloudflare.Inputs.WorkersScriptExportsArgs
///             {
///                 Type = "worker",
///                 Cache = new Cloudflare.Inputs.WorkersScriptExportsCacheArgs
///                 {
///                     Enabled = false,
///                 },
///                 RenamedTo = "renamed_to",
///                 State = "created",
///                 Storage = "sqlite",
///                 TransferFrom = "transfer_from",
///                 TransferredTo = "transferred_to",
///             } },
///         },
///         KeepAssets = false,
///         KeepBindings = new[]
///         {
///             "string",
///         },
///         Limits = new Cloudflare.Inputs.WorkersScriptLimitsArgs
///         {
///             CpuMs = 50,
///             Subrequests = 1000,
///         },
///         Logpush = false,
///         MainModule = "worker.js",
///         Migrations = new Cloudflare.Inputs.WorkersScriptMigrationsArgs
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
///                 new Cloudflare.Inputs.WorkersScriptMigrationsRenamedClassArgs
///                 {
///                     From = "from",
///                     To = "to",
///                 },
///             },
///             TransferredClasses = new[]
///             {
///                 new Cloudflare.Inputs.WorkersScriptMigrationsTransferredClassArgs
///                 {
///                     From = "from",
///                     FromScript = "from_script",
///                     To = "to",
///                 },
///             },
///         },
///         Observability = new Cloudflare.Inputs.WorkersScriptObservabilityArgs
///         {
///             Enabled = true,
///             HeadSamplingRate = 0.1,
///             Logs = new Cloudflare.Inputs.WorkersScriptObservabilityLogsArgs
///             {
///                 Enabled = true,
///                 InvocationLogs = true,
///                 Destinations = new[]
///                 {
///                     "cloudflare",
///                 },
///                 HeadSamplingRate = 0.1,
///                 Persist = true,
///             },
///             RedactQueryString = false,
///             Traces = new Cloudflare.Inputs.WorkersScriptObservabilityTracesArgs
///             {
///                 Destinations = new[]
///                 {
///                     "cloudflare",
///                 },
///                 Enabled = true,
///                 HeadSamplingRate = 0.1,
///                 Persist = true,
///             },
///         },
///         PackageDependencies = new[]
///         {
///             new Cloudflare.Inputs.WorkersScriptPackageDependencyArgs
///             {
///                 InstalledVersion = "4.17.22",
///                 Name = "lodash",
///                 PackageJsonVersion = "^4.17.21",
///             },
///         },
///         Placement = new Cloudflare.Inputs.WorkersScriptPlacementArgs
///         {
///             Mode = "smart",
///         },
///         Tags = new[]
///         {
///             "string",
///         },
///         TailConsumers = new[]
///         {
///             new Cloudflare.Inputs.WorkersScriptTailConsumerArgs
///             {
///                 Service = "my-log-consumer",
///                 Environment = "production",
///                 Namespace = "my-namespace",
///             },
///         },
///         UsageModel = "standard",
///         Files =
///         {
///             { "module.wasm", new Cloudflare.Inputs.WorkersScriptFilesArgs
///             {
///                 ContentBase64 = "AGFzbQEAAAA=",
///                 ContentType = "application/wasm",
///             } },
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
/// 		_, err := cloudflare.NewWorkersScript(ctx, "example_workers_script", &cloudflare.WorkersScriptArgs{
/// 			AccountId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			ScriptName: pulumi.String("this-is_my_script-01"),
/// 			Assets: &cloudflare.WorkersScriptAssetsArgs{
/// 				Config: &cloudflare.WorkersScriptAssetsConfigArgs{
/// 					Headers: pulumi.String(`        /dashboard/*
///         X-Frame-Options: DENY
///
///         /static/*
///         Access-Control-Allow-Origin: *
/// `),
/// 					Redirects:        pulumi.String("        /foo /bar 301\n        /news/* /blog/:splat\n"),
/// 					HtmlHandling:     pulumi.String("auto-trailing-slash"),
/// 					NotFoundHandling: pulumi.String("404-page"),
/// 					RunWorkerFirst:   pulumi.Any{},
/// 					ServeDirectly:    pulumi.Bool(true),
/// 				},
/// 				Jwt: pulumi.String("jwt"),
/// 			},
/// 			Bindings: cloudflare.WorkersScriptBindingArray{
/// 				&cloudflare.WorkersScriptBindingArgs{
/// 					Name: pulumi.String("MY_ENV_VAR"),
/// 					Text: pulumi.String("my_data"),
/// 					Type: pulumi.String("plain_text"),
/// 				},
/// 			},
/// 			BodyPart: pulumi.String("worker.js"),
/// 			CacheOptions: &cloudflare.WorkersScriptCacheOptionsArgs{
/// 				Enabled:           pulumi.Bool(true),
/// 				CrossVersionCache: pulumi.Bool(true),
/// 			},
/// 			CompatibilityDate: pulumi.String("2021-01-01T00:00:00Z"),
/// 			CompatibilityFlags: pulumi.StringArray{
/// 				pulumi.String("nodejs_compat"),
/// 			},
/// 			Exports: cloudflare.WorkersScriptExportsMap{
/// 				"Admin": &cloudflare.WorkersScriptExportsArgs{
/// 					Type: pulumi.String("worker"),
/// 					Cache: &cloudflare.WorkersScriptExportsCacheArgs{
/// 						Enabled: pulumi.Bool(true),
/// 					},
/// 					RenamedTo:     "renamed_to",
/// 					State:         "created",
/// 					Storage:       "sqlite",
/// 					TransferFrom:  "transfer_from",
/// 					TransferredTo: "transferred_to",
/// 				},
/// 				"default": &cloudflare.WorkersScriptExportsArgs{
/// 					Type: pulumi.String("worker"),
/// 					Cache: &cloudflare.WorkersScriptExportsCacheArgs{
/// 						Enabled: pulumi.Bool(false),
/// 					},
/// 					RenamedTo:     "renamed_to",
/// 					State:         "created",
/// 					Storage:       "sqlite",
/// 					TransferFrom:  "transfer_from",
/// 					TransferredTo: "transferred_to",
/// 				},
/// 			},
/// 			KeepAssets: pulumi.Bool(false),
/// 			KeepBindings: pulumi.StringArray{
/// 				pulumi.String("string"),
/// 			},
/// 			Limits: &cloudflare.WorkersScriptLimitsArgs{
/// 				CpuMs:       pulumi.Int(50),
/// 				Subrequests: pulumi.Int(1000),
/// 			},
/// 			Logpush:    pulumi.Bool(false),
/// 			MainModule: pulumi.String("worker.js"),
/// 			Migrations: &cloudflare.WorkersScriptMigrationsArgs{
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
/// 				RenamedClasses: cloudflare.WorkersScriptMigrationsRenamedClassArray{
/// 					&cloudflare.WorkersScriptMigrationsRenamedClassArgs{
/// 						From: pulumi.String("from"),
/// 						To:   pulumi.String("to"),
/// 					},
/// 				},
/// 				TransferredClasses: cloudflare.WorkersScriptMigrationsTransferredClassArray{
/// 					&cloudflare.WorkersScriptMigrationsTransferredClassArgs{
/// 						From:       pulumi.String("from"),
/// 						FromScript: pulumi.String("from_script"),
/// 						To:         pulumi.String("to"),
/// 					},
/// 				},
/// 			},
/// 			Observability: &cloudflare.WorkersScriptObservabilityArgs{
/// 				Enabled:          pulumi.Bool(true),
/// 				HeadSamplingRate: pulumi.Float64(0.1),
/// 				Logs: &cloudflare.WorkersScriptObservabilityLogsArgs{
/// 					Enabled:        pulumi.Bool(true),
/// 					InvocationLogs: pulumi.Bool(true),
/// 					Destinations: pulumi.StringArray{
/// 						pulumi.String("cloudflare"),
/// 					},
/// 					HeadSamplingRate: pulumi.Float64(0.1),
/// 					Persist:          pulumi.Bool(true),
/// 				},
/// 				RedactQueryString: false,
/// 				Traces: &cloudflare.WorkersScriptObservabilityTracesArgs{
/// 					Destinations: pulumi.StringArray{
/// 						pulumi.String("cloudflare"),
/// 					},
/// 					Enabled:          pulumi.Bool(true),
/// 					HeadSamplingRate: pulumi.Float64(0.1),
/// 					Persist:          pulumi.Bool(true),
/// 				},
/// 			},
/// 			PackageDependencies: cloudflare.WorkersScriptPackageDependencyArray{
/// 				&cloudflare.WorkersScriptPackageDependencyArgs{
/// 					InstalledVersion:   pulumi.String("4.17.22"),
/// 					Name:               pulumi.String("lodash"),
/// 					PackageJsonVersion: pulumi.String("^4.17.21"),
/// 				},
/// 			},
/// 			Placement: &cloudflare.WorkersScriptPlacementArgs{
/// 				Mode: pulumi.String("smart"),
/// 			},
/// 			Tags: []string{
/// 				"string",
/// 			},
/// 			TailConsumers: cloudflare.WorkersScriptTailConsumerArray{
/// 				&cloudflare.WorkersScriptTailConsumerArgs{
/// 					Service:     pulumi.String("my-log-consumer"),
/// 					Environment: pulumi.String("production"),
/// 					Namespace:   pulumi.String("my-namespace"),
/// 				},
/// 			},
/// 			UsageModel: pulumi.String("standard"),
/// 			Files: cloudflare.WorkersScriptFilesMap{
/// 				"module.wasm": &cloudflare.WorkersScriptFilesArgs{
/// 					ContentBase64: pulumi.String("AGFzbQEAAAA="),
/// 					ContentType:   pulumi.String("application/wasm"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_workersscript" "example_workers_script" {
///   account_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   script_name = "this-is_my_script-01"
///   assets = {
///     config = {
///       headers            = "        /dashboard/*\n        X-Frame-Options: DENY\n\n        /static/*\n        Access-Control-Allow-Origin: *\n"
///       redirects          = "        /foo /bar 301\n        /news/* /blog/:splat\n"
///       html_handling      = "auto-trailing-slash"
///       not_found_handling = "404-page"
///       run_worker_first   = []
///       serve_directly     = true
///     }
///     jwt = "jwt"
///   }
///   bindings {
///     name = "MY_ENV_VAR"
///     text = "my_data"
///     type = "plain_text"
///   }
///   body_part = "worker.js"
///   cache_options = {
///     enabled             = true
///     cross_version_cache = true
///   }
///   compatibility_date  = "2021-01-01T00:00:00Z"
///   compatibility_flags = ["nodejs_compat"]
///   exports = {
///     "Admin" = {
///       type = "worker"
///       cache = {
///         enabled = true
///       }
///       renamed_to     = "renamed_to"
///       state          = "created"
///       storage        = "sqlite"
///       transfer_from  = "transfer_from"
///       transferred_to = "transferred_to"
///     }
///     "default" = {
///       type = "worker"
///       cache = {
///         enabled = false
///       }
///       renamed_to     = "renamed_to"
///       state          = "created"
///       storage        = "sqlite"
///       transfer_from  = "transfer_from"
///       transferred_to = "transferred_to"
///     }
///   }
///   keep_assets   = false
///   keep_bindings = ["string"]
///   limits = {
///     cpu_ms      = 50
///     subrequests = 1000
///   }
///   logpush     = false
///   main_module = "worker.js"
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
///   observability = {
///     enabled            = true
///     head_sampling_rate = 0.1
///     logs = {
///       enabled            = true
///       invocation_logs    = true
///       destinations       = ["cloudflare"]
///       head_sampling_rate = 0.1
///       persist            = true
///     }
///     redact_query_string = false
///     traces = {
///       destinations       = ["cloudflare"]
///       enabled            = true
///       head_sampling_rate = 0.1
///       persist            = true
///     }
///   }
///   package_dependencies {
///     installed_version    = "4.17.22"
///     name                 = "lodash"
///     package_json_version = "^4.17.21"
///   }
///   placement = {
///     mode = "smart"
///   }
///   tags = ["string"]
///   tail_consumers {
///     service     = "my-log-consumer"
///     environment = "production"
///     namespace   = "my-namespace"
///   }
///   usage_model = "standard"
///   files = {
///     "module.wasm" = {
///       content_base64 = "AGFzbQEAAAA="
///       content_type   = "application/wasm"
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
/// import com.pulumi.cloudflare.WorkersScript;
/// import com.pulumi.cloudflare.WorkersScriptArgs;
/// import com.pulumi.cloudflare.inputs.WorkersScriptAssetsArgs;
/// import com.pulumi.cloudflare.inputs.WorkersScriptAssetsConfigArgs;
/// import com.pulumi.cloudflare.inputs.WorkersScriptBindingArgs;
/// import com.pulumi.cloudflare.inputs.WorkersScriptCacheOptionsArgs;
/// import com.pulumi.cloudflare.inputs.WorkersScriptExportsArgs;
/// import com.pulumi.cloudflare.inputs.WorkersScriptExportsCacheArgs;
/// import com.pulumi.cloudflare.inputs.WorkersScriptLimitsArgs;
/// import com.pulumi.cloudflare.inputs.WorkersScriptMigrationsArgs;
/// import com.pulumi.cloudflare.inputs.WorkersScriptMigrationsRenamedClassArgs;
/// import com.pulumi.cloudflare.inputs.WorkersScriptMigrationsTransferredClassArgs;
/// import com.pulumi.cloudflare.inputs.WorkersScriptObservabilityArgs;
/// import com.pulumi.cloudflare.inputs.WorkersScriptObservabilityLogsArgs;
/// import com.pulumi.cloudflare.inputs.WorkersScriptObservabilityTracesArgs;
/// import com.pulumi.cloudflare.inputs.WorkersScriptPackageDependencyArgs;
/// import com.pulumi.cloudflare.inputs.WorkersScriptPlacementArgs;
/// import com.pulumi.cloudflare.inputs.WorkersScriptTailConsumerArgs;
/// import com.pulumi.cloudflare.inputs.WorkersScriptFilesArgs;
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
///         var exampleWorkersScript = new WorkersScript("exampleWorkersScript", WorkersScriptArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .scriptName("this-is_my_script-01")
///             .assets(WorkersScriptAssetsArgs.builder()
///                 .config(WorkersScriptAssetsConfigArgs.builder()
///                     .headers("""
///         /dashboard/*
///         X-Frame-Options: DENY
///
///         /static/*
///         Access-Control-Allow-Origin: *
///                     """)
///                     .redirects("""
///         /foo /bar 301
///         /news/* /blog/:splat
///                     """)
///                     .htmlHandling("auto-trailing-slash")
///                     .notFoundHandling("404-page")
///                     .runWorkerFirst()
///                     .serveDirectly(true)
///                     .build())
///                 .jwt("jwt")
///                 .build())
///             .bindings(WorkersScriptBindingArgs.builder()
///                 .name("MY_ENV_VAR")
///                 .text("my_data")
///                 .type("plain_text")
///                 .build())
///             .bodyPart("worker.js")
///             .cacheOptions(WorkersScriptCacheOptionsArgs.builder()
///                 .enabled(true)
///                 .crossVersionCache(true)
///                 .build())
///             .compatibilityDate("2021-01-01T00:00:00Z")
///             .compatibilityFlags("nodejs_compat")
///             .exports(Map.ofEntries(
///                 Map.entry("Admin", WorkersScriptExportsArgs.builder()
///                     .type("worker")
///                     .cache(WorkersScriptExportsCacheArgs.builder()
///                         .enabled(true)
///                         .build())
///                     .renamedTo("renamed_to")
///                     .state("created")
///                     .storage("sqlite")
///                     .transferFrom("transfer_from")
///                     .transferredTo("transferred_to")
///                     .build()),
///                 Map.entry("default", WorkersScriptExportsArgs.builder()
///                     .type("worker")
///                     .cache(WorkersScriptExportsCacheArgs.builder()
///                         .enabled(false)
///                         .build())
///                     .renamedTo("renamed_to")
///                     .state("created")
///                     .storage("sqlite")
///                     .transferFrom("transfer_from")
///                     .transferredTo("transferred_to")
///                     .build())
///             ))
///             .keepAssets(false)
///             .keepBindings("string")
///             .limits(WorkersScriptLimitsArgs.builder()
///                 .cpuMs(50)
///                 .subrequests(1000)
///                 .build())
///             .logpush(false)
///             .mainModule("worker.js")
///             .migrations(WorkersScriptMigrationsArgs.builder()
///                 .deletedClasses("string")
///                 .newClasses("string")
///                 .newSqliteClasses("string")
///                 .newTag("v2")
///                 .oldTag("v1")
///                 .renamedClasses(WorkersScriptMigrationsRenamedClassArgs.builder()
///                     .from("from")
///                     .to("to")
///                     .build())
///                 .transferredClasses(WorkersScriptMigrationsTransferredClassArgs.builder()
///                     .from("from")
///                     .fromScript("from_script")
///                     .to("to")
///                     .build())
///                 .build())
///             .observability(WorkersScriptObservabilityArgs.builder()
///                 .enabled(true)
///                 .headSamplingRate(0.1)
///                 .logs(WorkersScriptObservabilityLogsArgs.builder()
///                     .enabled(true)
///                     .invocationLogs(true)
///                     .destinations("cloudflare")
///                     .headSamplingRate(0.1)
///                     .persist(true)
///                     .build())
///                 .redactQueryString(false)
///                 .traces(WorkersScriptObservabilityTracesArgs.builder()
///                     .destinations("cloudflare")
///                     .enabled(true)
///                     .headSamplingRate(0.1)
///                     .persist(true)
///                     .build())
///                 .build())
///             .packageDependencies(WorkersScriptPackageDependencyArgs.builder()
///                 .installedVersion("4.17.22")
///                 .name("lodash")
///                 .packageJsonVersion("^4.17.21")
///                 .build())
///             .placement(WorkersScriptPlacementArgs.builder()
///                 .mode("smart")
///                 .build())
///             .tags(Arrays.asList("string"))
///             .tailConsumers(WorkersScriptTailConsumerArgs.builder()
///                 .service("my-log-consumer")
///                 .environment("production")
///                 .namespace("my-namespace")
///                 .build())
///             .usageModel("standard")
///             .files(Map.of("module.wasm", WorkersScriptFilesArgs.builder()
///                 .contentBase64("AGFzbQEAAAA=")
///                 .contentType("application/wasm")
///                 .build()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWorkersScript:
///     type: cloudflare:WorkersScript
///     name: example_workers_script
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       scriptName: this-is_my_script-01
///       assets:
///         config:
///           headers: |2
///                     /dashboard/*
///                     X-Frame-Options: DENY
///
///                     /static/*
///                     Access-Control-Allow-Origin: *
///           redirects: |2
///                     /foo /bar 301
///                     /news/* /blog/:splat
///           htmlHandling: auto-trailing-slash
///           notFoundHandling: 404-page
///           runWorkerFirst: []
///           serveDirectly: true
///         jwt: jwt
///       bindings:
///         - name: MY_ENV_VAR
///           text: my_data
///           type: plain_text
///       bodyPart: worker.js
///       cacheOptions:
///         enabled: true
///         crossVersionCache: true
///       compatibilityDate: 2021-01-01T00:00:00Z
///       compatibilityFlags:
///         - nodejs_compat
///       exports:
///         Admin:
///           type: worker
///           cache:
///             enabled: true
///           renamedTo: renamed_to
///           state: created
///           storage: sqlite
///           transferFrom: transfer_from
///           transferredTo: transferred_to
///         default:
///           type: worker
///           cache:
///             enabled: false
///           renamedTo: renamed_to
///           state: created
///           storage: sqlite
///           transferFrom: transfer_from
///           transferredTo: transferred_to
///       keepAssets: false
///       keepBindings:
///         - string
///       limits:
///         cpuMs: 50
///         subrequests: 1000
///       logpush: false
///       mainModule: worker.js
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
///       observability:
///         enabled: true
///         headSamplingRate: 0.1
///         logs:
///           enabled: true
///           invocationLogs: true
///           destinations:
///             - cloudflare
///           headSamplingRate: 0.1
///           persist: true
///         redactQueryString: false
///         traces:
///           destinations:
///             - cloudflare
///           enabled: true
///           headSamplingRate: 0.1
///           persist: true
///       packageDependencies:
///         - installedVersion: 4.17.22
///           name: lodash
///           packageJsonVersion: ^4.17.21
///       placement:
///         mode: smart
///       tags:
///         - string
///       tailConsumers:
///         - service: my-log-consumer
///           environment: production
///           namespace: my-namespace
///       usageModel: standard
///       files:
///         module.wasm:
///           contentBase64: AGFzbQEAAAA=
///           contentType: application/wasm
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/workerScript:WorkerScript example '<account_id>/<script_name>'
/// ```
class WorkerScript extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// Annotations for the version created by this upload.
  late final pulumi.Output<WorkerScriptAnnotations> annotations;
  /// Configuration for assets within a Worker.
  late final pulumi.Output<WorkerScriptAssets?> assets;
  /// List of bindings attached to a Worker. You can find more about bindings on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/#bindings.
  late final pulumi.Output<List<WorkerScriptBinding>> bindings;
  /// Name of the uploaded file that contains the script (e.g. the file adding a listener to the `fetch` event). Indicates a `service worker syntax` Worker.
  late final pulumi.Output<String> bodyPart;
  /// Global CacheW configuration for the Worker. When caching is on,
  /// the platform provisions a `cloudflare.app` zone for the Worker.
  /// A `type: worker` entry in the `exports` map can override this
  /// value for a single entrypoint.
  late final pulumi.Output<WorkerScriptCacheOptions?> cacheOptions;
  /// Date indicating targeted support in the Workers runtime. Backwards incompatible fixes to the runtime following this date will not affect this Worker.
  late final pulumi.Output<String> compatibilityDate;
  /// Flags that enable or disable certain features in the Workers runtime. Used to enable upcoming features or opt in or out of specific changes not included in a `compatibilityDate`.
  late final pulumi.Output<List<String>> compatibilityFlags;
  /// Module or Service Worker contents of the Worker. Conflicts with `contentFile`.
  late final pulumi.Output<String?> content;
  /// Path to a file containing the Module or Service Worker contents of the Worker. Conflicts with `content`. Must be paired with `contentSha256`.
  late final pulumi.Output<String?> contentFile;
  /// SHA-256 hash of the Worker contents. Used to trigger updates when source code changes. Must be provided when `contentFile` is specified.
  late final pulumi.Output<String?> contentSha256;
  /// Content-Type of the Worker. Required if uploading a non-JavaScript Worker (e.g. "text/x-python").
  late final pulumi.Output<String?> contentType;
  /// When the script was created.
  late final pulumi.Output<String> createdOn;
  /// Hashed script content, can be used in a If-None-Match header when updating.
  late final pulumi.Output<String> etag;
  /// Per-entrypoint export configuration. Keys are the export names; values describe the entrypoint's kind and per-entrypoint cache behavior.
  late final pulumi.Output<Map<String, WorkerScriptExports>?> exports;
  /// Additional modules and data files to include in the multipart Worker upload. Map keys are multipart part names referenced by binding `part` values and module imports.
  late final pulumi.Output<Map<String, WorkerScriptFiles>?> files;
  /// The names of handlers exported as part of the default export.
  late final pulumi.Output<List<String>> handlers;
  /// Whether a Worker contains assets.
  late final pulumi.Output<bool> hasAssets;
  /// Whether a Worker contains modules.
  late final pulumi.Output<bool> hasModules;
  /// Retain assets which exist for a previously uploaded Worker version; used in lieu of providing a completion token. An explicit `assets` upload takes precedence over `keepAssets`.
  late final pulumi.Output<bool?> keepAssets;
  /// List of binding types to keep from previous_upload.
  late final pulumi.Output<List<String>?> keepBindings;
  /// The client most recently used to deploy this Worker.
  late final pulumi.Output<String> lastDeployedFrom;
  /// Limits to apply for this Worker.
  late final pulumi.Output<WorkerScriptLimits?> limits;
  /// Whether Logpush is turned on for the Worker.
  late final pulumi.Output<bool> logpush;
  /// Name of the uploaded file that contains the main module (e.g. the file exporting a `fetch` handler). Indicates a `module syntax` Worker.
  late final pulumi.Output<String?> mainModule;
  /// The tag of the Durable Object migration that was most recently applied for this Worker.
  late final pulumi.Output<String> migrationTag;
  /// Migrations to apply for Durable Objects associated with this Worker.
  late final pulumi.Output<WorkerScriptMigrations?> migrations;
  /// When the script was last modified.
  late final pulumi.Output<String> modifiedOn;
  /// Named exports, such as Durable Object class implementations and named entrypoints.
  late final pulumi.Output<List<WorkerScriptNamedHandler>> namedHandlers;
  /// Observability settings for the Worker.
  late final pulumi.Output<WorkerScriptObservability?> observability;
  /// The list of npm packages that were installed and used when this Worker was built.
  late final pulumi.Output<List<WorkerScriptPackageDependency>?> packageDependencies;
  /// Configuration for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement). Specify mode='smart' for Smart Placement, or one of region/hostname/host.
  late final pulumi.Output<WorkerScriptPlacement> placement;
  /// Available values: "smart", "targeted".
  late final pulumi.Output<String> placementMode;
  /// Available values: "SUCCESS", "UNSUPPORTED*APPLICATION", "INSUFFICIENT*INVOCATIONS".
  late final pulumi.Output<String> placementStatus;
  /// Name of the script, used in URLs and route configuration.
  late final pulumi.Output<String> scriptName;
  late final pulumi.Output<int> startupTimeMs;
  /// List of Workers that will consume logs from the attached Worker.
  late final pulumi.Output<List<WorkerScriptTailConsumer>> tailConsumers;
  /// Usage model for the Worker invocations.
  /// Available values: "standard", "bundled", "unbound".
  late final pulumi.Output<String> usageModel;

  /// Creates a new [WorkerScript].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkerScript]. {@macro pulumi_index_worker_script_worker_script_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkerScript(
    String name, {
    WorkerScriptArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workerScript:WorkerScript',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.21.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    annotations = registerOutput<WorkerScriptAnnotations>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    assets = registerOutput<WorkerScriptAssets?>('assets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptAssets.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bindings = registerOutput<List<WorkerScriptBinding>>('bindings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerScriptBinding>(guardedValue, (value) => WorkerScriptBinding.fromMap((value as Map).cast<String, dynamic>())); });
    bodyPart = registerOutput<String>('bodyPart');
    cacheOptions = registerOutput<WorkerScriptCacheOptions?>('cacheOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptCacheOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compatibilityDate = registerOutput<String>('compatibilityDate');
    compatibilityFlags = registerOutput<List<String>>('compatibilityFlags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    content = registerOutput<String?>('content');
    contentFile = registerOutput<String?>('contentFile');
    contentSha256 = registerOutput<String?>('contentSha256');
    contentType = registerOutput<String?>('contentType');
    createdOn = registerOutput<String>('createdOn');
    etag = registerOutput<String>('etag');
    exports = registerOutput<Map<String, WorkerScriptExports>?>('exports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<WorkerScriptExports>(guardedValue, (value) => WorkerScriptExports.fromMap((value as Map).cast<String, dynamic>())); });
    files = registerOutput<Map<String, WorkerScriptFiles>?>('files', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<WorkerScriptFiles>(guardedValue, (value) => WorkerScriptFiles.fromMap((value as Map).cast<String, dynamic>())); });
    handlers = registerOutput<List<String>>('handlers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    hasAssets = registerOutput<bool>('hasAssets');
    hasModules = registerOutput<bool>('hasModules');
    keepAssets = registerOutput<bool?>('keepAssets');
    keepBindings = registerOutput<List<String>?>('keepBindings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastDeployedFrom = registerOutput<String>('lastDeployedFrom');
    limits = registerOutput<WorkerScriptLimits?>('limits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logpush = registerOutput<bool>('logpush');
    mainModule = registerOutput<String?>('mainModule');
    migrationTag = registerOutput<String>('migrationTag');
    migrations = registerOutput<WorkerScriptMigrations?>('migrations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptMigrations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    namedHandlers = registerOutput<List<WorkerScriptNamedHandler>>('namedHandlers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerScriptNamedHandler>(guardedValue, (value) => WorkerScriptNamedHandler.fromMap((value as Map).cast<String, dynamic>())); });
    observability = registerOutput<WorkerScriptObservability?>('observability', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptObservability.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    packageDependencies = registerOutput<List<WorkerScriptPackageDependency>?>('packageDependencies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerScriptPackageDependency>(guardedValue, (value) => WorkerScriptPackageDependency.fromMap((value as Map).cast<String, dynamic>())); });
    placement = registerOutput<WorkerScriptPlacement>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptPlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    placementMode = registerOutput<String>('placementMode');
    placementStatus = registerOutput<String>('placementStatus');
    scriptName = registerOutput<String>('scriptName');
    startupTimeMs = registerOutput<int>('startupTimeMs');
    tailConsumers = registerOutput<List<WorkerScriptTailConsumer>>('tailConsumers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerScriptTailConsumer>(guardedValue, (value) => WorkerScriptTailConsumer.fromMap((value as Map).cast<String, dynamic>())); });
    usageModel = registerOutput<String>('usageModel');
  }

  /// Gets an existing [WorkerScript] resource's state with the given [name] and [id].
  static WorkerScript get(
    String name,
    pulumi.Input<String> id, {
    WorkerScriptState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WorkerScript._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WorkerScript._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workerScript:WorkerScript',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    annotations = registerOutput<WorkerScriptAnnotations>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    assets = registerOutput<WorkerScriptAssets?>('assets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptAssets.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bindings = registerOutput<List<WorkerScriptBinding>>('bindings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerScriptBinding>(guardedValue, (value) => WorkerScriptBinding.fromMap((value as Map).cast<String, dynamic>())); });
    bodyPart = registerOutput<String>('bodyPart');
    cacheOptions = registerOutput<WorkerScriptCacheOptions?>('cacheOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptCacheOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compatibilityDate = registerOutput<String>('compatibilityDate');
    compatibilityFlags = registerOutput<List<String>>('compatibilityFlags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    content = registerOutput<String?>('content');
    contentFile = registerOutput<String?>('contentFile');
    contentSha256 = registerOutput<String?>('contentSha256');
    contentType = registerOutput<String?>('contentType');
    createdOn = registerOutput<String>('createdOn');
    etag = registerOutput<String>('etag');
    exports = registerOutput<Map<String, WorkerScriptExports>?>('exports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<WorkerScriptExports>(guardedValue, (value) => WorkerScriptExports.fromMap((value as Map).cast<String, dynamic>())); });
    files = registerOutput<Map<String, WorkerScriptFiles>?>('files', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<WorkerScriptFiles>(guardedValue, (value) => WorkerScriptFiles.fromMap((value as Map).cast<String, dynamic>())); });
    handlers = registerOutput<List<String>>('handlers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    hasAssets = registerOutput<bool>('hasAssets');
    hasModules = registerOutput<bool>('hasModules');
    keepAssets = registerOutput<bool?>('keepAssets');
    keepBindings = registerOutput<List<String>?>('keepBindings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastDeployedFrom = registerOutput<String>('lastDeployedFrom');
    limits = registerOutput<WorkerScriptLimits?>('limits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logpush = registerOutput<bool>('logpush');
    mainModule = registerOutput<String?>('mainModule');
    migrationTag = registerOutput<String>('migrationTag');
    migrations = registerOutput<WorkerScriptMigrations?>('migrations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptMigrations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    namedHandlers = registerOutput<List<WorkerScriptNamedHandler>>('namedHandlers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerScriptNamedHandler>(guardedValue, (value) => WorkerScriptNamedHandler.fromMap((value as Map).cast<String, dynamic>())); });
    observability = registerOutput<WorkerScriptObservability?>('observability', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptObservability.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    packageDependencies = registerOutput<List<WorkerScriptPackageDependency>?>('packageDependencies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerScriptPackageDependency>(guardedValue, (value) => WorkerScriptPackageDependency.fromMap((value as Map).cast<String, dynamic>())); });
    placement = registerOutput<WorkerScriptPlacement>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptPlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    placementMode = registerOutput<String>('placementMode');
    placementStatus = registerOutput<String>('placementStatus');
    scriptName = registerOutput<String>('scriptName');
    startupTimeMs = registerOutput<int>('startupTimeMs');
    tailConsumers = registerOutput<List<WorkerScriptTailConsumer>>('tailConsumers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerScriptTailConsumer>(guardedValue, (value) => WorkerScriptTailConsumer.fromMap((value as Map).cast<String, dynamic>())); });
    usageModel = registerOutput<String>('usageModel');
  }

  /// Creates a typed reference to an existing [WorkerScript] resource.
  WorkerScript.reference(String urn)
    : super(
        'cloudflare:index/workerScript:WorkerScript',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    annotations = registerOutput<WorkerScriptAnnotations>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    assets = registerOutput<WorkerScriptAssets?>('assets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptAssets.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bindings = registerOutput<List<WorkerScriptBinding>>('bindings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerScriptBinding>(guardedValue, (value) => WorkerScriptBinding.fromMap((value as Map).cast<String, dynamic>())); });
    bodyPart = registerOutput<String>('bodyPart');
    cacheOptions = registerOutput<WorkerScriptCacheOptions?>('cacheOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptCacheOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compatibilityDate = registerOutput<String>('compatibilityDate');
    compatibilityFlags = registerOutput<List<String>>('compatibilityFlags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    content = registerOutput<String?>('content');
    contentFile = registerOutput<String?>('contentFile');
    contentSha256 = registerOutput<String?>('contentSha256');
    contentType = registerOutput<String?>('contentType');
    createdOn = registerOutput<String>('createdOn');
    etag = registerOutput<String>('etag');
    exports = registerOutput<Map<String, WorkerScriptExports>?>('exports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<WorkerScriptExports>(guardedValue, (value) => WorkerScriptExports.fromMap((value as Map).cast<String, dynamic>())); });
    files = registerOutput<Map<String, WorkerScriptFiles>?>('files', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<WorkerScriptFiles>(guardedValue, (value) => WorkerScriptFiles.fromMap((value as Map).cast<String, dynamic>())); });
    handlers = registerOutput<List<String>>('handlers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    hasAssets = registerOutput<bool>('hasAssets');
    hasModules = registerOutput<bool>('hasModules');
    keepAssets = registerOutput<bool?>('keepAssets');
    keepBindings = registerOutput<List<String>?>('keepBindings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastDeployedFrom = registerOutput<String>('lastDeployedFrom');
    limits = registerOutput<WorkerScriptLimits?>('limits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logpush = registerOutput<bool>('logpush');
    mainModule = registerOutput<String?>('mainModule');
    migrationTag = registerOutput<String>('migrationTag');
    migrations = registerOutput<WorkerScriptMigrations?>('migrations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptMigrations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    namedHandlers = registerOutput<List<WorkerScriptNamedHandler>>('namedHandlers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerScriptNamedHandler>(guardedValue, (value) => WorkerScriptNamedHandler.fromMap((value as Map).cast<String, dynamic>())); });
    observability = registerOutput<WorkerScriptObservability?>('observability', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptObservability.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    packageDependencies = registerOutput<List<WorkerScriptPackageDependency>?>('packageDependencies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerScriptPackageDependency>(guardedValue, (value) => WorkerScriptPackageDependency.fromMap((value as Map).cast<String, dynamic>())); });
    placement = registerOutput<WorkerScriptPlacement>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerScriptPlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    placementMode = registerOutput<String>('placementMode');
    placementStatus = registerOutput<String>('placementStatus');
    scriptName = registerOutput<String>('scriptName');
    startupTimeMs = registerOutput<int>('startupTimeMs');
    tailConsumers = registerOutput<List<WorkerScriptTailConsumer>>('tailConsumers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerScriptTailConsumer>(guardedValue, (value) => WorkerScriptTailConsumer.fromMap((value as Map).cast<String, dynamic>())); });
    usageModel = registerOutput<String>('usageModel');
  }
}
