import 'package:pulumi/pulumi.dart' as pulumi;
import 'pages_project_args.dart';
import 'pages_project_build_config.dart';
import 'pages_project_canonical_deployment.dart';
import 'pages_project_deployment_configs.dart';
import 'pages_project_latest_deployment.dart';
import 'pages_project_source.dart';
import 'pages_project_state.dart';

/// Accepted Permissions
///
/// - `Pages Read`
/// - `Pages Write`
///
/// &gt; If you are using a `source` block configuration, you must first have a
/// connected GitHub or GitLab account connected to Cloudflare. See the
/// [Getting Started with Pages](https://developers.cloudflare.com/pages/get-started/git-integration/)
/// documentation on how to link your accounts.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const examplePagesProject = new cloudflare.PagesProject("example_pages_project", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "my-pages-app",
///     productionBranch: "main",
///     buildConfig: {
///         buildCaching: true,
///         buildCommand: "npm run build",
///         destinationDir: "build",
///         rootDir: "/",
///         webAnalyticsTag: "cee1c73f6e4743d0b5e6bb1a0bcaabcc",
///         webAnalyticsToken: "021e1057c18547eca7b79f2516f06o7x",
///     },
///     deploymentConfigs: {
///         preview: {
///             aiBindings: {
///                 AI_BINDING: {
///                     projectId: "some-project-id",
///                 },
///             },
///             alwaysUseLatestCompatibilityDate: false,
///             analyticsEngineDatasets: {
///                 ANALYTICS_ENGINE_BINDING: {
///                     dataset: "api_analytics",
///                 },
///             },
///             browsers: {
///                 BROWSER: {},
///             },
///             buildImageMajorVersion: 3,
///             compatibilityDate: "2025-01-01",
///             compatibilityFlags: ["url_standard"],
///             d1Databases: {
///                 D1_BINDING: {
///                     id: "445e2955-951a-43f8-a35b-a4d0c8138f63",
///                 },
///             },
///             durableObjectNamespaces: {
///                 DO_BINDING: {
///                     namespaceId: "5eb63bbbe01eeed093cb22bb8f5acdc3",
///                 },
///             },
///             envVars: {
///                 foo: {
///                     type: "plain_text",
///                     value: "hello world",
///                 },
///             },
///             failOpen: true,
///             hyperdriveBindings: {
///                 HYPERDRIVE: {
///                     id: "a76a99bc342644deb02c38d66082262a",
///                 },
///             },
///             kvNamespaces: {
///                 KV_BINDING: {
///                     namespaceId: "5eb63bbbe01eeed093cb22bb8f5acdc3",
///                 },
///             },
///             limits: {
///                 cpuMs: 100,
///             },
///             mtlsCertificates: {
///                 MTLS: {
///                     certificateId: "d7cdd17c-916f-4cb7-aabe-585eb382ec4e",
///                 },
///             },
///             placement: {
///                 mode: "smart",
///             },
///             queueProducers: {
///                 QUEUE_PRODUCER_BINDING: {
///                     name: "some-queue",
///                 },
///             },
///             r2Buckets: {
///                 R2_BINDING: {
///                     name: "some-bucket",
///                     jurisdiction: "eu",
///                 },
///             },
///             services: {
///                 SERVICE_BINDING: {
///                     service: "example-worker",
///                     entrypoint: "MyHandler",
///                     environment: "production",
///                 },
///             },
///             usageModel: "standard",
///             vectorizeBindings: {
///                 VECTORIZE: {
///                     indexName: "my_index",
///                 },
///             },
///             wranglerConfigHash: "abc123def456",
///         },
///         production: {
///             aiBindings: {
///                 AI_BINDING: {
///                     projectId: "some-project-id",
///                 },
///             },
///             alwaysUseLatestCompatibilityDate: false,
///             analyticsEngineDatasets: {
///                 ANALYTICS_ENGINE_BINDING: {
///                     dataset: "api_analytics",
///                 },
///             },
///             browsers: {
///                 BROWSER: {},
///             },
///             buildImageMajorVersion: 3,
///             compatibilityDate: "2025-01-01",
///             compatibilityFlags: ["url_standard"],
///             d1Databases: {
///                 D1_BINDING: {
///                     id: "445e2955-951a-43f8-a35b-a4d0c8138f63",
///                 },
///             },
///             durableObjectNamespaces: {
///                 DO_BINDING: {
///                     namespaceId: "5eb63bbbe01eeed093cb22bb8f5acdc3",
///                 },
///             },
///             envVars: {
///                 foo: {
///                     type: "plain_text",
///                     value: "hello world",
///                 },
///             },
///             failOpen: true,
///             hyperdriveBindings: {
///                 HYPERDRIVE: {
///                     id: "a76a99bc342644deb02c38d66082262a",
///                 },
///             },
///             kvNamespaces: {
///                 KV_BINDING: {
///                     namespaceId: "5eb63bbbe01eeed093cb22bb8f5acdc3",
///                 },
///             },
///             limits: {
///                 cpuMs: 100,
///             },
///             mtlsCertificates: {
///                 MTLS: {
///                     certificateId: "d7cdd17c-916f-4cb7-aabe-585eb382ec4e",
///                 },
///             },
///             placement: {
///                 mode: "smart",
///             },
///             queueProducers: {
///                 QUEUE_PRODUCER_BINDING: {
///                     name: "some-queue",
///                 },
///             },
///             r2Buckets: {
///                 R2_BINDING: {
///                     name: "some-bucket",
///                     jurisdiction: "eu",
///                 },
///             },
///             services: {
///                 SERVICE_BINDING: {
///                     service: "example-worker",
///                     entrypoint: "MyHandler",
///                     environment: "production",
///                 },
///             },
///             usageModel: "standard",
///             vectorizeBindings: {
///                 VECTORIZE: {
///                     indexName: "my_index",
///                 },
///             },
///             wranglerConfigHash: "abc123def456",
///         },
///     },
///     source: {
///         config: {
///             deploymentsEnabled: true,
///             owner: "my-org",
///             ownerId: "12345678",
///             pathExcludes: ["string"],
///             pathIncludes: ["string"],
///             prCommentsEnabled: true,
///             previewBranchExcludes: ["string"],
///             previewBranchIncludes: ["string"],
///             previewDeploymentSetting: "all",
///             productionBranch: "main",
///             productionDeploymentsEnabled: true,
///             repoId: "12345678",
///             repoName: "my-repo",
///         },
///         type: "github",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_pages_project = cloudflare.PagesProject("example_pages_project",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="my-pages-app",
///     production_branch="main",
///     build_config={
///         "build_caching": True,
///         "build_command": "npm run build",
///         "destination_dir": "build",
///         "root_dir": "/",
///         "web_analytics_tag": "cee1c73f6e4743d0b5e6bb1a0bcaabcc",
///         "web_analytics_token": "021e1057c18547eca7b79f2516f06o7x",
///     },
///     deployment_configs={
///         "preview": {
///             "ai_bindings": {
///                 "AI_BINDING": {
///                     "project_id": "some-project-id",
///                 },
///             },
///             "always_use_latest_compatibility_date": False,
///             "analytics_engine_datasets": {
///                 "ANALYTICS_ENGINE_BINDING": {
///                     "dataset": "api_analytics",
///                 },
///             },
///             "browsers": {
///                 "BROWSER": {},
///             },
///             "build_image_major_version": 3,
///             "compatibility_date": "2025-01-01",
///             "compatibility_flags": ["url_standard"],
///             "d1_databases": {
///                 "D1_BINDING": {
///                     "id": "445e2955-951a-43f8-a35b-a4d0c8138f63",
///                 },
///             },
///             "durable_object_namespaces": {
///                 "DO_BINDING": {
///                     "namespace_id": "5eb63bbbe01eeed093cb22bb8f5acdc3",
///                 },
///             },
///             "env_vars": {
///                 "foo": {
///                     "type": "plain_text",
///                     "value": "hello world",
///                 },
///             },
///             "fail_open": True,
///             "hyperdrive_bindings": {
///                 "HYPERDRIVE": {
///                     "id": "a76a99bc342644deb02c38d66082262a",
///                 },
///             },
///             "kv_namespaces": {
///                 "KV_BINDING": {
///                     "namespace_id": "5eb63bbbe01eeed093cb22bb8f5acdc3",
///                 },
///             },
///             "limits": {
///                 "cpu_ms": 100,
///             },
///             "mtls_certificates": {
///                 "MTLS": {
///                     "certificate_id": "d7cdd17c-916f-4cb7-aabe-585eb382ec4e",
///                 },
///             },
///             "placement": {
///                 "mode": "smart",
///             },
///             "queue_producers": {
///                 "QUEUE_PRODUCER_BINDING": {
///                     "name": "some-queue",
///                 },
///             },
///             "r2_buckets": {
///                 "R2_BINDING": {
///                     "name": "some-bucket",
///                     "jurisdiction": "eu",
///                 },
///             },
///             "services": {
///                 "SERVICE_BINDING": {
///                     "service": "example-worker",
///                     "entrypoint": "MyHandler",
///                     "environment": "production",
///                 },
///             },
///             "usage_model": "standard",
///             "vectorize_bindings": {
///                 "VECTORIZE": {
///                     "index_name": "my_index",
///                 },
///             },
///             "wrangler_config_hash": "abc123def456",
///         },
///         "production": {
///             "ai_bindings": {
///                 "AI_BINDING": {
///                     "project_id": "some-project-id",
///                 },
///             },
///             "always_use_latest_compatibility_date": False,
///             "analytics_engine_datasets": {
///                 "ANALYTICS_ENGINE_BINDING": {
///                     "dataset": "api_analytics",
///                 },
///             },
///             "browsers": {
///                 "BROWSER": {},
///             },
///             "build_image_major_version": 3,
///             "compatibility_date": "2025-01-01",
///             "compatibility_flags": ["url_standard"],
///             "d1_databases": {
///                 "D1_BINDING": {
///                     "id": "445e2955-951a-43f8-a35b-a4d0c8138f63",
///                 },
///             },
///             "durable_object_namespaces": {
///                 "DO_BINDING": {
///                     "namespace_id": "5eb63bbbe01eeed093cb22bb8f5acdc3",
///                 },
///             },
///             "env_vars": {
///                 "foo": {
///                     "type": "plain_text",
///                     "value": "hello world",
///                 },
///             },
///             "fail_open": True,
///             "hyperdrive_bindings": {
///                 "HYPERDRIVE": {
///                     "id": "a76a99bc342644deb02c38d66082262a",
///                 },
///             },
///             "kv_namespaces": {
///                 "KV_BINDING": {
///                     "namespace_id": "5eb63bbbe01eeed093cb22bb8f5acdc3",
///                 },
///             },
///             "limits": {
///                 "cpu_ms": 100,
///             },
///             "mtls_certificates": {
///                 "MTLS": {
///                     "certificate_id": "d7cdd17c-916f-4cb7-aabe-585eb382ec4e",
///                 },
///             },
///             "placement": {
///                 "mode": "smart",
///             },
///             "queue_producers": {
///                 "QUEUE_PRODUCER_BINDING": {
///                     "name": "some-queue",
///                 },
///             },
///             "r2_buckets": {
///                 "R2_BINDING": {
///                     "name": "some-bucket",
///                     "jurisdiction": "eu",
///                 },
///             },
///             "services": {
///                 "SERVICE_BINDING": {
///                     "service": "example-worker",
///                     "entrypoint": "MyHandler",
///                     "environment": "production",
///                 },
///             },
///             "usage_model": "standard",
///             "vectorize_bindings": {
///                 "VECTORIZE": {
///                     "index_name": "my_index",
///                 },
///             },
///             "wrangler_config_hash": "abc123def456",
///         },
///     },
///     source={
///         "config": {
///             "deployments_enabled": True,
///             "owner": "my-org",
///             "owner_id": "12345678",
///             "path_excludes": ["string"],
///             "path_includes": ["string"],
///             "pr_comments_enabled": True,
///             "preview_branch_excludes": ["string"],
///             "preview_branch_includes": ["string"],
///             "preview_deployment_setting": "all",
///             "production_branch": "main",
///             "production_deployments_enabled": True,
///             "repo_id": "12345678",
///             "repo_name": "my-repo",
///         },
///         "type": "github",
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
///     var examplePagesProject = new Cloudflare.PagesProject("example_pages_project", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "my-pages-app",
///         ProductionBranch = "main",
///         BuildConfig = new Cloudflare.Inputs.PagesProjectBuildConfigArgs
///         {
///             BuildCaching = true,
///             BuildCommand = "npm run build",
///             DestinationDir = "build",
///             RootDir = "/",
///             WebAnalyticsTag = "cee1c73f6e4743d0b5e6bb1a0bcaabcc",
///             WebAnalyticsToken = "021e1057c18547eca7b79f2516f06o7x",
///         },
///         DeploymentConfigs = new Cloudflare.Inputs.PagesProjectDeploymentConfigsArgs
///         {
///             Preview = new Cloudflare.Inputs.PagesProjectDeploymentConfigsPreviewArgs
///             {
///                 AiBindings =
///                 {
///                     { "AI_BINDING", new Cloudflare.Inputs.PagesProjectDeploymentConfigsPreviewAiBindingsArgs
///                     {
///                         ProjectId = "some-project-id",
///                     } },
///                 },
///                 AlwaysUseLatestCompatibilityDate = false,
///                 AnalyticsEngineDatasets =
///                 {
///                     { "ANALYTICS_ENGINE_BINDING", new Cloudflare.Inputs.PagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasetsArgs
///                     {
///                         Dataset = "api_analytics",
///                     } },
///                 },
///                 Browsers =
///                 {
///                     { "BROWSER", null },
///                 },
///                 BuildImageMajorVersion = 3,
///                 CompatibilityDate = "2025-01-01",
///                 CompatibilityFlags = new[]
///                 {
///                     "url_standard",
///                 },
///                 D1Databases =
///                 {
///                     { "D1_BINDING", new Cloudflare.Inputs.PagesProjectDeploymentConfigsPreviewD1DatabasesArgs
///                     {
///                         Id = "445e2955-951a-43f8-a35b-a4d0c8138f63",
///                     } },
///                 },
///                 DurableObjectNamespaces =
///                 {
///                     { "DO_BINDING", new Cloudflare.Inputs.PagesProjectDeploymentConfigsPreviewDurableObjectNamespacesArgs
///                     {
///                         NamespaceId = "5eb63bbbe01eeed093cb22bb8f5acdc3",
///                     } },
///                 },
///                 EnvVars =
///                 {
///                     { "foo", new Cloudflare.Inputs.PagesProjectDeploymentConfigsPreviewEnvVarsArgs
///                     {
///                         Type = "plain_text",
///                         Value = "hello world",
///                     } },
///                 },
///                 FailOpen = true,
///                 HyperdriveBindings =
///                 {
///                     { "HYPERDRIVE", new Cloudflare.Inputs.PagesProjectDeploymentConfigsPreviewHyperdriveBindingsArgs
///                     {
///                         Id = "a76a99bc342644deb02c38d66082262a",
///                     } },
///                 },
///                 KvNamespaces =
///                 {
///                     { "KV_BINDING", new Cloudflare.Inputs.PagesProjectDeploymentConfigsPreviewKvNamespacesArgs
///                     {
///                         NamespaceId = "5eb63bbbe01eeed093cb22bb8f5acdc3",
///                     } },
///                 },
///                 Limits = new Cloudflare.Inputs.PagesProjectDeploymentConfigsPreviewLimitsArgs
///                 {
///                     CpuMs = 100,
///                 },
///                 MtlsCertificates =
///                 {
///                     { "MTLS", new Cloudflare.Inputs.PagesProjectDeploymentConfigsPreviewMtlsCertificatesArgs
///                     {
///                         CertificateId = "d7cdd17c-916f-4cb7-aabe-585eb382ec4e",
///                     } },
///                 },
///                 Placement = new Cloudflare.Inputs.PagesProjectDeploymentConfigsPreviewPlacementArgs
///                 {
///                     Mode = "smart",
///                 },
///                 QueueProducers =
///                 {
///                     { "QUEUE_PRODUCER_BINDING", new Cloudflare.Inputs.PagesProjectDeploymentConfigsPreviewQueueProducersArgs
///                     {
///                         Name = "some-queue",
///                     } },
///                 },
///                 R2Buckets =
///                 {
///                     { "R2_BINDING", new Cloudflare.Inputs.PagesProjectDeploymentConfigsPreviewR2BucketsArgs
///                     {
///                         Name = "some-bucket",
///                         Jurisdiction = "eu",
///                     } },
///                 },
///                 Services =
///                 {
///                     { "SERVICE_BINDING", new Cloudflare.Inputs.PagesProjectDeploymentConfigsPreviewServicesArgs
///                     {
///                         Service = "example-worker",
///                         Entrypoint = "MyHandler",
///                         Environment = "production",
///                     } },
///                 },
///                 UsageModel = "standard",
///                 VectorizeBindings =
///                 {
///                     { "VECTORIZE", new Cloudflare.Inputs.PagesProjectDeploymentConfigsPreviewVectorizeBindingsArgs
///                     {
///                         IndexName = "my_index",
///                     } },
///                 },
///                 WranglerConfigHash = "abc123def456",
///             },
///             Production = new Cloudflare.Inputs.PagesProjectDeploymentConfigsProductionArgs
///             {
///                 AiBindings =
///                 {
///                     { "AI_BINDING", new Cloudflare.Inputs.PagesProjectDeploymentConfigsProductionAiBindingsArgs
///                     {
///                         ProjectId = "some-project-id",
///                     } },
///                 },
///                 AlwaysUseLatestCompatibilityDate = false,
///                 AnalyticsEngineDatasets =
///                 {
///                     { "ANALYTICS_ENGINE_BINDING", new Cloudflare.Inputs.PagesProjectDeploymentConfigsProductionAnalyticsEngineDatasetsArgs
///                     {
///                         Dataset = "api_analytics",
///                     } },
///                 },
///                 Browsers =
///                 {
///                     { "BROWSER", null },
///                 },
///                 BuildImageMajorVersion = 3,
///                 CompatibilityDate = "2025-01-01",
///                 CompatibilityFlags = new[]
///                 {
///                     "url_standard",
///                 },
///                 D1Databases =
///                 {
///                     { "D1_BINDING", new Cloudflare.Inputs.PagesProjectDeploymentConfigsProductionD1DatabasesArgs
///                     {
///                         Id = "445e2955-951a-43f8-a35b-a4d0c8138f63",
///                     } },
///                 },
///                 DurableObjectNamespaces =
///                 {
///                     { "DO_BINDING", new Cloudflare.Inputs.PagesProjectDeploymentConfigsProductionDurableObjectNamespacesArgs
///                     {
///                         NamespaceId = "5eb63bbbe01eeed093cb22bb8f5acdc3",
///                     } },
///                 },
///                 EnvVars =
///                 {
///                     { "foo", new Cloudflare.Inputs.PagesProjectDeploymentConfigsProductionEnvVarsArgs
///                     {
///                         Type = "plain_text",
///                         Value = "hello world",
///                     } },
///                 },
///                 FailOpen = true,
///                 HyperdriveBindings =
///                 {
///                     { "HYPERDRIVE", new Cloudflare.Inputs.PagesProjectDeploymentConfigsProductionHyperdriveBindingsArgs
///                     {
///                         Id = "a76a99bc342644deb02c38d66082262a",
///                     } },
///                 },
///                 KvNamespaces =
///                 {
///                     { "KV_BINDING", new Cloudflare.Inputs.PagesProjectDeploymentConfigsProductionKvNamespacesArgs
///                     {
///                         NamespaceId = "5eb63bbbe01eeed093cb22bb8f5acdc3",
///                     } },
///                 },
///                 Limits = new Cloudflare.Inputs.PagesProjectDeploymentConfigsProductionLimitsArgs
///                 {
///                     CpuMs = 100,
///                 },
///                 MtlsCertificates =
///                 {
///                     { "MTLS", new Cloudflare.Inputs.PagesProjectDeploymentConfigsProductionMtlsCertificatesArgs
///                     {
///                         CertificateId = "d7cdd17c-916f-4cb7-aabe-585eb382ec4e",
///                     } },
///                 },
///                 Placement = new Cloudflare.Inputs.PagesProjectDeploymentConfigsProductionPlacementArgs
///                 {
///                     Mode = "smart",
///                 },
///                 QueueProducers =
///                 {
///                     { "QUEUE_PRODUCER_BINDING", new Cloudflare.Inputs.PagesProjectDeploymentConfigsProductionQueueProducersArgs
///                     {
///                         Name = "some-queue",
///                     } },
///                 },
///                 R2Buckets =
///                 {
///                     { "R2_BINDING", new Cloudflare.Inputs.PagesProjectDeploymentConfigsProductionR2BucketsArgs
///                     {
///                         Name = "some-bucket",
///                         Jurisdiction = "eu",
///                     } },
///                 },
///                 Services =
///                 {
///                     { "SERVICE_BINDING", new Cloudflare.Inputs.PagesProjectDeploymentConfigsProductionServicesArgs
///                     {
///                         Service = "example-worker",
///                         Entrypoint = "MyHandler",
///                         Environment = "production",
///                     } },
///                 },
///                 UsageModel = "standard",
///                 VectorizeBindings =
///                 {
///                     { "VECTORIZE", new Cloudflare.Inputs.PagesProjectDeploymentConfigsProductionVectorizeBindingsArgs
///                     {
///                         IndexName = "my_index",
///                     } },
///                 },
///                 WranglerConfigHash = "abc123def456",
///             },
///         },
///         Source = new Cloudflare.Inputs.PagesProjectSourceArgs
///         {
///             Config = new Cloudflare.Inputs.PagesProjectSourceConfigArgs
///             {
///                 DeploymentsEnabled = true,
///                 Owner = "my-org",
///                 OwnerId = "12345678",
///                 PathExcludes = new[]
///                 {
///                     "string",
///                 },
///                 PathIncludes = new[]
///                 {
///                     "string",
///                 },
///                 PrCommentsEnabled = true,
///                 PreviewBranchExcludes = new[]
///                 {
///                     "string",
///                 },
///                 PreviewBranchIncludes = new[]
///                 {
///                     "string",
///                 },
///                 PreviewDeploymentSetting = "all",
///                 ProductionBranch = "main",
///                 ProductionDeploymentsEnabled = true,
///                 RepoId = "12345678",
///                 RepoName = "my-repo",
///             },
///             Type = "github",
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
/// 		_, err := cloudflare.NewPagesProject(ctx, "example_pages_project", &cloudflare.PagesProjectArgs{
/// 			AccountId:        pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:             pulumi.String("my-pages-app"),
/// 			ProductionBranch: pulumi.String("main"),
/// 			BuildConfig: &cloudflare.PagesProjectBuildConfigArgs{
/// 				BuildCaching:      pulumi.Bool(true),
/// 				BuildCommand:      pulumi.String("npm run build"),
/// 				DestinationDir:    pulumi.String("build"),
/// 				RootDir:           pulumi.String("/"),
/// 				WebAnalyticsTag:   pulumi.String("cee1c73f6e4743d0b5e6bb1a0bcaabcc"),
/// 				WebAnalyticsToken: pulumi.String("021e1057c18547eca7b79f2516f06o7x"),
/// 			},
/// 			DeploymentConfigs: &cloudflare.PagesProjectDeploymentConfigsArgs{
/// 				Preview: &cloudflare.PagesProjectDeploymentConfigsPreviewArgs{
/// 					AiBindings: cloudflare.PagesProjectDeploymentConfigsPreviewAiBindingsMap{
/// 						"AI_BINDING": &cloudflare.PagesProjectDeploymentConfigsPreviewAiBindingsArgs{
/// 							ProjectId: pulumi.String("some-project-id"),
/// 						},
/// 					},
/// 					AlwaysUseLatestCompatibilityDate: pulumi.Bool(false),
/// 					AnalyticsEngineDatasets: cloudflare.PagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasetsMap{
/// 						"ANALYTICS_ENGINE_BINDING": &cloudflare.PagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasetsArgs{
/// 							Dataset: pulumi.String("api_analytics"),
/// 						},
/// 					},
/// 					Browsers: cloudflare.PagesProjectDeploymentConfigsPreviewBrowsersMap{
/// 						"BROWSER": &cloudflare.PagesProjectDeploymentConfigsPreviewBrowsersArgs{},
/// 					},
/// 					BuildImageMajorVersion: pulumi.Int(3),
/// 					CompatibilityDate:      pulumi.String("2025-01-01"),
/// 					CompatibilityFlags: pulumi.StringArray{
/// 						pulumi.String("url_standard"),
/// 					},
/// 					D1Databases: cloudflare.PagesProjectDeploymentConfigsPreviewD1DatabasesMap{
/// 						"D1_BINDING": &cloudflare.PagesProjectDeploymentConfigsPreviewD1DatabasesArgs{
/// 							Id: pulumi.String("445e2955-951a-43f8-a35b-a4d0c8138f63"),
/// 						},
/// 					},
/// 					DurableObjectNamespaces: cloudflare.PagesProjectDeploymentConfigsPreviewDurableObjectNamespacesMap{
/// 						"DO_BINDING": &cloudflare.PagesProjectDeploymentConfigsPreviewDurableObjectNamespacesArgs{
/// 							NamespaceId: pulumi.String("5eb63bbbe01eeed093cb22bb8f5acdc3"),
/// 						},
/// 					},
/// 					EnvVars: cloudflare.PagesProjectDeploymentConfigsPreviewEnvVarsMap{
/// 						"foo": &cloudflare.PagesProjectDeploymentConfigsPreviewEnvVarsArgs{
/// 							Type:  pulumi.String("plain_text"),
/// 							Value: pulumi.String("hello world"),
/// 						},
/// 					},
/// 					FailOpen: pulumi.Bool(true),
/// 					HyperdriveBindings: cloudflare.PagesProjectDeploymentConfigsPreviewHyperdriveBindingsMap{
/// 						"HYPERDRIVE": &cloudflare.PagesProjectDeploymentConfigsPreviewHyperdriveBindingsArgs{
/// 							Id: pulumi.String("a76a99bc342644deb02c38d66082262a"),
/// 						},
/// 					},
/// 					KvNamespaces: cloudflare.PagesProjectDeploymentConfigsPreviewKvNamespacesMap{
/// 						"KV_BINDING": &cloudflare.PagesProjectDeploymentConfigsPreviewKvNamespacesArgs{
/// 							NamespaceId: pulumi.String("5eb63bbbe01eeed093cb22bb8f5acdc3"),
/// 						},
/// 					},
/// 					Limits: &cloudflare.PagesProjectDeploymentConfigsPreviewLimitsArgs{
/// 						CpuMs: pulumi.Int(100),
/// 					},
/// 					MtlsCertificates: cloudflare.PagesProjectDeploymentConfigsPreviewMtlsCertificatesMap{
/// 						"MTLS": &cloudflare.PagesProjectDeploymentConfigsPreviewMtlsCertificatesArgs{
/// 							CertificateId: pulumi.String("d7cdd17c-916f-4cb7-aabe-585eb382ec4e"),
/// 						},
/// 					},
/// 					Placement: &cloudflare.PagesProjectDeploymentConfigsPreviewPlacementArgs{
/// 						Mode: pulumi.String("smart"),
/// 					},
/// 					QueueProducers: cloudflare.PagesProjectDeploymentConfigsPreviewQueueProducersMap{
/// 						"QUEUE_PRODUCER_BINDING": &cloudflare.PagesProjectDeploymentConfigsPreviewQueueProducersArgs{
/// 							Name: pulumi.String("some-queue"),
/// 						},
/// 					},
/// 					R2Buckets: cloudflare.PagesProjectDeploymentConfigsPreviewR2BucketsMap{
/// 						"R2_BINDING": &cloudflare.PagesProjectDeploymentConfigsPreviewR2BucketsArgs{
/// 							Name:         pulumi.String("some-bucket"),
/// 							Jurisdiction: pulumi.String("eu"),
/// 						},
/// 					},
/// 					Services: cloudflare.PagesProjectDeploymentConfigsPreviewServicesMap{
/// 						"SERVICE_BINDING": &cloudflare.PagesProjectDeploymentConfigsPreviewServicesArgs{
/// 							Service:     pulumi.String("example-worker"),
/// 							Entrypoint:  pulumi.String("MyHandler"),
/// 							Environment: pulumi.String("production"),
/// 						},
/// 					},
/// 					UsageModel: pulumi.String("standard"),
/// 					VectorizeBindings: cloudflare.PagesProjectDeploymentConfigsPreviewVectorizeBindingsMap{
/// 						"VECTORIZE": &cloudflare.PagesProjectDeploymentConfigsPreviewVectorizeBindingsArgs{
/// 							IndexName: pulumi.String("my_index"),
/// 						},
/// 					},
/// 					WranglerConfigHash: pulumi.String("abc123def456"),
/// 				},
/// 				Production: &cloudflare.PagesProjectDeploymentConfigsProductionArgs{
/// 					AiBindings: cloudflare.PagesProjectDeploymentConfigsProductionAiBindingsMap{
/// 						"AI_BINDING": &cloudflare.PagesProjectDeploymentConfigsProductionAiBindingsArgs{
/// 							ProjectId: pulumi.String("some-project-id"),
/// 						},
/// 					},
/// 					AlwaysUseLatestCompatibilityDate: pulumi.Bool(false),
/// 					AnalyticsEngineDatasets: cloudflare.PagesProjectDeploymentConfigsProductionAnalyticsEngineDatasetsMap{
/// 						"ANALYTICS_ENGINE_BINDING": &cloudflare.PagesProjectDeploymentConfigsProductionAnalyticsEngineDatasetsArgs{
/// 							Dataset: pulumi.String("api_analytics"),
/// 						},
/// 					},
/// 					Browsers: cloudflare.PagesProjectDeploymentConfigsProductionBrowsersMap{
/// 						"BROWSER": &cloudflare.PagesProjectDeploymentConfigsProductionBrowsersArgs{},
/// 					},
/// 					BuildImageMajorVersion: pulumi.Int(3),
/// 					CompatibilityDate:      pulumi.String("2025-01-01"),
/// 					CompatibilityFlags: pulumi.StringArray{
/// 						pulumi.String("url_standard"),
/// 					},
/// 					D1Databases: cloudflare.PagesProjectDeploymentConfigsProductionD1DatabasesMap{
/// 						"D1_BINDING": &cloudflare.PagesProjectDeploymentConfigsProductionD1DatabasesArgs{
/// 							Id: pulumi.String("445e2955-951a-43f8-a35b-a4d0c8138f63"),
/// 						},
/// 					},
/// 					DurableObjectNamespaces: cloudflare.PagesProjectDeploymentConfigsProductionDurableObjectNamespacesMap{
/// 						"DO_BINDING": &cloudflare.PagesProjectDeploymentConfigsProductionDurableObjectNamespacesArgs{
/// 							NamespaceId: pulumi.String("5eb63bbbe01eeed093cb22bb8f5acdc3"),
/// 						},
/// 					},
/// 					EnvVars: cloudflare.PagesProjectDeploymentConfigsProductionEnvVarsMap{
/// 						"foo": &cloudflare.PagesProjectDeploymentConfigsProductionEnvVarsArgs{
/// 							Type:  pulumi.String("plain_text"),
/// 							Value: pulumi.String("hello world"),
/// 						},
/// 					},
/// 					FailOpen: pulumi.Bool(true),
/// 					HyperdriveBindings: cloudflare.PagesProjectDeploymentConfigsProductionHyperdriveBindingsMap{
/// 						"HYPERDRIVE": &cloudflare.PagesProjectDeploymentConfigsProductionHyperdriveBindingsArgs{
/// 							Id: pulumi.String("a76a99bc342644deb02c38d66082262a"),
/// 						},
/// 					},
/// 					KvNamespaces: cloudflare.PagesProjectDeploymentConfigsProductionKvNamespacesMap{
/// 						"KV_BINDING": &cloudflare.PagesProjectDeploymentConfigsProductionKvNamespacesArgs{
/// 							NamespaceId: pulumi.String("5eb63bbbe01eeed093cb22bb8f5acdc3"),
/// 						},
/// 					},
/// 					Limits: &cloudflare.PagesProjectDeploymentConfigsProductionLimitsArgs{
/// 						CpuMs: pulumi.Int(100),
/// 					},
/// 					MtlsCertificates: cloudflare.PagesProjectDeploymentConfigsProductionMtlsCertificatesMap{
/// 						"MTLS": &cloudflare.PagesProjectDeploymentConfigsProductionMtlsCertificatesArgs{
/// 							CertificateId: pulumi.String("d7cdd17c-916f-4cb7-aabe-585eb382ec4e"),
/// 						},
/// 					},
/// 					Placement: &cloudflare.PagesProjectDeploymentConfigsProductionPlacementArgs{
/// 						Mode: pulumi.String("smart"),
/// 					},
/// 					QueueProducers: cloudflare.PagesProjectDeploymentConfigsProductionQueueProducersMap{
/// 						"QUEUE_PRODUCER_BINDING": &cloudflare.PagesProjectDeploymentConfigsProductionQueueProducersArgs{
/// 							Name: pulumi.String("some-queue"),
/// 						},
/// 					},
/// 					R2Buckets: cloudflare.PagesProjectDeploymentConfigsProductionR2BucketsMap{
/// 						"R2_BINDING": &cloudflare.PagesProjectDeploymentConfigsProductionR2BucketsArgs{
/// 							Name:         pulumi.String("some-bucket"),
/// 							Jurisdiction: pulumi.String("eu"),
/// 						},
/// 					},
/// 					Services: cloudflare.PagesProjectDeploymentConfigsProductionServicesMap{
/// 						"SERVICE_BINDING": &cloudflare.PagesProjectDeploymentConfigsProductionServicesArgs{
/// 							Service:     pulumi.String("example-worker"),
/// 							Entrypoint:  pulumi.String("MyHandler"),
/// 							Environment: pulumi.String("production"),
/// 						},
/// 					},
/// 					UsageModel: pulumi.String("standard"),
/// 					VectorizeBindings: cloudflare.PagesProjectDeploymentConfigsProductionVectorizeBindingsMap{
/// 						"VECTORIZE": &cloudflare.PagesProjectDeploymentConfigsProductionVectorizeBindingsArgs{
/// 							IndexName: pulumi.String("my_index"),
/// 						},
/// 					},
/// 					WranglerConfigHash: pulumi.String("abc123def456"),
/// 				},
/// 			},
/// 			Source: &cloudflare.PagesProjectSourceArgs{
/// 				Config: &cloudflare.PagesProjectSourceConfigArgs{
/// 					DeploymentsEnabled: pulumi.Bool(true),
/// 					Owner:              pulumi.String("my-org"),
/// 					OwnerId:            pulumi.String("12345678"),
/// 					PathExcludes: pulumi.StringArray{
/// 						pulumi.String("string"),
/// 					},
/// 					PathIncludes: pulumi.StringArray{
/// 						pulumi.String("string"),
/// 					},
/// 					PrCommentsEnabled: pulumi.Bool(true),
/// 					PreviewBranchExcludes: pulumi.StringArray{
/// 						pulumi.String("string"),
/// 					},
/// 					PreviewBranchIncludes: pulumi.StringArray{
/// 						pulumi.String("string"),
/// 					},
/// 					PreviewDeploymentSetting:     pulumi.String("all"),
/// 					ProductionBranch:             pulumi.String("main"),
/// 					ProductionDeploymentsEnabled: pulumi.Bool(true),
/// 					RepoId:                       pulumi.String("12345678"),
/// 					RepoName:                     pulumi.String("my-repo"),
/// 				},
/// 				Type: pulumi.String("github"),
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
/// resource "cloudflare_pagesproject" "example_pages_project" {
///   account_id        = "023e105f4ecef8ad9ca31a8372d0c353"
///   name              = "my-pages-app"
///   production_branch = "main"
///   build_config = {
///     build_caching       = true
///     build_command       = "npm run build"
///     destination_dir     = "build"
///     root_dir            = "/"
///     web_analytics_tag   = "cee1c73f6e4743d0b5e6bb1a0bcaabcc"
///     web_analytics_token = "021e1057c18547eca7b79f2516f06o7x"
///   }
///   deployment_configs = {
///     preview = {
///       ai_bindings = {
///         "AI_BINDING" = {
///           project_id = "some-project-id"
///         }
///       }
///       always_use_latest_compatibility_date = false
///       analytics_engine_datasets = {
///         "ANALYTICS_ENGINE_BINDING" = {
///           dataset = "api_analytics"
///         }
///       }
///       browsers = {
///         "BROWSER" = {}
///       }
///       build_image_major_version = 3
///       compatibility_date        = "2025-01-01"
///       compatibility_flags       = ["url_standard"]
///       d1_databases = {
///         "D1_BINDING" = {
///           id = "445e2955-951a-43f8-a35b-a4d0c8138f63"
///         }
///       }
///       durable_object_namespaces = {
///         "DO_BINDING" = {
///           namespace_id = "5eb63bbbe01eeed093cb22bb8f5acdc3"
///         }
///       }
///       env_vars = {
///         "foo" = {
///           type  = "plain_text"
///           value = "hello world"
///         }
///       }
///       fail_open = true
///       hyperdrive_bindings = {
///         "HYPERDRIVE" = {
///           id = "a76a99bc342644deb02c38d66082262a"
///         }
///       }
///       kv_namespaces = {
///         "KV_BINDING" = {
///           namespace_id = "5eb63bbbe01eeed093cb22bb8f5acdc3"
///         }
///       }
///       limits = {
///         cpu_ms = 100
///       }
///       mtls_certificates = {
///         "MTLS" = {
///           certificate_id = "d7cdd17c-916f-4cb7-aabe-585eb382ec4e"
///         }
///       }
///       placement = {
///         mode = "smart"
///       }
///       queue_producers = {
///         "QUEUE_PRODUCER_BINDING" = {
///           name = "some-queue"
///         }
///       }
///       r2_buckets = {
///         "R2_BINDING" = {
///           name         = "some-bucket"
///           jurisdiction = "eu"
///         }
///       }
///       services = {
///         "SERVICE_BINDING" = {
///           service     = "example-worker"
///           entrypoint  = "MyHandler"
///           environment = "production"
///         }
///       }
///       usage_model = "standard"
///       vectorize_bindings = {
///         "VECTORIZE" = {
///           index_name = "my_index"
///         }
///       }
///       wrangler_config_hash = "abc123def456"
///     }
///     production = {
///       ai_bindings = {
///         "AI_BINDING" = {
///           project_id = "some-project-id"
///         }
///       }
///       always_use_latest_compatibility_date = false
///       analytics_engine_datasets = {
///         "ANALYTICS_ENGINE_BINDING" = {
///           dataset = "api_analytics"
///         }
///       }
///       browsers = {
///         "BROWSER" = {}
///       }
///       build_image_major_version = 3
///       compatibility_date        = "2025-01-01"
///       compatibility_flags       = ["url_standard"]
///       d1_databases = {
///         "D1_BINDING" = {
///           id = "445e2955-951a-43f8-a35b-a4d0c8138f63"
///         }
///       }
///       durable_object_namespaces = {
///         "DO_BINDING" = {
///           namespace_id = "5eb63bbbe01eeed093cb22bb8f5acdc3"
///         }
///       }
///       env_vars = {
///         "foo" = {
///           type  = "plain_text"
///           value = "hello world"
///         }
///       }
///       fail_open = true
///       hyperdrive_bindings = {
///         "HYPERDRIVE" = {
///           id = "a76a99bc342644deb02c38d66082262a"
///         }
///       }
///       kv_namespaces = {
///         "KV_BINDING" = {
///           namespace_id = "5eb63bbbe01eeed093cb22bb8f5acdc3"
///         }
///       }
///       limits = {
///         cpu_ms = 100
///       }
///       mtls_certificates = {
///         "MTLS" = {
///           certificate_id = "d7cdd17c-916f-4cb7-aabe-585eb382ec4e"
///         }
///       }
///       placement = {
///         mode = "smart"
///       }
///       queue_producers = {
///         "QUEUE_PRODUCER_BINDING" = {
///           name = "some-queue"
///         }
///       }
///       r2_buckets = {
///         "R2_BINDING" = {
///           name         = "some-bucket"
///           jurisdiction = "eu"
///         }
///       }
///       services = {
///         "SERVICE_BINDING" = {
///           service     = "example-worker"
///           entrypoint  = "MyHandler"
///           environment = "production"
///         }
///       }
///       usage_model = "standard"
///       vectorize_bindings = {
///         "VECTORIZE" = {
///           index_name = "my_index"
///         }
///       }
///       wrangler_config_hash = "abc123def456"
///     }
///   }
///   source = {
///     config = {
///       deployments_enabled            = true
///       owner                          = "my-org"
///       owner_id                       = "12345678"
///       path_excludes                  = ["string"]
///       path_includes                  = ["string"]
///       pr_comments_enabled            = true
///       preview_branch_excludes        = ["string"]
///       preview_branch_includes        = ["string"]
///       preview_deployment_setting     = "all"
///       production_branch              = "main"
///       production_deployments_enabled = true
///       repo_id                        = "12345678"
///       repo_name                      = "my-repo"
///     }
///     type = "github"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.PagesProject;
/// import com.pulumi.cloudflare.PagesProjectArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectBuildConfigArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsPreviewArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsPreviewAiBindingsArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasetsArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsPreviewBrowsersArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsPreviewD1DatabasesArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsPreviewDurableObjectNamespacesArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsPreviewEnvVarsArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsPreviewHyperdriveBindingsArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsPreviewKvNamespacesArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsPreviewLimitsArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsPreviewMtlsCertificatesArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsPreviewPlacementArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsPreviewQueueProducersArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsPreviewR2BucketsArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsPreviewServicesArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsPreviewVectorizeBindingsArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsProductionArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsProductionAiBindingsArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsProductionAnalyticsEngineDatasetsArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsProductionBrowsersArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsProductionD1DatabasesArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsProductionDurableObjectNamespacesArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsProductionEnvVarsArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsProductionHyperdriveBindingsArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsProductionKvNamespacesArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsProductionLimitsArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsProductionMtlsCertificatesArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsProductionPlacementArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsProductionQueueProducersArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsProductionR2BucketsArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsProductionServicesArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectDeploymentConfigsProductionVectorizeBindingsArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectSourceArgs;
/// import com.pulumi.cloudflare.inputs.PagesProjectSourceConfigArgs;
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
///         var examplePagesProject = new PagesProject("examplePagesProject", PagesProjectArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("my-pages-app")
///             .productionBranch("main")
///             .buildConfig(PagesProjectBuildConfigArgs.builder()
///                 .buildCaching(true)
///                 .buildCommand("npm run build")
///                 .destinationDir("build")
///                 .rootDir("/")
///                 .webAnalyticsTag("cee1c73f6e4743d0b5e6bb1a0bcaabcc")
///                 .webAnalyticsToken("021e1057c18547eca7b79f2516f06o7x")
///                 .build())
///             .deploymentConfigs(PagesProjectDeploymentConfigsArgs.builder()
///                 .preview(PagesProjectDeploymentConfigsPreviewArgs.builder()
///                     .aiBindings(Map.of("AI_BINDING", PagesProjectDeploymentConfigsPreviewAiBindingsArgs.builder()
///                         .projectId("some-project-id")
///                         .build()))
///                     .alwaysUseLatestCompatibilityDate(false)
///                     .analyticsEngineDatasets(Map.of("ANALYTICS_ENGINE_BINDING", PagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasetsArgs.builder()
///                         .dataset("api_analytics")
///                         .build()))
///                     .browsers(Map.of("BROWSER", PagesProjectDeploymentConfigsPreviewBrowsersArgs.builder()
///                         .build()))
///                     .buildImageMajorVersion(3)
///                     .compatibilityDate("2025-01-01")
///                     .compatibilityFlags("url_standard")
///                     .d1Databases(Map.of("D1_BINDING", PagesProjectDeploymentConfigsPreviewD1DatabasesArgs.builder()
///                         .id("445e2955-951a-43f8-a35b-a4d0c8138f63")
///                         .build()))
///                     .durableObjectNamespaces(Map.of("DO_BINDING", PagesProjectDeploymentConfigsPreviewDurableObjectNamespacesArgs.builder()
///                         .namespaceId("5eb63bbbe01eeed093cb22bb8f5acdc3")
///                         .build()))
///                     .envVars(Map.of("foo", PagesProjectDeploymentConfigsPreviewEnvVarsArgs.builder()
///                         .type("plain_text")
///                         .value("hello world")
///                         .build()))
///                     .failOpen(true)
///                     .hyperdriveBindings(Map.of("HYPERDRIVE", PagesProjectDeploymentConfigsPreviewHyperdriveBindingsArgs.builder()
///                         .id("a76a99bc342644deb02c38d66082262a")
///                         .build()))
///                     .kvNamespaces(Map.of("KV_BINDING", PagesProjectDeploymentConfigsPreviewKvNamespacesArgs.builder()
///                         .namespaceId("5eb63bbbe01eeed093cb22bb8f5acdc3")
///                         .build()))
///                     .limits(PagesProjectDeploymentConfigsPreviewLimitsArgs.builder()
///                         .cpuMs(100)
///                         .build())
///                     .mtlsCertificates(Map.of("MTLS", PagesProjectDeploymentConfigsPreviewMtlsCertificatesArgs.builder()
///                         .certificateId("d7cdd17c-916f-4cb7-aabe-585eb382ec4e")
///                         .build()))
///                     .placement(PagesProjectDeploymentConfigsPreviewPlacementArgs.builder()
///                         .mode("smart")
///                         .build())
///                     .queueProducers(Map.of("QUEUE_PRODUCER_BINDING", PagesProjectDeploymentConfigsPreviewQueueProducersArgs.builder()
///                         .name("some-queue")
///                         .build()))
///                     .r2Buckets(Map.of("R2_BINDING", PagesProjectDeploymentConfigsPreviewR2BucketsArgs.builder()
///                         .name("some-bucket")
///                         .jurisdiction("eu")
///                         .build()))
///                     .services(Map.of("SERVICE_BINDING", PagesProjectDeploymentConfigsPreviewServicesArgs.builder()
///                         .service("example-worker")
///                         .entrypoint("MyHandler")
///                         .environment("production")
///                         .build()))
///                     .usageModel("standard")
///                     .vectorizeBindings(Map.of("VECTORIZE", PagesProjectDeploymentConfigsPreviewVectorizeBindingsArgs.builder()
///                         .indexName("my_index")
///                         .build()))
///                     .wranglerConfigHash("abc123def456")
///                     .build())
///                 .production(PagesProjectDeploymentConfigsProductionArgs.builder()
///                     .aiBindings(Map.of("AI_BINDING", PagesProjectDeploymentConfigsProductionAiBindingsArgs.builder()
///                         .projectId("some-project-id")
///                         .build()))
///                     .alwaysUseLatestCompatibilityDate(false)
///                     .analyticsEngineDatasets(Map.of("ANALYTICS_ENGINE_BINDING", PagesProjectDeploymentConfigsProductionAnalyticsEngineDatasetsArgs.builder()
///                         .dataset("api_analytics")
///                         .build()))
///                     .browsers(Map.of("BROWSER", PagesProjectDeploymentConfigsProductionBrowsersArgs.builder()
///                         .build()))
///                     .buildImageMajorVersion(3)
///                     .compatibilityDate("2025-01-01")
///                     .compatibilityFlags("url_standard")
///                     .d1Databases(Map.of("D1_BINDING", PagesProjectDeploymentConfigsProductionD1DatabasesArgs.builder()
///                         .id("445e2955-951a-43f8-a35b-a4d0c8138f63")
///                         .build()))
///                     .durableObjectNamespaces(Map.of("DO_BINDING", PagesProjectDeploymentConfigsProductionDurableObjectNamespacesArgs.builder()
///                         .namespaceId("5eb63bbbe01eeed093cb22bb8f5acdc3")
///                         .build()))
///                     .envVars(Map.of("foo", PagesProjectDeploymentConfigsProductionEnvVarsArgs.builder()
///                         .type("plain_text")
///                         .value("hello world")
///                         .build()))
///                     .failOpen(true)
///                     .hyperdriveBindings(Map.of("HYPERDRIVE", PagesProjectDeploymentConfigsProductionHyperdriveBindingsArgs.builder()
///                         .id("a76a99bc342644deb02c38d66082262a")
///                         .build()))
///                     .kvNamespaces(Map.of("KV_BINDING", PagesProjectDeploymentConfigsProductionKvNamespacesArgs.builder()
///                         .namespaceId("5eb63bbbe01eeed093cb22bb8f5acdc3")
///                         .build()))
///                     .limits(PagesProjectDeploymentConfigsProductionLimitsArgs.builder()
///                         .cpuMs(100)
///                         .build())
///                     .mtlsCertificates(Map.of("MTLS", PagesProjectDeploymentConfigsProductionMtlsCertificatesArgs.builder()
///                         .certificateId("d7cdd17c-916f-4cb7-aabe-585eb382ec4e")
///                         .build()))
///                     .placement(PagesProjectDeploymentConfigsProductionPlacementArgs.builder()
///                         .mode("smart")
///                         .build())
///                     .queueProducers(Map.of("QUEUE_PRODUCER_BINDING", PagesProjectDeploymentConfigsProductionQueueProducersArgs.builder()
///                         .name("some-queue")
///                         .build()))
///                     .r2Buckets(Map.of("R2_BINDING", PagesProjectDeploymentConfigsProductionR2BucketsArgs.builder()
///                         .name("some-bucket")
///                         .jurisdiction("eu")
///                         .build()))
///                     .services(Map.of("SERVICE_BINDING", PagesProjectDeploymentConfigsProductionServicesArgs.builder()
///                         .service("example-worker")
///                         .entrypoint("MyHandler")
///                         .environment("production")
///                         .build()))
///                     .usageModel("standard")
///                     .vectorizeBindings(Map.of("VECTORIZE", PagesProjectDeploymentConfigsProductionVectorizeBindingsArgs.builder()
///                         .indexName("my_index")
///                         .build()))
///                     .wranglerConfigHash("abc123def456")
///                     .build())
///                 .build())
///             .source(PagesProjectSourceArgs.builder()
///                 .config(PagesProjectSourceConfigArgs.builder()
///                     .deploymentsEnabled(true)
///                     .owner("my-org")
///                     .ownerId("12345678")
///                     .pathExcludes("string")
///                     .pathIncludes("string")
///                     .prCommentsEnabled(true)
///                     .previewBranchExcludes("string")
///                     .previewBranchIncludes("string")
///                     .previewDeploymentSetting("all")
///                     .productionBranch("main")
///                     .productionDeploymentsEnabled(true)
///                     .repoId("12345678")
///                     .repoName("my-repo")
///                     .build())
///                 .type("github")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePagesProject:
///     type: cloudflare:PagesProject
///     name: example_pages_project
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: my-pages-app
///       productionBranch: main
///       buildConfig:
///         buildCaching: true
///         buildCommand: npm run build
///         destinationDir: build
///         rootDir: /
///         webAnalyticsTag: cee1c73f6e4743d0b5e6bb1a0bcaabcc
///         webAnalyticsToken: 021e1057c18547eca7b79f2516f06o7x
///       deploymentConfigs:
///         preview:
///           aiBindings:
///             AI_BINDING:
///               projectId: some-project-id
///           alwaysUseLatestCompatibilityDate: false
///           analyticsEngineDatasets:
///             ANALYTICS_ENGINE_BINDING:
///               dataset: api_analytics
///           browsers:
///             BROWSER: {}
///           buildImageMajorVersion: 3
///           compatibilityDate: 2025-01-01
///           compatibilityFlags:
///             - url_standard
///           d1Databases:
///             D1_BINDING:
///               id: 445e2955-951a-43f8-a35b-a4d0c8138f63
///           durableObjectNamespaces:
///             DO_BINDING:
///               namespaceId: 5eb63bbbe01eeed093cb22bb8f5acdc3
///           envVars:
///             foo:
///               type: plain_text
///               value: hello world
///           failOpen: true
///           hyperdriveBindings:
///             HYPERDRIVE:
///               id: a76a99bc342644deb02c38d66082262a
///           kvNamespaces:
///             KV_BINDING:
///               namespaceId: 5eb63bbbe01eeed093cb22bb8f5acdc3
///           limits:
///             cpuMs: 100
///           mtlsCertificates:
///             MTLS:
///               certificateId: d7cdd17c-916f-4cb7-aabe-585eb382ec4e
///           placement:
///             mode: smart
///           queueProducers:
///             QUEUE_PRODUCER_BINDING:
///               name: some-queue
///           r2Buckets:
///             R2_BINDING:
///               name: some-bucket
///               jurisdiction: eu
///           services:
///             SERVICE_BINDING:
///               service: example-worker
///               entrypoint: MyHandler
///               environment: production
///           usageModel: standard
///           vectorizeBindings:
///             VECTORIZE:
///               indexName: my_index
///           wranglerConfigHash: abc123def456
///         production:
///           aiBindings:
///             AI_BINDING:
///               projectId: some-project-id
///           alwaysUseLatestCompatibilityDate: false
///           analyticsEngineDatasets:
///             ANALYTICS_ENGINE_BINDING:
///               dataset: api_analytics
///           browsers:
///             BROWSER: {}
///           buildImageMajorVersion: 3
///           compatibilityDate: 2025-01-01
///           compatibilityFlags:
///             - url_standard
///           d1Databases:
///             D1_BINDING:
///               id: 445e2955-951a-43f8-a35b-a4d0c8138f63
///           durableObjectNamespaces:
///             DO_BINDING:
///               namespaceId: 5eb63bbbe01eeed093cb22bb8f5acdc3
///           envVars:
///             foo:
///               type: plain_text
///               value: hello world
///           failOpen: true
///           hyperdriveBindings:
///             HYPERDRIVE:
///               id: a76a99bc342644deb02c38d66082262a
///           kvNamespaces:
///             KV_BINDING:
///               namespaceId: 5eb63bbbe01eeed093cb22bb8f5acdc3
///           limits:
///             cpuMs: 100
///           mtlsCertificates:
///             MTLS:
///               certificateId: d7cdd17c-916f-4cb7-aabe-585eb382ec4e
///           placement:
///             mode: smart
///           queueProducers:
///             QUEUE_PRODUCER_BINDING:
///               name: some-queue
///           r2Buckets:
///             R2_BINDING:
///               name: some-bucket
///               jurisdiction: eu
///           services:
///             SERVICE_BINDING:
///               service: example-worker
///               entrypoint: MyHandler
///               environment: production
///           usageModel: standard
///           vectorizeBindings:
///             VECTORIZE:
///               indexName: my_index
///           wranglerConfigHash: abc123def456
///       source:
///         config:
///           deploymentsEnabled: true
///           owner: my-org
///           ownerId: '12345678'
///           pathExcludes:
///             - string
///           pathIncludes:
///             - string
///           prCommentsEnabled: true
///           previewBranchExcludes:
///             - string
///           previewBranchIncludes:
///             - string
///           previewDeploymentSetting: all
///           productionBranch: main
///           productionDeploymentsEnabled: true
///           repoId: '12345678'
///           repoName: my-repo
///         type: github
/// ```
///
///
/// ## Import
///
/// &gt; It is not possible to import a pages project with secret environment variables. If you have a secret environment variable, you must remove it from your project before importing it.
///
///
/// ```sh
/// $ pulumi import cloudflare:index/pagesProject:PagesProject example '<account_id>/<project_name>'
/// ```
class PagesProject extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// Configs for the project build process.
  late final pulumi.Output<PagesProjectBuildConfig> buildConfig;
  /// Most recent production deployment of the project.
  late final pulumi.Output<PagesProjectCanonicalDeployment> canonicalDeployment;
  /// When the project was created.
  late final pulumi.Output<String> createdOn;
  /// Configs for deployments in a project.
  late final pulumi.Output<PagesProjectDeploymentConfigs> deploymentConfigs;
  /// A list of associated custom domains for the project.
  late final pulumi.Output<List<String>> domains;
  /// Framework the project is using.
  late final pulumi.Output<String> framework;
  /// Version of the framework the project is using.
  late final pulumi.Output<String> frameworkVersion;
  /// Most recent deployment of the project.
  late final pulumi.Output<PagesProjectLatestDeployment> latestDeployment;
  /// Name of the project.
  late final pulumi.Output<String> name;
  /// Name of the preview script.
  late final pulumi.Output<String> previewScriptName;
  /// Production branch of the project. Used to identify production deployments.
  late final pulumi.Output<String> productionBranch;
  /// Name of the production script.
  late final pulumi.Output<String> productionScriptName;
  /// Configs for the project source control.
  late final pulumi.Output<PagesProjectSource?> source;
  /// The Cloudflare subdomain associated with the project.
  late final pulumi.Output<String> subdomain;
  /// Whether the project uses functions.
  late final pulumi.Output<bool> usesFunctions;

  /// Creates a new [PagesProject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PagesProject]. {@macro pulumi_index_pages_project_pages_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PagesProject(
    String name, {
    PagesProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/pagesProject:PagesProject',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    buildConfig = registerOutput<PagesProjectBuildConfig>('buildConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesProjectBuildConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    canonicalDeployment = registerOutput<PagesProjectCanonicalDeployment>('canonicalDeployment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesProjectCanonicalDeployment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdOn = registerOutput<String>('createdOn');
    deploymentConfigs = registerOutput<PagesProjectDeploymentConfigs>('deploymentConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesProjectDeploymentConfigs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domains = registerOutput<List<String>>('domains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    framework = registerOutput<String>('framework');
    frameworkVersion = registerOutput<String>('frameworkVersion');
    latestDeployment = registerOutput<PagesProjectLatestDeployment>('latestDeployment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesProjectLatestDeployment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    previewScriptName = registerOutput<String>('previewScriptName');
    productionBranch = registerOutput<String>('productionBranch');
    productionScriptName = registerOutput<String>('productionScriptName');
    source = registerOutput<PagesProjectSource?>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesProjectSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subdomain = registerOutput<String>('subdomain');
    usesFunctions = registerOutput<bool>('usesFunctions');
  }

  /// Gets an existing [PagesProject] resource's state with the given [name] and [id].
  static PagesProject get(
    String name,
    pulumi.Input<String> id, {
    PagesProjectState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PagesProject._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PagesProject._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/pagesProject:PagesProject',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    buildConfig = registerOutput<PagesProjectBuildConfig>('buildConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesProjectBuildConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    canonicalDeployment = registerOutput<PagesProjectCanonicalDeployment>('canonicalDeployment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesProjectCanonicalDeployment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdOn = registerOutput<String>('createdOn');
    deploymentConfigs = registerOutput<PagesProjectDeploymentConfigs>('deploymentConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesProjectDeploymentConfigs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domains = registerOutput<List<String>>('domains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    framework = registerOutput<String>('framework');
    frameworkVersion = registerOutput<String>('frameworkVersion');
    latestDeployment = registerOutput<PagesProjectLatestDeployment>('latestDeployment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesProjectLatestDeployment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    previewScriptName = registerOutput<String>('previewScriptName');
    productionBranch = registerOutput<String>('productionBranch');
    productionScriptName = registerOutput<String>('productionScriptName');
    source = registerOutput<PagesProjectSource?>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesProjectSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subdomain = registerOutput<String>('subdomain');
    usesFunctions = registerOutput<bool>('usesFunctions');
  }

  /// Creates a typed reference to an existing [PagesProject] resource.
  PagesProject.reference(String urn)
    : super(
        'cloudflare:index/pagesProject:PagesProject',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    buildConfig = registerOutput<PagesProjectBuildConfig>('buildConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesProjectBuildConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    canonicalDeployment = registerOutput<PagesProjectCanonicalDeployment>('canonicalDeployment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesProjectCanonicalDeployment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdOn = registerOutput<String>('createdOn');
    deploymentConfigs = registerOutput<PagesProjectDeploymentConfigs>('deploymentConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesProjectDeploymentConfigs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domains = registerOutput<List<String>>('domains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    framework = registerOutput<String>('framework');
    frameworkVersion = registerOutput<String>('frameworkVersion');
    latestDeployment = registerOutput<PagesProjectLatestDeployment>('latestDeployment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesProjectLatestDeployment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    previewScriptName = registerOutput<String>('previewScriptName');
    productionBranch = registerOutput<String>('productionBranch');
    productionScriptName = registerOutput<String>('productionScriptName');
    source = registerOutput<PagesProjectSource?>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesProjectSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subdomain = registerOutput<String>('subdomain');
    usesFunctions = registerOutput<bool>('usesFunctions');
  }
}
