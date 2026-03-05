import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_integrations_api_management.dart';
import 'azure_integrations_app_gateway.dart';
import 'azure_integrations_app_service.dart';
import 'azure_integrations_args.dart';
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
import 'azure_integrations_state.dart';
import 'azure_integrations_storage.dart';
import 'azure_integrations_virtual_machine.dart';
import 'azure_integrations_virtual_networks.dart';
import 'azure_integrations_vms.dart';
import 'azure_integrations_vpn_gateway.dart';

/// Use this resource to integrate Azure services with New Relic.
///
/// ## Prerequisite
///
/// To start receiving Azure data with New Relic Azure integrations, connect your Azure account to New Relic infrastructure monitoring. If you don't have one already, create a New Relic account. It's free, forever.
///
/// Setup is required for this resource to work properly. This resource assumes you have linked an Azure account to New Relic.
///
/// You can find instructions on how to set up Azure on [our documentation](https://docs.newrelic.com/docs/infrastructure/microsoft-azure-integrations/get-started/activate-azure-integrations/).
///
/// ## Example Usage
///
/// Leave an integration block empty to use its default configuration. You can also use the full example, including the Azure set up, found in our guides.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.cloud.AzureLinkAccount("foo", {
///     accountId: "The New Relic account ID where you want to link the Azure account",
///     applicationId: "ID of the application",
///     clientSecret: "Secret value of client's Azure account",
///     subscriptionId: "Subscription ID of Azure",
///     tenantId: "Tenant ID of the Azure",
///     name: "Name of the linked account",
/// });
/// const fooAzureIntegrations = new newrelic.cloud.AzureIntegrations("foo", {
///     linkedAccountId: foo.id,
///     accountId: "The New Relic account ID",
///     apiManagement: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     appGateway: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     appService: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     containers: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     cosmosDb: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     costManagement: {
///         metricsPollingInterval: 3600,
///         tagKeys: ["tag_keys"],
///     },
///     dataFactory: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     eventHub: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     expressRoute: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     firewalls: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     frontDoor: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     functions: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     keyVault: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     loadBalancer: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     logicApps: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     machineLearning: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     mariaDb: {
///         metricsPollingInterval: 3600,
///         resourceGroups: ["resource_groups"],
///     },
///     monitor: {
///         metricsPollingInterval: 60,
///         resourceGroups: ["resource_groups"],
///         includeTags: ["env:production"],
///         excludeTags: [
///             "env:staging",
///             "env:testing",
///         ],
///         enabled: true,
///         resourceTypes: ["microsoft.datashare/accounts"],
///     },
///     mysql: {
///         metricsPollingInterval: 3600,
///         resourceGroups: ["resource_groups"],
///     },
///     mysqlFlexible: {
///         metricsPollingInterval: 3600,
///         resourceGroups: ["resource_groups"],
///     },
///     postgresql: {
///         metricsPollingInterval: 3600,
///         resourceGroups: ["resource_groups"],
///     },
///     postgresqlFlexible: {
///         metricsPollingInterval: 3600,
///         resourceGroups: ["resource_groups"],
///     },
///     powerBiDedicated: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     redisCache: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     serviceBus: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     sql: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     sqlManaged: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     storage: {
///         metricsPollingInterval: 1800,
///         resourceGroups: ["resource_groups"],
///     },
///     virtualMachine: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     virtualNetworks: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     vms: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
///     vpnGateway: {
///         metricsPollingInterval: 300,
///         resourceGroups: ["resource_groups"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.cloud.AzureLinkAccount("foo",
///     account_id="The New Relic account ID where you want to link the Azure account",
///     application_id="ID of the application",
///     client_secret="Secret value of client's Azure account",
///     subscription_id="Subscription ID of Azure",
///     tenant_id="Tenant ID of the Azure",
///     name="Name of the linked account")
/// foo_azure_integrations = newrelic.cloud.AzureIntegrations("foo",
///     linked_account_id=foo.id,
///     account_id="The New Relic account ID",
///     api_management={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     app_gateway={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     app_service={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     containers={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     cosmos_db={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     cost_management={
///         "metrics_polling_interval": 3600,
///         "tag_keys": ["tag_keys"],
///     },
///     data_factory={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     event_hub={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     express_route={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     firewalls={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     front_door={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     functions={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     key_vault={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     load_balancer={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     logic_apps={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     machine_learning={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     maria_db={
///         "metrics_polling_interval": 3600,
///         "resource_groups": ["resource_groups"],
///     },
///     monitor={
///         "metrics_polling_interval": 60,
///         "resource_groups": ["resource_groups"],
///         "include_tags": ["env:production"],
///         "exclude_tags": [
///             "env:staging",
///             "env:testing",
///         ],
///         "enabled": True,
///         "resource_types": ["microsoft.datashare/accounts"],
///     },
///     mysql={
///         "metrics_polling_interval": 3600,
///         "resource_groups": ["resource_groups"],
///     },
///     mysql_flexible={
///         "metrics_polling_interval": 3600,
///         "resource_groups": ["resource_groups"],
///     },
///     postgresql={
///         "metrics_polling_interval": 3600,
///         "resource_groups": ["resource_groups"],
///     },
///     postgresql_flexible={
///         "metrics_polling_interval": 3600,
///         "resource_groups": ["resource_groups"],
///     },
///     power_bi_dedicated={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     redis_cache={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     service_bus={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     sql={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     sql_managed={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     storage={
///         "metrics_polling_interval": 1800,
///         "resource_groups": ["resource_groups"],
///     },
///     virtual_machine={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     virtual_networks={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     vms={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
///     },
///     vpn_gateway={
///         "metrics_polling_interval": 300,
///         "resource_groups": ["resource_groups"],
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
///     var foo = new NewRelic.Cloud.AzureLinkAccount("foo", new()
///     {
///         AccountId = "The New Relic account ID where you want to link the Azure account",
///         ApplicationId = "ID of the application",
///         ClientSecret = "Secret value of client's Azure account",
///         SubscriptionId = "Subscription ID of Azure",
///         TenantId = "Tenant ID of the Azure",
///         Name = "Name of the linked account",
///     });
///
///     var fooAzureIntegrations = new NewRelic.Cloud.AzureIntegrations("foo", new()
///     {
///         LinkedAccountId = foo.Id,
///         AccountId = "The New Relic account ID",
///         ApiManagement = new NewRelic.Cloud.Inputs.AzureIntegrationsApiManagementArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         AppGateway = new NewRelic.Cloud.Inputs.AzureIntegrationsAppGatewayArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         AppService = new NewRelic.Cloud.Inputs.AzureIntegrationsAppServiceArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         Containers = new NewRelic.Cloud.Inputs.AzureIntegrationsContainersArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         CosmosDb = new NewRelic.Cloud.Inputs.AzureIntegrationsCosmosDbArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         CostManagement = new NewRelic.Cloud.Inputs.AzureIntegrationsCostManagementArgs
///         {
///             MetricsPollingInterval = 3600,
///             TagKeys = new[]
///             {
///                 "tag_keys",
///             },
///         },
///         DataFactory = new NewRelic.Cloud.Inputs.AzureIntegrationsDataFactoryArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         EventHub = new NewRelic.Cloud.Inputs.AzureIntegrationsEventHubArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         ExpressRoute = new NewRelic.Cloud.Inputs.AzureIntegrationsExpressRouteArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         Firewalls = new NewRelic.Cloud.Inputs.AzureIntegrationsFirewallsArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         FrontDoor = new NewRelic.Cloud.Inputs.AzureIntegrationsFrontDoorArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         Functions = new NewRelic.Cloud.Inputs.AzureIntegrationsFunctionsArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         KeyVault = new NewRelic.Cloud.Inputs.AzureIntegrationsKeyVaultArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         LoadBalancer = new NewRelic.Cloud.Inputs.AzureIntegrationsLoadBalancerArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         LogicApps = new NewRelic.Cloud.Inputs.AzureIntegrationsLogicAppsArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         MachineLearning = new NewRelic.Cloud.Inputs.AzureIntegrationsMachineLearningArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         MariaDb = new NewRelic.Cloud.Inputs.AzureIntegrationsMariaDbArgs
///         {
///             MetricsPollingInterval = 3600,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         Monitor = new NewRelic.Cloud.Inputs.AzureIntegrationsMonitorArgs
///         {
///             MetricsPollingInterval = 60,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///             IncludeTags = new[]
///             {
///                 "env:production",
///             },
///             ExcludeTags = new[]
///             {
///                 "env:staging",
///                 "env:testing",
///             },
///             Enabled = true,
///             ResourceTypes = new[]
///             {
///                 "microsoft.datashare/accounts",
///             },
///         },
///         Mysql = new NewRelic.Cloud.Inputs.AzureIntegrationsMysqlArgs
///         {
///             MetricsPollingInterval = 3600,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         MysqlFlexible = new NewRelic.Cloud.Inputs.AzureIntegrationsMysqlFlexibleArgs
///         {
///             MetricsPollingInterval = 3600,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         Postgresql = new NewRelic.Cloud.Inputs.AzureIntegrationsPostgresqlArgs
///         {
///             MetricsPollingInterval = 3600,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         PostgresqlFlexible = new NewRelic.Cloud.Inputs.AzureIntegrationsPostgresqlFlexibleArgs
///         {
///             MetricsPollingInterval = 3600,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         PowerBiDedicated = new NewRelic.Cloud.Inputs.AzureIntegrationsPowerBiDedicatedArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         RedisCache = new NewRelic.Cloud.Inputs.AzureIntegrationsRedisCacheArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         ServiceBus = new NewRelic.Cloud.Inputs.AzureIntegrationsServiceBusArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         Sql = new NewRelic.Cloud.Inputs.AzureIntegrationsSqlArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         SqlManaged = new NewRelic.Cloud.Inputs.AzureIntegrationsSqlManagedArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         Storage = new NewRelic.Cloud.Inputs.AzureIntegrationsStorageArgs
///         {
///             MetricsPollingInterval = 1800,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         VirtualMachine = new NewRelic.Cloud.Inputs.AzureIntegrationsVirtualMachineArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         VirtualNetworks = new NewRelic.Cloud.Inputs.AzureIntegrationsVirtualNetworksArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         Vms = new NewRelic.Cloud.Inputs.AzureIntegrationsVmsArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
///             },
///         },
///         VpnGateway = new NewRelic.Cloud.Inputs.AzureIntegrationsVpnGatewayArgs
///         {
///             MetricsPollingInterval = 300,
///             ResourceGroups = new[]
///             {
///                 "resource_groups",
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
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/cloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := cloud.NewAzureLinkAccount(ctx, "foo", &cloud.AzureLinkAccountArgs{
/// 			AccountId:      pulumi.String("The New Relic account ID where you want to link the Azure account"),
/// 			ApplicationId:  pulumi.String("ID of the application"),
/// 			ClientSecret:   pulumi.String("Secret value of client's Azure account"),
/// 			SubscriptionId: pulumi.String("Subscription ID of Azure"),
/// 			TenantId:       pulumi.String("Tenant ID of the Azure"),
/// 			Name:           pulumi.String("Name of the linked account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloud.NewAzureIntegrations(ctx, "foo", &cloud.AzureIntegrationsArgs{
/// 			LinkedAccountId: foo.ID(),
/// 			AccountId:       pulumi.String("The New Relic account ID"),
/// 			ApiManagement: &cloud.AzureIntegrationsApiManagementArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			AppGateway: &cloud.AzureIntegrationsAppGatewayArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			AppService: &cloud.AzureIntegrationsAppServiceArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			Containers: &cloud.AzureIntegrationsContainersArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			CosmosDb: &cloud.AzureIntegrationsCosmosDbArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			CostManagement: &cloud.AzureIntegrationsCostManagementArgs{
/// 				MetricsPollingInterval: pulumi.Int(3600),
/// 				TagKeys: pulumi.StringArray{
/// 					pulumi.String("tag_keys"),
/// 				},
/// 			},
/// 			DataFactory: &cloud.AzureIntegrationsDataFactoryArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			EventHub: &cloud.AzureIntegrationsEventHubArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			ExpressRoute: &cloud.AzureIntegrationsExpressRouteArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			Firewalls: &cloud.AzureIntegrationsFirewallsArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			FrontDoor: &cloud.AzureIntegrationsFrontDoorArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			Functions: &cloud.AzureIntegrationsFunctionsArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			KeyVault: &cloud.AzureIntegrationsKeyVaultArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			LoadBalancer: &cloud.AzureIntegrationsLoadBalancerArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			LogicApps: &cloud.AzureIntegrationsLogicAppsArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			MachineLearning: &cloud.AzureIntegrationsMachineLearningArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			MariaDb: &cloud.AzureIntegrationsMariaDbArgs{
/// 				MetricsPollingInterval: pulumi.Int(3600),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			Monitor: &cloud.AzureIntegrationsMonitorArgs{
/// 				MetricsPollingInterval: pulumi.Int(60),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 				IncludeTags: pulumi.StringArray{
/// 					pulumi.String("env:production"),
/// 				},
/// 				ExcludeTags: pulumi.StringArray{
/// 					pulumi.String("env:staging"),
/// 					pulumi.String("env:testing"),
/// 				},
/// 				Enabled: pulumi.Bool(true),
/// 				ResourceTypes: pulumi.StringArray{
/// 					pulumi.String("microsoft.datashare/accounts"),
/// 				},
/// 			},
/// 			Mysql: &cloud.AzureIntegrationsMysqlArgs{
/// 				MetricsPollingInterval: pulumi.Int(3600),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			MysqlFlexible: &cloud.AzureIntegrationsMysqlFlexibleArgs{
/// 				MetricsPollingInterval: pulumi.Int(3600),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			Postgresql: &cloud.AzureIntegrationsPostgresqlArgs{
/// 				MetricsPollingInterval: pulumi.Int(3600),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			PostgresqlFlexible: &cloud.AzureIntegrationsPostgresqlFlexibleArgs{
/// 				MetricsPollingInterval: pulumi.Int(3600),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			PowerBiDedicated: &cloud.AzureIntegrationsPowerBiDedicatedArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			RedisCache: &cloud.AzureIntegrationsRedisCacheArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			ServiceBus: &cloud.AzureIntegrationsServiceBusArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			Sql: &cloud.AzureIntegrationsSqlArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			SqlManaged: &cloud.AzureIntegrationsSqlManagedArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			Storage: &cloud.AzureIntegrationsStorageArgs{
/// 				MetricsPollingInterval: pulumi.Int(1800),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			VirtualMachine: &cloud.AzureIntegrationsVirtualMachineArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			VirtualNetworks: &cloud.AzureIntegrationsVirtualNetworksArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			Vms: &cloud.AzureIntegrationsVmsArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
/// 				},
/// 			},
/// 			VpnGateway: &cloud.AzureIntegrationsVpnGatewayArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				ResourceGroups: pulumi.StringArray{
/// 					pulumi.String("resource_groups"),
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
/// import com.pulumi.newrelic.cloud.AzureLinkAccount;
/// import com.pulumi.newrelic.cloud.AzureLinkAccountArgs;
/// import com.pulumi.newrelic.cloud.AzureIntegrations;
/// import com.pulumi.newrelic.cloud.AzureIntegrationsArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsApiManagementArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsAppGatewayArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsAppServiceArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsContainersArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsCosmosDbArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsCostManagementArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsDataFactoryArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsEventHubArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsExpressRouteArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsFirewallsArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsFrontDoorArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsFunctionsArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsKeyVaultArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsLoadBalancerArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsLogicAppsArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsMachineLearningArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsMariaDbArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsMonitorArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsMysqlArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsMysqlFlexibleArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsPostgresqlArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsPostgresqlFlexibleArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsPowerBiDedicatedArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsRedisCacheArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsServiceBusArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsSqlArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsSqlManagedArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsStorageArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsVirtualMachineArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsVirtualNetworksArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsVmsArgs;
/// import com.pulumi.newrelic.cloud.inputs.AzureIntegrationsVpnGatewayArgs;
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
///         var foo = new AzureLinkAccount("foo", AzureLinkAccountArgs.builder()
///             .accountId("The New Relic account ID where you want to link the Azure account")
///             .applicationId("ID of the application")
///             .clientSecret("Secret value of client's Azure account")
///             .subscriptionId("Subscription ID of Azure")
///             .tenantId("Tenant ID of the Azure")
///             .name("Name of the linked account")
///             .build());
///
///         var fooAzureIntegrations = new AzureIntegrations("fooAzureIntegrations", AzureIntegrationsArgs.builder()
///             .linkedAccountId(foo.id())
///             .accountId("The New Relic account ID")
///             .apiManagement(AzureIntegrationsApiManagementArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .appGateway(AzureIntegrationsAppGatewayArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .appService(AzureIntegrationsAppServiceArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .containers(AzureIntegrationsContainersArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .cosmosDb(AzureIntegrationsCosmosDbArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .costManagement(AzureIntegrationsCostManagementArgs.builder()
///                 .metricsPollingInterval(3600)
///                 .tagKeys("tag_keys")
///                 .build())
///             .dataFactory(AzureIntegrationsDataFactoryArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .eventHub(AzureIntegrationsEventHubArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .expressRoute(AzureIntegrationsExpressRouteArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .firewalls(AzureIntegrationsFirewallsArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .frontDoor(AzureIntegrationsFrontDoorArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .functions(AzureIntegrationsFunctionsArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .keyVault(AzureIntegrationsKeyVaultArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .loadBalancer(AzureIntegrationsLoadBalancerArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .logicApps(AzureIntegrationsLogicAppsArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .machineLearning(AzureIntegrationsMachineLearningArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .mariaDb(AzureIntegrationsMariaDbArgs.builder()
///                 .metricsPollingInterval(3600)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .monitor(AzureIntegrationsMonitorArgs.builder()
///                 .metricsPollingInterval(60)
///                 .resourceGroups("resource_groups")
///                 .includeTags("env:production")
///                 .excludeTags(
///                     "env:staging",
///                     "env:testing")
///                 .enabled(true)
///                 .resourceTypes("microsoft.datashare/accounts")
///                 .build())
///             .mysql(AzureIntegrationsMysqlArgs.builder()
///                 .metricsPollingInterval(3600)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .mysqlFlexible(AzureIntegrationsMysqlFlexibleArgs.builder()
///                 .metricsPollingInterval(3600)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .postgresql(AzureIntegrationsPostgresqlArgs.builder()
///                 .metricsPollingInterval(3600)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .postgresqlFlexible(AzureIntegrationsPostgresqlFlexibleArgs.builder()
///                 .metricsPollingInterval(3600)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .powerBiDedicated(AzureIntegrationsPowerBiDedicatedArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .redisCache(AzureIntegrationsRedisCacheArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .serviceBus(AzureIntegrationsServiceBusArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .sql(AzureIntegrationsSqlArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .sqlManaged(AzureIntegrationsSqlManagedArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .storage(AzureIntegrationsStorageArgs.builder()
///                 .metricsPollingInterval(1800)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .virtualMachine(AzureIntegrationsVirtualMachineArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .virtualNetworks(AzureIntegrationsVirtualNetworksArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .vms(AzureIntegrationsVmsArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .vpnGateway(AzureIntegrationsVpnGatewayArgs.builder()
///                 .metricsPollingInterval(300)
///                 .resourceGroups("resource_groups")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:cloud:AzureLinkAccount
///     properties:
///       accountId: The New Relic account ID where you want to link the Azure account
///       applicationId: ID of the application
///       clientSecret: Secret value of client's Azure account
///       subscriptionId: Subscription ID of Azure
///       tenantId: Tenant ID of the Azure
///       name: Name of the linked account
///   fooAzureIntegrations:
///     type: newrelic:cloud:AzureIntegrations
///     name: foo
///     properties:
///       linkedAccountId: ${foo.id}
///       accountId: The New Relic account ID
///       apiManagement:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       appGateway:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       appService:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       containers:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       cosmosDb:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       costManagement:
///         metricsPollingInterval: 3600
///         tagKeys:
///           - tag_keys
///       dataFactory:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       eventHub:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       expressRoute:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       firewalls:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       frontDoor:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       functions:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       keyVault:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       loadBalancer:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       logicApps:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       machineLearning:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       mariaDb:
///         metricsPollingInterval: 3600
///         resourceGroups:
///           - resource_groups
///       monitor:
///         metricsPollingInterval: 60
///         resourceGroups:
///           - resource_groups
///         includeTags:
///           - env:production
///         excludeTags:
///           - env:staging
///           - env:testing
///         enabled: true
///         resourceTypes:
///           - microsoft.datashare/accounts
///       mysql:
///         metricsPollingInterval: 3600
///         resourceGroups:
///           - resource_groups
///       mysqlFlexible:
///         metricsPollingInterval: 3600
///         resourceGroups:
///           - resource_groups
///       postgresql:
///         metricsPollingInterval: 3600
///         resourceGroups:
///           - resource_groups
///       postgresqlFlexible:
///         metricsPollingInterval: 3600
///         resourceGroups:
///           - resource_groups
///       powerBiDedicated:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       redisCache:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       serviceBus:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       sql:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       sqlManaged:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       storage:
///         metricsPollingInterval: 1800
///         resourceGroups:
///           - resource_groups
///       virtualMachine:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       virtualNetworks:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       vms:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
///       vpnGateway:
///         metricsPollingInterval: 300
///         resourceGroups:
///           - resource_groups
/// ```
///
///
/// ## Import
///
/// Linked Azure accounts can be imported using `id`, you can find the `id` of existing Azure linked accounts in Azure dashboard under Infrastructure in NewRelic.
///
/// ```bash
/// $ terraform import newrelic_cloud_azure_integrations.foo <id>
///
/// ```
class AzureIntegrations extends pulumi.CustomResource {
  /// The New Relic account ID to operate on.  This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  late final pulumi.Output<String> accountId;
  /// Azure API Management. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsApiManagement?> apiManagement;
  /// Azure App Gateway. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsAppGateway?> appGateway;
  /// Azure App Service. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsAppService?> appService;
  /// Azure Auto Discovery
  late final pulumi.Output<AzureIntegrationsAutoDiscovery?> autoDiscovery;
  /// Azure Containers. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsContainers?> containers;
  /// Azure CosmosDB. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsCosmosDb?> cosmosDb;
  /// Azure Cost Management. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsCostManagement?> costManagement;
  /// Azure Data Factory. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsDataFactory?> dataFactory;
  /// Azure Event Hub. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsEventHub?> eventHub;
  /// Azure Express Route. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsExpressRoute?> expressRoute;
  /// Azure Firewalls. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsFirewalls?> firewalls;
  /// Azure Front Door. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsFrontDoor?> frontDoor;
  /// Azure Functions. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsFunctions?> functions;
  /// Azure Key Vault. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsKeyVault?> keyVault;
  /// The ID of the linked Azure account in New Relic.
  ///
  ///
  /// The following arguments/integration blocks are intended to be used with a minimum `metrics_polling_interval` of 60 seconds.
  late final pulumi.Output<String> linkedAccountId;
  /// Azure Load Balancer. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsLoadBalancer?> loadBalancer;
  /// Azure Logic Apps. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsLogicApps?> logicApps;
  /// Azure Machine Learning. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsMachineLearning?> machineLearning;
  /// Azure MariaDB. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsMariaDb?> mariaDb;
  /// Azure Monitor. See Integration blocks below for details.
  ///
  /// The following arguments/integration blocks are intended to be used with a minimum `metrics_polling_interval` of 300 seconds.
  late final pulumi.Output<AzureIntegrationsMonitor?> monitor;
  /// Azure MySQL. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsMysql?> mysql;
  /// Azure MySQL Flexible Server. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsMysqlFlexible?> mysqlFlexible;
  /// Azure PostgreSQL. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsPostgresql?> postgresql;
  /// Azure PostgreSQL Flexible Server. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsPostgresqlFlexible?> postgresqlFlexible;
  /// Azure Power BI Dedicated. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsPowerBiDedicated?> powerBiDedicated;
  /// Azure Redis Cache. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsRedisCache?> redisCache;
  /// Azure Service Bus. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsServiceBus?> serviceBus;
  /// Azure SQL. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsSql?> sql;
  /// Azure SQL Managed. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsSqlManaged?> sqlManaged;
  /// for Azure Storage. See Integration blocks below for details.
  ///
  /// The following arguments/integration blocks are intended to be used with a minimum `metrics_polling_interval` of 3600 seconds.
  late final pulumi.Output<AzureIntegrationsStorage?> storage;
  /// Azure Virtual machine. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsVirtualMachine?> virtualMachine;
  /// for Azure Virtual networks. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsVirtualNetworks?> virtualNetworks;
  /// Azure VMs. See Integration blocks below for details.
  late final pulumi.Output<AzureIntegrationsVms?> vms;
  /// Azure VPN Gateway. See Integration blocks below for details.
  ///
  /// The following arguments/integration blocks are intended to be used with a minimum `metrics_polling_interval` of 1800 seconds.
  late final pulumi.Output<AzureIntegrationsVpnGateway?> vpnGateway;

  /// Creates a new [AzureIntegrations].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AzureIntegrations]. {@macro pulumi_cloud_azure_integrations_azure_integrations_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AzureIntegrations(
    String name, {
    AzureIntegrationsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:cloud/azureIntegrations:AzureIntegrations',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    apiManagement = registerOutput<AzureIntegrationsApiManagement?>('apiManagement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsApiManagement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    appGateway = registerOutput<AzureIntegrationsAppGateway?>('appGateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsAppGateway.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    appService = registerOutput<AzureIntegrationsAppService?>('appService', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsAppService.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoDiscovery = registerOutput<AzureIntegrationsAutoDiscovery?>('autoDiscovery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsAutoDiscovery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    containers = registerOutput<AzureIntegrationsContainers?>('containers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsContainers.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cosmosDb = registerOutput<AzureIntegrationsCosmosDb?>('cosmosDb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsCosmosDb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    costManagement = registerOutput<AzureIntegrationsCostManagement?>('costManagement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsCostManagement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataFactory = registerOutput<AzureIntegrationsDataFactory?>('dataFactory', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsDataFactory.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eventHub = registerOutput<AzureIntegrationsEventHub?>('eventHub', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsEventHub.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    expressRoute = registerOutput<AzureIntegrationsExpressRoute?>('expressRoute', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsExpressRoute.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    firewalls = registerOutput<AzureIntegrationsFirewalls?>('firewalls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsFirewalls.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    frontDoor = registerOutput<AzureIntegrationsFrontDoor?>('frontDoor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsFrontDoor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    functions = registerOutput<AzureIntegrationsFunctions?>('functions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsFunctions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVault = registerOutput<AzureIntegrationsKeyVault?>('keyVault', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsKeyVault.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    linkedAccountId = registerOutput<String>('linkedAccountId');
    loadBalancer = registerOutput<AzureIntegrationsLoadBalancer?>('loadBalancer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsLoadBalancer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logicApps = registerOutput<AzureIntegrationsLogicApps?>('logicApps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsLogicApps.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    machineLearning = registerOutput<AzureIntegrationsMachineLearning?>('machineLearning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsMachineLearning.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mariaDb = registerOutput<AzureIntegrationsMariaDb?>('mariaDb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsMariaDb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    monitor = registerOutput<AzureIntegrationsMonitor?>('monitor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsMonitor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mysql = registerOutput<AzureIntegrationsMysql?>('mysql', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsMysql.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mysqlFlexible = registerOutput<AzureIntegrationsMysqlFlexible?>('mysqlFlexible', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsMysqlFlexible.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    postgresql = registerOutput<AzureIntegrationsPostgresql?>('postgresql', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsPostgresql.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    postgresqlFlexible = registerOutput<AzureIntegrationsPostgresqlFlexible?>('postgresqlFlexible', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsPostgresqlFlexible.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    powerBiDedicated = registerOutput<AzureIntegrationsPowerBiDedicated?>('powerBiDedicated', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsPowerBiDedicated.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redisCache = registerOutput<AzureIntegrationsRedisCache?>('redisCache', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsRedisCache.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceBus = registerOutput<AzureIntegrationsServiceBus?>('serviceBus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsServiceBus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sql = registerOutput<AzureIntegrationsSql?>('sql', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsSql.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sqlManaged = registerOutput<AzureIntegrationsSqlManaged?>('sqlManaged', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsSqlManaged.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storage = registerOutput<AzureIntegrationsStorage?>('storage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsStorage.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualMachine = registerOutput<AzureIntegrationsVirtualMachine?>('virtualMachine', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsVirtualMachine.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualNetworks = registerOutput<AzureIntegrationsVirtualNetworks?>('virtualNetworks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsVirtualNetworks.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vms = registerOutput<AzureIntegrationsVms?>('vms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsVms.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpnGateway = registerOutput<AzureIntegrationsVpnGateway?>('vpnGateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsVpnGateway.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AzureIntegrations] resource's state with the given [name] and [id].
  static AzureIntegrations get(
    String name,
    pulumi.Input<String> id, {
    AzureIntegrationsState? state,
  }) {
    return AzureIntegrations._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AzureIntegrations._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:cloud/azureIntegrations:AzureIntegrations',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    apiManagement = registerOutput<AzureIntegrationsApiManagement?>('apiManagement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsApiManagement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    appGateway = registerOutput<AzureIntegrationsAppGateway?>('appGateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsAppGateway.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    appService = registerOutput<AzureIntegrationsAppService?>('appService', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsAppService.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoDiscovery = registerOutput<AzureIntegrationsAutoDiscovery?>('autoDiscovery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsAutoDiscovery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    containers = registerOutput<AzureIntegrationsContainers?>('containers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsContainers.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cosmosDb = registerOutput<AzureIntegrationsCosmosDb?>('cosmosDb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsCosmosDb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    costManagement = registerOutput<AzureIntegrationsCostManagement?>('costManagement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsCostManagement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataFactory = registerOutput<AzureIntegrationsDataFactory?>('dataFactory', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsDataFactory.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eventHub = registerOutput<AzureIntegrationsEventHub?>('eventHub', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsEventHub.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    expressRoute = registerOutput<AzureIntegrationsExpressRoute?>('expressRoute', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsExpressRoute.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    firewalls = registerOutput<AzureIntegrationsFirewalls?>('firewalls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsFirewalls.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    frontDoor = registerOutput<AzureIntegrationsFrontDoor?>('frontDoor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsFrontDoor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    functions = registerOutput<AzureIntegrationsFunctions?>('functions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsFunctions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVault = registerOutput<AzureIntegrationsKeyVault?>('keyVault', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsKeyVault.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    linkedAccountId = registerOutput<String>('linkedAccountId');
    loadBalancer = registerOutput<AzureIntegrationsLoadBalancer?>('loadBalancer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsLoadBalancer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logicApps = registerOutput<AzureIntegrationsLogicApps?>('logicApps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsLogicApps.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    machineLearning = registerOutput<AzureIntegrationsMachineLearning?>('machineLearning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsMachineLearning.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mariaDb = registerOutput<AzureIntegrationsMariaDb?>('mariaDb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsMariaDb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    monitor = registerOutput<AzureIntegrationsMonitor?>('monitor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsMonitor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mysql = registerOutput<AzureIntegrationsMysql?>('mysql', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsMysql.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mysqlFlexible = registerOutput<AzureIntegrationsMysqlFlexible?>('mysqlFlexible', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsMysqlFlexible.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    postgresql = registerOutput<AzureIntegrationsPostgresql?>('postgresql', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsPostgresql.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    postgresqlFlexible = registerOutput<AzureIntegrationsPostgresqlFlexible?>('postgresqlFlexible', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsPostgresqlFlexible.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    powerBiDedicated = registerOutput<AzureIntegrationsPowerBiDedicated?>('powerBiDedicated', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsPowerBiDedicated.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redisCache = registerOutput<AzureIntegrationsRedisCache?>('redisCache', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsRedisCache.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceBus = registerOutput<AzureIntegrationsServiceBus?>('serviceBus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsServiceBus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sql = registerOutput<AzureIntegrationsSql?>('sql', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsSql.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sqlManaged = registerOutput<AzureIntegrationsSqlManaged?>('sqlManaged', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsSqlManaged.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storage = registerOutput<AzureIntegrationsStorage?>('storage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsStorage.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualMachine = registerOutput<AzureIntegrationsVirtualMachine?>('virtualMachine', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsVirtualMachine.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualNetworks = registerOutput<AzureIntegrationsVirtualNetworks?>('virtualNetworks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsVirtualNetworks.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vms = registerOutput<AzureIntegrationsVms?>('vms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsVms.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpnGateway = registerOutput<AzureIntegrationsVpnGateway?>('vpnGateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureIntegrationsVpnGateway.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
