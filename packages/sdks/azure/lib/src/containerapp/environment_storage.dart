import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_storage_args.dart';
import 'environment_storage_state.dart';

/// Manages a Container App Environment Storage.
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
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "acctest-01",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
///     retentionInDays: 30,
/// });
/// const exampleEnvironment = new azure.containerapp.Environment("example", {
///     name: "myEnvironment",
///     location: example.location,
///     resourceGroupName: example.name,
///     logAnalyticsWorkspaceId: exampleAnalyticsWorkspace.id,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "azureteststorage",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleShare = new azure.storage.Share("example", {
///     name: "sharename",
///     storageAccountName: exampleAccount.name,
///     quota: 5,
/// });
/// const exampleEnvironmentStorage = new azure.containerapp.EnvironmentStorage("example", {
///     name: "mycontainerappstorage",
///     containerAppEnvironmentId: exampleEnvironment.id,
///     accountName: exampleAccount.name,
///     shareName: exampleShare.name,
///     accessKey: exampleAccount.primaryAccessKey,
///     accessMode: "ReadOnly",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="acctest-01",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018",
///     retention_in_days=30)
/// example_environment = azure.containerapp.Environment("example",
///     name="myEnvironment",
///     location=example.location,
///     resource_group_name=example.name,
///     log_analytics_workspace_id=example_analytics_workspace.id)
/// example_account = azure.storage.Account("example",
///     name="azureteststorage",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_share = azure.storage.Share("example",
///     name="sharename",
///     storage_account_name=example_account.name,
///     quota=5)
/// example_environment_storage = azure.containerapp.EnvironmentStorage("example",
///     name="mycontainerappstorage",
///     container_app_environment_id=example_environment.id,
///     account_name=example_account.name,
///     share_name=example_share.name,
///     access_key=example_account.primary_access_key,
///     access_mode="ReadOnly")
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
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "acctest-01",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///         RetentionInDays = 30,
///     });
///
///     var exampleEnvironment = new Azure.ContainerApp.Environment("example", new()
///     {
///         Name = "myEnvironment",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         LogAnalyticsWorkspaceId = exampleAnalyticsWorkspace.Id,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "azureteststorage",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleShare = new Azure.Storage.Share("example", new()
///     {
///         Name = "sharename",
///         StorageAccountName = exampleAccount.Name,
///         Quota = 5,
///     });
///
///     var exampleEnvironmentStorage = new Azure.ContainerApp.EnvironmentStorage("example", new()
///     {
///         Name = "mycontainerappstorage",
///         ContainerAppEnvironmentId = exampleEnvironment.Id,
///         AccountName = exampleAccount.Name,
///         ShareName = exampleShare.Name,
///         AccessKey = exampleAccount.PrimaryAccessKey,
///         AccessMode = "ReadOnly",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerapp"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("acctest-01"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 			RetentionInDays:   pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEnvironment, err := containerapp.NewEnvironment(ctx, "example", &containerapp.EnvironmentArgs{
/// 			Name:                    pulumi.String("myEnvironment"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			LogAnalyticsWorkspaceId: exampleAnalyticsWorkspace.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("azureteststorage"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleShare, err := storage.NewShare(ctx, "example", &storage.ShareArgs{
/// 			Name:               pulumi.String("sharename"),
/// 			StorageAccountName: exampleAccount.Name,
/// 			Quota:              pulumi.Int(5),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerapp.NewEnvironmentStorage(ctx, "example", &containerapp.EnvironmentStorageArgs{
/// 			Name:                      pulumi.String("mycontainerappstorage"),
/// 			ContainerAppEnvironmentId: exampleEnvironment.ID(),
/// 			AccountName:               exampleAccount.Name,
/// 			ShareName:                 exampleShare.Name,
/// 			AccessKey:                 exampleAccount.PrimaryAccessKey,
/// 			AccessMode:                pulumi.String("ReadOnly"),
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
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.containerapp.Environment;
/// import com.pulumi.azure.containerapp.EnvironmentArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Share;
/// import com.pulumi.azure.storage.ShareArgs;
/// import com.pulumi.azure.containerapp.EnvironmentStorage;
/// import com.pulumi.azure.containerapp.EnvironmentStorageArgs;
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
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("acctest-01")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .retentionInDays(30)
///             .build());
///
///         var exampleEnvironment = new Environment("exampleEnvironment", EnvironmentArgs.builder()
///             .name("myEnvironment")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .logAnalyticsWorkspaceId(exampleAnalyticsWorkspace.id())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("azureteststorage")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleShare = new Share("exampleShare", ShareArgs.builder()
///             .name("sharename")
///             .storageAccountName(exampleAccount.name())
///             .quota(5)
///             .build());
///
///         var exampleEnvironmentStorage = new EnvironmentStorage("exampleEnvironmentStorage", EnvironmentStorageArgs.builder()
///             .name("mycontainerappstorage")
///             .containerAppEnvironmentId(exampleEnvironment.id())
///             .accountName(exampleAccount.name())
///             .shareName(exampleShare.name())
///             .accessKey(exampleAccount.primaryAccessKey())
///             .accessMode("ReadOnly")
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
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: acctest-01
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///       retentionInDays: 30
///   exampleEnvironment:
///     type: azure:containerapp:Environment
///     name: example
///     properties:
///       name: myEnvironment
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       logAnalyticsWorkspaceId: ${exampleAnalyticsWorkspace.id}
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: azureteststorage
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleShare:
///     type: azure:storage:Share
///     name: example
///     properties:
///       name: sharename
///       storageAccountName: ${exampleAccount.name}
///       quota: 5
///   exampleEnvironmentStorage:
///     type: azure:containerapp:EnvironmentStorage
///     name: example
///     properties:
///       name: mycontainerappstorage
///       containerAppEnvironmentId: ${exampleEnvironment.id}
///       accountName: ${exampleAccount.name}
///       shareName: ${exampleShare.name}
///       accessKey: ${exampleAccount.primaryAccessKey}
///       accessMode: ReadOnly
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.App` - 2025-07-01
///
/// ## Import
///
/// A Container App Environment Storage can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerapp/environmentStorage:EnvironmentStorage example "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.App/managedEnvironments/myEnvironment/storages/mystorage"
/// ```
class EnvironmentStorage extends pulumi.CustomResource {
  /// The Storage Account Access Key.
  late final pulumi.Output<String?> accessKey;

  /// The access mode to connect this storage to the Container App. Possible values include `ReadOnly` and `ReadWrite`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accessMode;

  /// The Azure Storage Account in which the Share to be used is located. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> accountName;

  /// The ID of the Container App Environment to which this storage belongs. Changing this forces a new resource to be created.
  late final pulumi.Output<String> containerAppEnvironmentId;

  /// The name for this Container App Environment Storage. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The NFS server to use for the Azure File Share, the format will be `yourstorageaccountname.file.core.windows.net`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> nfsServerUrl;

  /// The name of the Azure Storage Share to use. Changing this forces a new resource to be created.
  late final pulumi.Output<String> shareName;

  /// Creates a new [EnvironmentStorage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentStorage]. {@macro pulumi_containerapp_environment_storage_environment_storage_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentStorage(
    String name, {
    EnvironmentStorageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:containerapp/environmentStorage:EnvironmentStorage',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessKey = registerOutput<String?>('accessKey');
    accessMode = registerOutput<String>('accessMode');
    accountName = registerOutput<String?>('accountName');
    containerAppEnvironmentId = registerOutput<String>(
      'containerAppEnvironmentId',
    );
    this.name = registerOutput<String>('name');
    nfsServerUrl = registerOutput<String?>('nfsServerUrl');
    shareName = registerOutput<String>('shareName');
  }

  /// Gets an existing [EnvironmentStorage] resource's state with the given [name] and [id].
  static EnvironmentStorage get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentStorageState? state,
  }) {
    return EnvironmentStorage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EnvironmentStorage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:containerapp/environmentStorage:EnvironmentStorage',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessKey = registerOutput<String?>('accessKey');
    accessMode = registerOutput<String>('accessMode');
    accountName = registerOutput<String?>('accountName');
    containerAppEnvironmentId = registerOutput<String>(
      'containerAppEnvironmentId',
    );
    this.name = registerOutput<String>('name');
    nfsServerUrl = registerOutput<String?>('nfsServerUrl');
    shareName = registerOutput<String>('shareName');
  }
}
