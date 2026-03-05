import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_security_alert_policy_args.dart';
import 'server_security_alert_policy_state.dart';

/// Manages a Security Alert Policy for a MSSQL Server.
///
/// &gt; **Note:** Security Alert Policy is currently only available for MS SQL databases.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as azurerm from "@pulumi/azurerm";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleSqlServer = new azurerm.index.SqlServer("example", {
///     name: "mysqlserver",
///     resourceGroupName: example.name,
///     location: example.location,
///     version: "12.0",
///     administratorLogin: "4dm1n157r470r",
///     administratorLoginPassword: "4-v3ry-53cr37-p455w0rd",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "accteststorageaccount",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "GRS",
/// });
/// const exampleServerSecurityAlertPolicy = new azure.mssql.ServerSecurityAlertPolicy("example", {
///     resourceGroupName: example.name,
///     serverName: exampleSqlServer.name,
///     state: "Enabled",
///     storageEndpoint: exampleAccount.primaryBlobEndpoint,
///     storageAccountAccessKey: exampleAccount.primaryAccessKey,
///     retentionDays: 20,
///     disabledAlerts: [
///         "Sql_Injection",
///         "Data_Exfiltration",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_azurerm as azurerm
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_sql_server = azurerm.index.SqlServer("example",
///     name=mysqlserver,
///     resource_group_name=example.name,
///     location=example.location,
///     version=12.0,
///     administrator_login=4dm1n157r470r,
///     administrator_login_password=4-v3ry-53cr37-p455w0rd)
/// example_account = azure.storage.Account("example",
///     name="accteststorageaccount",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="GRS")
/// example_server_security_alert_policy = azure.mssql.ServerSecurityAlertPolicy("example",
///     resource_group_name=example.name,
///     server_name=example_sql_server["name"],
///     state="Enabled",
///     storage_endpoint=example_account.primary_blob_endpoint,
///     storage_account_access_key=example_account.primary_access_key,
///     retention_days=20,
///     disabled_alerts=[
///         "Sql_Injection",
///         "Data_Exfiltration",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Azurerm = Pulumi.Azurerm;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleSqlServer = new Azurerm.Index.SqlServer("example", new()
///     {
///         Name = "mysqlserver",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Version = "12.0",
///         AdministratorLogin = "4dm1n157r470r",
///         AdministratorLoginPassword = "4-v3ry-53cr37-p455w0rd",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "accteststorageaccount",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "GRS",
///     });
///
///     var exampleServerSecurityAlertPolicy = new Azure.MSSql.ServerSecurityAlertPolicy("example", new()
///     {
///         ResourceGroupName = example.Name,
///         ServerName = exampleSqlServer.Name,
///         State = "Enabled",
///         StorageEndpoint = exampleAccount.PrimaryBlobEndpoint,
///         StorageAccountAccessKey = exampleAccount.PrimaryAccessKey,
///         RetentionDays = 20,
///         DisabledAlerts = new[]
///         {
///             "Sql_Injection",
///             "Data_Exfiltration",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi-azurerm/sdk/go/azurerm"
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
/// 		exampleSqlServer, err := azurerm.NewSqlServer(ctx, "example", &azurerm.SqlServerArgs{
/// 			Name:                       "mysqlserver",
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			Version:                    "12.0",
/// 			AdministratorLogin:         "4dm1n157r470r",
/// 			AdministratorLoginPassword: "4-v3ry-53cr37-p455w0rd",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("accteststorageaccount"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("GRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewServerSecurityAlertPolicy(ctx, "example", &mssql.ServerSecurityAlertPolicyArgs{
/// 			ResourceGroupName:       example.Name,
/// 			ServerName:              exampleSqlServer.Name,
/// 			State:                   pulumi.String("Enabled"),
/// 			StorageEndpoint:         exampleAccount.PrimaryBlobEndpoint,
/// 			StorageAccountAccessKey: exampleAccount.PrimaryAccessKey,
/// 			RetentionDays:           pulumi.Int(20),
/// 			DisabledAlerts: pulumi.StringArray{
/// 				pulumi.String("Sql_Injection"),
/// 				pulumi.String("Data_Exfiltration"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azurerm.SqlServer;
/// import com.pulumi.azurerm.SqlServerArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.mssql.ServerSecurityAlertPolicy;
/// import com.pulumi.azure.mssql.ServerSecurityAlertPolicyArgs;
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
///         var exampleSqlServer = new SqlServer("exampleSqlServer", SqlServerArgs.builder()
///             .name("mysqlserver")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .version("12.0")
///             .administratorLogin("4dm1n157r470r")
///             .administratorLoginPassword("4-v3ry-53cr37-p455w0rd")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("accteststorageaccount")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("GRS")
///             .build());
///
///         var exampleServerSecurityAlertPolicy = new ServerSecurityAlertPolicy("exampleServerSecurityAlertPolicy", ServerSecurityAlertPolicyArgs.builder()
///             .resourceGroupName(example.name())
///             .serverName(exampleSqlServer.name())
///             .state("Enabled")
///             .storageEndpoint(exampleAccount.primaryBlobEndpoint())
///             .storageAccountAccessKey(exampleAccount.primaryAccessKey())
///             .retentionDays(20)
///             .disabledAlerts(
///                 "Sql_Injection",
///                 "Data_Exfiltration")
///             .build());
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
///   exampleSqlServer:
///     type: azurerm:SqlServer
///     name: example
///     properties:
///       name: mysqlserver
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       version: '12.0'
///       administratorLogin: 4dm1n157r470r
///       administratorLoginPassword: 4-v3ry-53cr37-p455w0rd
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: accteststorageaccount
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: GRS
///   exampleServerSecurityAlertPolicy:
///     type: azure:mssql:ServerSecurityAlertPolicy
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       serverName: ${exampleSqlServer.name}
///       state: Enabled
///       storageEndpoint: ${exampleAccount.primaryBlobEndpoint}
///       storageAccountAccessKey: ${exampleAccount.primaryAccessKey}
///       retentionDays: 20
///       disabledAlerts:
///         - Sql_Injection
///         - Data_Exfiltration
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Sql` - 2023-08-01-preview
///
/// ## Import
///
/// MS SQL Server Security Alert Policy can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/serverSecurityAlertPolicy:ServerSecurityAlertPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/acceptanceTestResourceGroup1/providers/Microsoft.Sql/servers/mssqlserver/securityAlertPolicies/Default
/// ```
class ServerSecurityAlertPolicy extends pulumi.CustomResource {
  /// Specifies an array of alerts that are disabled. Allowed values are: `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`.
  late final pulumi.Output<List<String>?> disabledAlerts;
  /// Are the alerts sent to the account administrators? Possible values are `true` or `false`. Defaults to `false`.
  late final pulumi.Output<bool?> emailAccountAdmins;
  /// Specifies an array of email addresses to which the alert is sent.
  late final pulumi.Output<List<String>?> emailAddresses;
  /// The name of the resource group that contains the MS SQL Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the number of days to keep the Threat Detection audit logs. Defaults to `0`.
  late final pulumi.Output<int?> retentionDays;
  /// Specifies the name of the MS SQL Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverName;
  /// Specifies the state of the policy. Possible values are `Disabled` or `Enabled`.
  late final pulumi.Output<String> state;
  /// Specifies the primary access key of the Threat Detection audit logs blob storage endpoint.
  ///
  /// &gt; **Note:** The `storage_account_access_key` only applies if the storage account is not behind a virtual network or a firewall.
  late final pulumi.Output<String?> storageAccountAccessKey;
  /// Specifies the blob storage endpoint that will hold all Threat Detection audit logs (e.g., `https://example.blob.core.windows.net`).
  ///
  /// &gt; **Note:** The `storage_account_access_key` field is required when the `storage_endpoint` field has been set.
  ///
  /// &gt; **Note:** Storage accounts configured with `shared_access_key_enabled = false` cannot be used for the `storage_endpoint` field.
  late final pulumi.Output<String?> storageEndpoint;

  /// Creates a new [ServerSecurityAlertPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerSecurityAlertPolicy]. {@macro pulumi_mssql_server_security_alert_policy_server_security_alert_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerSecurityAlertPolicy(
    String name, {
    ServerSecurityAlertPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/serverSecurityAlertPolicy:ServerSecurityAlertPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    disabledAlerts = registerOutput<List<String>?>('disabledAlerts');
    emailAccountAdmins = registerOutput<bool?>('emailAccountAdmins');
    emailAddresses = registerOutput<List<String>?>('emailAddresses');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retentionDays = registerOutput<int?>('retentionDays');
    serverName = registerOutput<String>('serverName');
    state = registerOutput<String>('state');
    storageAccountAccessKey = registerOutput<String?>('storageAccountAccessKey');
    storageEndpoint = registerOutput<String?>('storageEndpoint');
  }

  /// Gets an existing [ServerSecurityAlertPolicy] resource's state with the given [name] and [id].
  static ServerSecurityAlertPolicy get(
    String name,
    pulumi.Input<String> id, {
    ServerSecurityAlertPolicyState? state,
  }) {
    return ServerSecurityAlertPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServerSecurityAlertPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/serverSecurityAlertPolicy:ServerSecurityAlertPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    disabledAlerts = registerOutput<List<String>?>('disabledAlerts');
    emailAccountAdmins = registerOutput<bool?>('emailAccountAdmins');
    emailAddresses = registerOutput<List<String>?>('emailAddresses');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retentionDays = registerOutput<int?>('retentionDays');
    serverName = registerOutput<String>('serverName');
    this.state = registerOutput<String>('state');
    storageAccountAccessKey = registerOutput<String?>('storageAccountAccessKey');
    storageEndpoint = registerOutput<String?>('storageEndpoint');
  }
}
