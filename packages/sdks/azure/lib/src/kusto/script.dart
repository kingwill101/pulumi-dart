import 'package:pulumi/pulumi.dart' as pulumi;
import 'script_args.dart';
import 'script_state.dart';

/// Manages a Kusto Script.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const exampleCluster = new azure.kusto.Cluster("example", {
///     name: "example",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     sku: {
///         name: "Dev(No SLA)_Standard_D11_v2",
///         capacity: 1,
///     },
/// });
/// const exampleDatabase = new azure.kusto.Database("example", {
///     name: "example",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     clusterName: exampleCluster.name,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "example",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "setup-files",
///     storageAccountName: exampleAccount.name,
///     containerAccessType: "private",
/// });
/// const exampleBlob = new azure.storage.Blob("example", {
///     name: "script.txt",
///     storageAccountName: exampleAccount.name,
///     storageContainerName: exampleContainer.name,
///     type: "Block",
///     sourceContent: ".create table MyTable (Level:string, Timestamp:datetime, UserId:string, TraceId:string, Message:string, ProcessId:int32)",
/// });
/// const example = azure.storage.getAccountBlobContainerSASOutput({
///     connectionString: exampleAccount.primaryConnectionString,
///     containerName: exampleContainer.name,
///     httpsOnly: true,
///     start: "2017-03-21",
///     expiry: "2022-03-21",
///     permissions: {
///         read: true,
///         add: false,
///         create: false,
///         write: true,
///         "delete": false,
///         list: true,
///     },
/// });
/// const exampleScript = new azure.kusto.Script("example", {
///     name: "example",
///     databaseId: exampleDatabase.id,
///     url: exampleBlob.id,
///     sasToken: example.apply(example => example.sas),
///     continueOnErrorsEnabled: true,
///     forceAnUpdateWhenValueChanged: "first",
///     scriptLevel: "Database",
///     principalPermissionsAction: "RemovePermissionOnScriptCompletion",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_cluster = azure.kusto.Cluster("example",
///     name="example",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     sku={
///         "name": "Dev(No SLA)_Standard_D11_v2",
///         "capacity": 1,
///     })
/// example_database = azure.kusto.Database("example",
///     name="example",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     cluster_name=example_cluster.name)
/// example_account = azure.storage.Account("example",
///     name="example",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_container = azure.storage.Container("example",
///     name="setup-files",
///     storage_account_name=example_account.name,
///     container_access_type="private")
/// example_blob = azure.storage.Blob("example",
///     name="script.txt",
///     storage_account_name=example_account.name,
///     storage_container_name=example_container.name,
///     type="Block",
///     source_content=".create table MyTable (Level:string, Timestamp:datetime, UserId:string, TraceId:string, Message:string, ProcessId:int32)")
/// example = azure.storage.get_account_blob_container_sas_output(connection_string=example_account.primary_connection_string,
///     container_name=example_container.name,
///     https_only=True,
///     start="2017-03-21",
///     expiry="2022-03-21",
///     permissions={
///         "read": True,
///         "add": False,
///         "create": False,
///         "write": True,
///         "delete": False,
///         "list": True,
///     })
/// example_script = azure.kusto.Script("example",
///     name="example",
///     database_id=example_database.id,
///     url=example_blob.id,
///     sas_token=example.sas,
///     continue_on_errors_enabled=True,
///     force_an_update_when_value_changed="first",
///     script_level="Database",
///     principal_permissions_action="RemovePermissionOnScriptCompletion")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var exampleCluster = new Azure.Kusto.Cluster("example", new()
///     {
///         Name = "example",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Sku = new Azure.Kusto.Inputs.ClusterSkuArgs
///         {
///             Name = "Dev(No SLA)_Standard_D11_v2",
///             Capacity = 1,
///         },
///     });
///
///     var exampleDatabase = new Azure.Kusto.Database("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         ClusterName = exampleCluster.Name,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "setup-files",
///         StorageAccountName = exampleAccount.Name,
///         ContainerAccessType = "private",
///     });
///
///     var exampleBlob = new Azure.Storage.Blob("example", new()
///     {
///         Name = "script.txt",
///         StorageAccountName = exampleAccount.Name,
///         StorageContainerName = exampleContainer.Name,
///         Type = "Block",
///         SourceContent = ".create table MyTable (Level:string, Timestamp:datetime, UserId:string, TraceId:string, Message:string, ProcessId:int32)",
///     });
///
///     var example = Azure.Storage.GetAccountBlobContainerSAS.Invoke(new()
///     {
///         ConnectionString = exampleAccount.PrimaryConnectionString,
///         ContainerName = exampleContainer.Name,
///         HttpsOnly = true,
///         Start = "2017-03-21",
///         Expiry = "2022-03-21",
///         Permissions = new Azure.Storage.Inputs.GetAccountBlobContainerSASPermissionsInputArgs
///         {
///             Read = true,
///             Add = false,
///             Create = false,
///             Write = true,
///             Delete = false,
///             List = true,
///         },
///     });
///
///     var exampleScript = new Azure.Kusto.Script("example", new()
///     {
///         Name = "example",
///         DatabaseId = exampleDatabase.Id,
///         Url = exampleBlob.Id,
///         SasToken = example.Apply(getAccountBlobContainerSASResult => getAccountBlobContainerSASResult.Sas),
///         ContinueOnErrorsEnabled = true,
///         ForceAnUpdateWhenValueChanged = "first",
///         ScriptLevel = "Database",
///         PrincipalPermissionsAction = "RemovePermissionOnScriptCompletion",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/kusto"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCluster, err := kusto.NewCluster(ctx, "example", &kusto.ClusterArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Sku: &kusto.ClusterSkuArgs{
/// 				Name:     pulumi.String("Dev(No SLA)_Standard_D11_v2"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDatabase, err := kusto.NewDatabase(ctx, "example", &kusto.DatabaseArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Location:          exampleResourceGroup.Location,
/// 			ClusterName:       exampleCluster.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("example"),
/// 			ResourceGroupName:      exampleResourceGroup.Name,
/// 			Location:               exampleResourceGroup.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("setup-files"),
/// 			StorageAccountName:  exampleAccount.Name,
/// 			ContainerAccessType: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBlob, err := storage.NewBlob(ctx, "example", &storage.BlobArgs{
/// 			Name:                 pulumi.String("script.txt"),
/// 			StorageAccountName:   exampleAccount.Name,
/// 			StorageContainerName: exampleContainer.Name,
/// 			Type:                 pulumi.String("Block"),
/// 			SourceContent:        pulumi.String(".create table MyTable (Level:string, Timestamp:datetime, UserId:string, TraceId:string, Message:string, ProcessId:int32)"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := storage.GetAccountBlobContainerSASOutput(ctx, storage.GetAccountBlobContainerSASOutputArgs{
/// 			ConnectionString: exampleAccount.PrimaryConnectionString,
/// 			ContainerName:    exampleContainer.Name,
/// 			HttpsOnly:        pulumi.Bool(true),
/// 			Start:            pulumi.String("2017-03-21"),
/// 			Expiry:           pulumi.String("2022-03-21"),
/// 			Permissions: &storage.GetAccountBlobContainerSASPermissionsArgs{
/// 				Read:   pulumi.Bool(true),
/// 				Add:    pulumi.Bool(false),
/// 				Create: pulumi.Bool(false),
/// 				Write:  pulumi.Bool(true),
/// 				Delete: pulumi.Bool(false),
/// 				List:   pulumi.Bool(true),
/// 			},
/// 		}, nil)
/// 		_, err = kusto.NewScript(ctx, "example", &kusto.ScriptArgs{
/// 			Name:       pulumi.String("example"),
/// 			DatabaseId: exampleDatabase.ID(),
/// 			Url:        exampleBlob.ID(),
/// 			SasToken: pulumi.String(example.ApplyT(func(example storage.GetAccountBlobContainerSASResult) (*string, error) {
/// 				return &example.Sas, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ContinueOnErrorsEnabled:       pulumi.Bool(true),
/// 			ForceAnUpdateWhenValueChanged: pulumi.String("first"),
/// 			ScriptLevel:                   pulumi.String("Database"),
/// 			PrincipalPermissionsAction:    pulumi.String("RemovePermissionOnScriptCompletion"),
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
/// import com.pulumi.azure.kusto.Cluster;
/// import com.pulumi.azure.kusto.ClusterArgs;
/// import com.pulumi.azure.kusto.inputs.ClusterSkuArgs;
/// import com.pulumi.azure.kusto.Database;
/// import com.pulumi.azure.kusto.DatabaseArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.storage.Blob;
/// import com.pulumi.azure.storage.BlobArgs;
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetAccountBlobContainerSASArgs;
/// import com.pulumi.azure.storage.inputs.GetAccountBlobContainerSASPermissionsArgs;
/// import com.pulumi.azure.kusto.Script;
/// import com.pulumi.azure.kusto.ScriptArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("example")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .sku(ClusterSkuArgs.builder()
///                 .name("Dev(No SLA)_Standard_D11_v2")
///                 .capacity(1)
///                 .build())
///             .build());
///
///         var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
///             .name("example")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .clusterName(exampleCluster.name())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("setup-files")
///             .storageAccountName(exampleAccount.name())
///             .containerAccessType("private")
///             .build());
///
///         var exampleBlob = new Blob("exampleBlob", BlobArgs.builder()
///             .name("script.txt")
///             .storageAccountName(exampleAccount.name())
///             .storageContainerName(exampleContainer.name())
///             .type("Block")
///             .sourceContent(".create table MyTable (Level:string, Timestamp:datetime, UserId:string, TraceId:string, Message:string, ProcessId:int32)")
///             .build());
///
///         final var example = StorageFunctions.getAccountBlobContainerSAS(GetAccountBlobContainerSASArgs.builder()
///             .connectionString(exampleAccount.primaryConnectionString())
///             .containerName(exampleContainer.name())
///             .httpsOnly(true)
///             .start("2017-03-21")
///             .expiry("2022-03-21")
///             .permissions(GetAccountBlobContainerSASPermissionsArgs.builder()
///                 .read(true)
///                 .add(false)
///                 .create(false)
///                 .write(true)
///                 .delete(false)
///                 .list(true)
///                 .build())
///             .build());
///
///         var exampleScript = new Script("exampleScript", ScriptArgs.builder()
///             .name("example")
///             .databaseId(exampleDatabase.id())
///             .url(exampleBlob.id())
///             .sasToken(example.applyValue(_example -> _example.sas()))
///             .continueOnErrorsEnabled(true)
///             .forceAnUpdateWhenValueChanged("first")
///             .scriptLevel("Database")
///             .principalPermissionsAction("RemovePermissionOnScriptCompletion")
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
///       name: example
///       location: West Europe
///   exampleCluster:
///     type: azure:kusto:Cluster
///     name: example
///     properties:
///       name: example
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       sku:
///         name: Dev(No SLA)_Standard_D11_v2
///         capacity: 1
///   exampleDatabase:
///     type: azure:kusto:Database
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       clusterName: ${exampleCluster.name}
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: setup-files
///       storageAccountName: ${exampleAccount.name}
///       containerAccessType: private
///   exampleBlob:
///     type: azure:storage:Blob
///     name: example
///     properties:
///       name: script.txt
///       storageAccountName: ${exampleAccount.name}
///       storageContainerName: ${exampleContainer.name}
///       type: Block
///       sourceContent: .create table MyTable (Level:string, Timestamp:datetime, UserId:string, TraceId:string, Message:string, ProcessId:int32)
///   exampleScript:
///     type: azure:kusto:Script
///     name: example
///     properties:
///       name: example
///       databaseId: ${exampleDatabase.id}
///       url: ${exampleBlob.id}
///       sasToken: ${example.sas}
///       continueOnErrorsEnabled: true
///       forceAnUpdateWhenValueChanged: first
///       scriptLevel: Database
///       principalPermissionsAction: RemovePermissionOnScriptCompletion
/// variables:
///   example:
///     fn::invoke:
///       function: azure:storage:getAccountBlobContainerSAS
///       arguments:
///         connectionString: ${exampleAccount.primaryConnectionString}
///         containerName: ${exampleContainer.name}
///         httpsOnly: true
///         start: 2017-03-21
///         expiry: 2022-03-21
///         permissions:
///           read: true
///           add: false
///           create: false
///           write: true
///           delete: false
///           list: true
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
/// Kusto Scripts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:kusto/script:Script example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Kusto/clusters/cluster1/databases/database1/scripts/script1
/// ```
class Script extends pulumi.CustomResource {
  /// Flag that indicates whether to continue if one of the command fails.
  late final pulumi.Output<bool?> continueOnErrorsEnabled;
  /// The ID of the Kusto Database. Changing this forces a new Kusto Script to be created.
  late final pulumi.Output<String> databaseId;
  /// A unique string. If changed the script will be applied again.
  late final pulumi.Output<String> forceAnUpdateWhenValueChanged;
  /// The name which should be used for this Kusto Script. Changing this forces a new Kusto Script to be created.
  late final pulumi.Output<String> name;
  /// Whether the script caller’s permissions remain in effect after the script has finished running? Possible values are `RemovePermissionOnScriptCompletion` and `RetainPermissionOnScriptCompletion`.
  late final pulumi.Output<String?> principalPermissionsAction;
  /// The SAS token used to access the script. Must be provided when using scriptUrl property. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> sasToken;
  /// The script content. This property should be used when the script is provide inline and not through file in a SA. Must not be used together with `url` and `sas_token` properties. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> scriptContent;
  /// The type of script commands. Possible values are `Database` or `Cluster`. Defaults to `Database`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> scriptLevel;
  /// The url to the KQL script blob file. Must not be used together with scriptContent property. Please reference [this documentation](https://docs.microsoft.com/azure/data-explorer/database-script) that describes the commands that are allowed in the script.
  late final pulumi.Output<String?> url;

  /// Creates a new [Script].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Script]. {@macro pulumi_kusto_script_script_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Script(
    String name, {
    ScriptArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:kusto/script:Script',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    continueOnErrorsEnabled = registerOutput<bool?>('continueOnErrorsEnabled');
    databaseId = registerOutput<String>('databaseId');
    forceAnUpdateWhenValueChanged = registerOutput<String>('forceAnUpdateWhenValueChanged');
    this.name = registerOutput<String>('name');
    principalPermissionsAction = registerOutput<String?>('principalPermissionsAction');
    sasToken = registerOutput<String?>('sasToken');
    scriptContent = registerOutput<String?>('scriptContent');
    scriptLevel = registerOutput<String?>('scriptLevel');
    url = registerOutput<String?>('url');
  }

  /// Gets an existing [Script] resource's state with the given [name] and [id].
  static Script get(
    String name,
    pulumi.Input<String> id, {
    ScriptState? state,
  }) {
    return Script._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Script._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:kusto/script:Script',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    continueOnErrorsEnabled = registerOutput<bool?>('continueOnErrorsEnabled');
    databaseId = registerOutput<String>('databaseId');
    forceAnUpdateWhenValueChanged = registerOutput<String>('forceAnUpdateWhenValueChanged');
    this.name = registerOutput<String>('name');
    principalPermissionsAction = registerOutput<String?>('principalPermissionsAction');
    sasToken = registerOutput<String?>('sasToken');
    scriptContent = registerOutput<String?>('scriptContent');
    scriptLevel = registerOutput<String?>('scriptLevel');
    url = registerOutput<String?>('url');
  }
}
