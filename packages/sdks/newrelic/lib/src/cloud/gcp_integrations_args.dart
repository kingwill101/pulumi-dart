// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcp_integrations_alloy_db.dart';
import 'gcp_integrations_app_engine.dart';
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
import 'gcp_integrations_storage.dart';
import 'gcp_integrations_virtual_machines.dart';
import 'gcp_integrations_vpc_access.dart';

/// {@template pulumi_cloud_gcp_integrations_gcp_integrations_args_doc}
/// The set of arguments for GcpIntegrations.
/// {@endtemplate}
/// {@macro pulumi_cloud_gcp_integrations_gcp_integrations_args_doc}
class GcpIntegrationsArgs {
  /// The New Relic account ID to operate on.  This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  final pulumi.Input<String>? accountId;
  /// Alloy DB integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsAlloyDb>? alloyDb;
  /// App Engine integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsAppEngine>? appEngine;
  /// Biq Query integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsBigQuery>? bigQuery;
  /// Big Table. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsBigTable>? bigTable;
  /// Composer integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsComposer>? composer;
  /// Data Flow integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsDataFlow>? dataFlow;
  /// Data Proc integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsDataProc>? dataProc;
  /// Data Store integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsDataStore>? dataStore;
  /// Fire Base Database integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsFireBaseDatabase>? fireBaseDatabase;
  /// Fire Base Hosting integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsFireBaseHosting>? fireBaseHosting;
  /// Fire Base Storage integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsFireBaseStorage>? fireBaseStorage;
  /// Fire Store integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsFireStore>? fireStore;
  /// Functions integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsFunctions>? functions;
  /// Interconnect integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsInterconnect>? interconnect;
  /// Kubernetes integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsKubernetes>? kubernetes;
  /// The ID of the linked GCP account in New Relic.
  ///
  /// The following arguments/integration blocks are intended to be used with a minimum `metrics_polling_interval` of 300 seconds.
  final pulumi.Input<String> linkedAccountId;
  /// Load Balancing integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsLoadBalancing>? loadBalancing;
  /// Mem cache integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsMemCache>? memCache;
  /// Pub/Sub integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsPubSub>? pubSub;
  /// Redis integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsRedis>? redis;
  /// Router integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsRouter>? router;
  /// Run integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsRun>? run;
  /// Spanner integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsSpanner>? spanner;
  /// SQL integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsSql>? sql;
  /// Storage integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsStorage>? storage;
  /// Virtual machines integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsVirtualMachines>? virtualMachines;
  /// VPC Access integration. See Integration blocks below for details.
  final pulumi.Input<GcpIntegrationsVpcAccess>? vpcAccess;

  /// Creates a new [GcpIntegrationsArgs].
  /// [accountId] The New Relic account ID to operate on.  This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  /// [alloyDb] Alloy DB integration. See Integration blocks below for details.
  /// [appEngine] App Engine integration. See Integration blocks below for details.
  /// [bigQuery] Biq Query integration. See Integration blocks below for details.
  /// [bigTable] Big Table. See Integration blocks below for details.
  /// [composer] Composer integration. See Integration blocks below for details.
  /// [dataFlow] Data Flow integration. See Integration blocks below for details.
  /// [dataProc] Data Proc integration. See Integration blocks below for details.
  /// [dataStore] Data Store integration. See Integration blocks below for details.
  /// [fireBaseDatabase] Fire Base Database integration. See Integration blocks below for details.
  /// [fireBaseHosting] Fire Base Hosting integration. See Integration blocks below for details.
  /// [fireBaseStorage] Fire Base Storage integration. See Integration blocks below for details.
  /// [fireStore] Fire Store integration. See Integration blocks below for details.
  /// [functions] Functions integration. See Integration blocks below for details.
  /// [interconnect] Interconnect integration. See Integration blocks below for details.
  /// [kubernetes] Kubernetes integration. See Integration blocks below for details.
  /// [linkedAccountId] The ID of the linked GCP account in New Relic.
  /// [loadBalancing] Load Balancing integration. See Integration blocks below for details.
  /// [memCache] Mem cache integration. See Integration blocks below for details.
  /// [pubSub] Pub/Sub integration. See Integration blocks below for details.
  /// [redis] Redis integration. See Integration blocks below for details.
  /// [router] Router integration. See Integration blocks below for details.
  /// [run] Run integration. See Integration blocks below for details.
  /// [spanner] Spanner integration. See Integration blocks below for details.
  /// [sql] SQL integration. See Integration blocks below for details.
  /// [storage] Storage integration. See Integration blocks below for details.
  /// [virtualMachines] Virtual machines integration. See Integration blocks below for details.
  /// [vpcAccess] VPC Access integration. See Integration blocks below for details.
  GcpIntegrationsArgs({
    pulumi.Output<String>? accountId,
    pulumi.Output<GcpIntegrationsAlloyDb>? alloyDb,
    pulumi.Output<GcpIntegrationsAppEngine>? appEngine,
    pulumi.Output<GcpIntegrationsBigQuery>? bigQuery,
    pulumi.Output<GcpIntegrationsBigTable>? bigTable,
    pulumi.Output<GcpIntegrationsComposer>? composer,
    pulumi.Output<GcpIntegrationsDataFlow>? dataFlow,
    pulumi.Output<GcpIntegrationsDataProc>? dataProc,
    pulumi.Output<GcpIntegrationsDataStore>? dataStore,
    pulumi.Output<GcpIntegrationsFireBaseDatabase>? fireBaseDatabase,
    pulumi.Output<GcpIntegrationsFireBaseHosting>? fireBaseHosting,
    pulumi.Output<GcpIntegrationsFireBaseStorage>? fireBaseStorage,
    pulumi.Output<GcpIntegrationsFireStore>? fireStore,
    pulumi.Output<GcpIntegrationsFunctions>? functions,
    pulumi.Output<GcpIntegrationsInterconnect>? interconnect,
    pulumi.Output<GcpIntegrationsKubernetes>? kubernetes,
    required pulumi.Output<String> linkedAccountId,
    pulumi.Output<GcpIntegrationsLoadBalancing>? loadBalancing,
    pulumi.Output<GcpIntegrationsMemCache>? memCache,
    pulumi.Output<GcpIntegrationsPubSub>? pubSub,
    pulumi.Output<GcpIntegrationsRedis>? redis,
    pulumi.Output<GcpIntegrationsRouter>? router,
    pulumi.Output<GcpIntegrationsRun>? run,
    pulumi.Output<GcpIntegrationsSpanner>? spanner,
    pulumi.Output<GcpIntegrationsSql>? sql,
    pulumi.Output<GcpIntegrationsStorage>? storage,
    pulumi.Output<GcpIntegrationsVirtualMachines>? virtualMachines,
    pulumi.Output<GcpIntegrationsVpcAccess>? vpcAccess,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      alloyDb = pulumi.Input.asOptionalInput<GcpIntegrationsAlloyDb>(alloyDb),
      appEngine = pulumi.Input.asOptionalInput<GcpIntegrationsAppEngine>(appEngine),
      bigQuery = pulumi.Input.asOptionalInput<GcpIntegrationsBigQuery>(bigQuery),
      bigTable = pulumi.Input.asOptionalInput<GcpIntegrationsBigTable>(bigTable),
      composer = pulumi.Input.asOptionalInput<GcpIntegrationsComposer>(composer),
      dataFlow = pulumi.Input.asOptionalInput<GcpIntegrationsDataFlow>(dataFlow),
      dataProc = pulumi.Input.asOptionalInput<GcpIntegrationsDataProc>(dataProc),
      dataStore = pulumi.Input.asOptionalInput<GcpIntegrationsDataStore>(dataStore),
      fireBaseDatabase = pulumi.Input.asOptionalInput<GcpIntegrationsFireBaseDatabase>(fireBaseDatabase),
      fireBaseHosting = pulumi.Input.asOptionalInput<GcpIntegrationsFireBaseHosting>(fireBaseHosting),
      fireBaseStorage = pulumi.Input.asOptionalInput<GcpIntegrationsFireBaseStorage>(fireBaseStorage),
      fireStore = pulumi.Input.asOptionalInput<GcpIntegrationsFireStore>(fireStore),
      functions = pulumi.Input.asOptionalInput<GcpIntegrationsFunctions>(functions),
      interconnect = pulumi.Input.asOptionalInput<GcpIntegrationsInterconnect>(interconnect),
      kubernetes = pulumi.Input.asOptionalInput<GcpIntegrationsKubernetes>(kubernetes),
      linkedAccountId = pulumi.Input.asInput<String>(linkedAccountId),
      loadBalancing = pulumi.Input.asOptionalInput<GcpIntegrationsLoadBalancing>(loadBalancing),
      memCache = pulumi.Input.asOptionalInput<GcpIntegrationsMemCache>(memCache),
      pubSub = pulumi.Input.asOptionalInput<GcpIntegrationsPubSub>(pubSub),
      redis = pulumi.Input.asOptionalInput<GcpIntegrationsRedis>(redis),
      router = pulumi.Input.asOptionalInput<GcpIntegrationsRouter>(router),
      run = pulumi.Input.asOptionalInput<GcpIntegrationsRun>(run),
      spanner = pulumi.Input.asOptionalInput<GcpIntegrationsSpanner>(spanner),
      sql = pulumi.Input.asOptionalInput<GcpIntegrationsSql>(sql),
      storage = pulumi.Input.asOptionalInput<GcpIntegrationsStorage>(storage),
      virtualMachines = pulumi.Input.asOptionalInput<GcpIntegrationsVirtualMachines>(virtualMachines),
      vpcAccess = pulumi.Input.asOptionalInput<GcpIntegrationsVpcAccess>(vpcAccess);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'alloyDb': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsAlloyDb, Map<String, dynamic>>(alloyDb, (value) => value.toMap()),
      'appEngine': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsAppEngine, Map<String, dynamic>>(appEngine, (value) => value.toMap()),
      'bigQuery': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsBigQuery, Map<String, dynamic>>(bigQuery, (value) => value.toMap()),
      'bigTable': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsBigTable, Map<String, dynamic>>(bigTable, (value) => value.toMap()),
      'composer': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsComposer, Map<String, dynamic>>(composer, (value) => value.toMap()),
      'dataFlow': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsDataFlow, Map<String, dynamic>>(dataFlow, (value) => value.toMap()),
      'dataProc': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsDataProc, Map<String, dynamic>>(dataProc, (value) => value.toMap()),
      'dataStore': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsDataStore, Map<String, dynamic>>(dataStore, (value) => value.toMap()),
      'fireBaseDatabase': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsFireBaseDatabase, Map<String, dynamic>>(fireBaseDatabase, (value) => value.toMap()),
      'fireBaseHosting': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsFireBaseHosting, Map<String, dynamic>>(fireBaseHosting, (value) => value.toMap()),
      'fireBaseStorage': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsFireBaseStorage, Map<String, dynamic>>(fireBaseStorage, (value) => value.toMap()),
      'fireStore': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsFireStore, Map<String, dynamic>>(fireStore, (value) => value.toMap()),
      'functions': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsFunctions, Map<String, dynamic>>(functions, (value) => value.toMap()),
      'interconnect': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsInterconnect, Map<String, dynamic>>(interconnect, (value) => value.toMap()),
      'kubernetes': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsKubernetes, Map<String, dynamic>>(kubernetes, (value) => value.toMap()),
      'linkedAccountId': linkedAccountId,
      'loadBalancing': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsLoadBalancing, Map<String, dynamic>>(loadBalancing, (value) => value.toMap()),
      'memCache': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsMemCache, Map<String, dynamic>>(memCache, (value) => value.toMap()),
      'pubSub': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsPubSub, Map<String, dynamic>>(pubSub, (value) => value.toMap()),
      'redis': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsRedis, Map<String, dynamic>>(redis, (value) => value.toMap()),
      'router': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsRouter, Map<String, dynamic>>(router, (value) => value.toMap()),
      'run': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsRun, Map<String, dynamic>>(run, (value) => value.toMap()),
      'spanner': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsSpanner, Map<String, dynamic>>(spanner, (value) => value.toMap()),
      'sql': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsSql, Map<String, dynamic>>(sql, (value) => value.toMap()),
      'storage': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'virtualMachines': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsVirtualMachines, Map<String, dynamic>>(virtualMachines, (value) => value.toMap()),
      'vpcAccess': ?pulumi.Input.mapOptionalInputValue<GcpIntegrationsVpcAccess, Map<String, dynamic>>(vpcAccess, (value) => value.toMap()),
    };
  }

  factory GcpIntegrationsArgs.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsArgs(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      alloyDb: map['alloyDb'] == null ? null : pulumi.Output.create<GcpIntegrationsAlloyDb>(GcpIntegrationsAlloyDb.fromMap((map['alloyDb'] as Map).cast<String, dynamic>())),
      appEngine: map['appEngine'] == null ? null : pulumi.Output.create<GcpIntegrationsAppEngine>(GcpIntegrationsAppEngine.fromMap((map['appEngine'] as Map).cast<String, dynamic>())),
      bigQuery: map['bigQuery'] == null ? null : pulumi.Output.create<GcpIntegrationsBigQuery>(GcpIntegrationsBigQuery.fromMap((map['bigQuery'] as Map).cast<String, dynamic>())),
      bigTable: map['bigTable'] == null ? null : pulumi.Output.create<GcpIntegrationsBigTable>(GcpIntegrationsBigTable.fromMap((map['bigTable'] as Map).cast<String, dynamic>())),
      composer: map['composer'] == null ? null : pulumi.Output.create<GcpIntegrationsComposer>(GcpIntegrationsComposer.fromMap((map['composer'] as Map).cast<String, dynamic>())),
      dataFlow: map['dataFlow'] == null ? null : pulumi.Output.create<GcpIntegrationsDataFlow>(GcpIntegrationsDataFlow.fromMap((map['dataFlow'] as Map).cast<String, dynamic>())),
      dataProc: map['dataProc'] == null ? null : pulumi.Output.create<GcpIntegrationsDataProc>(GcpIntegrationsDataProc.fromMap((map['dataProc'] as Map).cast<String, dynamic>())),
      dataStore: map['dataStore'] == null ? null : pulumi.Output.create<GcpIntegrationsDataStore>(GcpIntegrationsDataStore.fromMap((map['dataStore'] as Map).cast<String, dynamic>())),
      fireBaseDatabase: map['fireBaseDatabase'] == null ? null : pulumi.Output.create<GcpIntegrationsFireBaseDatabase>(GcpIntegrationsFireBaseDatabase.fromMap((map['fireBaseDatabase'] as Map).cast<String, dynamic>())),
      fireBaseHosting: map['fireBaseHosting'] == null ? null : pulumi.Output.create<GcpIntegrationsFireBaseHosting>(GcpIntegrationsFireBaseHosting.fromMap((map['fireBaseHosting'] as Map).cast<String, dynamic>())),
      fireBaseStorage: map['fireBaseStorage'] == null ? null : pulumi.Output.create<GcpIntegrationsFireBaseStorage>(GcpIntegrationsFireBaseStorage.fromMap((map['fireBaseStorage'] as Map).cast<String, dynamic>())),
      fireStore: map['fireStore'] == null ? null : pulumi.Output.create<GcpIntegrationsFireStore>(GcpIntegrationsFireStore.fromMap((map['fireStore'] as Map).cast<String, dynamic>())),
      functions: map['functions'] == null ? null : pulumi.Output.create<GcpIntegrationsFunctions>(GcpIntegrationsFunctions.fromMap((map['functions'] as Map).cast<String, dynamic>())),
      interconnect: map['interconnect'] == null ? null : pulumi.Output.create<GcpIntegrationsInterconnect>(GcpIntegrationsInterconnect.fromMap((map['interconnect'] as Map).cast<String, dynamic>())),
      kubernetes: map['kubernetes'] == null ? null : pulumi.Output.create<GcpIntegrationsKubernetes>(GcpIntegrationsKubernetes.fromMap((map['kubernetes'] as Map).cast<String, dynamic>())),
      linkedAccountId: pulumi.Output.create<String>(map['linkedAccountId'] as String),
      loadBalancing: map['loadBalancing'] == null ? null : pulumi.Output.create<GcpIntegrationsLoadBalancing>(GcpIntegrationsLoadBalancing.fromMap((map['loadBalancing'] as Map).cast<String, dynamic>())),
      memCache: map['memCache'] == null ? null : pulumi.Output.create<GcpIntegrationsMemCache>(GcpIntegrationsMemCache.fromMap((map['memCache'] as Map).cast<String, dynamic>())),
      pubSub: map['pubSub'] == null ? null : pulumi.Output.create<GcpIntegrationsPubSub>(GcpIntegrationsPubSub.fromMap((map['pubSub'] as Map).cast<String, dynamic>())),
      redis: map['redis'] == null ? null : pulumi.Output.create<GcpIntegrationsRedis>(GcpIntegrationsRedis.fromMap((map['redis'] as Map).cast<String, dynamic>())),
      router: map['router'] == null ? null : pulumi.Output.create<GcpIntegrationsRouter>(GcpIntegrationsRouter.fromMap((map['router'] as Map).cast<String, dynamic>())),
      run: map['run'] == null ? null : pulumi.Output.create<GcpIntegrationsRun>(GcpIntegrationsRun.fromMap((map['run'] as Map).cast<String, dynamic>())),
      spanner: map['spanner'] == null ? null : pulumi.Output.create<GcpIntegrationsSpanner>(GcpIntegrationsSpanner.fromMap((map['spanner'] as Map).cast<String, dynamic>())),
      sql: map['sql'] == null ? null : pulumi.Output.create<GcpIntegrationsSql>(GcpIntegrationsSql.fromMap((map['sql'] as Map).cast<String, dynamic>())),
      storage: map['storage'] == null ? null : pulumi.Output.create<GcpIntegrationsStorage>(GcpIntegrationsStorage.fromMap((map['storage'] as Map).cast<String, dynamic>())),
      virtualMachines: map['virtualMachines'] == null ? null : pulumi.Output.create<GcpIntegrationsVirtualMachines>(GcpIntegrationsVirtualMachines.fromMap((map['virtualMachines'] as Map).cast<String, dynamic>())),
      vpcAccess: map['vpcAccess'] == null ? null : pulumi.Output.create<GcpIntegrationsVpcAccess>(GcpIntegrationsVpcAccess.fromMap((map['vpcAccess'] as Map).cast<String, dynamic>())),
    );
  }
}

