import 'package:pulumi/pulumi.dart' as pulumi;
import 'cosmosdb_data_connection_args.dart';
import 'cosmosdb_data_connection_state.dart';

/// Manages a Kusto / Cosmos Database Data Connection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "exampleRG",
///     location: "West Europe",
/// });
/// const builtin = azure.authorization.getRoleDefinition({
///     roleDefinitionId: "fbdf93bf-df7d-467e-a4d2-9458aa1360c8",
/// });
/// const exampleCluster = new azure.kusto.Cluster("example", {
///     name: "examplekc",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     sku: {
///         name: "Dev(No SLA)_Standard_D11_v2",
///         capacity: 1,
///     },
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleAssignment = new azure.authorization.Assignment("example", {
///     scope: exampleResourceGroup.id,
///     roleDefinitionName: builtin.then(builtin => builtin.name),
///     principalId: exampleCluster.identity.apply(identity => identity?.principalId),
/// });
/// const exampleAccount = new azure.cosmosdb.Account("example", {
///     name: "example-ca",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     offerType: "Standard",
///     kind: "GlobalDocumentDB",
///     consistencyPolicy: {
///         consistencyLevel: "Session",
///         maxIntervalInSeconds: 5,
///         maxStalenessPrefix: 100,
///     },
///     geoLocations: [{
///         location: exampleResourceGroup.location,
///         failoverPriority: 0,
///     }],
/// });
/// const exampleSqlDatabase = new azure.cosmosdb.SqlDatabase("example", {
///     name: "examplecosmosdbsqldb",
///     resourceGroupName: exampleAccount.resourceGroupName,
///     accountName: exampleAccount.name,
/// });
/// const exampleSqlContainer = new azure.cosmosdb.SqlContainer("example", {
///     name: "examplecosmosdbsqlcon",
///     resourceGroupName: exampleAccount.resourceGroupName,
///     accountName: exampleAccount.name,
///     databaseName: exampleSqlDatabase.name,
///     partitionKeyPath: "/part",
///     throughput: 400,
/// });
/// const example = azure.cosmosdb.getSqlRoleDefinitionOutput({
///     roleDefinitionId: "00000000-0000-0000-0000-000000000001",
///     resourceGroupName: exampleResourceGroup.name,
///     accountName: exampleAccount.name,
/// });
/// const exampleSqlRoleAssignment = new azure.cosmosdb.SqlRoleAssignment("example", {
///     resourceGroupName: exampleResourceGroup.name,
///     accountName: exampleAccount.name,
///     roleDefinitionId: example.id,
///     principalId: exampleCluster.identity.apply(identity => identity?.principalId),
///     scope: exampleAccount.id,
/// });
/// const exampleDatabase = new azure.kusto.Database("example", {
///     name: "examplekd",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     clusterName: exampleCluster.name,
/// });
/// const exampleScript = new azure.kusto.Script("example", {
///     name: "create-table-script",
///     databaseId: exampleDatabase.id,
///     scriptContent: `.create table TestTable(Id:string, Name:string, _ts:long, _timestamp:datetime)
/// .create table TestTable ingestion json mapping \\"TestMapping\\"
/// '['
/// '    {\\"column\\":\\"Id\\",\\"path\\":\\".id\\"},'
/// '    {\\"column\\":\\"Name\\",\\"path\\":\\".name\\"},'
/// '    {\\"column\\":\\"_ts\\",\\"path\\":\\"._ts\\"},'
/// '    {\\"column\\":\\"_timestamp\\",\\"path\\":\\"._ts\\", \\"transform\\":\\"DateTimeFromUnixSeconds\\"}'
/// ']'
/// .alter table TestTable policy ingestionbatching \\"{'MaximumBatchingTimeSpan': '0:0:10', 'MaximumNumberOfItems': 10000}\\"
/// `,
/// });
/// const exampleCosmosdbDataConnection = new azure.kusto.CosmosdbDataConnection("example", {
///     name: "examplekcdcd",
///     location: exampleResourceGroup.location,
///     cosmosdbContainerId: exampleSqlContainer.id,
///     kustoDatabaseId: exampleDatabase.id,
///     managedIdentityId: exampleCluster.id,
///     tableName: "TestTable",
///     mappingRuleName: "TestMapping",
///     retrievalStartDate: "2023-06-26T12:00:00.6554616Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="exampleRG",
///     location="West Europe")
/// builtin = azure.authorization.get_role_definition(role_definition_id="fbdf93bf-df7d-467e-a4d2-9458aa1360c8")
/// example_cluster = azure.kusto.Cluster("example",
///     name="examplekc",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     sku={
///         "name": "Dev(No SLA)_Standard_D11_v2",
///         "capacity": 1,
///     },
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_assignment = azure.authorization.Assignment("example",
///     scope=example_resource_group.id,
///     role_definition_name=builtin.name,
///     principal_id=example_cluster.identity.principal_id)
/// example_account = azure.cosmosdb.Account("example",
///     name="example-ca",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     offer_type="Standard",
///     kind="GlobalDocumentDB",
///     consistency_policy={
///         "consistency_level": "Session",
///         "max_interval_in_seconds": 5,
///         "max_staleness_prefix": 100,
///     },
///     geo_locations=[{
///         "location": example_resource_group.location,
///         "failover_priority": 0,
///     }])
/// example_sql_database = azure.cosmosdb.SqlDatabase("example",
///     name="examplecosmosdbsqldb",
///     resource_group_name=example_account.resource_group_name,
///     account_name=example_account.name)
/// example_sql_container = azure.cosmosdb.SqlContainer("example",
///     name="examplecosmosdbsqlcon",
///     resource_group_name=example_account.resource_group_name,
///     account_name=example_account.name,
///     database_name=example_sql_database.name,
///     partition_key_path="/part",
///     throughput=400)
/// example = azure.cosmosdb.get_sql_role_definition_output(role_definition_id="00000000-0000-0000-0000-000000000001",
///     resource_group_name=example_resource_group.name,
///     account_name=example_account.name)
/// example_sql_role_assignment = azure.cosmosdb.SqlRoleAssignment("example",
///     resource_group_name=example_resource_group.name,
///     account_name=example_account.name,
///     role_definition_id=example.id,
///     principal_id=example_cluster.identity.principal_id,
///     scope=example_account.id)
/// example_database = azure.kusto.Database("example",
///     name="examplekd",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     cluster_name=example_cluster.name)
/// example_script = azure.kusto.Script("example",
///     name="create-table-script",
///     database_id=example_database.id,
///     script_content=""".create table TestTable(Id:string, Name:string, _ts:long, _timestamp:datetime)
/// .create table TestTable ingestion json mapping \"TestMapping\"
/// '['
/// '    {\"column\":\"Id\",\"path\":\"$.id\"},'
/// '    {\"column\":\"Name\",\"path\":\"$.name\"},'
/// '    {\"column\":\"_ts\",\"path\":\"$._ts\"},'
/// '    {\"column\":\"_timestamp\",\"path\":\"$._ts\", \"transform\":\"DateTimeFromUnixSeconds\"}'
/// ']'
/// .alter table TestTable policy ingestionbatching \"{'MaximumBatchingTimeSpan': '0:0:10', 'MaximumNumberOfItems': 10000}\"
/// """)
/// example_cosmosdb_data_connection = azure.kusto.CosmosdbDataConnection("example",
///     name="examplekcdcd",
///     location=example_resource_group.location,
///     cosmosdb_container_id=example_sql_container.id,
///     kusto_database_id=example_database.id,
///     managed_identity_id=example_cluster.id,
///     table_name="TestTable",
///     mapping_rule_name="TestMapping",
///     retrieval_start_date="2023-06-26T12:00:00.6554616Z")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "exampleRG",
///         Location = "West Europe",
///     });
///
///     var builtin = Azure.Authorization.GetRoleDefinition.Invoke(new()
///     {
///         RoleDefinitionId = "fbdf93bf-df7d-467e-a4d2-9458aa1360c8",
///     });
///
///     var exampleCluster = new Azure.Kusto.Cluster("example", new()
///     {
///         Name = "examplekc",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Sku = new Azure.Kusto.Inputs.ClusterSkuArgs
///         {
///             Name = "Dev(No SLA)_Standard_D11_v2",
///             Capacity = 1,
///         },
///         Identity = new Azure.Kusto.Inputs.ClusterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
///     {
///         Scope = exampleResourceGroup.Id,
///         RoleDefinitionName = builtin.Apply(getRoleDefinitionResult => getRoleDefinitionResult.Name),
///         PrincipalId = exampleCluster.Identity.Apply(identity => identity?.PrincipalId),
///     });
///
///     var exampleAccount = new Azure.CosmosDB.Account("example", new()
///     {
///         Name = "example-ca",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         OfferType = "Standard",
///         Kind = "GlobalDocumentDB",
///         ConsistencyPolicy = new Azure.CosmosDB.Inputs.AccountConsistencyPolicyArgs
///         {
///             ConsistencyLevel = "Session",
///             MaxIntervalInSeconds = 5,
///             MaxStalenessPrefix = 100,
///         },
///         GeoLocations = new[]
///         {
///             new Azure.CosmosDB.Inputs.AccountGeoLocationArgs
///             {
///                 Location = exampleResourceGroup.Location,
///                 FailoverPriority = 0,
///             },
///         },
///     });
///
///     var exampleSqlDatabase = new Azure.CosmosDB.SqlDatabase("example", new()
///     {
///         Name = "examplecosmosdbsqldb",
///         ResourceGroupName = exampleAccount.ResourceGroupName,
///         AccountName = exampleAccount.Name,
///     });
///
///     var exampleSqlContainer = new Azure.CosmosDB.SqlContainer("example", new()
///     {
///         Name = "examplecosmosdbsqlcon",
///         ResourceGroupName = exampleAccount.ResourceGroupName,
///         AccountName = exampleAccount.Name,
///         DatabaseName = exampleSqlDatabase.Name,
///         PartitionKeyPath = "/part",
///         Throughput = 400,
///     });
///
///     var example = Azure.CosmosDB.GetSqlRoleDefinition.Invoke(new()
///     {
///         RoleDefinitionId = "00000000-0000-0000-0000-000000000001",
///         ResourceGroupName = exampleResourceGroup.Name,
///         AccountName = exampleAccount.Name,
///     });
///
///     var exampleSqlRoleAssignment = new Azure.CosmosDB.SqlRoleAssignment("example", new()
///     {
///         ResourceGroupName = exampleResourceGroup.Name,
///         AccountName = exampleAccount.Name,
///         RoleDefinitionId = example.Apply(getSqlRoleDefinitionResult => getSqlRoleDefinitionResult.Id),
///         PrincipalId = exampleCluster.Identity.Apply(identity => identity?.PrincipalId),
///         Scope = exampleAccount.Id,
///     });
///
///     var exampleDatabase = new Azure.Kusto.Database("example", new()
///     {
///         Name = "examplekd",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         ClusterName = exampleCluster.Name,
///     });
///
///     var exampleScript = new Azure.Kusto.Script("example", new()
///     {
///         Name = "create-table-script",
///         DatabaseId = exampleDatabase.Id,
///         ScriptContent = @".create table TestTable(Id:string, Name:string, _ts:long, _timestamp:datetime)
/// .create table TestTable ingestion json mapping \""TestMapping\""
/// '['
/// '    {\""column\"":\""Id\"",\""path\"":\""$.id\""},'
/// '    {\""column\"":\""Name\"",\""path\"":\""$.name\""},'
/// '    {\""column\"":\""_ts\"",\""path\"":\""$._ts\""},'
/// '    {\""column\"":\""_timestamp\"",\""path\"":\""$._ts\"", \""transform\"":\""DateTimeFromUnixSeconds\""}'
/// ']'
/// .alter table TestTable policy ingestionbatching \""{'MaximumBatchingTimeSpan': '0:0:10', 'MaximumNumberOfItems': 10000}\""
/// ",
///     });
///
///     var exampleCosmosdbDataConnection = new Azure.Kusto.CosmosdbDataConnection("example", new()
///     {
///         Name = "examplekcdcd",
///         Location = exampleResourceGroup.Location,
///         CosmosdbContainerId = exampleSqlContainer.Id,
///         KustoDatabaseId = exampleDatabase.Id,
///         ManagedIdentityId = exampleCluster.Id,
///         TableName = "TestTable",
///         MappingRuleName = "TestMapping",
///         RetrievalStartDate = "2023-06-26T12:00:00.6554616Z",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cosmosdb"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/kusto"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("exampleRG"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		builtin, err := authorization.LookupRoleDefinition(ctx, &authorization.LookupRoleDefinitionArgs{
/// 			RoleDefinitionId: pulumi.StringRef("fbdf93bf-df7d-467e-a4d2-9458aa1360c8"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCluster, err := kusto.NewCluster(ctx, "example", &kusto.ClusterArgs{
/// 			Name:              pulumi.String("examplekc"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Sku: &kusto.ClusterSkuArgs{
/// 				Name:     pulumi.String("Dev(No SLA)_Standard_D11_v2"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 			Identity: &kusto.ClusterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			Scope:              exampleResourceGroup.ID().ToIDOutput().ToStringOutput(),
/// 			RoleDefinitionName: pulumi.String(builtin.Name),
/// 			PrincipalId:        exampleCluster.Identity.PrincipalId(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := cosmosdb.NewAccount(ctx, "example", &cosmosdb.AccountArgs{
/// 			Name:              pulumi.String("example-ca"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			OfferType:         pulumi.String("Standard"),
/// 			Kind:              pulumi.String("GlobalDocumentDB"),
/// 			ConsistencyPolicy: &cosmosdb.AccountConsistencyPolicyArgs{
/// 				ConsistencyLevel:     pulumi.String("Session"),
/// 				MaxIntervalInSeconds: pulumi.Int(5),
/// 				MaxStalenessPrefix:   pulumi.Int(100),
/// 			},
/// 			GeoLocations: cosmosdb.AccountGeoLocationArray{
/// 				&cosmosdb.AccountGeoLocationArgs{
/// 					Location:         exampleResourceGroup.Location,
/// 					FailoverPriority: pulumi.Int(0),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSqlDatabase, err := cosmosdb.NewSqlDatabase(ctx, "example", &cosmosdb.SqlDatabaseArgs{
/// 			Name:              pulumi.String("examplecosmosdbsqldb"),
/// 			ResourceGroupName: exampleAccount.ResourceGroupName,
/// 			AccountName:       exampleAccount.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSqlContainer, err := cosmosdb.NewSqlContainer(ctx, "example", &cosmosdb.SqlContainerArgs{
/// 			Name:              pulumi.String("examplecosmosdbsqlcon"),
/// 			ResourceGroupName: exampleAccount.ResourceGroupName,
/// 			AccountName:       exampleAccount.Name,
/// 			DatabaseName:      exampleSqlDatabase.Name,
/// 			PartitionKeyPath:  "/part",
/// 			Throughput:        pulumi.Int(400),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := cosmosdb.LookupSqlRoleDefinitionOutput(ctx, cosmosdb.GetSqlRoleDefinitionOutputArgs{
/// 			RoleDefinitionId:  pulumi.String("00000000-0000-0000-0000-000000000001"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			AccountName:       exampleAccount.Name,
/// 		}, nil)
/// 		_, err = cosmosdb.NewSqlRoleAssignment(ctx, "example", &cosmosdb.SqlRoleAssignmentArgs{
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			AccountName:       exampleAccount.Name,
/// 			RoleDefinitionId:  example.Id(),
/// 			PrincipalId:       exampleCluster.Identity.PrincipalId(),
/// 			Scope:             exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDatabase, err := kusto.NewDatabase(ctx, "example", &kusto.DatabaseArgs{
/// 			Name:              pulumi.String("examplekd"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Location:          exampleResourceGroup.Location,
/// 			ClusterName:       exampleCluster.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kusto.NewScript(ctx, "example", &kusto.ScriptArgs{
/// 			Name:       pulumi.String("create-table-script"),
/// 			DatabaseId: exampleDatabase.ID().ToIDOutput().ToStringOutput(),
/// 			ScriptContent: pulumi.String(`.create table TestTable(Id:string, Name:string, _ts:long, _timestamp:datetime)
/// .create table TestTable ingestion json mapping \"TestMapping\"
/// '['
/// '    {\"column\":\"Id\",\"path\":\"$.id\"},'
/// '    {\"column\":\"Name\",\"path\":\"$.name\"},'
/// '    {\"column\":\"_ts\",\"path\":\"$._ts\"},'
/// '    {\"column\":\"_timestamp\",\"path\":\"$._ts\", \"transform\":\"DateTimeFromUnixSeconds\"}'
/// ']'
/// .alter table TestTable policy ingestionbatching \"{'MaximumBatchingTimeSpan': '0:0:10', 'MaximumNumberOfItems': 10000}\"
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kusto.NewCosmosdbDataConnection(ctx, "example", &kusto.CosmosdbDataConnectionArgs{
/// 			Name:                pulumi.String("examplekcdcd"),
/// 			Location:            exampleResourceGroup.Location,
/// 			CosmosdbContainerId: exampleSqlContainer.ID().ToIDOutput().ToStringOutput(),
/// 			KustoDatabaseId:     exampleDatabase.ID().ToIDOutput().ToStringOutput(),
/// 			ManagedIdentityId:   exampleCluster.ID().ToIDOutput().ToStringOutput(),
/// 			TableName:           pulumi.String("TestTable"),
/// 			MappingRuleName:     pulumi.String("TestMapping"),
/// 			RetrievalStartDate:  pulumi.String("2023-06-26T12:00:00.6554616Z"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_core_getclientconfig" "current" {
/// }
/// data "azure_authorization_getroledefinition" "builtin" {
///   role_definition_id = "fbdf93bf-df7d-467e-a4d2-9458aa1360c8"
/// }
/// data "azure_cosmosdb_getsqlroledefinition" "example" {
///   role_definition_id  = "00000000-0000-0000-0000-000000000001"
///   resource_group_name = azure_core_resourcegroup.example.name
///   account_name        = azure_cosmosdb_account.example.name
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "exampleRG"
///   location = "West Europe"
/// }
/// resource "azure_authorization_assignment" "example" {
///   scope                = azure_core_resourcegroup.example.id
///   role_definition_name = data.azure_authorization_getroledefinition.builtin.name
///   principal_id         = azure_kusto_cluster.example.identity.principal_id
/// }
/// resource "azure_cosmosdb_account" "example" {
///   name                = "example-ca"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   offer_type          = "Standard"
///   kind                = "GlobalDocumentDB"
///   consistency_policy = {
///     consistency_level       = "Session"
///     max_interval_in_seconds = 5
///     max_staleness_prefix    = 100
///   }
///   geo_locations {
///     location          = azure_core_resourcegroup.example.location
///     failover_priority = 0
///   }
/// }
/// resource "azure_cosmosdb_sqldatabase" "example" {
///   name                = "examplecosmosdbsqldb"
///   resource_group_name = azure_cosmosdb_account.example.resource_group_name
///   account_name        = azure_cosmosdb_account.example.name
/// }
/// resource "azure_cosmosdb_sqlcontainer" "example" {
///   name                = "examplecosmosdbsqlcon"
///   resource_group_name = azure_cosmosdb_account.example.resource_group_name
///   account_name        = azure_cosmosdb_account.example.name
///   database_name       = azure_cosmosdb_sqldatabase.example.name
///   partition_key_path  = "/part"
///   throughput          = 400
/// }
/// resource "azure_cosmosdb_sqlroleassignment" "example" {
///   resource_group_name = azure_core_resourcegroup.example.name
///   account_name        = azure_cosmosdb_account.example.name
///   role_definition_id  = data.azure_cosmosdb_getsqlroledefinition.example.id
///   principal_id        = azure_kusto_cluster.example.identity.principal_id
///   scope               = azure_cosmosdb_account.example.id
/// }
/// resource "azure_kusto_cluster" "example" {
///   name                = "examplekc"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku = {
///     name     = "Dev(No SLA)_Standard_D11_v2"
///     capacity = 1
///   }
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_kusto_database" "example" {
///   name                = "examplekd"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   cluster_name        = azure_kusto_cluster.example.name
/// }
/// resource "azure_kusto_script" "example" {
///   name           = "create-table-script"
///   database_id    = azure_kusto_database.example.id
///   script_content = ".create table TestTable(Id:string, Name:string, _ts:long, _timestamp:datetime)\n.create table TestTable ingestion json mapping \\\"TestMapping\\\"\n'['\n'    {\\\"column\\\":\\\"Id\\\",\\\"path\\\":\\\"$.id\\\"},'\n'    {\\\"column\\\":\\\"Name\\\",\\\"path\\\":\\\"$.name\\\"},'\n'    {\\\"column\\\":\\\"_ts\\\",\\\"path\\\":\\\"$._ts\\\"},'\n'    {\\\"column\\\":\\\"_timestamp\\\",\\\"path\\\":\\\"$._ts\\\", \\\"transform\\\":\\\"DateTimeFromUnixSeconds\\\"}'\n']'\n.alter table TestTable policy ingestionbatching \\\"{'MaximumBatchingTimeSpan': '0:0:10', 'MaximumNumberOfItems': 10000}\\\"\n"
/// }
/// resource "azure_kusto_cosmosdbdataconnection" "example" {
///   name                  = "examplekcdcd"
///   location              = azure_core_resourcegroup.example.location
///   cosmosdb_container_id = azure_cosmosdb_sqlcontainer.example.id
///   kusto_database_id     = azure_kusto_database.example.id
///   managed_identity_id   = azure_kusto_cluster.example.id
///   table_name            = "TestTable"
///   mapping_rule_name     = "TestMapping"
///   retrieval_start_date  = "2023-06-26T12:00:00.6554616Z"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.authorization.AuthorizationFunctions;
/// import com.pulumi.azure.authorization.inputs.GetRoleDefinitionArgs;
/// import com.pulumi.azure.kusto.Cluster;
/// import com.pulumi.azure.kusto.ClusterArgs;
/// import com.pulumi.azure.kusto.inputs.ClusterSkuArgs;
/// import com.pulumi.azure.kusto.inputs.ClusterIdentityArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.cosmosdb.Account;
/// import com.pulumi.azure.cosmosdb.AccountArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountConsistencyPolicyArgs;
/// import com.pulumi.azure.cosmosdb.inputs.AccountGeoLocationArgs;
/// import com.pulumi.azure.cosmosdb.SqlDatabase;
/// import com.pulumi.azure.cosmosdb.SqlDatabaseArgs;
/// import com.pulumi.azure.cosmosdb.SqlContainer;
/// import com.pulumi.azure.cosmosdb.SqlContainerArgs;
/// import com.pulumi.azure.cosmosdb.CosmosdbFunctions;
/// import com.pulumi.azure.cosmosdb.inputs.GetSqlRoleDefinitionArgs;
/// import com.pulumi.azure.cosmosdb.SqlRoleAssignment;
/// import com.pulumi.azure.cosmosdb.SqlRoleAssignmentArgs;
/// import com.pulumi.azure.kusto.Database;
/// import com.pulumi.azure.kusto.DatabaseArgs;
/// import com.pulumi.azure.kusto.Script;
/// import com.pulumi.azure.kusto.ScriptArgs;
/// import com.pulumi.azure.kusto.CosmosdbDataConnection;
/// import com.pulumi.azure.kusto.CosmosdbDataConnectionArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("exampleRG")
///             .location("West Europe")
///             .build());
///
///         final var builtin = AuthorizationFunctions.getRoleDefinition(GetRoleDefinitionArgs.builder()
///             .roleDefinitionId("fbdf93bf-df7d-467e-a4d2-9458aa1360c8")
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("examplekc")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .sku(ClusterSkuArgs.builder()
///                 .name("Dev(No SLA)_Standard_D11_v2")
///                 .capacity(1)
///                 .build())
///             .identity(ClusterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
///             .scope(exampleResourceGroup.id())
///             .roleDefinitionName(builtin.name())
///             .principalId(exampleCluster.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-ca")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .offerType("Standard")
///             .kind("GlobalDocumentDB")
///             .consistencyPolicy(AccountConsistencyPolicyArgs.builder()
///                 .consistencyLevel("Session")
///                 .maxIntervalInSeconds(5)
///                 .maxStalenessPrefix(100)
///                 .build())
///             .geoLocations(AccountGeoLocationArgs.builder()
///                 .location(exampleResourceGroup.location())
///                 .failoverPriority(0)
///                 .build())
///             .build());
///
///         var exampleSqlDatabase = new SqlDatabase("exampleSqlDatabase", SqlDatabaseArgs.builder()
///             .name("examplecosmosdbsqldb")
///             .resourceGroupName(exampleAccount.resourceGroupName())
///             .accountName(exampleAccount.name())
///             .build());
///
///         var exampleSqlContainer = new SqlContainer("exampleSqlContainer", SqlContainerArgs.builder()
///             .name("examplecosmosdbsqlcon")
///             .resourceGroupName(exampleAccount.resourceGroupName())
///             .accountName(exampleAccount.name())
///             .databaseName(exampleSqlDatabase.name())
///             .partitionKeyPath("/part")
///             .throughput(400)
///             .build());
///
///         final var example = CosmosdbFunctions.getSqlRoleDefinition(GetSqlRoleDefinitionArgs.builder()
///             .roleDefinitionId("00000000-0000-0000-0000-000000000001")
///             .resourceGroupName(exampleResourceGroup.name())
///             .accountName(exampleAccount.name())
///             .build());
///
///         var exampleSqlRoleAssignment = new SqlRoleAssignment("exampleSqlRoleAssignment", SqlRoleAssignmentArgs.builder()
///             .resourceGroupName(exampleResourceGroup.name())
///             .accountName(exampleAccount.name())
///             .roleDefinitionId(example.applyValue(_example -> _example.id()))
///             .principalId(exampleCluster.identity().applyValue(_identity -> _identity.principalId()))
///             .scope(exampleAccount.id())
///             .build());
///
///         var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
///             .name("examplekd")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .clusterName(exampleCluster.name())
///             .build());
///
///         var exampleScript = new Script("exampleScript", ScriptArgs.builder()
///             .name("create-table-script")
///             .databaseId(exampleDatabase.id())
///             .scriptContent("""
/// .create table TestTable(Id:string, Name:string, _ts:long, _timestamp:datetime)
/// .create table TestTable ingestion json mapping \"TestMapping\"
/// '['
/// '    {\"column\":\"Id\",\"path\":\"$.id\"},'
/// '    {\"column\":\"Name\",\"path\":\"$.name\"},'
/// '    {\"column\":\"_ts\",\"path\":\"$._ts\"},'
/// '    {\"column\":\"_timestamp\",\"path\":\"$._ts\", \"transform\":\"DateTimeFromUnixSeconds\"}'
/// ']'
/// .alter table TestTable policy ingestionbatching \"{'MaximumBatchingTimeSpan': '0:0:10', 'MaximumNumberOfItems': 10000}\"
///             """)
///             .build());
///
///         var exampleCosmosdbDataConnection = new CosmosdbDataConnection("exampleCosmosdbDataConnection", CosmosdbDataConnectionArgs.builder()
///             .name("examplekcdcd")
///             .location(exampleResourceGroup.location())
///             .cosmosdbContainerId(exampleSqlContainer.id())
///             .kustoDatabaseId(exampleDatabase.id())
///             .managedIdentityId(exampleCluster.id())
///             .tableName("TestTable")
///             .mappingRuleName("TestMapping")
///             .retrievalStartDate("2023-06-26T12:00:00.6554616Z")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: exampleRG
///       location: West Europe
///   exampleAssignment:
///     type: azure:authorization:Assignment
///     name: example
///     properties:
///       scope: ${exampleResourceGroup.id}
///       roleDefinitionName: ${builtin.name}
///       principalId: ${exampleCluster.identity.principalId}
///   exampleAccount:
///     type: azure:cosmosdb:Account
///     name: example
///     properties:
///       name: example-ca
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       offerType: Standard
///       kind: GlobalDocumentDB
///       consistencyPolicy:
///         consistencyLevel: Session
///         maxIntervalInSeconds: 5
///         maxStalenessPrefix: 100
///       geoLocations:
///         - location: ${exampleResourceGroup.location}
///           failoverPriority: 0
///   exampleSqlDatabase:
///     type: azure:cosmosdb:SqlDatabase
///     name: example
///     properties:
///       name: examplecosmosdbsqldb
///       resourceGroupName: ${exampleAccount.resourceGroupName}
///       accountName: ${exampleAccount.name}
///   exampleSqlContainer:
///     type: azure:cosmosdb:SqlContainer
///     name: example
///     properties:
///       name: examplecosmosdbsqlcon
///       resourceGroupName: ${exampleAccount.resourceGroupName}
///       accountName: ${exampleAccount.name}
///       databaseName: ${exampleSqlDatabase.name}
///       partitionKeyPath: /part
///       throughput: 400
///   exampleSqlRoleAssignment:
///     type: azure:cosmosdb:SqlRoleAssignment
///     name: example
///     properties:
///       resourceGroupName: ${exampleResourceGroup.name}
///       accountName: ${exampleAccount.name}
///       roleDefinitionId: ${example.id}
///       principalId: ${exampleCluster.identity.principalId}
///       scope: ${exampleAccount.id}
///   exampleCluster:
///     type: azure:kusto:Cluster
///     name: example
///     properties:
///       name: examplekc
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       sku:
///         name: Dev(No SLA)_Standard_D11_v2
///         capacity: 1
///       identity:
///         type: SystemAssigned
///   exampleDatabase:
///     type: azure:kusto:Database
///     name: example
///     properties:
///       name: examplekd
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       clusterName: ${exampleCluster.name}
///   exampleScript:
///     type: azure:kusto:Script
///     name: example
///     properties:
///       name: create-table-script
///       databaseId: ${exampleDatabase.id}
///       scriptContent: |
///         .create table TestTable(Id:string, Name:string, _ts:long, _timestamp:datetime)
///         .create table TestTable ingestion json mapping \"TestMapping\"
///         '['
///         '    {\"column\":\"Id\",\"path\":\"$.id\"},'
///         '    {\"column\":\"Name\",\"path\":\"$.name\"},'
///         '    {\"column\":\"_ts\",\"path\":\"$._ts\"},'
///         '    {\"column\":\"_timestamp\",\"path\":\"$._ts\", \"transform\":\"DateTimeFromUnixSeconds\"}'
///         ']'
///         .alter table TestTable policy ingestionbatching \"{'MaximumBatchingTimeSpan': '0:0:10', 'MaximumNumberOfItems': 10000}\"
///   exampleCosmosdbDataConnection:
///     type: azure:kusto:CosmosdbDataConnection
///     name: example
///     properties:
///       name: examplekcdcd
///       location: ${exampleResourceGroup.location}
///       cosmosdbContainerId: ${exampleSqlContainer.id}
///       kustoDatabaseId: ${exampleDatabase.id}
///       managedIdentityId: ${exampleCluster.id}
///       tableName: TestTable
///       mappingRuleName: TestMapping
///       retrievalStartDate: 2023-06-26T12:00:00.6554616Z
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
///   builtin:
///     fn::invoke:
///       function: azure:authorization:getRoleDefinition
///       arguments:
///         roleDefinitionId: fbdf93bf-df7d-467e-a4d2-9458aa1360c8
///   example:
///     fn::invoke:
///       function: azure:cosmosdb:getSqlRoleDefinition
///       arguments:
///         roleDefinitionId: 00000000-0000-0000-0000-000000000001
///         resourceGroupName: ${exampleResourceGroup.name}
///         accountName: ${exampleAccount.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Kusto` - 2024-04-13
///
/// ## Import
///
/// Kusto / Cosmos Database Data Connection can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:kusto/cosmosdbDataConnection:CosmosdbDataConnection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Kusto/clusters/cluster1/databases/database1/dataConnections/dataConnection1
/// ```
class CosmosdbDataConnection extends pulumi.CustomResource {
  /// The name of an existing container in the Cosmos DB database. Changing this forces a new Kusto Cosmos DB Connection to be created.
  late final pulumi.Output<String> cosmosdbContainerId;
  /// The name of the database in the Kusto cluster. Changing this forces a new Kusto Cosmos DB Connection to be created.
  late final pulumi.Output<String> kustoDatabaseId;
  /// The Azure Region where the Data Explorer should exist. Changing this forces a new Kusto Cosmos DB Connection to be created.
  late final pulumi.Output<String> location;
  /// The resource ID of a managed system or user-assigned identity. The identity is used to authenticate with Cosmos DB. Changing this forces a new Kusto Cosmos DB Connection to be created.
  late final pulumi.Output<String> managedIdentityId;
  /// The name of an existing mapping rule to use when ingesting the retrieved data. Changing this forces a new Kusto Cosmos DB Connection to be created.
  late final pulumi.Output<String?> mappingRuleName;
  /// The name of the data connection. Changing this forces a new Kusto Cosmos DB Connection to be created.
  late final pulumi.Output<String> name;
  /// If defined, the data connection retrieves Cosmos DB documents created or updated after the specified retrieval start date. Changing this forces a new Kusto Cosmos DB Connection to be created.
  late final pulumi.Output<String?> retrievalStartDate;
  /// The case-sensitive name of the existing target table in your cluster. Retrieved data is ingested into this table. Changing this forces a new Kusto Cosmos DB Connection to be created.
  late final pulumi.Output<String> tableName;

  /// Creates a new [CosmosdbDataConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CosmosdbDataConnection]. {@macro pulumi_kusto_cosmosdb_data_connection_cosmosdb_data_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CosmosdbDataConnection(
    String name, {
    CosmosdbDataConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:kusto/cosmosdbDataConnection:CosmosdbDataConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    cosmosdbContainerId = registerOutput<String>('cosmosdbContainerId');
    kustoDatabaseId = registerOutput<String>('kustoDatabaseId');
    location = registerOutput<String>('location');
    managedIdentityId = registerOutput<String>('managedIdentityId');
    mappingRuleName = registerOutput<String?>('mappingRuleName');
    this.name = registerOutput<String>('name');
    retrievalStartDate = registerOutput<String?>('retrievalStartDate');
    tableName = registerOutput<String>('tableName');
  }

  /// Gets an existing [CosmosdbDataConnection] resource's state with the given [name] and [id].
  static CosmosdbDataConnection get(
    String name,
    pulumi.Input<String> id, {
    CosmosdbDataConnectionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CosmosdbDataConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CosmosdbDataConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:kusto/cosmosdbDataConnection:CosmosdbDataConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cosmosdbContainerId = registerOutput<String>('cosmosdbContainerId');
    kustoDatabaseId = registerOutput<String>('kustoDatabaseId');
    location = registerOutput<String>('location');
    managedIdentityId = registerOutput<String>('managedIdentityId');
    mappingRuleName = registerOutput<String?>('mappingRuleName');
    this.name = registerOutput<String>('name');
    retrievalStartDate = registerOutput<String?>('retrievalStartDate');
    tableName = registerOutput<String>('tableName');
  }

  /// Creates a typed reference to an existing [CosmosdbDataConnection] resource.
  CosmosdbDataConnection.reference(String urn)
    : super(
        'azure:kusto/cosmosdbDataConnection:CosmosdbDataConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cosmosdbContainerId = registerOutput<String>('cosmosdbContainerId');
    kustoDatabaseId = registerOutput<String>('kustoDatabaseId');
    location = registerOutput<String>('location');
    managedIdentityId = registerOutput<String>('managedIdentityId');
    mappingRuleName = registerOutput<String?>('mappingRuleName');
    this.name = registerOutput<String>('name');
    retrievalStartDate = registerOutput<String?>('retrievalStartDate');
    tableName = registerOutput<String>('tableName');
  }
}
