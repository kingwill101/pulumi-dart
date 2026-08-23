import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_args.dart';
import 'linked_service_integration_runtime.dart';
import 'linked_service_state.dart';

/// Manages a Synapse Linked Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountKind: "BlobStorage",
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleDataLakeGen2Filesystem = new azure.storage.DataLakeGen2Filesystem("example", {
///     name: "example",
///     storageAccountId: exampleAccount.id,
/// });
/// const exampleWorkspace = new azure.synapse.Workspace("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     storageDataLakeGen2FilesystemId: exampleDataLakeGen2Filesystem.id,
///     sqlAdministratorLogin: "sqladminuser",
///     sqlAdministratorLoginPassword: "H@Sh1CoR3!",
///     managedVirtualNetworkEnabled: true,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleFirewallRule = new azure.synapse.FirewallRule("example", {
///     name: "allowAll",
///     synapseWorkspaceId: exampleWorkspace.id,
///     startIpAddress: "0.0.0.0",
///     endIpAddress: "255.255.255.255",
/// });
/// const exampleIntegrationRuntimeAzure = new azure.synapse.IntegrationRuntimeAzure("example", {
///     name: "example",
///     synapseWorkspaceId: exampleWorkspace.id,
///     location: example.location,
/// });
/// const exampleLinkedService = new azure.synapse.LinkedService("example", {
///     name: "example",
///     synapseWorkspaceId: exampleWorkspace.id,
///     type: "AzureBlobStorage",
///     typePropertiesJson: pulumi.interpolate`{
///   \"connectionString\": \"${exampleAccount.primaryConnectionString}\"
/// }
/// `,
///     integrationRuntime: {
///         name: exampleIntegrationRuntimeAzure.name,
///     },
/// }, {
///     dependsOn: [exampleFirewallRule],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     account_kind="BlobStorage",
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_data_lake_gen2_filesystem = azure.storage.DataLakeGen2Filesystem("example",
///     name="example",
///     storage_account_id=example_account.id)
/// example_workspace = azure.synapse.Workspace("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     storage_data_lake_gen2_filesystem_id=example_data_lake_gen2_filesystem.id,
///     sql_administrator_login="sqladminuser",
///     sql_administrator_login_password="H@Sh1CoR3!",
///     managed_virtual_network_enabled=True,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_firewall_rule = azure.synapse.FirewallRule("example",
///     name="allowAll",
///     synapse_workspace_id=example_workspace.id,
///     start_ip_address="0.0.0.0",
///     end_ip_address="255.255.255.255")
/// example_integration_runtime_azure = azure.synapse.IntegrationRuntimeAzure("example",
///     name="example",
///     synapse_workspace_id=example_workspace.id,
///     location=example.location)
/// example_linked_service = azure.synapse.LinkedService("example",
///     name="example",
///     synapse_workspace_id=example_workspace.id,
///     type="AzureBlobStorage",
///     type_properties_json=example_account.primary_connection_string.apply(lambda primary_connection_string: f"""{{
///   \"connectionString\": \"{primary_connection_string}\"
/// }}
/// """),
///     integration_runtime={
///         "name": example_integration_runtime_azure.name,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_firewall_rule]))
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
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountKind = "BlobStorage",
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleDataLakeGen2Filesystem = new Azure.Storage.DataLakeGen2Filesystem("example", new()
///     {
///         Name = "example",
///         StorageAccountId = exampleAccount.Id,
///     });
///
///     var exampleWorkspace = new Azure.Synapse.Workspace("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         StorageDataLakeGen2FilesystemId = exampleDataLakeGen2Filesystem.Id,
///         SqlAdministratorLogin = "sqladminuser",
///         SqlAdministratorLoginPassword = "H@Sh1CoR3!",
///         ManagedVirtualNetworkEnabled = true,
///         Identity = new Azure.Synapse.Inputs.WorkspaceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleFirewallRule = new Azure.Synapse.FirewallRule("example", new()
///     {
///         Name = "allowAll",
///         SynapseWorkspaceId = exampleWorkspace.Id,
///         StartIpAddress = "0.0.0.0",
///         EndIpAddress = "255.255.255.255",
///     });
///
///     var exampleIntegrationRuntimeAzure = new Azure.Synapse.IntegrationRuntimeAzure("example", new()
///     {
///         Name = "example",
///         SynapseWorkspaceId = exampleWorkspace.Id,
///         Location = example.Location,
///     });
///
///     var exampleLinkedService = new Azure.Synapse.LinkedService("example", new()
///     {
///         Name = "example",
///         SynapseWorkspaceId = exampleWorkspace.Id,
///         Type = "AzureBlobStorage",
///         TypePropertiesJson = exampleAccount.PrimaryConnectionString.Apply(primaryConnectionString => @$"{{
///   \""connectionString\"": \""{primaryConnectionString}\""
/// }}
/// "),
///         IntegrationRuntime = new Azure.Synapse.Inputs.LinkedServiceIntegrationRuntimeArgs
///         {
///             Name = exampleIntegrationRuntimeAzure.Name,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleFirewallRule,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/synapse"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("example"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountKind:            pulumi.String("BlobStorage"),
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDataLakeGen2Filesystem, err := storage.NewDataLakeGen2Filesystem(ctx, "example", &storage.DataLakeGen2FilesystemArgs{
/// 			Name:             pulumi.String("example"),
/// 			StorageAccountId: exampleAccount.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := synapse.NewWorkspace(ctx, "example", &synapse.WorkspaceArgs{
/// 			Name:                            pulumi.String("example"),
/// 			ResourceGroupName:               example.Name,
/// 			Location:                        example.Location,
/// 			StorageDataLakeGen2FilesystemId: exampleDataLakeGen2Filesystem.ID(),
/// 			SqlAdministratorLogin:           pulumi.String("sqladminuser"),
/// 			SqlAdministratorLoginPassword:   pulumi.String("H@Sh1CoR3!"),
/// 			ManagedVirtualNetworkEnabled:    pulumi.Bool(true),
/// 			Identity: &synapse.WorkspaceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFirewallRule, err := synapse.NewFirewallRule(ctx, "example", &synapse.FirewallRuleArgs{
/// 			Name:               pulumi.String("allowAll"),
/// 			SynapseWorkspaceId: exampleWorkspace.ID(),
/// 			StartIpAddress:     pulumi.String("0.0.0.0"),
/// 			EndIpAddress:       pulumi.String("255.255.255.255"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleIntegrationRuntimeAzure, err := synapse.NewIntegrationRuntimeAzure(ctx, "example", &synapse.IntegrationRuntimeAzureArgs{
/// 			Name:               pulumi.String("example"),
/// 			SynapseWorkspaceId: exampleWorkspace.ID(),
/// 			Location:           example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synapse.NewLinkedService(ctx, "example", &synapse.LinkedServiceArgs{
/// 			Name:               pulumi.String("example"),
/// 			SynapseWorkspaceId: exampleWorkspace.ID(),
/// 			Type:               pulumi.String("AzureBlobStorage"),
/// 			TypePropertiesJson: exampleAccount.PrimaryConnectionString.ApplyT(func(primaryConnectionString string) (string, error) {
/// 				return fmt.Sprintf("{\n  \\\"connectionString\\\": \\\"%v\\\"\n}\n", primaryConnectionString), nil
/// 			}).(pulumi.StringOutput),
/// 			IntegrationRuntime: &synapse.LinkedServiceIntegrationRuntimeArgs{
/// 				Name: exampleIntegrationRuntimeAzure.Name,
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleFirewallRule,
/// 		}))
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example"
///   location = "West Europe"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "example"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_kind             = "BlobStorage"
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_storage_datalakegen2filesystem" "example" {
///   name               = "example"
///   storage_account_id = azure_storage_account.example.id
/// }
/// resource "azure_synapse_workspace" "example" {
///   name                                 = "example"
///   resource_group_name                  = azure_core_resourcegroup.example.name
///   location                             = azure_core_resourcegroup.example.location
///   storage_data_lake_gen2_filesystem_id = azure_storage_datalakegen2filesystem.example.id
///   sql_administrator_login              = "sqladminuser"
///   sql_administrator_login_password     = "H@Sh1CoR3!"
///   managed_virtual_network_enabled      = true
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_synapse_firewallrule" "example" {
///   name                 = "allowAll"
///   synapse_workspace_id = azure_synapse_workspace.example.id
///   start_ip_address     = "0.0.0.0"
///   end_ip_address       = "255.255.255.255"
/// }
/// resource "azure_synapse_integrationruntimeazure" "example" {
///   name                 = "example"
///   synapse_workspace_id = azure_synapse_workspace.example.id
///   location             = azure_core_resourcegroup.example.location
/// }
/// resource "azure_synapse_linkedservice" "example" {
///   depends_on           = [azure_synapse_firewallrule.example]
///   name                 = "example"
///   synapse_workspace_id = azure_synapse_workspace.example.id
///   type                 = "AzureBlobStorage"
///   type_properties_json ="{
///   \"connectionString\": \"${azure_storage_account.example.primary_connection_string}\"
/// }
/// "
///   integration_runtime = {
///     name = azure_synapse_integrationruntimeazure.example.name
///   }
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.DataLakeGen2Filesystem;
/// import com.pulumi.azure.storage.DataLakeGen2FilesystemArgs;
/// import com.pulumi.azure.synapse.Workspace;
/// import com.pulumi.azure.synapse.WorkspaceArgs;
/// import com.pulumi.azure.synapse.inputs.WorkspaceIdentityArgs;
/// import com.pulumi.azure.synapse.FirewallRule;
/// import com.pulumi.azure.synapse.FirewallRuleArgs;
/// import com.pulumi.azure.synapse.IntegrationRuntimeAzure;
/// import com.pulumi.azure.synapse.IntegrationRuntimeAzureArgs;
/// import com.pulumi.azure.synapse.LinkedService;
/// import com.pulumi.azure.synapse.LinkedServiceArgs;
/// import com.pulumi.azure.synapse.inputs.LinkedServiceIntegrationRuntimeArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountKind("BlobStorage")
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleDataLakeGen2Filesystem = new DataLakeGen2Filesystem("exampleDataLakeGen2Filesystem", DataLakeGen2FilesystemArgs.builder()
///             .name("example")
///             .storageAccountId(exampleAccount.id())
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .storageDataLakeGen2FilesystemId(exampleDataLakeGen2Filesystem.id())
///             .sqlAdministratorLogin("sqladminuser")
///             .sqlAdministratorLoginPassword("H@Sh1CoR3!")
///             .managedVirtualNetworkEnabled(true)
///             .identity(WorkspaceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleFirewallRule = new FirewallRule("exampleFirewallRule", FirewallRuleArgs.builder()
///             .name("allowAll")
///             .synapseWorkspaceId(exampleWorkspace.id())
///             .startIpAddress("0.0.0.0")
///             .endIpAddress("255.255.255.255")
///             .build());
///
///         var exampleIntegrationRuntimeAzure = new IntegrationRuntimeAzure("exampleIntegrationRuntimeAzure", IntegrationRuntimeAzureArgs.builder()
///             .name("example")
///             .synapseWorkspaceId(exampleWorkspace.id())
///             .location(example.location())
///             .build());
///
///         var exampleLinkedService = new LinkedService("exampleLinkedService", LinkedServiceArgs.builder()
///             .name("example")
///             .synapseWorkspaceId(exampleWorkspace.id())
///             .type("AzureBlobStorage")
///             .typePropertiesJson(exampleAccount.primaryConnectionString().applyValue(_primaryConnectionString -> """
/// {
///   \"connectionString\": \"%s\"
/// }
/// ", _primaryConnectionString)))
///             .integrationRuntime(LinkedServiceIntegrationRuntimeArgs.builder()
///                 .name(exampleIntegrationRuntimeAzure.name())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleFirewallRule)
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
///       name: example
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountKind: BlobStorage
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleDataLakeGen2Filesystem:
///     type: azure:storage:DataLakeGen2Filesystem
///     name: example
///     properties:
///       name: example
///       storageAccountId: ${exampleAccount.id}
///   exampleWorkspace:
///     type: azure:synapse:Workspace
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       storageDataLakeGen2FilesystemId: ${exampleDataLakeGen2Filesystem.id}
///       sqlAdministratorLogin: sqladminuser
///       sqlAdministratorLoginPassword: H@Sh1CoR3!
///       managedVirtualNetworkEnabled: true
///       identity:
///         type: SystemAssigned
///   exampleFirewallRule:
///     type: azure:synapse:FirewallRule
///     name: example
///     properties:
///       name: allowAll
///       synapseWorkspaceId: ${exampleWorkspace.id}
///       startIpAddress: 0.0.0.0
///       endIpAddress: 255.255.255.255
///   exampleIntegrationRuntimeAzure:
///     type: azure:synapse:IntegrationRuntimeAzure
///     name: example
///     properties:
///       name: example
///       synapseWorkspaceId: ${exampleWorkspace.id}
///       location: ${example.location}
///   exampleLinkedService:
///     type: azure:synapse:LinkedService
///     name: example
///     properties:
///       name: example
///       synapseWorkspaceId: ${exampleWorkspace.id}
///       type: AzureBlobStorage
///       typePropertiesJson: |
///         {
///           \"connectionString\": \"${exampleAccount.primaryConnectionString}\"
///         }
///       integrationRuntime:
///         name: ${exampleIntegrationRuntimeAzure.name}
///     options:
///       dependsOn:
///         - ${exampleFirewallRule}
/// ```
///
///
/// ## Import
///
/// Synapse Linked Services can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:synapse/linkedService:LinkedService example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.Synapse/workspaces/workspace1/linkedServices/linkedservice1
/// ```
class LinkedService extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Synapse Linked Service.
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Synapse Linked Service.
  late final pulumi.Output<List<String>?> annotations;
  /// The description for the Synapse Linked Service.
  late final pulumi.Output<String?> description;
  /// A `integrationRuntime` block as defined below.
  late final pulumi.Output<LinkedServiceIntegrationRuntime?> integrationRuntime;
  /// The name which should be used for this Synapse Linked Service. Changing this forces a new Synapse Linked Service to be created.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Synapse Linked Service.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The Synapse Workspace ID in which to associate the Linked Service with. Changing this forces a new Synapse Linked Service to be created.
  late final pulumi.Output<String> synapseWorkspaceId;
  /// The type of data stores that will be connected to Synapse. Valid Values include `AmazonMWS`, `AmazonRdsForOracle`, `AmazonRdsForSqlServer`, `AmazonRedshift`, `AmazonS3`, `AzureBatch`. Changing this forces a new resource to be created.
  /// `AzureBlobFS`, `AzureBlobStorage`, `AzureDataExplorer`, `AzureDataLakeAnalytics`, `AzureDataLakeStore`, `AzureDatabricks`, `AzureDatabricksDeltaLake`, `AzureFileStorage`, `AzureFunction`,
  /// `AzureKeyVault`, `AzureML`, `AzureMLService`, `AzureMariaDB`, `AzureMySql`, `AzurePostgreSql`, `AzureSqlDW`, `AzureSqlDatabase`, `AzureSqlMI`, `AzureSearch`, `AzureStorage`,
  /// `AzureTableStorage`, `Cassandra`, `CommonDataServiceForApps`, `Concur`, `CosmosDb`, `CosmosDbMongoDbApi`, `Couchbase`, `CustomDataSource`, `Db2`, `Drill`,
  /// `Dynamics`, `DynamicsAX`, `DynamicsCrm`, `Eloqua`, `FileServer`, `FtpServer`, `GoogleAdWords`, `GoogleBigQuery`, `GoogleCloudStorage`, `Greenplum`, `HBase`, `HDInsight`,
  /// `HDInsightOnDemand`, `HttpServer`, `Hdfs`, `Hive`, `Hubspot`, `Impala`, `Informix`, `Jira`, `LinkedService`, `Magento`, `MariaDB`, `Marketo`, `MicrosoftAccess`, `MongoDb`,
  /// `MongoDbAtlas`, `MongoDbV2`, `MySql`, `Netezza`, `OData`, `Odbc`, `Office365`, `Oracle`, `OracleServiceCloud`, `Paypal`, `Phoenix`, `PostgreSql`, `Presto`, `QuickBooks`,
  /// `Responsys`, `RestService`, `SqlServer`, `Salesforce`, `SalesforceMarketingCloud`, `SalesforceServiceCloud`, `SapBW`, `SapCloudForCustomer`, `SapEcc`, `SapHana`, `SapOpenHub`,
  /// `SapTable`, `ServiceNow`, `Sftp`, `SharePointOnlineList`, `Shopify`, `Snowflake`, `Spark`, `Square`, `Sybase`, `Teradata`, `Vertica`, `Web`, `Xero`, `Zoho`.
  late final pulumi.Output<String> type;
  /// A JSON object that contains the properties of the Synapse Linked Service.
  late final pulumi.Output<String> typePropertiesJson;

  /// Creates a new [LinkedService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedService]. {@macro pulumi_synapse_linked_service_linked_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedService(
    String name, {
    LinkedServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/linkedService:LinkedService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    annotations = registerOutput<List<String>?>('annotations');
    description = registerOutput<String?>('description');
    integrationRuntime = registerOutput<LinkedServiceIntegrationRuntime?>('integrationRuntime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkedServiceIntegrationRuntime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    synapseWorkspaceId = registerOutput<String>('synapseWorkspaceId');
    type = registerOutput<String>('type');
    typePropertiesJson = registerOutput<String>('typePropertiesJson');
  }

  /// Gets an existing [LinkedService] resource's state with the given [name] and [id].
  static LinkedService get(
    String name,
    pulumi.Input<String> id, {
    LinkedServiceState? state,
  }) {
    return LinkedService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LinkedService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/linkedService:LinkedService',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    annotations = registerOutput<List<String>?>('annotations');
    description = registerOutput<String?>('description');
    integrationRuntime = registerOutput<LinkedServiceIntegrationRuntime?>('integrationRuntime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkedServiceIntegrationRuntime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    synapseWorkspaceId = registerOutput<String>('synapseWorkspaceId');
    type = registerOutput<String>('type');
    typePropertiesJson = registerOutput<String>('typePropertiesJson');
  }
}
