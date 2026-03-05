// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_integrations_api_management.dart';
import 'azure_integrations_app_gateway.dart';
import 'azure_integrations_app_service.dart';
import 'azure_integrations_auto_discovery.dart';
import 'azure_integrations_containers.dart';
import 'azure_integrations_cosmos_db.dart';
import 'azure_integrations_cost_management.dart';
import 'azure_integrations_data_factory.dart';
import 'azure_integrations_event_hub.dart';
import 'azure_integrations_express_route.dart';
import 'azure_integrations_firewalls.dart';
import 'azure_integrations_front_door.dart';
import 'azure_integrations_functions.dart';
import 'azure_integrations_key_vault.dart';
import 'azure_integrations_load_balancer.dart';
import 'azure_integrations_logic_apps.dart';
import 'azure_integrations_machine_learning.dart';
import 'azure_integrations_maria_db.dart';
import 'azure_integrations_monitor.dart';
import 'azure_integrations_mysql.dart';
import 'azure_integrations_mysql_flexible.dart';
import 'azure_integrations_postgresql.dart';
import 'azure_integrations_postgresql_flexible.dart';
import 'azure_integrations_power_bi_dedicated.dart';
import 'azure_integrations_redis_cache.dart';
import 'azure_integrations_service_bus.dart';
import 'azure_integrations_sql.dart';
import 'azure_integrations_sql_managed.dart';
import 'azure_integrations_storage.dart';
import 'azure_integrations_virtual_machine.dart';
import 'azure_integrations_virtual_networks.dart';
import 'azure_integrations_vms.dart';
import 'azure_integrations_vpn_gateway.dart';

/// Input properties used for looking up and filtering AzureIntegrations resources.
class AzureIntegrationsState {
  /// The New Relic account ID to operate on.  This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  final pulumi.Input<String>? accountId;
  /// Azure API Management. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsApiManagement>? apiManagement;
  /// Azure App Gateway. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsAppGateway>? appGateway;
  /// Azure App Service. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsAppService>? appService;
  /// Azure Auto Discovery
  final pulumi.Input<AzureIntegrationsAutoDiscovery>? autoDiscovery;
  /// Azure Containers. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsContainers>? containers;
  /// Azure CosmosDB. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsCosmosDb>? cosmosDb;
  /// Azure Cost Management. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsCostManagement>? costManagement;
  /// Azure Data Factory. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsDataFactory>? dataFactory;
  /// Azure Event Hub. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsEventHub>? eventHub;
  /// Azure Express Route. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsExpressRoute>? expressRoute;
  /// Azure Firewalls. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsFirewalls>? firewalls;
  /// Azure Front Door. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsFrontDoor>? frontDoor;
  /// Azure Functions. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsFunctions>? functions;
  /// Azure Key Vault. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsKeyVault>? keyVault;
  /// The ID of the linked Azure account in New Relic.
  ///
  ///
  /// The following arguments/integration blocks are intended to be used with a minimum `metrics_polling_interval` of 60 seconds.
  final pulumi.Input<String>? linkedAccountId;
  /// Azure Load Balancer. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsLoadBalancer>? loadBalancer;
  /// Azure Logic Apps. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsLogicApps>? logicApps;
  /// Azure Machine Learning. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsMachineLearning>? machineLearning;
  /// Azure MariaDB. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsMariaDb>? mariaDb;
  /// Azure Monitor. See Integration blocks below for details.
  ///
  /// The following arguments/integration blocks are intended to be used with a minimum `metrics_polling_interval` of 300 seconds.
  final pulumi.Input<AzureIntegrationsMonitor>? monitor;
  /// Azure MySQL. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsMysql>? mysql;
  /// Azure MySQL Flexible Server. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsMysqlFlexible>? mysqlFlexible;
  /// Azure PostgreSQL. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsPostgresql>? postgresql;
  /// Azure PostgreSQL Flexible Server. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsPostgresqlFlexible>? postgresqlFlexible;
  /// Azure Power BI Dedicated. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsPowerBiDedicated>? powerBiDedicated;
  /// Azure Redis Cache. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsRedisCache>? redisCache;
  /// Azure Service Bus. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsServiceBus>? serviceBus;
  /// Azure SQL. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsSql>? sql;
  /// Azure SQL Managed. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsSqlManaged>? sqlManaged;
  /// for Azure Storage. See Integration blocks below for details.
  ///
  /// The following arguments/integration blocks are intended to be used with a minimum `metrics_polling_interval` of 3600 seconds.
  final pulumi.Input<AzureIntegrationsStorage>? storage;
  /// Azure Virtual machine. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsVirtualMachine>? virtualMachine;
  /// for Azure Virtual networks. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsVirtualNetworks>? virtualNetworks;
  /// Azure VMs. See Integration blocks below for details.
  final pulumi.Input<AzureIntegrationsVms>? vms;
  /// Azure VPN Gateway. See Integration blocks below for details.
  ///
  /// The following arguments/integration blocks are intended to be used with a minimum `metrics_polling_interval` of 1800 seconds.
  final pulumi.Input<AzureIntegrationsVpnGateway>? vpnGateway;

  /// Creates a new [AzureIntegrationsState].
  /// [accountId] The New Relic account ID to operate on.  This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  /// [apiManagement] Azure API Management. See Integration blocks below for details.
  /// [appGateway] Azure App Gateway. See Integration blocks below for details.
  /// [appService] Azure App Service. See Integration blocks below for details.
  /// [autoDiscovery] Azure Auto Discovery
  /// [containers] Azure Containers. See Integration blocks below for details.
  /// [cosmosDb] Azure CosmosDB. See Integration blocks below for details.
  /// [costManagement] Azure Cost Management. See Integration blocks below for details.
  /// [dataFactory] Azure Data Factory. See Integration blocks below for details.
  /// [eventHub] Azure Event Hub. See Integration blocks below for details.
  /// [expressRoute] Azure Express Route. See Integration blocks below for details.
  /// [firewalls] Azure Firewalls. See Integration blocks below for details.
  /// [frontDoor] Azure Front Door. See Integration blocks below for details.
  /// [functions] Azure Functions. See Integration blocks below for details.
  /// [keyVault] Azure Key Vault. See Integration blocks below for details.
  /// [linkedAccountId] The ID of the linked Azure account in New Relic.
  /// [loadBalancer] Azure Load Balancer. See Integration blocks below for details.
  /// [logicApps] Azure Logic Apps. See Integration blocks below for details.
  /// [machineLearning] Azure Machine Learning. See Integration blocks below for details.
  /// [mariaDb] Azure MariaDB. See Integration blocks below for details.
  /// [monitor] Azure Monitor. See Integration blocks below for details.
  /// [mysql] Azure MySQL. See Integration blocks below for details.
  /// [mysqlFlexible] Azure MySQL Flexible Server. See Integration blocks below for details.
  /// [postgresql] Azure PostgreSQL. See Integration blocks below for details.
  /// [postgresqlFlexible] Azure PostgreSQL Flexible Server. See Integration blocks below for details.
  /// [powerBiDedicated] Azure Power BI Dedicated. See Integration blocks below for details.
  /// [redisCache] Azure Redis Cache. See Integration blocks below for details.
  /// [serviceBus] Azure Service Bus. See Integration blocks below for details.
  /// [sql] Azure SQL. See Integration blocks below for details.
  /// [sqlManaged] Azure SQL Managed. See Integration blocks below for details.
  /// [storage] for Azure Storage. See Integration blocks below for details.
  /// [virtualMachine] Azure Virtual machine. See Integration blocks below for details.
  /// [virtualNetworks] for Azure Virtual networks. See Integration blocks below for details.
  /// [vms] Azure VMs. See Integration blocks below for details.
  /// [vpnGateway] Azure VPN Gateway. See Integration blocks below for details.
  AzureIntegrationsState({
    this.accountId,
    this.apiManagement,
    this.appGateway,
    this.appService,
    this.autoDiscovery,
    this.containers,
    this.cosmosDb,
    this.costManagement,
    this.dataFactory,
    this.eventHub,
    this.expressRoute,
    this.firewalls,
    this.frontDoor,
    this.functions,
    this.keyVault,
    this.linkedAccountId,
    this.loadBalancer,
    this.logicApps,
    this.machineLearning,
    this.mariaDb,
    this.monitor,
    this.mysql,
    this.mysqlFlexible,
    this.postgresql,
    this.postgresqlFlexible,
    this.powerBiDedicated,
    this.redisCache,
    this.serviceBus,
    this.sql,
    this.sqlManaged,
    this.storage,
    this.virtualMachine,
    this.virtualNetworks,
    this.vms,
    this.vpnGateway,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'apiManagement': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsApiManagement, Map<String, dynamic>>(apiManagement, (value) => value.toMap()),
      'appGateway': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsAppGateway, Map<String, dynamic>>(appGateway, (value) => value.toMap()),
      'appService': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsAppService, Map<String, dynamic>>(appService, (value) => value.toMap()),
      'autoDiscovery': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsAutoDiscovery, Map<String, dynamic>>(autoDiscovery, (value) => value.toMap()),
      'containers': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsContainers, Map<String, dynamic>>(containers, (value) => value.toMap()),
      'cosmosDb': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsCosmosDb, Map<String, dynamic>>(cosmosDb, (value) => value.toMap()),
      'costManagement': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsCostManagement, Map<String, dynamic>>(costManagement, (value) => value.toMap()),
      'dataFactory': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsDataFactory, Map<String, dynamic>>(dataFactory, (value) => value.toMap()),
      'eventHub': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsEventHub, Map<String, dynamic>>(eventHub, (value) => value.toMap()),
      'expressRoute': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsExpressRoute, Map<String, dynamic>>(expressRoute, (value) => value.toMap()),
      'firewalls': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsFirewalls, Map<String, dynamic>>(firewalls, (value) => value.toMap()),
      'frontDoor': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsFrontDoor, Map<String, dynamic>>(frontDoor, (value) => value.toMap()),
      'functions': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsFunctions, Map<String, dynamic>>(functions, (value) => value.toMap()),
      'keyVault': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsKeyVault, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'linkedAccountId': ?linkedAccountId,
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsLoadBalancer, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
      'logicApps': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsLogicApps, Map<String, dynamic>>(logicApps, (value) => value.toMap()),
      'machineLearning': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsMachineLearning, Map<String, dynamic>>(machineLearning, (value) => value.toMap()),
      'mariaDb': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsMariaDb, Map<String, dynamic>>(mariaDb, (value) => value.toMap()),
      'monitor': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsMonitor, Map<String, dynamic>>(monitor, (value) => value.toMap()),
      'mysql': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsMysql, Map<String, dynamic>>(mysql, (value) => value.toMap()),
      'mysqlFlexible': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsMysqlFlexible, Map<String, dynamic>>(mysqlFlexible, (value) => value.toMap()),
      'postgresql': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsPostgresql, Map<String, dynamic>>(postgresql, (value) => value.toMap()),
      'postgresqlFlexible': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsPostgresqlFlexible, Map<String, dynamic>>(postgresqlFlexible, (value) => value.toMap()),
      'powerBiDedicated': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsPowerBiDedicated, Map<String, dynamic>>(powerBiDedicated, (value) => value.toMap()),
      'redisCache': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsRedisCache, Map<String, dynamic>>(redisCache, (value) => value.toMap()),
      'serviceBus': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsServiceBus, Map<String, dynamic>>(serviceBus, (value) => value.toMap()),
      'sql': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsSql, Map<String, dynamic>>(sql, (value) => value.toMap()),
      'sqlManaged': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsSqlManaged, Map<String, dynamic>>(sqlManaged, (value) => value.toMap()),
      'storage': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'virtualMachine': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsVirtualMachine, Map<String, dynamic>>(virtualMachine, (value) => value.toMap()),
      'virtualNetworks': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsVirtualNetworks, Map<String, dynamic>>(virtualNetworks, (value) => value.toMap()),
      'vms': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsVms, Map<String, dynamic>>(vms, (value) => value.toMap()),
      'vpnGateway': ?pulumi.Input.mapOptionalInputValue<AzureIntegrationsVpnGateway, Map<String, dynamic>>(vpnGateway, (value) => value.toMap()),
    };
  }

  factory AzureIntegrationsState.fromMap(Map<String, dynamic> map) {
    return AzureIntegrationsState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiManagement: (() { final guardedValue = map['apiManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsApiManagement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      appGateway: (() { final guardedValue = map['appGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsAppGateway.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      appService: (() { final guardedValue = map['appService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsAppService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoDiscovery: (() { final guardedValue = map['autoDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsAutoDiscovery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsContainers.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cosmosDb: (() { final guardedValue = map['cosmosDb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsCosmosDb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      costManagement: (() { final guardedValue = map['costManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsCostManagement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataFactory: (() { final guardedValue = map['dataFactory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsDataFactory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventHub: (() { final guardedValue = map['eventHub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsEventHub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expressRoute: (() { final guardedValue = map['expressRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsExpressRoute.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      firewalls: (() { final guardedValue = map['firewalls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsFirewalls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      frontDoor: (() { final guardedValue = map['frontDoor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsFrontDoor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      functions: (() { final guardedValue = map['functions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsFunctions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVault: (() { final guardedValue = map['keyVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsKeyVault.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedAccountId: (() { final guardedValue = map['linkedAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancer: (() { final guardedValue = map['loadBalancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsLoadBalancer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logicApps: (() { final guardedValue = map['logicApps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsLogicApps.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      machineLearning: (() { final guardedValue = map['machineLearning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsMachineLearning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mariaDb: (() { final guardedValue = map['mariaDb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsMariaDb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitor: (() { final guardedValue = map['monitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsMonitor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mysql: (() { final guardedValue = map['mysql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsMysql.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mysqlFlexible: (() { final guardedValue = map['mysqlFlexible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsMysqlFlexible.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      postgresql: (() { final guardedValue = map['postgresql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsPostgresql.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      postgresqlFlexible: (() { final guardedValue = map['postgresqlFlexible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsPostgresqlFlexible.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      powerBiDedicated: (() { final guardedValue = map['powerBiDedicated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsPowerBiDedicated.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redisCache: (() { final guardedValue = map['redisCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsRedisCache.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceBus: (() { final guardedValue = map['serviceBus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsServiceBus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sql: (() { final guardedValue = map['sql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsSql.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqlManaged: (() { final guardedValue = map['sqlManaged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsSqlManaged.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualMachine: (() { final guardedValue = map['virtualMachine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsVirtualMachine.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualNetworks: (() { final guardedValue = map['virtualNetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsVirtualNetworks.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vms: (() { final guardedValue = map['vms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsVms.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpnGateway: (() { final guardedValue = map['vpnGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIntegrationsVpnGateway.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

