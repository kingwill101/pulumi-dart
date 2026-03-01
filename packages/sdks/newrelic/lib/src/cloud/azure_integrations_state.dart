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
    pulumi.Output<String>? accountId,
    pulumi.Output<AzureIntegrationsApiManagement>? apiManagement,
    pulumi.Output<AzureIntegrationsAppGateway>? appGateway,
    pulumi.Output<AzureIntegrationsAppService>? appService,
    pulumi.Output<AzureIntegrationsAutoDiscovery>? autoDiscovery,
    pulumi.Output<AzureIntegrationsContainers>? containers,
    pulumi.Output<AzureIntegrationsCosmosDb>? cosmosDb,
    pulumi.Output<AzureIntegrationsCostManagement>? costManagement,
    pulumi.Output<AzureIntegrationsDataFactory>? dataFactory,
    pulumi.Output<AzureIntegrationsEventHub>? eventHub,
    pulumi.Output<AzureIntegrationsExpressRoute>? expressRoute,
    pulumi.Output<AzureIntegrationsFirewalls>? firewalls,
    pulumi.Output<AzureIntegrationsFrontDoor>? frontDoor,
    pulumi.Output<AzureIntegrationsFunctions>? functions,
    pulumi.Output<AzureIntegrationsKeyVault>? keyVault,
    pulumi.Output<String>? linkedAccountId,
    pulumi.Output<AzureIntegrationsLoadBalancer>? loadBalancer,
    pulumi.Output<AzureIntegrationsLogicApps>? logicApps,
    pulumi.Output<AzureIntegrationsMachineLearning>? machineLearning,
    pulumi.Output<AzureIntegrationsMariaDb>? mariaDb,
    pulumi.Output<AzureIntegrationsMonitor>? monitor,
    pulumi.Output<AzureIntegrationsMysql>? mysql,
    pulumi.Output<AzureIntegrationsMysqlFlexible>? mysqlFlexible,
    pulumi.Output<AzureIntegrationsPostgresql>? postgresql,
    pulumi.Output<AzureIntegrationsPostgresqlFlexible>? postgresqlFlexible,
    pulumi.Output<AzureIntegrationsPowerBiDedicated>? powerBiDedicated,
    pulumi.Output<AzureIntegrationsRedisCache>? redisCache,
    pulumi.Output<AzureIntegrationsServiceBus>? serviceBus,
    pulumi.Output<AzureIntegrationsSql>? sql,
    pulumi.Output<AzureIntegrationsSqlManaged>? sqlManaged,
    pulumi.Output<AzureIntegrationsStorage>? storage,
    pulumi.Output<AzureIntegrationsVirtualMachine>? virtualMachine,
    pulumi.Output<AzureIntegrationsVirtualNetworks>? virtualNetworks,
    pulumi.Output<AzureIntegrationsVms>? vms,
    pulumi.Output<AzureIntegrationsVpnGateway>? vpnGateway,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      apiManagement = pulumi.Input.asOptionalInput<AzureIntegrationsApiManagement>(apiManagement),
      appGateway = pulumi.Input.asOptionalInput<AzureIntegrationsAppGateway>(appGateway),
      appService = pulumi.Input.asOptionalInput<AzureIntegrationsAppService>(appService),
      autoDiscovery = pulumi.Input.asOptionalInput<AzureIntegrationsAutoDiscovery>(autoDiscovery),
      containers = pulumi.Input.asOptionalInput<AzureIntegrationsContainers>(containers),
      cosmosDb = pulumi.Input.asOptionalInput<AzureIntegrationsCosmosDb>(cosmosDb),
      costManagement = pulumi.Input.asOptionalInput<AzureIntegrationsCostManagement>(costManagement),
      dataFactory = pulumi.Input.asOptionalInput<AzureIntegrationsDataFactory>(dataFactory),
      eventHub = pulumi.Input.asOptionalInput<AzureIntegrationsEventHub>(eventHub),
      expressRoute = pulumi.Input.asOptionalInput<AzureIntegrationsExpressRoute>(expressRoute),
      firewalls = pulumi.Input.asOptionalInput<AzureIntegrationsFirewalls>(firewalls),
      frontDoor = pulumi.Input.asOptionalInput<AzureIntegrationsFrontDoor>(frontDoor),
      functions = pulumi.Input.asOptionalInput<AzureIntegrationsFunctions>(functions),
      keyVault = pulumi.Input.asOptionalInput<AzureIntegrationsKeyVault>(keyVault),
      linkedAccountId = pulumi.Input.asOptionalInput<String>(linkedAccountId),
      loadBalancer = pulumi.Input.asOptionalInput<AzureIntegrationsLoadBalancer>(loadBalancer),
      logicApps = pulumi.Input.asOptionalInput<AzureIntegrationsLogicApps>(logicApps),
      machineLearning = pulumi.Input.asOptionalInput<AzureIntegrationsMachineLearning>(machineLearning),
      mariaDb = pulumi.Input.asOptionalInput<AzureIntegrationsMariaDb>(mariaDb),
      monitor = pulumi.Input.asOptionalInput<AzureIntegrationsMonitor>(monitor),
      mysql = pulumi.Input.asOptionalInput<AzureIntegrationsMysql>(mysql),
      mysqlFlexible = pulumi.Input.asOptionalInput<AzureIntegrationsMysqlFlexible>(mysqlFlexible),
      postgresql = pulumi.Input.asOptionalInput<AzureIntegrationsPostgresql>(postgresql),
      postgresqlFlexible = pulumi.Input.asOptionalInput<AzureIntegrationsPostgresqlFlexible>(postgresqlFlexible),
      powerBiDedicated = pulumi.Input.asOptionalInput<AzureIntegrationsPowerBiDedicated>(powerBiDedicated),
      redisCache = pulumi.Input.asOptionalInput<AzureIntegrationsRedisCache>(redisCache),
      serviceBus = pulumi.Input.asOptionalInput<AzureIntegrationsServiceBus>(serviceBus),
      sql = pulumi.Input.asOptionalInput<AzureIntegrationsSql>(sql),
      sqlManaged = pulumi.Input.asOptionalInput<AzureIntegrationsSqlManaged>(sqlManaged),
      storage = pulumi.Input.asOptionalInput<AzureIntegrationsStorage>(storage),
      virtualMachine = pulumi.Input.asOptionalInput<AzureIntegrationsVirtualMachine>(virtualMachine),
      virtualNetworks = pulumi.Input.asOptionalInput<AzureIntegrationsVirtualNetworks>(virtualNetworks),
      vms = pulumi.Input.asOptionalInput<AzureIntegrationsVms>(vms),
      vpnGateway = pulumi.Input.asOptionalInput<AzureIntegrationsVpnGateway>(vpnGateway);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      apiManagement: map['apiManagement'] == null ? null : pulumi.Output.create<AzureIntegrationsApiManagement>(AzureIntegrationsApiManagement.fromMap((map['apiManagement'] as Map).cast<String, dynamic>())),
      appGateway: map['appGateway'] == null ? null : pulumi.Output.create<AzureIntegrationsAppGateway>(AzureIntegrationsAppGateway.fromMap((map['appGateway'] as Map).cast<String, dynamic>())),
      appService: map['appService'] == null ? null : pulumi.Output.create<AzureIntegrationsAppService>(AzureIntegrationsAppService.fromMap((map['appService'] as Map).cast<String, dynamic>())),
      autoDiscovery: map['autoDiscovery'] == null ? null : pulumi.Output.create<AzureIntegrationsAutoDiscovery>(AzureIntegrationsAutoDiscovery.fromMap((map['autoDiscovery'] as Map).cast<String, dynamic>())),
      containers: map['containers'] == null ? null : pulumi.Output.create<AzureIntegrationsContainers>(AzureIntegrationsContainers.fromMap((map['containers'] as Map).cast<String, dynamic>())),
      cosmosDb: map['cosmosDb'] == null ? null : pulumi.Output.create<AzureIntegrationsCosmosDb>(AzureIntegrationsCosmosDb.fromMap((map['cosmosDb'] as Map).cast<String, dynamic>())),
      costManagement: map['costManagement'] == null ? null : pulumi.Output.create<AzureIntegrationsCostManagement>(AzureIntegrationsCostManagement.fromMap((map['costManagement'] as Map).cast<String, dynamic>())),
      dataFactory: map['dataFactory'] == null ? null : pulumi.Output.create<AzureIntegrationsDataFactory>(AzureIntegrationsDataFactory.fromMap((map['dataFactory'] as Map).cast<String, dynamic>())),
      eventHub: map['eventHub'] == null ? null : pulumi.Output.create<AzureIntegrationsEventHub>(AzureIntegrationsEventHub.fromMap((map['eventHub'] as Map).cast<String, dynamic>())),
      expressRoute: map['expressRoute'] == null ? null : pulumi.Output.create<AzureIntegrationsExpressRoute>(AzureIntegrationsExpressRoute.fromMap((map['expressRoute'] as Map).cast<String, dynamic>())),
      firewalls: map['firewalls'] == null ? null : pulumi.Output.create<AzureIntegrationsFirewalls>(AzureIntegrationsFirewalls.fromMap((map['firewalls'] as Map).cast<String, dynamic>())),
      frontDoor: map['frontDoor'] == null ? null : pulumi.Output.create<AzureIntegrationsFrontDoor>(AzureIntegrationsFrontDoor.fromMap((map['frontDoor'] as Map).cast<String, dynamic>())),
      functions: map['functions'] == null ? null : pulumi.Output.create<AzureIntegrationsFunctions>(AzureIntegrationsFunctions.fromMap((map['functions'] as Map).cast<String, dynamic>())),
      keyVault: map['keyVault'] == null ? null : pulumi.Output.create<AzureIntegrationsKeyVault>(AzureIntegrationsKeyVault.fromMap((map['keyVault'] as Map).cast<String, dynamic>())),
      linkedAccountId: map['linkedAccountId'] == null ? null : pulumi.Output.create<String>(map['linkedAccountId'] as String),
      loadBalancer: map['loadBalancer'] == null ? null : pulumi.Output.create<AzureIntegrationsLoadBalancer>(AzureIntegrationsLoadBalancer.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>())),
      logicApps: map['logicApps'] == null ? null : pulumi.Output.create<AzureIntegrationsLogicApps>(AzureIntegrationsLogicApps.fromMap((map['logicApps'] as Map).cast<String, dynamic>())),
      machineLearning: map['machineLearning'] == null ? null : pulumi.Output.create<AzureIntegrationsMachineLearning>(AzureIntegrationsMachineLearning.fromMap((map['machineLearning'] as Map).cast<String, dynamic>())),
      mariaDb: map['mariaDb'] == null ? null : pulumi.Output.create<AzureIntegrationsMariaDb>(AzureIntegrationsMariaDb.fromMap((map['mariaDb'] as Map).cast<String, dynamic>())),
      monitor: map['monitor'] == null ? null : pulumi.Output.create<AzureIntegrationsMonitor>(AzureIntegrationsMonitor.fromMap((map['monitor'] as Map).cast<String, dynamic>())),
      mysql: map['mysql'] == null ? null : pulumi.Output.create<AzureIntegrationsMysql>(AzureIntegrationsMysql.fromMap((map['mysql'] as Map).cast<String, dynamic>())),
      mysqlFlexible: map['mysqlFlexible'] == null ? null : pulumi.Output.create<AzureIntegrationsMysqlFlexible>(AzureIntegrationsMysqlFlexible.fromMap((map['mysqlFlexible'] as Map).cast<String, dynamic>())),
      postgresql: map['postgresql'] == null ? null : pulumi.Output.create<AzureIntegrationsPostgresql>(AzureIntegrationsPostgresql.fromMap((map['postgresql'] as Map).cast<String, dynamic>())),
      postgresqlFlexible: map['postgresqlFlexible'] == null ? null : pulumi.Output.create<AzureIntegrationsPostgresqlFlexible>(AzureIntegrationsPostgresqlFlexible.fromMap((map['postgresqlFlexible'] as Map).cast<String, dynamic>())),
      powerBiDedicated: map['powerBiDedicated'] == null ? null : pulumi.Output.create<AzureIntegrationsPowerBiDedicated>(AzureIntegrationsPowerBiDedicated.fromMap((map['powerBiDedicated'] as Map).cast<String, dynamic>())),
      redisCache: map['redisCache'] == null ? null : pulumi.Output.create<AzureIntegrationsRedisCache>(AzureIntegrationsRedisCache.fromMap((map['redisCache'] as Map).cast<String, dynamic>())),
      serviceBus: map['serviceBus'] == null ? null : pulumi.Output.create<AzureIntegrationsServiceBus>(AzureIntegrationsServiceBus.fromMap((map['serviceBus'] as Map).cast<String, dynamic>())),
      sql: map['sql'] == null ? null : pulumi.Output.create<AzureIntegrationsSql>(AzureIntegrationsSql.fromMap((map['sql'] as Map).cast<String, dynamic>())),
      sqlManaged: map['sqlManaged'] == null ? null : pulumi.Output.create<AzureIntegrationsSqlManaged>(AzureIntegrationsSqlManaged.fromMap((map['sqlManaged'] as Map).cast<String, dynamic>())),
      storage: map['storage'] == null ? null : pulumi.Output.create<AzureIntegrationsStorage>(AzureIntegrationsStorage.fromMap((map['storage'] as Map).cast<String, dynamic>())),
      virtualMachine: map['virtualMachine'] == null ? null : pulumi.Output.create<AzureIntegrationsVirtualMachine>(AzureIntegrationsVirtualMachine.fromMap((map['virtualMachine'] as Map).cast<String, dynamic>())),
      virtualNetworks: map['virtualNetworks'] == null ? null : pulumi.Output.create<AzureIntegrationsVirtualNetworks>(AzureIntegrationsVirtualNetworks.fromMap((map['virtualNetworks'] as Map).cast<String, dynamic>())),
      vms: map['vms'] == null ? null : pulumi.Output.create<AzureIntegrationsVms>(AzureIntegrationsVms.fromMap((map['vms'] as Map).cast<String, dynamic>())),
      vpnGateway: map['vpnGateway'] == null ? null : pulumi.Output.create<AzureIntegrationsVpnGateway>(AzureIntegrationsVpnGateway.fromMap((map['vpnGateway'] as Map).cast<String, dynamic>())),
    );
  }
}

