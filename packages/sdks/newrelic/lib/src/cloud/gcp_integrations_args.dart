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
  const GcpIntegrationsArgs({
    this.accountId,
    this.alloyDb,
    this.appEngine,
    this.bigQuery,
    this.bigTable,
    this.composer,
    this.dataFlow,
    this.dataProc,
    this.dataStore,
    this.fireBaseDatabase,
    this.fireBaseHosting,
    this.fireBaseStorage,
    this.fireStore,
    this.functions,
    this.interconnect,
    this.kubernetes,
    required this.linkedAccountId,
    this.loadBalancing,
    this.memCache,
    this.pubSub,
    this.redis,
    this.router,
    this.run,
    this.spanner,
    this.sql,
    this.storage,
    this.virtualMachines,
    this.vpcAccess,
  });

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
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alloyDb: (() { final guardedValue = map['alloyDb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsAlloyDb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      appEngine: (() { final guardedValue = map['appEngine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsAppEngine.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bigQuery: (() { final guardedValue = map['bigQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsBigQuery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bigTable: (() { final guardedValue = map['bigTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsBigTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      composer: (() { final guardedValue = map['composer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsComposer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataFlow: (() { final guardedValue = map['dataFlow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsDataFlow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataProc: (() { final guardedValue = map['dataProc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsDataProc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataStore: (() { final guardedValue = map['dataStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsDataStore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fireBaseDatabase: (() { final guardedValue = map['fireBaseDatabase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsFireBaseDatabase.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fireBaseHosting: (() { final guardedValue = map['fireBaseHosting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsFireBaseHosting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fireBaseStorage: (() { final guardedValue = map['fireBaseStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsFireBaseStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fireStore: (() { final guardedValue = map['fireStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsFireStore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      functions: (() { final guardedValue = map['functions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsFunctions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interconnect: (() { final guardedValue = map['interconnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsInterconnect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubernetes: (() { final guardedValue = map['kubernetes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsKubernetes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedAccountId: pulumi.Input.fromValue(map['linkedAccountId'] as String),
      loadBalancing: (() { final guardedValue = map['loadBalancing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsLoadBalancing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memCache: (() { final guardedValue = map['memCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsMemCache.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pubSub: (() { final guardedValue = map['pubSub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsPubSub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redis: (() { final guardedValue = map['redis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsRedis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      router: (() { final guardedValue = map['router']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsRouter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      run: (() { final guardedValue = map['run']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsRun.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spanner: (() { final guardedValue = map['spanner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsSpanner.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sql: (() { final guardedValue = map['sql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsSql.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualMachines: (() { final guardedValue = map['virtualMachines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsVirtualMachines.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcAccess: (() { final guardedValue = map['vpcAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpIntegrationsVpcAccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

