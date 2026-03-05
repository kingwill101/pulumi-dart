import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcp_integrations_alloy_db.dart';
import 'gcp_integrations_app_engine.dart';
import 'gcp_integrations_args.dart';
import 'gcp_integrations_big_query.dart';
import 'gcp_integrations_big_table.dart';
import 'gcp_integrations_composer.dart';
import 'gcp_integrations_data_flow.dart';
import 'gcp_integrations_data_proc.dart';
import 'gcp_integrations_data_store.dart';
import 'gcp_integrations_fire_base_database.dart';
import 'gcp_integrations_fire_base_hosting.dart';
import 'gcp_integrations_fire_base_storage.dart';
import 'gcp_integrations_fire_store.dart';
import 'gcp_integrations_functions.dart';
import 'gcp_integrations_interconnect.dart';
import 'gcp_integrations_kubernetes.dart';
import 'gcp_integrations_load_balancing.dart';
import 'gcp_integrations_mem_cache.dart';
import 'gcp_integrations_pub_sub.dart';
import 'gcp_integrations_redis.dart';
import 'gcp_integrations_router.dart';
import 'gcp_integrations_run.dart';
import 'gcp_integrations_spanner.dart';
import 'gcp_integrations_sql.dart';
import 'gcp_integrations_state.dart';
import 'gcp_integrations_storage.dart';
import 'gcp_integrations_virtual_machines.dart';
import 'gcp_integrations_vpc_access.dart';

/// Use this resource to integrate GCP services with New Relic.
///
/// ## Prerequisite
///
/// Setup is required for this resource to work properly. This resource assumes you have linked a GCP account to New Relic and configured it to pull metrics from GCP.
///
/// New Relic doesn't automatically receive metrics from GCP services, so this resource can be used to configure integrations to those services.
///
/// ## Example Usage
///
/// Leave an integration block empty to use its default configuration. You can also use the full example, including the GCP set up, found in our guides.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.cloud.GcpLinkAccount("foo", {
///     name: "example",
///     projectId: "<Your GCP project ID>",
/// });
/// const foo1 = new newrelic.cloud.GcpIntegrations("foo1", {
///     linkedAccountId: foo.id,
///     appEngine: {
///         metricsPollingInterval: 300,
///     },
///     bigQuery: {
///         metricsPollingInterval: 300,
///         fetchTags: true,
///     },
///     bigTable: {
///         metricsPollingInterval: 300,
///     },
///     composer: {
///         metricsPollingInterval: 300,
///     },
///     dataFlow: {
///         metricsPollingInterval: 300,
///     },
///     dataProc: {
///         metricsPollingInterval: 300,
///     },
///     dataStore: {
///         metricsPollingInterval: 300,
///     },
///     fireBaseDatabase: {
///         metricsPollingInterval: 300,
///     },
///     fireBaseHosting: {
///         metricsPollingInterval: 300,
///     },
///     fireBaseStorage: {
///         metricsPollingInterval: 300,
///     },
///     fireStore: {
///         metricsPollingInterval: 300,
///     },
///     functions: {
///         metricsPollingInterval: 300,
///     },
///     interconnect: {
///         metricsPollingInterval: 300,
///     },
///     kubernetes: {
///         metricsPollingInterval: 300,
///     },
///     loadBalancing: {
///         metricsPollingInterval: 300,
///     },
///     memCache: {
///         metricsPollingInterval: 300,
///     },
///     pubSub: {
///         metricsPollingInterval: 300,
///         fetchTags: true,
///     },
///     redis: {
///         metricsPollingInterval: 300,
///     },
///     router: {
///         metricsPollingInterval: 300,
///     },
///     run: {
///         metricsPollingInterval: 300,
///     },
///     spanner: {
///         metricsPollingInterval: 300,
///         fetchTags: true,
///     },
///     sql: {
///         metricsPollingInterval: 300,
///     },
///     storage: {
///         metricsPollingInterval: 300,
///         fetchTags: true,
///     },
///     virtualMachines: {
///         metricsPollingInterval: 300,
///     },
///     vpcAccess: {
///         metricsPollingInterval: 300,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.cloud.GcpLinkAccount("foo",
///     name="example",
///     project_id="<Your GCP project ID>")
/// foo1 = newrelic.cloud.GcpIntegrations("foo1",
///     linked_account_id=foo.id,
///     app_engine={
///         "metrics_polling_interval": 300,
///     },
///     big_query={
///         "metrics_polling_interval": 300,
///         "fetch_tags": True,
///     },
///     big_table={
///         "metrics_polling_interval": 300,
///     },
///     composer={
///         "metrics_polling_interval": 300,
///     },
///     data_flow={
///         "metrics_polling_interval": 300,
///     },
///     data_proc={
///         "metrics_polling_interval": 300,
///     },
///     data_store={
///         "metrics_polling_interval": 300,
///     },
///     fire_base_database={
///         "metrics_polling_interval": 300,
///     },
///     fire_base_hosting={
///         "metrics_polling_interval": 300,
///     },
///     fire_base_storage={
///         "metrics_polling_interval": 300,
///     },
///     fire_store={
///         "metrics_polling_interval": 300,
///     },
///     functions={
///         "metrics_polling_interval": 300,
///     },
///     interconnect={
///         "metrics_polling_interval": 300,
///     },
///     kubernetes={
///         "metrics_polling_interval": 300,
///     },
///     load_balancing={
///         "metrics_polling_interval": 300,
///     },
///     mem_cache={
///         "metrics_polling_interval": 300,
///     },
///     pub_sub={
///         "metrics_polling_interval": 300,
///         "fetch_tags": True,
///     },
///     redis={
///         "metrics_polling_interval": 300,
///     },
///     router={
///         "metrics_polling_interval": 300,
///     },
///     run={
///         "metrics_polling_interval": 300,
///     },
///     spanner={
///         "metrics_polling_interval": 300,
///         "fetch_tags": True,
///     },
///     sql={
///         "metrics_polling_interval": 300,
///     },
///     storage={
///         "metrics_polling_interval": 300,
///         "fetch_tags": True,
///     },
///     virtual_machines={
///         "metrics_polling_interval": 300,
///     },
///     vpc_access={
///         "metrics_polling_interval": 300,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.Cloud.GcpLinkAccount("foo", new()
///     {
///         Name = "example",
///         ProjectId = "<Your GCP project ID>",
///     });
///
///     var foo1 = new NewRelic.Cloud.GcpIntegrations("foo1", new()
///     {
///         LinkedAccountId = foo.Id,
///         AppEngine = new NewRelic.Cloud.Inputs.GcpIntegrationsAppEngineArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         BigQuery = new NewRelic.Cloud.Inputs.GcpIntegrationsBigQueryArgs
///         {
///             MetricsPollingInterval = 300,
///             FetchTags = true,
///         },
///         BigTable = new NewRelic.Cloud.Inputs.GcpIntegrationsBigTableArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         Composer = new NewRelic.Cloud.Inputs.GcpIntegrationsComposerArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         DataFlow = new NewRelic.Cloud.Inputs.GcpIntegrationsDataFlowArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         DataProc = new NewRelic.Cloud.Inputs.GcpIntegrationsDataProcArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         DataStore = new NewRelic.Cloud.Inputs.GcpIntegrationsDataStoreArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         FireBaseDatabase = new NewRelic.Cloud.Inputs.GcpIntegrationsFireBaseDatabaseArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         FireBaseHosting = new NewRelic.Cloud.Inputs.GcpIntegrationsFireBaseHostingArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         FireBaseStorage = new NewRelic.Cloud.Inputs.GcpIntegrationsFireBaseStorageArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         FireStore = new NewRelic.Cloud.Inputs.GcpIntegrationsFireStoreArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         Functions = new NewRelic.Cloud.Inputs.GcpIntegrationsFunctionsArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         Interconnect = new NewRelic.Cloud.Inputs.GcpIntegrationsInterconnectArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         Kubernetes = new NewRelic.Cloud.Inputs.GcpIntegrationsKubernetesArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         LoadBalancing = new NewRelic.Cloud.Inputs.GcpIntegrationsLoadBalancingArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         MemCache = new NewRelic.Cloud.Inputs.GcpIntegrationsMemCacheArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         PubSub = new NewRelic.Cloud.Inputs.GcpIntegrationsPubSubArgs
///         {
///             MetricsPollingInterval = 300,
///             FetchTags = true,
///         },
///         Redis = new NewRelic.Cloud.Inputs.GcpIntegrationsRedisArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         Router = new NewRelic.Cloud.Inputs.GcpIntegrationsRouterArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         Run = new NewRelic.Cloud.Inputs.GcpIntegrationsRunArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         Spanner = new NewRelic.Cloud.Inputs.GcpIntegrationsSpannerArgs
///         {
///             MetricsPollingInterval = 300,
///             FetchTags = true,
///         },
///         Sql = new NewRelic.Cloud.Inputs.GcpIntegrationsSqlArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         Storage = new NewRelic.Cloud.Inputs.GcpIntegrationsStorageArgs
///         {
///             MetricsPollingInterval = 300,
///             FetchTags = true,
///         },
///         VirtualMachines = new NewRelic.Cloud.Inputs.GcpIntegrationsVirtualMachinesArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         VpcAccess = new NewRelic.Cloud.Inputs.GcpIntegrationsVpcAccessArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/cloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := cloud.NewGcpLinkAccount(ctx, "foo", &cloud.GcpLinkAccountArgs{
/// 			Name:      pulumi.String("example"),
/// 			ProjectId: pulumi.String("<Your GCP project ID>"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloud.NewGcpIntegrations(ctx, "foo1", &cloud.GcpIntegrationsArgs{
/// 			LinkedAccountId: foo.ID(),
/// 			AppEngine: &cloud.GcpIntegrationsAppEngineArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			BigQuery: &cloud.GcpIntegrationsBigQueryArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				FetchTags:              pulumi.Bool(true),
/// 			},
/// 			BigTable: &cloud.GcpIntegrationsBigTableArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			Composer: &cloud.GcpIntegrationsComposerArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			DataFlow: &cloud.GcpIntegrationsDataFlowArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			DataProc: &cloud.GcpIntegrationsDataProcArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			DataStore: &cloud.GcpIntegrationsDataStoreArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			FireBaseDatabase: &cloud.GcpIntegrationsFireBaseDatabaseArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			FireBaseHosting: &cloud.GcpIntegrationsFireBaseHostingArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			FireBaseStorage: &cloud.GcpIntegrationsFireBaseStorageArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			FireStore: &cloud.GcpIntegrationsFireStoreArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			Functions: &cloud.GcpIntegrationsFunctionsArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			Interconnect: &cloud.GcpIntegrationsInterconnectArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			Kubernetes: &cloud.GcpIntegrationsKubernetesArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			LoadBalancing: &cloud.GcpIntegrationsLoadBalancingArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			MemCache: &cloud.GcpIntegrationsMemCacheArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			PubSub: &cloud.GcpIntegrationsPubSubArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				FetchTags:              pulumi.Bool(true),
/// 			},
/// 			Redis: &cloud.GcpIntegrationsRedisArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			Router: &cloud.GcpIntegrationsRouterArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			Run: &cloud.GcpIntegrationsRunArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			Spanner: &cloud.GcpIntegrationsSpannerArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				FetchTags:              pulumi.Bool(true),
/// 			},
/// 			Sql: &cloud.GcpIntegrationsSqlArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			Storage: &cloud.GcpIntegrationsStorageArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				FetchTags:              pulumi.Bool(true),
/// 			},
/// 			VirtualMachines: &cloud.GcpIntegrationsVirtualMachinesArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			VpcAccess: &cloud.GcpIntegrationsVpcAccessArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
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
/// import com.pulumi.newrelic.cloud.GcpLinkAccount;
/// import com.pulumi.newrelic.cloud.GcpLinkAccountArgs;
/// import com.pulumi.newrelic.cloud.GcpIntegrations;
/// import com.pulumi.newrelic.cloud.GcpIntegrationsArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsAppEngineArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsBigQueryArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsBigTableArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsComposerArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsDataFlowArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsDataProcArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsDataStoreArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsFireBaseDatabaseArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsFireBaseHostingArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsFireBaseStorageArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsFireStoreArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsFunctionsArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsInterconnectArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsKubernetesArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsLoadBalancingArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsMemCacheArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsPubSubArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsRedisArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsRouterArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsRunArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsSpannerArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsSqlArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsStorageArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsVirtualMachinesArgs;
/// import com.pulumi.newrelic.cloud.inputs.GcpIntegrationsVpcAccessArgs;
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
///         var foo = new GcpLinkAccount("foo", GcpLinkAccountArgs.builder()
///             .name("example")
///             .projectId("<Your GCP project ID>")
///             .build());
///
///         var foo1 = new GcpIntegrations("foo1", GcpIntegrationsArgs.builder()
///             .linkedAccountId(foo.id())
///             .appEngine(GcpIntegrationsAppEngineArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .bigQuery(GcpIntegrationsBigQueryArgs.builder()
///                 .metricsPollingInterval(300)
///                 .fetchTags(true)
///                 .build())
///             .bigTable(GcpIntegrationsBigTableArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .composer(GcpIntegrationsComposerArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .dataFlow(GcpIntegrationsDataFlowArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .dataProc(GcpIntegrationsDataProcArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .dataStore(GcpIntegrationsDataStoreArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .fireBaseDatabase(GcpIntegrationsFireBaseDatabaseArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .fireBaseHosting(GcpIntegrationsFireBaseHostingArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .fireBaseStorage(GcpIntegrationsFireBaseStorageArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .fireStore(GcpIntegrationsFireStoreArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .functions(GcpIntegrationsFunctionsArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .interconnect(GcpIntegrationsInterconnectArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .kubernetes(GcpIntegrationsKubernetesArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .loadBalancing(GcpIntegrationsLoadBalancingArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .memCache(GcpIntegrationsMemCacheArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .pubSub(GcpIntegrationsPubSubArgs.builder()
///                 .metricsPollingInterval(300)
///                 .fetchTags(true)
///                 .build())
///             .redis(GcpIntegrationsRedisArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .router(GcpIntegrationsRouterArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .run(GcpIntegrationsRunArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .spanner(GcpIntegrationsSpannerArgs.builder()
///                 .metricsPollingInterval(300)
///                 .fetchTags(true)
///                 .build())
///             .sql(GcpIntegrationsSqlArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .storage(GcpIntegrationsStorageArgs.builder()
///                 .metricsPollingInterval(300)
///                 .fetchTags(true)
///                 .build())
///             .virtualMachines(GcpIntegrationsVirtualMachinesArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .vpcAccess(GcpIntegrationsVpcAccessArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:cloud:GcpLinkAccount
///     properties:
///       name: example
///       projectId: <Your GCP project ID>
///   foo1:
///     type: newrelic:cloud:GcpIntegrations
///     properties:
///       linkedAccountId: ${foo.id}
///       appEngine:
///         metricsPollingInterval: 300
///       bigQuery:
///         metricsPollingInterval: 300
///         fetchTags: true
///       bigTable:
///         metricsPollingInterval: 300
///       composer:
///         metricsPollingInterval: 300
///       dataFlow:
///         metricsPollingInterval: 300
///       dataProc:
///         metricsPollingInterval: 300
///       dataStore:
///         metricsPollingInterval: 300
///       fireBaseDatabase:
///         metricsPollingInterval: 300
///       fireBaseHosting:
///         metricsPollingInterval: 300
///       fireBaseStorage:
///         metricsPollingInterval: 300
///       fireStore:
///         metricsPollingInterval: 300
///       functions:
///         metricsPollingInterval: 300
///       interconnect:
///         metricsPollingInterval: 300
///       kubernetes:
///         metricsPollingInterval: 300
///       loadBalancing:
///         metricsPollingInterval: 300
///       memCache:
///         metricsPollingInterval: 300
///       pubSub:
///         metricsPollingInterval: 300
///         fetchTags: true
///       redis:
///         metricsPollingInterval: 300
///       router:
///         metricsPollingInterval: 300
///       run:
///         metricsPollingInterval: 300
///       spanner:
///         metricsPollingInterval: 300
///         fetchTags: true
///       sql:
///         metricsPollingInterval: 300
///       storage:
///         metricsPollingInterval: 300
///         fetchTags: true
///       virtualMachines:
///         metricsPollingInterval: 300
///       vpcAccess:
///         metricsPollingInterval: 300
/// ```
///
///
/// ## Import
///
/// Linked GCP account integrations can be imported using the `id`, e.g.
///
/// ```bash
/// $ terraform import newrelic_cloud_gcp_integrations.foo <id>
/// ```
class GcpIntegrations extends pulumi.CustomResource {
  /// The New Relic account ID to operate on.  This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  late final pulumi.Output<String> accountId;

  /// Alloy DB integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsAlloyDb?> alloyDb;

  /// App Engine integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsAppEngine?> appEngine;

  /// Biq Query integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsBigQuery?> bigQuery;

  /// Big Table. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsBigTable?> bigTable;

  /// Composer integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsComposer?> composer;

  /// Data Flow integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsDataFlow?> dataFlow;

  /// Data Proc integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsDataProc?> dataProc;

  /// Data Store integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsDataStore?> dataStore;

  /// Fire Base Database integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsFireBaseDatabase?> fireBaseDatabase;

  /// Fire Base Hosting integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsFireBaseHosting?> fireBaseHosting;

  /// Fire Base Storage integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsFireBaseStorage?> fireBaseStorage;

  /// Fire Store integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsFireStore?> fireStore;

  /// Functions integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsFunctions?> functions;

  /// Interconnect integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsInterconnect?> interconnect;

  /// Kubernetes integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsKubernetes?> kubernetes;

  /// The ID of the linked GCP account in New Relic.
  ///
  /// The following arguments/integration blocks are intended to be used with a minimum `metrics_polling_interval` of 300 seconds.
  late final pulumi.Output<String> linkedAccountId;

  /// Load Balancing integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsLoadBalancing?> loadBalancing;

  /// Mem cache integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsMemCache?> memCache;

  /// Pub/Sub integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsPubSub?> pubSub;

  /// Redis integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsRedis?> redis;

  /// Router integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsRouter?> router;

  /// Run integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsRun?> run;

  /// Spanner integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsSpanner?> spanner;

  /// SQL integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsSql?> sql;

  /// Storage integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsStorage?> storage;

  /// Virtual machines integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsVirtualMachines?> virtualMachines;

  /// VPC Access integration. See Integration blocks below for details.
  late final pulumi.Output<GcpIntegrationsVpcAccess?> vpcAccess;

  /// Creates a new [GcpIntegrations].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GcpIntegrations]. {@macro pulumi_cloud_gcp_integrations_gcp_integrations_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GcpIntegrations(
    String name, {
    GcpIntegrationsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:cloud/gcpIntegrations:GcpIntegrations',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    alloyDb = registerOutput<GcpIntegrationsAlloyDb?>(
      'alloyDb',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsAlloyDb.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    appEngine = registerOutput<GcpIntegrationsAppEngine?>(
      'appEngine',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsAppEngine.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    bigQuery = registerOutput<GcpIntegrationsBigQuery?>(
      'bigQuery',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsBigQuery.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    bigTable = registerOutput<GcpIntegrationsBigTable?>(
      'bigTable',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsBigTable.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    composer = registerOutput<GcpIntegrationsComposer?>(
      'composer',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsComposer.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    dataFlow = registerOutput<GcpIntegrationsDataFlow?>(
      'dataFlow',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsDataFlow.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    dataProc = registerOutput<GcpIntegrationsDataProc?>(
      'dataProc',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsDataProc.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    dataStore = registerOutput<GcpIntegrationsDataStore?>(
      'dataStore',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsDataStore.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    fireBaseDatabase = registerOutput<GcpIntegrationsFireBaseDatabase?>(
      'fireBaseDatabase',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsFireBaseDatabase.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    fireBaseHosting = registerOutput<GcpIntegrationsFireBaseHosting?>(
      'fireBaseHosting',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsFireBaseHosting.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    fireBaseStorage = registerOutput<GcpIntegrationsFireBaseStorage?>(
      'fireBaseStorage',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsFireBaseStorage.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    fireStore = registerOutput<GcpIntegrationsFireStore?>(
      'fireStore',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsFireStore.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    functions = registerOutput<GcpIntegrationsFunctions?>(
      'functions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsFunctions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    interconnect = registerOutput<GcpIntegrationsInterconnect?>(
      'interconnect',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsInterconnect.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    kubernetes = registerOutput<GcpIntegrationsKubernetes?>(
      'kubernetes',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsKubernetes.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    linkedAccountId = registerOutput<String>('linkedAccountId');
    loadBalancing = registerOutput<GcpIntegrationsLoadBalancing?>(
      'loadBalancing',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsLoadBalancing.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    memCache = registerOutput<GcpIntegrationsMemCache?>(
      'memCache',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsMemCache.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    pubSub = registerOutput<GcpIntegrationsPubSub?>(
      'pubSub',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsPubSub.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    redis = registerOutput<GcpIntegrationsRedis?>(
      'redis',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsRedis.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    router = registerOutput<GcpIntegrationsRouter?>(
      'router',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsRouter.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    run = registerOutput<GcpIntegrationsRun?>(
      'run',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsRun.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    spanner = registerOutput<GcpIntegrationsSpanner?>(
      'spanner',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsSpanner.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sql = registerOutput<GcpIntegrationsSql?>(
      'sql',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsSql.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    storage = registerOutput<GcpIntegrationsStorage?>(
      'storage',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsStorage.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    virtualMachines = registerOutput<GcpIntegrationsVirtualMachines?>(
      'virtualMachines',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsVirtualMachines.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    vpcAccess = registerOutput<GcpIntegrationsVpcAccess?>(
      'vpcAccess',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsVpcAccess.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [GcpIntegrations] resource's state with the given [name] and [id].
  static GcpIntegrations get(
    String name,
    pulumi.Input<String> id, {
    GcpIntegrationsState? state,
  }) {
    return GcpIntegrations._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GcpIntegrations._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:cloud/gcpIntegrations:GcpIntegrations',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    alloyDb = registerOutput<GcpIntegrationsAlloyDb?>(
      'alloyDb',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsAlloyDb.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    appEngine = registerOutput<GcpIntegrationsAppEngine?>(
      'appEngine',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsAppEngine.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    bigQuery = registerOutput<GcpIntegrationsBigQuery?>(
      'bigQuery',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsBigQuery.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    bigTable = registerOutput<GcpIntegrationsBigTable?>(
      'bigTable',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsBigTable.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    composer = registerOutput<GcpIntegrationsComposer?>(
      'composer',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsComposer.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    dataFlow = registerOutput<GcpIntegrationsDataFlow?>(
      'dataFlow',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsDataFlow.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    dataProc = registerOutput<GcpIntegrationsDataProc?>(
      'dataProc',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsDataProc.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    dataStore = registerOutput<GcpIntegrationsDataStore?>(
      'dataStore',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsDataStore.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    fireBaseDatabase = registerOutput<GcpIntegrationsFireBaseDatabase?>(
      'fireBaseDatabase',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsFireBaseDatabase.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    fireBaseHosting = registerOutput<GcpIntegrationsFireBaseHosting?>(
      'fireBaseHosting',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsFireBaseHosting.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    fireBaseStorage = registerOutput<GcpIntegrationsFireBaseStorage?>(
      'fireBaseStorage',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsFireBaseStorage.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    fireStore = registerOutput<GcpIntegrationsFireStore?>(
      'fireStore',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsFireStore.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    functions = registerOutput<GcpIntegrationsFunctions?>(
      'functions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsFunctions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    interconnect = registerOutput<GcpIntegrationsInterconnect?>(
      'interconnect',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsInterconnect.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    kubernetes = registerOutput<GcpIntegrationsKubernetes?>(
      'kubernetes',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsKubernetes.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    linkedAccountId = registerOutput<String>('linkedAccountId');
    loadBalancing = registerOutput<GcpIntegrationsLoadBalancing?>(
      'loadBalancing',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsLoadBalancing.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    memCache = registerOutput<GcpIntegrationsMemCache?>(
      'memCache',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsMemCache.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    pubSub = registerOutput<GcpIntegrationsPubSub?>(
      'pubSub',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsPubSub.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    redis = registerOutput<GcpIntegrationsRedis?>(
      'redis',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsRedis.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    router = registerOutput<GcpIntegrationsRouter?>(
      'router',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsRouter.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    run = registerOutput<GcpIntegrationsRun?>(
      'run',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsRun.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    spanner = registerOutput<GcpIntegrationsSpanner?>(
      'spanner',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsSpanner.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sql = registerOutput<GcpIntegrationsSql?>(
      'sql',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsSql.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    storage = registerOutput<GcpIntegrationsStorage?>(
      'storage',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsStorage.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    virtualMachines = registerOutput<GcpIntegrationsVirtualMachines?>(
      'virtualMachines',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsVirtualMachines.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    vpcAccess = registerOutput<GcpIntegrationsVpcAccess?>(
      'vpcAccess',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcpIntegrationsVpcAccess.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
