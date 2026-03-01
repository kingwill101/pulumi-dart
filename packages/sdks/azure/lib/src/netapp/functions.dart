import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_encryption_args.dart';
import 'get_account_encryption_result.dart';
import 'get_account_result.dart';
import 'get_backup_policy_args.dart';
import 'get_backup_policy_result.dart';
import 'get_backup_vault_args.dart';
import 'get_backup_vault_result.dart';
import 'get_pool_args.dart';
import 'get_pool_result.dart';
import 'get_snapshot_args.dart';
import 'get_snapshot_policy_args.dart';
import 'get_snapshot_policy_result.dart';
import 'get_snapshot_result.dart';
import 'get_volume_args.dart';
import 'get_volume_group_oracle_args.dart';
import 'get_volume_group_oracle_result.dart';
import 'get_volume_group_sap_hana_args.dart';
import 'get_volume_group_sap_hana_result.dart';
import 'get_volume_quota_rule_args.dart';
import 'get_volume_quota_rule_result.dart';
import 'get_volume_result.dart';

/// Uses this data source to access information about an existing NetApp Account.
///
/// ## NetApp Account Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.netapp.getAccount({
///     resourceGroupName: "acctestRG",
///     name: "acctestnetappaccount",
/// });
/// export const netappAccountId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.netapp.get_account(resource_group_name="acctestRG",
///     name="acctestnetappaccount")
/// pulumi.export("netappAccountId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.NetApp.GetAccount.Invoke(new()
///     {
///         ResourceGroupName = "acctestRG",
///         Name = "acctestnetappaccount",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["netappAccountId"] = example.Apply(getAccountResult => getAccountResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := netapp.LookupAccount(ctx, &netapp.LookupAccountArgs{
/// 			ResourceGroupName: "acctestRG",
/// 			Name:              "acctestnetappaccount",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("netappAccountId", example.Id)
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
/// import com.pulumi.azure.netapp.NetappFunctions;
/// import com.pulumi.azure.netapp.inputs.GetAccountArgs;
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
///         final var example = NetappFunctions.getAccount(GetAccountArgs.builder()
///             .resourceGroupName("acctestRG")
///             .name("acctestnetappaccount")
///             .build());
///
///         ctx.export("netappAccountId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:netapp:getAccount
///       arguments:
///         resourceGroupName: acctestRG
///         name: acctestnetappaccount
/// outputs:
///   netappAccountId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2025-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_account_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:netapp/getAccount:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

/// Use this data source to access information about an existing NetApp Account Encryption Resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.netapp.getAccountEncryption({
///     netappAccountId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.NetApp/netAppAccounts/account1",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.netapp.get_account_encryption(netapp_account_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.NetApp/netAppAccounts/account1")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.NetApp.GetAccountEncryption.Invoke(new()
///     {
///         NetappAccountId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.NetApp/netAppAccounts/account1",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getAccountEncryptionResult => getAccountEncryptionResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := netapp.LookupAccountEncryption(ctx, &netapp.LookupAccountEncryptionArgs{
/// 			NetappAccountId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.NetApp/netAppAccounts/account1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.netapp.NetappFunctions;
/// import com.pulumi.azure.netapp.inputs.GetAccountEncryptionArgs;
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
///         final var example = NetappFunctions.getAccountEncryption(GetAccountEncryptionArgs.builder()
///             .netappAccountId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.NetApp/netAppAccounts/account1")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:netapp:getAccountEncryption
///       arguments:
///         netappAccountId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.NetApp/netAppAccounts/account1
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2025-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_account_encryption_get_account_encryption_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountEncryptionResult> getAccountEncryption(
  GetAccountEncryptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:netapp/getAccountEncryption:getAccountEncryption',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountEncryptionResult.fromMap(result);
}

/// Use this data source to access information about an existing NetApp Backup Vault.
///
/// ## NetApp Backup Policy Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.netapp.getBackupPolicy({
///     resourceGroupName: "example-resource-group",
///     accountName: "example-netappaccount",
///     name: "example-backuppolicy",
/// });
/// export const backupPolicyId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.netapp.get_backup_policy(resource_group_name="example-resource-group",
///     account_name="example-netappaccount",
///     name="example-backuppolicy")
/// pulumi.export("backupPolicyId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.NetApp.GetBackupPolicy.Invoke(new()
///     {
///         ResourceGroupName = "example-resource-group",
///         AccountName = "example-netappaccount",
///         Name = "example-backuppolicy",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["backupPolicyId"] = example.Apply(getBackupPolicyResult => getBackupPolicyResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := netapp.LookupBackupPolicy(ctx, &netapp.LookupBackupPolicyArgs{
/// 			ResourceGroupName: "example-resource-group",
/// 			AccountName:       "example-netappaccount",
/// 			Name:              "example-backuppolicy",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("backupPolicyId", example.Id)
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
/// import com.pulumi.azure.netapp.NetappFunctions;
/// import com.pulumi.azure.netapp.inputs.GetBackupPolicyArgs;
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
///         final var example = NetappFunctions.getBackupPolicy(GetBackupPolicyArgs.builder()
///             .resourceGroupName("example-resource-group")
///             .accountName("example-netappaccount")
///             .name("example-backuppolicy")
///             .build());
///
///         ctx.export("backupPolicyId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:netapp:getBackupPolicy
///       arguments:
///         resourceGroupName: example-resource-group
///         accountName: example-netappaccount
///         name: example-backuppolicy
/// outputs:
///   backupPolicyId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2025-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_backup_policy_get_backup_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupPolicyResult> getBackupPolicy(
  GetBackupPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:netapp/getBackupPolicy:getBackupPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupPolicyResult.fromMap(result);
}

/// Use this data source to access information about an existing NetApp Backup Vault.
///
/// ## NetApp Backup Vault Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.netapp.getBackupVault({
///     resourceGroupName: "example-resource-group",
///     accountName: "example-netappaccount",
///     name: "example-backupvault",
/// });
/// export const backupVaultId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.netapp.get_backup_vault(resource_group_name="example-resource-group",
///     account_name="example-netappaccount",
///     name="example-backupvault")
/// pulumi.export("backupVaultId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.NetApp.GetBackupVault.Invoke(new()
///     {
///         ResourceGroupName = "example-resource-group",
///         AccountName = "example-netappaccount",
///         Name = "example-backupvault",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["backupVaultId"] = example.Apply(getBackupVaultResult => getBackupVaultResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := netapp.LookupBackupVault(ctx, &netapp.LookupBackupVaultArgs{
/// 			ResourceGroupName: "example-resource-group",
/// 			AccountName:       "example-netappaccount",
/// 			Name:              "example-backupvault",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("backupVaultId", example.Id)
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
/// import com.pulumi.azure.netapp.NetappFunctions;
/// import com.pulumi.azure.netapp.inputs.GetBackupVaultArgs;
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
///         final var example = NetappFunctions.getBackupVault(GetBackupVaultArgs.builder()
///             .resourceGroupName("example-resource-group")
///             .accountName("example-netappaccount")
///             .name("example-backupvault")
///             .build());
///
///         ctx.export("backupVaultId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:netapp:getBackupVault
///       arguments:
///         resourceGroupName: example-resource-group
///         accountName: example-netappaccount
///         name: example-backupvault
/// outputs:
///   backupVaultId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2025-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_backup_vault_get_backup_vault_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupVaultResult> getBackupVault(
  GetBackupVaultArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:netapp/getBackupVault:getBackupVault',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupVaultResult.fromMap(result);
}

/// Uses this data source to access information about an existing NetApp Pool.
///
/// ## NetApp Pool Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.netapp.getPool({
///     resourceGroupName: "acctestRG",
///     accountName: "acctestnetappaccount",
///     name: "acctestnetapppool",
/// });
/// export const netappPoolId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.netapp.get_pool(resource_group_name="acctestRG",
///     account_name="acctestnetappaccount",
///     name="acctestnetapppool")
/// pulumi.export("netappPoolId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.NetApp.GetPool.Invoke(new()
///     {
///         ResourceGroupName = "acctestRG",
///         AccountName = "acctestnetappaccount",
///         Name = "acctestnetapppool",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["netappPoolId"] = example.Apply(getPoolResult => getPoolResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := netapp.LookupPool(ctx, &netapp.LookupPoolArgs{
/// 			ResourceGroupName: "acctestRG",
/// 			AccountName:       "acctestnetappaccount",
/// 			Name:              "acctestnetapppool",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("netappPoolId", example.Id)
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
/// import com.pulumi.azure.netapp.NetappFunctions;
/// import com.pulumi.azure.netapp.inputs.GetPoolArgs;
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
///         final var example = NetappFunctions.getPool(GetPoolArgs.builder()
///             .resourceGroupName("acctestRG")
///             .accountName("acctestnetappaccount")
///             .name("acctestnetapppool")
///             .build());
///
///         ctx.export("netappPoolId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:netapp:getPool
///       arguments:
///         resourceGroupName: acctestRG
///         accountName: acctestnetappaccount
///         name: acctestnetapppool
/// outputs:
///   netappPoolId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2025-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_pool_get_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPoolResult> getPool(
  GetPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:netapp/getPool:getPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPoolResult.fromMap(result);
}

/// Uses this data source to access information about an existing NetApp Snapshot.
///
/// ## NetApp Snapshot Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const test = azure.netapp.getSnapshot({
///     resourceGroupName: "acctestRG",
///     name: "acctestnetappsnapshot",
///     accountName: "acctestnetappaccount",
///     poolName: "acctestnetapppool",
///     volumeName: "acctestnetappvolume",
/// });
/// export const netappSnapshotId = example.id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// test = azure.netapp.get_snapshot(resource_group_name="acctestRG",
///     name="acctestnetappsnapshot",
///     account_name="acctestnetappaccount",
///     pool_name="acctestnetapppool",
///     volume_name="acctestnetappvolume")
/// pulumi.export("netappSnapshotId", example["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Azure.NetApp.GetSnapshot.Invoke(new()
///     {
///         ResourceGroupName = "acctestRG",
///         Name = "acctestnetappsnapshot",
///         AccountName = "acctestnetappaccount",
///         PoolName = "acctestnetapppool",
///         VolumeName = "acctestnetappvolume",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["netappSnapshotId"] = example.Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.LookupSnapshot(ctx, &netapp.LookupSnapshotArgs{
/// 			ResourceGroupName: "acctestRG",
/// 			Name:              "acctestnetappsnapshot",
/// 			AccountName:       "acctestnetappaccount",
/// 			PoolName:          "acctestnetapppool",
/// 			VolumeName:        "acctestnetappvolume",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("netappSnapshotId", example.Id)
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
/// import com.pulumi.azure.netapp.NetappFunctions;
/// import com.pulumi.azure.netapp.inputs.GetSnapshotArgs;
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
///         final var test = NetappFunctions.getSnapshot(GetSnapshotArgs.builder()
///             .resourceGroupName("acctestRG")
///             .name("acctestnetappsnapshot")
///             .accountName("acctestnetappaccount")
///             .poolName("acctestnetapppool")
///             .volumeName("acctestnetappvolume")
///             .build());
///
///         ctx.export("netappSnapshotId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: azure:netapp:getSnapshot
///       arguments:
///         resourceGroupName: acctestRG
///         name: acctestnetappsnapshot
///         accountName: acctestnetappaccount
///         poolName: acctestnetapppool
///         volumeName: acctestnetappvolume
/// outputs:
///   netappSnapshotId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2025-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_snapshot_get_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:netapp/getSnapshot:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}

/// Uses this data source to access information about an existing NetApp Snapshot Policy.
///
/// ## NetApp Snapshot Policy Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.netapp.getSnapshotPolicy({
///     resourceGroupName: "acctestRG",
///     accountName: "acctestnetappaccount",
///     name: "example-snapshot-policy",
/// });
/// export const id = example.then(example => example.id);
/// export const name = example.then(example => example.name);
/// export const enabled = example.then(example => example.enabled);
/// export const hourlySchedule = example.then(example => example.hourlySchedules);
/// export const dailySchedule = example.then(example => example.dailySchedules);
/// export const weeklySchedule = example.then(example => example.weeklySchedules);
/// export const monthlySchedule = example.then(example => example.monthlySchedules);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.netapp.get_snapshot_policy(resource_group_name="acctestRG",
///     account_name="acctestnetappaccount",
///     name="example-snapshot-policy")
/// pulumi.export("id", example.id)
/// pulumi.export("name", example.name)
/// pulumi.export("enabled", example.enabled)
/// pulumi.export("hourlySchedule", example.hourly_schedules)
/// pulumi.export("dailySchedule", example.daily_schedules)
/// pulumi.export("weeklySchedule", example.weekly_schedules)
/// pulumi.export("monthlySchedule", example.monthly_schedules)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.NetApp.GetSnapshotPolicy.Invoke(new()
///     {
///         ResourceGroupName = "acctestRG",
///         AccountName = "acctestnetappaccount",
///         Name = "example-snapshot-policy",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getSnapshotPolicyResult => getSnapshotPolicyResult.Id),
///         ["name"] = example.Apply(getSnapshotPolicyResult => getSnapshotPolicyResult.Name),
///         ["enabled"] = example.Apply(getSnapshotPolicyResult => getSnapshotPolicyResult.Enabled),
///         ["hourlySchedule"] = example.Apply(getSnapshotPolicyResult => getSnapshotPolicyResult.HourlySchedules),
///         ["dailySchedule"] = example.Apply(getSnapshotPolicyResult => getSnapshotPolicyResult.DailySchedules),
///         ["weeklySchedule"] = example.Apply(getSnapshotPolicyResult => getSnapshotPolicyResult.WeeklySchedules),
///         ["monthlySchedule"] = example.Apply(getSnapshotPolicyResult => getSnapshotPolicyResult.MonthlySchedules),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := netapp.LookupSnapshotPolicy(ctx, &netapp.LookupSnapshotPolicyArgs{
/// 			ResourceGroupName: "acctestRG",
/// 			AccountName:       "acctestnetappaccount",
/// 			Name:              "example-snapshot-policy",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		ctx.Export("name", example.Name)
/// 		ctx.Export("enabled", example.Enabled)
/// 		ctx.Export("hourlySchedule", example.HourlySchedules)
/// 		ctx.Export("dailySchedule", example.DailySchedules)
/// 		ctx.Export("weeklySchedule", example.WeeklySchedules)
/// 		ctx.Export("monthlySchedule", example.MonthlySchedules)
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
/// import com.pulumi.azure.netapp.NetappFunctions;
/// import com.pulumi.azure.netapp.inputs.GetSnapshotPolicyArgs;
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
///         final var example = NetappFunctions.getSnapshotPolicy(GetSnapshotPolicyArgs.builder()
///             .resourceGroupName("acctestRG")
///             .accountName("acctestnetappaccount")
///             .name("example-snapshot-policy")
///             .build());
///
///         ctx.export("id", example.id());
///         ctx.export("name", example.name());
///         ctx.export("enabled", example.enabled());
///         ctx.export("hourlySchedule", example.hourlySchedules());
///         ctx.export("dailySchedule", example.dailySchedules());
///         ctx.export("weeklySchedule", example.weeklySchedules());
///         ctx.export("monthlySchedule", example.monthlySchedules());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:netapp:getSnapshotPolicy
///       arguments:
///         resourceGroupName: acctestRG
///         accountName: acctestnetappaccount
///         name: example-snapshot-policy
/// outputs:
///   id: ${example.id}
///   name: ${example.name}
///   enabled: ${example.enabled}
///   hourlySchedule: ${example.hourlySchedules}
///   dailySchedule: ${example.dailySchedules}
///   weeklySchedule: ${example.weeklySchedules}
///   monthlySchedule: ${example.monthlySchedules}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2025-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_snapshot_policy_get_snapshot_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotPolicyResult> getSnapshotPolicy(
  GetSnapshotPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:netapp/getSnapshotPolicy:getSnapshotPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotPolicyResult.fromMap(result);
}

/// Uses this data source to access information about an existing NetApp Volume.
///
/// ## NetApp Volume Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.netapp.getVolume({
///     resourceGroupName: "acctestRG",
///     accountName: "acctestnetappaccount",
///     poolName: "acctestnetapppool",
///     name: "example-volume",
/// });
/// export const netappVolumeId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.netapp.get_volume(resource_group_name="acctestRG",
///     account_name="acctestnetappaccount",
///     pool_name="acctestnetapppool",
///     name="example-volume")
/// pulumi.export("netappVolumeId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.NetApp.GetVolume.Invoke(new()
///     {
///         ResourceGroupName = "acctestRG",
///         AccountName = "acctestnetappaccount",
///         PoolName = "acctestnetapppool",
///         Name = "example-volume",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["netappVolumeId"] = example.Apply(getVolumeResult => getVolumeResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := netapp.LookupVolume(ctx, &netapp.LookupVolumeArgs{
/// 			ResourceGroupName: "acctestRG",
/// 			AccountName:       "acctestnetappaccount",
/// 			PoolName:          "acctestnetapppool",
/// 			Name:              "example-volume",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("netappVolumeId", example.Id)
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
/// import com.pulumi.azure.netapp.NetappFunctions;
/// import com.pulumi.azure.netapp.inputs.GetVolumeArgs;
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
///         final var example = NetappFunctions.getVolume(GetVolumeArgs.builder()
///             .resourceGroupName("acctestRG")
///             .accountName("acctestnetappaccount")
///             .poolName("acctestnetapppool")
///             .name("example-volume")
///             .build());
///
///         ctx.export("netappVolumeId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:netapp:getVolume
///       arguments:
///         resourceGroupName: acctestRG
///         accountName: acctestnetappaccount
///         poolName: acctestnetapppool
///         name: example-volume
/// outputs:
///   netappVolumeId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2025-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_volume_get_volume_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeResult> getVolume(
  GetVolumeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:netapp/getVolume:getVolume',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeResult.fromMap(result);
}

/// Use this data source to access information about an existing Application Volume Group for Oracle application.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.netapp.getVolumeGroupOracle({
///     name: "existing application volume group name",
///     resourceGroupName: "resource group name where the account and volume group belong to",
///     accountName: "existing account where the application volume group belong to",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.netapp.get_volume_group_oracle(name="existing application volume group name",
///     resource_group_name="resource group name where the account and volume group belong to",
///     account_name="existing account where the application volume group belong to")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.NetApp.GetVolumeGroupOracle.Invoke(new()
///     {
///         Name = "existing application volume group name",
///         ResourceGroupName = "resource group name where the account and volume group belong to",
///         AccountName = "existing account where the application volume group belong to",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getVolumeGroupOracleResult => getVolumeGroupOracleResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := netapp.LookupVolumeGroupOracle(ctx, &netapp.LookupVolumeGroupOracleArgs{
/// 			Name:              "existing application volume group name",
/// 			ResourceGroupName: "resource group name where the account and volume group belong to",
/// 			AccountName:       "existing account where the application volume group belong to",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.netapp.NetappFunctions;
/// import com.pulumi.azure.netapp.inputs.GetVolumeGroupOracleArgs;
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
///         final var example = NetappFunctions.getVolumeGroupOracle(GetVolumeGroupOracleArgs.builder()
///             .name("existing application volume group name")
///             .resourceGroupName("resource group name where the account and volume group belong to")
///             .accountName("existing account where the application volume group belong to")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:netapp:getVolumeGroupOracle
///       arguments:
///         name: existing application volume group name
///         resourceGroupName: resource group name where the account and volume group belong to
///         accountName: existing account where the application volume group belong to
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2025-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_volume_group_oracle_get_volume_group_oracle_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeGroupOracleResult> getVolumeGroupOracle(
  GetVolumeGroupOracleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:netapp/getVolumeGroupOracle:getVolumeGroupOracle',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeGroupOracleResult.fromMap(result);
}

/// Use this data source to access information about an existing Application Volume Group for SAP HANA application.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.netapp.getVolumeGroupSapHana({
///     name: "existing application volume group name",
///     resourceGroupName: "resource group name where the account and volume group belong to",
///     accountName: "existing account where the application volume group belong to",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.netapp.get_volume_group_sap_hana(name="existing application volume group name",
///     resource_group_name="resource group name where the account and volume group belong to",
///     account_name="existing account where the application volume group belong to")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.NetApp.GetVolumeGroupSapHana.Invoke(new()
///     {
///         Name = "existing application volume group name",
///         ResourceGroupName = "resource group name where the account and volume group belong to",
///         AccountName = "existing account where the application volume group belong to",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getVolumeGroupSapHanaResult => getVolumeGroupSapHanaResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := netapp.LookupVolumeGroupSapHana(ctx, &netapp.LookupVolumeGroupSapHanaArgs{
/// 			Name:              "existing application volume group name",
/// 			ResourceGroupName: "resource group name where the account and volume group belong to",
/// 			AccountName:       "existing account where the application volume group belong to",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.netapp.NetappFunctions;
/// import com.pulumi.azure.netapp.inputs.GetVolumeGroupSapHanaArgs;
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
///         final var example = NetappFunctions.getVolumeGroupSapHana(GetVolumeGroupSapHanaArgs.builder()
///             .name("existing application volume group name")
///             .resourceGroupName("resource group name where the account and volume group belong to")
///             .accountName("existing account where the application volume group belong to")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:netapp:getVolumeGroupSapHana
///       arguments:
///         name: existing application volume group name
///         resourceGroupName: resource group name where the account and volume group belong to
///         accountName: existing account where the application volume group belong to
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2025-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_volume_group_sap_hana_get_volume_group_sap_hana_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeGroupSapHanaResult> getVolumeGroupSapHana(
  GetVolumeGroupSapHanaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:netapp/getVolumeGroupSapHana:getVolumeGroupSapHana',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeGroupSapHanaResult.fromMap(result);
}

/// Use this data source to access information about an existing Volume Quota Rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.netapp.getVolumeQuotaRule({
///     name: "exampleQuotaRule",
///     volumeId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1/volumes/vol1",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.netapp.get_volume_quota_rule(name="exampleQuotaRule",
///     volume_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1/volumes/vol1")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.NetApp.GetVolumeQuotaRule.Invoke(new()
///     {
///         Name = "exampleQuotaRule",
///         VolumeId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1/volumes/vol1",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getVolumeQuotaRuleResult => getVolumeQuotaRuleResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := netapp.LookupVolumeQuotaRule(ctx, &netapp.LookupVolumeQuotaRuleArgs{
/// 			Name:     "exampleQuotaRule",
/// 			VolumeId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1/volumes/vol1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.netapp.NetappFunctions;
/// import com.pulumi.azure.netapp.inputs.GetVolumeQuotaRuleArgs;
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
///         final var example = NetappFunctions.getVolumeQuotaRule(GetVolumeQuotaRuleArgs.builder()
///             .name("exampleQuotaRule")
///             .volumeId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1/volumes/vol1")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:netapp:getVolumeQuotaRule
///       arguments:
///         name: exampleQuotaRule
///         volumeId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1/volumes/vol1
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2025-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_volume_quota_rule_get_volume_quota_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeQuotaRuleResult> getVolumeQuotaRule(
  GetVolumeQuotaRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:netapp/getVolumeQuotaRule:getVolumeQuotaRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeQuotaRuleResult.fromMap(result);
}
