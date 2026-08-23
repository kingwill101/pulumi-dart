import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_args.dart';
import 'backup_policy_state.dart';

/// Manages a NetApp Backup Policy.
///
/// ## NetApp Backup Policy Usage
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
/// const exampleAccount = new azure.netapp.Account("example", {
///     name: "example-netappaccount",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleBackupPolicy = new azure.netapp.BackupPolicy("example", {
///     name: "example-netappbackuppolicy",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountName: exampleAccount.name,
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.netapp.Account("example",
///     name="example-netappaccount",
///     location=example.location,
///     resource_group_name=example.name)
/// example_backup_policy = azure.netapp.BackupPolicy("example",
///     name="example-netappbackuppolicy",
///     resource_group_name=example.name,
///     location=example.location,
///     account_name=example_account.name,
///     enabled=True)
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
///     var exampleAccount = new Azure.NetApp.Account("example", new()
///     {
///         Name = "example-netappaccount",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleBackupPolicy = new Azure.NetApp.BackupPolicy("example", new()
///     {
///         Name = "example-netappbackuppolicy",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountName = exampleAccount.Name,
///         Enabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
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
/// 		exampleAccount, err := netapp.NewAccount(ctx, "example", &netapp.AccountArgs{
/// 			Name:              pulumi.String("example-netappaccount"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewBackupPolicy(ctx, "example", &netapp.BackupPolicyArgs{
/// 			Name:              pulumi.String("example-netappbackuppolicy"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AccountName:       exampleAccount.Name,
/// 			Enabled:           pulumi.Bool(true),
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_netapp_account" "example" {
///   name                = "example-netappaccount"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_netapp_backuppolicy" "example" {
///   name                = "example-netappbackuppolicy"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   account_name        = azure_netapp_account.example.name
///   enabled             = true
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
/// import com.pulumi.azure.netapp.Account;
/// import com.pulumi.azure.netapp.AccountArgs;
/// import com.pulumi.azure.netapp.BackupPolicy;
/// import com.pulumi.azure.netapp.BackupPolicyArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-netappaccount")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleBackupPolicy = new BackupPolicy("exampleBackupPolicy", BackupPolicyArgs.builder()
///             .name("example-netappbackuppolicy")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountName(exampleAccount.name())
///             .enabled(true)
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
///   exampleAccount:
///     type: azure:netapp:Account
///     name: example
///     properties:
///       name: example-netappaccount
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleBackupPolicy:
///     type: azure:netapp:BackupPolicy
///     name: example
///     properties:
///       name: example-netappbackuppolicy
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountName: ${exampleAccount.name}
///       enabled: true
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2026-01-01
///
/// ## Import
///
/// NetApp Backup Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:netapp/backupPolicy:BackupPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.NetApp/netAppAccounts/account1/backupPolicies/backuppolicy1
/// ```
class BackupPolicy extends pulumi.CustomResource {
  /// The name of the NetApp account in which the NetApp Policy should be created under. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;
  /// Provides the number of daily backups to keep, defaults to `2` which is the minimum, maximum is 1019.
  late final pulumi.Output<int?> dailyBackupsToKeep;
  /// Whether the Backup Policy is enabled. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Provides the number of monthly backups to keep, defaults to `1`. The minimum is `0` and the maximum is `1019`.
  ///
  /// &gt; **Note:** Currently, the combined (daily + weekly + monthy) retention counts cannot exceed 1019.
  late final pulumi.Output<int?> monthlyBackupsToKeep;
  /// The name of the NetApp Backup Policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group where the NetApp Backup Policy should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Provides the number of weekly backups to keep, defaults to `1`. The minimum is `0` and the maximum is `1019`.
  late final pulumi.Output<int?> weeklyBackupsToKeep;

  /// Creates a new [BackupPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPolicy]. {@macro pulumi_netapp_backup_policy_backup_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPolicy(
    String name, {
    BackupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/backupPolicy:BackupPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    dailyBackupsToKeep = registerOutput<int?>('dailyBackupsToKeep');
    enabled = registerOutput<bool?>('enabled');
    location = registerOutput<String>('location');
    monthlyBackupsToKeep = registerOutput<int?>('monthlyBackupsToKeep');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    weeklyBackupsToKeep = registerOutput<int?>('weeklyBackupsToKeep');
  }

  /// Gets an existing [BackupPolicy] resource's state with the given [name] and [id].
  static BackupPolicy get(
    String name,
    pulumi.Input<String> id, {
    BackupPolicyState? state,
  }) {
    return BackupPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackupPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/backupPolicy:BackupPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    dailyBackupsToKeep = registerOutput<int?>('dailyBackupsToKeep');
    enabled = registerOutput<bool?>('enabled');
    location = registerOutput<String>('location');
    monthlyBackupsToKeep = registerOutput<int?>('monthlyBackupsToKeep');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    weeklyBackupsToKeep = registerOutput<int?>('weeklyBackupsToKeep');
  }
}
