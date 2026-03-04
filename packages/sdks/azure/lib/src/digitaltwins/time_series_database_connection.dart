import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_series_database_connection_args.dart';
import 'time_series_database_connection_state.dart';

/// Manages a Digital Twins Time Series Database Connection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleInstance = new azure.digitaltwins.Instance("example", {
///     name: "example-DT",
///     resourceGroupName: example.name,
///     location: example.location,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleEventHubNamespace = new azure.eventhub.EventHubNamespace("example", {
///     name: "exampleEventHubNamespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
/// });
/// const exampleEventHub = new azure.eventhub.EventHub("example", {
///     name: "exampleEventHub",
///     namespaceName: exampleEventHubNamespace.name,
///     resourceGroupName: example.name,
///     partitionCount: 2,
///     messageRetention: 7,
/// });
/// const exampleConsumerGroup = new azure.eventhub.ConsumerGroup("example", {
///     name: "example-consumergroup",
///     namespaceName: exampleEventHubNamespace.name,
///     eventhubName: exampleEventHub.name,
///     resourceGroupName: example.name,
/// });
/// const exampleCluster = new azure.kusto.Cluster("example", {
///     name: "examplekc",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         name: "Dev(No SLA)_Standard_D11_v2",
///         capacity: 1,
///     },
/// });
/// const exampleDatabase = new azure.kusto.Database("example", {
///     name: "example-kusto-database",
///     resourceGroupName: example.name,
///     location: example.location,
///     clusterName: exampleCluster.name,
/// });
/// const databaseContributor = new azure.authorization.Assignment("database_contributor", {
///     scope: exampleDatabase.id,
///     principalId: exampleInstance.identity.apply(identity => identity?.principalId),
///     roleDefinitionName: "Contributor",
/// });
/// const eventhubDataOwner = new azure.authorization.Assignment("eventhub_data_owner", {
///     scope: exampleEventHub.id,
///     principalId: exampleInstance.identity.apply(identity => identity?.principalId),
///     roleDefinitionName: "Azure Event Hubs Data Owner",
/// });
/// const exampleDatabasePrincipalAssignment = new azure.kusto.DatabasePrincipalAssignment("example", {
///     name: "dataadmin",
///     resourceGroupName: example.name,
///     clusterName: exampleCluster.name,
///     databaseName: exampleDatabase.name,
///     tenantId: exampleInstance.identity.apply(identity => identity?.tenantId),
///     principalId: exampleInstance.identity.apply(identity => identity?.principalId),
///     principalType: "App",
///     role: "Admin",
/// });
/// const exampleTimeSeriesDatabaseConnection = new azure.digitaltwins.TimeSeriesDatabaseConnection("example", {
///     name: "example-connection",
///     digitalTwinsId: exampleInstance.id,
///     eventhubName: exampleEventHub.name,
///     eventhubNamespaceId: exampleEventHubNamespace.id,
///     eventhubNamespaceEndpointUri: pulumi.interpolate`sb://${exampleEventHubNamespace.name}.servicebus.windows.net`,
///     eventhubConsumerGroupName: exampleConsumerGroup.name,
///     kustoClusterId: exampleCluster.id,
///     kustoClusterUri: exampleCluster.uri,
///     kustoDatabaseName: exampleDatabase.name,
///     kustoTableName: "exampleTable",
/// }, {
///     dependsOn: [
///         databaseContributor,
///         eventhubDataOwner,
///         exampleDatabasePrincipalAssignment,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_instance = azure.digitaltwins.Instance("example",
///     name="example-DT",
///     resource_group_name=example.name,
///     location=example.location,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_event_hub_namespace = azure.eventhub.EventHubNamespace("example",
///     name="exampleEventHubNamespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard")
/// example_event_hub = azure.eventhub.EventHub("example",
///     name="exampleEventHub",
///     namespace_name=example_event_hub_namespace.name,
///     resource_group_name=example.name,
///     partition_count=2,
///     message_retention=7)
/// example_consumer_group = azure.eventhub.ConsumerGroup("example",
///     name="example-consumergroup",
///     namespace_name=example_event_hub_namespace.name,
///     eventhub_name=example_event_hub.name,
///     resource_group_name=example.name)
/// example_cluster = azure.kusto.Cluster("example",
///     name="examplekc",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "name": "Dev(No SLA)_Standard_D11_v2",
///         "capacity": 1,
///     })
/// example_database = azure.kusto.Database("example",
///     name="example-kusto-database",
///     resource_group_name=example.name,
///     location=example.location,
///     cluster_name=example_cluster.name)
/// database_contributor = azure.authorization.Assignment("database_contributor",
///     scope=example_database.id,
///     principal_id=example_instance.identity.principal_id,
///     role_definition_name="Contributor")
/// eventhub_data_owner = azure.authorization.Assignment("eventhub_data_owner",
///     scope=example_event_hub.id,
///     principal_id=example_instance.identity.principal_id,
///     role_definition_name="Azure Event Hubs Data Owner")
/// example_database_principal_assignment = azure.kusto.DatabasePrincipalAssignment("example",
///     name="dataadmin",
///     resource_group_name=example.name,
///     cluster_name=example_cluster.name,
///     database_name=example_database.name,
///     tenant_id=example_instance.identity.tenant_id,
///     principal_id=example_instance.identity.principal_id,
///     principal_type="App",
///     role="Admin")
/// example_time_series_database_connection = azure.digitaltwins.TimeSeriesDatabaseConnection("example",
///     name="example-connection",
///     digital_twins_id=example_instance.id,
///     eventhub_name=example_event_hub.name,
///     eventhub_namespace_id=example_event_hub_namespace.id,
///     eventhub_namespace_endpoint_uri=example_event_hub_namespace.name.apply(lambda name: f"sb://{name}.servicebus.windows.net"),
///     eventhub_consumer_group_name=example_consumer_group.name,
///     kusto_cluster_id=example_cluster.id,
///     kusto_cluster_uri=example_cluster.uri,
///     kusto_database_name=example_database.name,
///     kusto_table_name="exampleTable",
///     opts = pulumi.ResourceOptions(depends_on=[
///             database_contributor,
///             eventhub_data_owner,
///             example_database_principal_assignment,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleInstance = new Azure.DigitalTwins.Instance("example", new()
///     {
///         Name = "example-DT",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Identity = new Azure.DigitalTwins.Inputs.InstanceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleEventHubNamespace = new Azure.EventHub.EventHubNamespace("example", new()
///     {
///         Name = "exampleEventHubNamespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///     });
///
///     var exampleEventHub = new Azure.EventHub.EventHub("example", new()
///     {
///         Name = "exampleEventHub",
///         NamespaceName = exampleEventHubNamespace.Name,
///         ResourceGroupName = example.Name,
///         PartitionCount = 2,
///         MessageRetention = 7,
///     });
///
///     var exampleConsumerGroup = new Azure.EventHub.ConsumerGroup("example", new()
///     {
///         Name = "example-consumergroup",
///         NamespaceName = exampleEventHubNamespace.Name,
///         EventhubName = exampleEventHub.Name,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleCluster = new Azure.Kusto.Cluster("example", new()
///     {
///         Name = "examplekc",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.Kusto.Inputs.ClusterSkuArgs
///         {
///             Name = "Dev(No SLA)_Standard_D11_v2",
///             Capacity = 1,
///         },
///     });
///
///     var exampleDatabase = new Azure.Kusto.Database("example", new()
///     {
///         Name = "example-kusto-database",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ClusterName = exampleCluster.Name,
///     });
///
///     var databaseContributor = new Azure.Authorization.Assignment("database_contributor", new()
///     {
///         Scope = exampleDatabase.Id,
///         PrincipalId = exampleInstance.Identity.Apply(identity => identity?.PrincipalId),
///         RoleDefinitionName = "Contributor",
///     });
///
///     var eventhubDataOwner = new Azure.Authorization.Assignment("eventhub_data_owner", new()
///     {
///         Scope = exampleEventHub.Id,
///         PrincipalId = exampleInstance.Identity.Apply(identity => identity?.PrincipalId),
///         RoleDefinitionName = "Azure Event Hubs Data Owner",
///     });
///
///     var exampleDatabasePrincipalAssignment = new Azure.Kusto.DatabasePrincipalAssignment("example", new()
///     {
///         Name = "dataadmin",
///         ResourceGroupName = example.Name,
///         ClusterName = exampleCluster.Name,
///         DatabaseName = exampleDatabase.Name,
///         TenantId = exampleInstance.Identity.Apply(identity => identity?.TenantId),
///         PrincipalId = exampleInstance.Identity.Apply(identity => identity?.PrincipalId),
///         PrincipalType = "App",
///         Role = "Admin",
///     });
///
///     var exampleTimeSeriesDatabaseConnection = new Azure.DigitalTwins.TimeSeriesDatabaseConnection("example", new()
///     {
///         Name = "example-connection",
///         DigitalTwinsId = exampleInstance.Id,
///         EventhubName = exampleEventHub.Name,
///         EventhubNamespaceId = exampleEventHubNamespace.Id,
///         EventhubNamespaceEndpointUri = exampleEventHubNamespace.Name.Apply(name => $"sb://{name}.servicebus.windows.net"),
///         EventhubConsumerGroupName = exampleConsumerGroup.Name,
///         KustoClusterId = exampleCluster.Id,
///         KustoClusterUri = exampleCluster.Uri,
///         KustoDatabaseName = exampleDatabase.Name,
///         KustoTableName = "exampleTable",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             databaseContributor,
///             eventhubDataOwner,
///             exampleDatabasePrincipalAssignment,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/digitaltwins"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/kusto"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := digitaltwins.NewInstance(ctx, "example", &digitaltwins.InstanceArgs{
/// 			Name:              pulumi.String("example-DT"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Identity: &digitaltwins.InstanceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHubNamespace, err := eventhub.NewEventHubNamespace(ctx, "example", &eventhub.EventHubNamespaceArgs{
/// 			Name:              pulumi.String("exampleEventHubNamespace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHub, err := eventhub.NewEventHub(ctx, "example", &eventhub.EventHubArgs{
/// 			Name:              pulumi.String("exampleEventHub"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			ResourceGroupName: example.Name,
/// 			PartitionCount:    pulumi.Int(2),
/// 			MessageRetention:  pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleConsumerGroup, err := eventhub.NewConsumerGroup(ctx, "example", &eventhub.ConsumerGroupArgs{
/// 			Name:              pulumi.String("example-consumergroup"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			EventhubName:      exampleEventHub.Name,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCluster, err := kusto.NewCluster(ctx, "example", &kusto.ClusterArgs{
/// 			Name:              pulumi.String("examplekc"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku: &kusto.ClusterSkuArgs{
/// 				Name:     pulumi.String("Dev(No SLA)_Standard_D11_v2"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDatabase, err := kusto.NewDatabase(ctx, "example", &kusto.DatabaseArgs{
/// 			Name:              pulumi.String("example-kusto-database"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			ClusterName:       exampleCluster.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		databaseContributor, err := authorization.NewAssignment(ctx, "database_contributor", &authorization.AssignmentArgs{
/// 			Scope: exampleDatabase.ID(),
/// 			PrincipalId: pulumi.String(exampleInstance.Identity.ApplyT(func(identity digitaltwins.InstanceIdentity) (*string, error) {
/// 				return &identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			RoleDefinitionName: pulumi.String("Contributor"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		eventhubDataOwner, err := authorization.NewAssignment(ctx, "eventhub_data_owner", &authorization.AssignmentArgs{
/// 			Scope: exampleEventHub.ID(),
/// 			PrincipalId: pulumi.String(exampleInstance.Identity.ApplyT(func(identity digitaltwins.InstanceIdentity) (*string, error) {
/// 				return &identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			RoleDefinitionName: pulumi.String("Azure Event Hubs Data Owner"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDatabasePrincipalAssignment, err := kusto.NewDatabasePrincipalAssignment(ctx, "example", &kusto.DatabasePrincipalAssignmentArgs{
/// 			Name:              pulumi.String("dataadmin"),
/// 			ResourceGroupName: example.Name,
/// 			ClusterName:       exampleCluster.Name,
/// 			DatabaseName:      exampleDatabase.Name,
/// 			TenantId: pulumi.String(exampleInstance.Identity.ApplyT(func(identity digitaltwins.InstanceIdentity) (*string, error) {
/// 				return &identity.TenantId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			PrincipalId: pulumi.String(exampleInstance.Identity.ApplyT(func(identity digitaltwins.InstanceIdentity) (*string, error) {
/// 				return &identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			PrincipalType: pulumi.String("App"),
/// 			Role:          pulumi.String("Admin"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitaltwins.NewTimeSeriesDatabaseConnection(ctx, "example", &digitaltwins.TimeSeriesDatabaseConnectionArgs{
/// 			Name:                pulumi.String("example-connection"),
/// 			DigitalTwinsId:      exampleInstance.ID(),
/// 			EventhubName:        exampleEventHub.Name,
/// 			EventhubNamespaceId: exampleEventHubNamespace.ID(),
/// 			EventhubNamespaceEndpointUri: exampleEventHubNamespace.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("sb://%v.servicebus.windows.net", name), nil
/// 			}).(pulumi.StringOutput),
/// 			EventhubConsumerGroupName: exampleConsumerGroup.Name,
/// 			KustoClusterId:            exampleCluster.ID(),
/// 			KustoClusterUri:           exampleCluster.Uri,
/// 			KustoDatabaseName:         exampleDatabase.Name,
/// 			KustoTableName:            pulumi.String("exampleTable"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			databaseContributor,
/// 			eventhubDataOwner,
/// 			exampleDatabasePrincipalAssignment,
/// 		}))
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.digitaltwins.Instance;
/// import com.pulumi.azure.digitaltwins.InstanceArgs;
/// import com.pulumi.azure.digitaltwins.inputs.InstanceIdentityArgs;
/// import com.pulumi.azure.eventhub.EventHubNamespace;
/// import com.pulumi.azure.eventhub.EventHubNamespaceArgs;
/// import com.pulumi.azure.eventhub.EventHub;
/// import com.pulumi.azure.eventhub.EventHubArgs;
/// import com.pulumi.azure.eventhub.ConsumerGroup;
/// import com.pulumi.azure.eventhub.ConsumerGroupArgs;
/// import com.pulumi.azure.kusto.Cluster;
/// import com.pulumi.azure.kusto.ClusterArgs;
/// import com.pulumi.azure.kusto.inputs.ClusterSkuArgs;
/// import com.pulumi.azure.kusto.Database;
/// import com.pulumi.azure.kusto.DatabaseArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.kusto.DatabasePrincipalAssignment;
/// import com.pulumi.azure.kusto.DatabasePrincipalAssignmentArgs;
/// import com.pulumi.azure.digitaltwins.TimeSeriesDatabaseConnection;
/// import com.pulumi.azure.digitaltwins.TimeSeriesDatabaseConnectionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .name("example-DT")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .identity(InstanceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleEventHubNamespace = new EventHubNamespace("exampleEventHubNamespace", EventHubNamespaceArgs.builder()
///             .name("exampleEventHubNamespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .build());
///
///         var exampleEventHub = new EventHub("exampleEventHub", EventHubArgs.builder()
///             .name("exampleEventHub")
///             .namespaceName(exampleEventHubNamespace.name())
///             .resourceGroupName(example.name())
///             .partitionCount(2)
///             .messageRetention(7)
///             .build());
///
///         var exampleConsumerGroup = new ConsumerGroup("exampleConsumerGroup", ConsumerGroupArgs.builder()
///             .name("example-consumergroup")
///             .namespaceName(exampleEventHubNamespace.name())
///             .eventhubName(exampleEventHub.name())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("examplekc")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(ClusterSkuArgs.builder()
///                 .name("Dev(No SLA)_Standard_D11_v2")
///                 .capacity(1)
///                 .build())
///             .build());
///
///         var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
///             .name("example-kusto-database")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .clusterName(exampleCluster.name())
///             .build());
///
///         var databaseContributor = new Assignment("databaseContributor", AssignmentArgs.builder()
///             .scope(exampleDatabase.id())
///             .principalId(exampleInstance.identity().applyValue(_identity -> _identity.principalId()))
///             .roleDefinitionName("Contributor")
///             .build());
///
///         var eventhubDataOwner = new Assignment("eventhubDataOwner", AssignmentArgs.builder()
///             .scope(exampleEventHub.id())
///             .principalId(exampleInstance.identity().applyValue(_identity -> _identity.principalId()))
///             .roleDefinitionName("Azure Event Hubs Data Owner")
///             .build());
///
///         var exampleDatabasePrincipalAssignment = new DatabasePrincipalAssignment("exampleDatabasePrincipalAssignment", DatabasePrincipalAssignmentArgs.builder()
///             .name("dataadmin")
///             .resourceGroupName(example.name())
///             .clusterName(exampleCluster.name())
///             .databaseName(exampleDatabase.name())
///             .tenantId(exampleInstance.identity().applyValue(_identity -> _identity.tenantId()))
///             .principalId(exampleInstance.identity().applyValue(_identity -> _identity.principalId()))
///             .principalType("App")
///             .role("Admin")
///             .build());
///
///         var exampleTimeSeriesDatabaseConnection = new TimeSeriesDatabaseConnection("exampleTimeSeriesDatabaseConnection", TimeSeriesDatabaseConnectionArgs.builder()
///             .name("example-connection")
///             .digitalTwinsId(exampleInstance.id())
///             .eventhubName(exampleEventHub.name())
///             .eventhubNamespaceId(exampleEventHubNamespace.id())
///             .eventhubNamespaceEndpointUri(exampleEventHubNamespace.name().applyValue(_name -> String.format("sb://%s.servicebus.windows.net", _name)))
///             .eventhubConsumerGroupName(exampleConsumerGroup.name())
///             .kustoClusterId(exampleCluster.id())
///             .kustoClusterUri(exampleCluster.uri())
///             .kustoDatabaseName(exampleDatabase.name())
///             .kustoTableName("exampleTable")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     databaseContributor,
///                     eventhubDataOwner,
///                     exampleDatabasePrincipalAssignment)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleInstance:
///     type: azure:digitaltwins:Instance
///     name: example
///     properties:
///       name: example-DT
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       identity:
///         type: SystemAssigned
///   exampleEventHubNamespace:
///     type: azure:eventhub:EventHubNamespace
///     name: example
///     properties:
///       name: exampleEventHubNamespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///   exampleEventHub:
///     type: azure:eventhub:EventHub
///     name: example
///     properties:
///       name: exampleEventHub
///       namespaceName: ${exampleEventHubNamespace.name}
///       resourceGroupName: ${example.name}
///       partitionCount: 2
///       messageRetention: 7
///   exampleConsumerGroup:
///     type: azure:eventhub:ConsumerGroup
///     name: example
///     properties:
///       name: example-consumergroup
///       namespaceName: ${exampleEventHubNamespace.name}
///       eventhubName: ${exampleEventHub.name}
///       resourceGroupName: ${example.name}
///   exampleCluster:
///     type: azure:kusto:Cluster
///     name: example
///     properties:
///       name: examplekc
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         name: Dev(No SLA)_Standard_D11_v2
///         capacity: 1
///   exampleDatabase:
///     type: azure:kusto:Database
///     name: example
///     properties:
///       name: example-kusto-database
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       clusterName: ${exampleCluster.name}
///   databaseContributor:
///     type: azure:authorization:Assignment
///     name: database_contributor
///     properties:
///       scope: ${exampleDatabase.id}
///       principalId: ${exampleInstance.identity.principalId}
///       roleDefinitionName: Contributor
///   eventhubDataOwner:
///     type: azure:authorization:Assignment
///     name: eventhub_data_owner
///     properties:
///       scope: ${exampleEventHub.id}
///       principalId: ${exampleInstance.identity.principalId}
///       roleDefinitionName: Azure Event Hubs Data Owner
///   exampleDatabasePrincipalAssignment:
///     type: azure:kusto:DatabasePrincipalAssignment
///     name: example
///     properties:
///       name: dataadmin
///       resourceGroupName: ${example.name}
///       clusterName: ${exampleCluster.name}
///       databaseName: ${exampleDatabase.name}
///       tenantId: ${exampleInstance.identity.tenantId}
///       principalId: ${exampleInstance.identity.principalId}
///       principalType: App
///       role: Admin
///   exampleTimeSeriesDatabaseConnection:
///     type: azure:digitaltwins:TimeSeriesDatabaseConnection
///     name: example
///     properties:
///       name: example-connection
///       digitalTwinsId: ${exampleInstance.id}
///       eventhubName: ${exampleEventHub.name}
///       eventhubNamespaceId: ${exampleEventHubNamespace.id}
///       eventhubNamespaceEndpointUri: sb://${exampleEventHubNamespace.name}.servicebus.windows.net
///       eventhubConsumerGroupName: ${exampleConsumerGroup.name}
///       kustoClusterId: ${exampleCluster.id}
///       kustoClusterUri: ${exampleCluster.uri}
///       kustoDatabaseName: ${exampleDatabase.name}
///       kustoTableName: exampleTable
///     options:
///       dependsOn:
///         - ${databaseContributor}
///         - ${eventhubDataOwner}
///         - ${exampleDatabasePrincipalAssignment}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DigitalTwins` - 2023-01-31
///
/// ## Import
///
/// Digital Twins Time Series Database Connections can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:digitaltwins/timeSeriesDatabaseConnection:TimeSeriesDatabaseConnection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DigitalTwins/digitalTwinsInstances/dt1/timeSeriesDatabaseConnections/connection1
/// ```
class TimeSeriesDatabaseConnection extends pulumi.CustomResource {
  /// The ID of the Digital Twins. Changing this forces a new resource to be created.
  late final pulumi.Output<String> digitalTwinsId;

  /// Name of the Event Hub Consumer Group. Changing this forces a new resource to be created. Defaults to `$Default`.
  late final pulumi.Output<String?> eventhubConsumerGroupName;

  /// Name of the Event Hub. Changing this forces a new resource to be created.
  late final pulumi.Output<String> eventhubName;

  /// URI of the Event Hub Namespace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> eventhubNamespaceEndpointUri;

  /// The ID of the Event Hub Namespace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> eventhubNamespaceId;

  /// The ID of the Kusto Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> kustoClusterId;

  /// URI of the Kusto Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> kustoClusterUri;

  /// Name of the Kusto Database. Changing this forces a new resource to be created.
  late final pulumi.Output<String> kustoDatabaseName;

  /// Name of the Kusto Table. Defaults to `AdtPropertyEvents`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> kustoTableName;

  /// The name which should be used for this Digital Twins Time Series Database Connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [TimeSeriesDatabaseConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TimeSeriesDatabaseConnection]. {@macro pulumi_digitaltwins_time_series_database_connection_time_series_database_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TimeSeriesDatabaseConnection(
    String name, {
    TimeSeriesDatabaseConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:digitaltwins/timeSeriesDatabaseConnection:TimeSeriesDatabaseConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    digitalTwinsId = registerOutput<String>('digitalTwinsId');
    eventhubConsumerGroupName = registerOutput<String?>(
      'eventhubConsumerGroupName',
    );
    eventhubName = registerOutput<String>('eventhubName');
    eventhubNamespaceEndpointUri = registerOutput<String>(
      'eventhubNamespaceEndpointUri',
    );
    eventhubNamespaceId = registerOutput<String>('eventhubNamespaceId');
    kustoClusterId = registerOutput<String>('kustoClusterId');
    kustoClusterUri = registerOutput<String>('kustoClusterUri');
    kustoDatabaseName = registerOutput<String>('kustoDatabaseName');
    kustoTableName = registerOutput<String?>('kustoTableName');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [TimeSeriesDatabaseConnection] resource's state with the given [name] and [id].
  static TimeSeriesDatabaseConnection get(
    String name,
    pulumi.Input<String> id, {
    TimeSeriesDatabaseConnectionState? state,
  }) {
    return TimeSeriesDatabaseConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TimeSeriesDatabaseConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:digitaltwins/timeSeriesDatabaseConnection:TimeSeriesDatabaseConnection',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    digitalTwinsId = registerOutput<String>('digitalTwinsId');
    eventhubConsumerGroupName = registerOutput<String?>(
      'eventhubConsumerGroupName',
    );
    eventhubName = registerOutput<String>('eventhubName');
    eventhubNamespaceEndpointUri = registerOutput<String>(
      'eventhubNamespaceEndpointUri',
    );
    eventhubNamespaceId = registerOutput<String>('eventhubNamespaceId');
    kustoClusterId = registerOutput<String>('kustoClusterId');
    kustoClusterUri = registerOutput<String>('kustoClusterUri');
    kustoDatabaseName = registerOutput<String>('kustoDatabaseName');
    kustoTableName = registerOutput<String?>('kustoTableName');
    this.name = registerOutput<String>('name');
  }
}
