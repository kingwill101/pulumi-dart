import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_defender_args.dart';
import 'storage_defender_state.dart';

/// Manages the Defender for Storage.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "westus2",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "exampleacc",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleStorageDefender = new azure.securitycenter.StorageDefender("example", {storageAccountId: exampleAccount.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="westus2")
/// example_account = azure.storage.Account("example",
///     name="exampleacc",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_storage_defender = azure.securitycenter.StorageDefender("example", storage_account_id=example_account.id)
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
///         Name = "example-rg",
///         Location = "westus2",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "exampleacc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleStorageDefender = new Azure.SecurityCenter.StorageDefender("example", new()
///     {
///         StorageAccountId = exampleAccount.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/securitycenter"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("westus2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("exampleacc"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securitycenter.NewStorageDefender(ctx, "example", &securitycenter.StorageDefenderArgs{
/// 			StorageAccountId: exampleAccount.ID(),
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.securitycenter.StorageDefender;
/// import com.pulumi.azure.securitycenter.StorageDefenderArgs;
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
///             .name("example-rg")
///             .location("westus2")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("exampleacc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleStorageDefender = new StorageDefender("exampleStorageDefender", StorageDefenderArgs.builder()
///             .storageAccountId(exampleAccount.id())
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
///       name: example-rg
///       location: westus2
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: exampleacc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleStorageDefender:
///     type: azure:securitycenter:StorageDefender
///     name: example
///     properties:
///       storageAccountId: ${exampleAccount.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Security` - 2025-06-01
///
/// ## Import
///
/// The setting can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:securitycenter/storageDefender:StorageDefender example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Storage/storageAccounts/storageacc
/// ```
class StorageDefender extends pulumi.CustomResource {
  /// The max GB to be scanned per Month. Must be `-1` or above `0`. Omit this property or set to `-1` if no capping is needed. Defaults to `-1`.
  late final pulumi.Output<int?> malwareScanningOnUploadCapGbPerMonth;
  /// Whether On Upload malware scanning should be enabled. Defaults to `false`.
  late final pulumi.Output<bool?> malwareScanningOnUploadEnabled;
  /// Whether the settings defined for this storage account should override the settings defined for the subscription. Defaults to `false`.
  late final pulumi.Output<bool?> overrideSubscriptionSettingsEnabled;
  /// The Event Grid Topic where every scan result will be sent to. When you set an Event Grid custom topic, you must set `override_subscription_settings_enabled` to `true` to override the subscription-level settings.
  late final pulumi.Output<String?> scanResultsEventGridTopicId;
  /// Whether Sensitive Data Discovery should be enabled. Defaults to `false`.
  late final pulumi.Output<bool?> sensitiveDataDiscoveryEnabled;
  /// The ID of the storage account the defender applied to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageAccountId;

  /// Creates a new [StorageDefender].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageDefender]. {@macro pulumi_securitycenter_storage_defender_storage_defender_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageDefender(
    String name, {
    StorageDefenderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:securitycenter/storageDefender:StorageDefender',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    malwareScanningOnUploadCapGbPerMonth = registerOutput<int?>('malwareScanningOnUploadCapGbPerMonth');
    malwareScanningOnUploadEnabled = registerOutput<bool?>('malwareScanningOnUploadEnabled');
    overrideSubscriptionSettingsEnabled = registerOutput<bool?>('overrideSubscriptionSettingsEnabled');
    scanResultsEventGridTopicId = registerOutput<String?>('scanResultsEventGridTopicId');
    sensitiveDataDiscoveryEnabled = registerOutput<bool?>('sensitiveDataDiscoveryEnabled');
    storageAccountId = registerOutput<String>('storageAccountId');
  }

  /// Gets an existing [StorageDefender] resource's state with the given [name] and [id].
  static StorageDefender get(
    String name,
    pulumi.Input<String> id, {
    StorageDefenderState? state,
  }) {
    return StorageDefender._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StorageDefender._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:securitycenter/storageDefender:StorageDefender',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    malwareScanningOnUploadCapGbPerMonth = registerOutput<int?>('malwareScanningOnUploadCapGbPerMonth');
    malwareScanningOnUploadEnabled = registerOutput<bool?>('malwareScanningOnUploadEnabled');
    overrideSubscriptionSettingsEnabled = registerOutput<bool?>('overrideSubscriptionSettingsEnabled');
    scanResultsEventGridTopicId = registerOutput<String?>('scanResultsEventGridTopicId');
    sensitiveDataDiscoveryEnabled = registerOutput<bool?>('sensitiveDataDiscoveryEnabled');
    storageAccountId = registerOutput<String>('storageAccountId');
  }
}
