import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_fileshare_args.dart';
import 'get_policy_fileshare_result.dart';
import 'get_policy_vmargs.dart';
import 'get_policy_vmresult.dart';

/// Use this data source to access information about an existing File Share Backup Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const policy = azure.backup.getPolicyFileshare({
///     name: "policy",
///     recoveryVaultName: "recovery_vault",
///     resourceGroupName: "resource_group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// policy = azure.backup.get_policy_fileshare(name="policy",
///     recovery_vault_name="recovery_vault",
///     resource_group_name="resource_group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Azure.Backup.GetPolicyFileshare.Invoke(new()
///     {
///         Name = "policy",
///         RecoveryVaultName = "recovery_vault",
///         ResourceGroupName = "resource_group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/backup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backup.GetPolicyFileshare(ctx, &backup.GetPolicyFileshareArgs{
/// 			Name:              "policy",
/// 			RecoveryVaultName: "recovery_vault",
/// 			ResourceGroupName: "resource_group",
/// 		}, nil)
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
/// import com.pulumi.azure.backup.BackupFunctions;
/// import com.pulumi.azure.backup.inputs.GetPolicyFileshareArgs;
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
///         final var policy = BackupFunctions.getPolicyFileshare(GetPolicyFileshareArgs.builder()
///             .name("policy")
///             .recoveryVaultName("recovery_vault")
///             .resourceGroupName("resource_group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: azure:backup:getPolicyFileshare
///       arguments:
///         name: policy
///         recoveryVaultName: recovery_vault
///         resourceGroupName: resource_group
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_backup_get_policy_fileshare_get_policy_fileshare_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyFileshareResult> getPolicyFileshare(
  GetPolicyFileshareArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:backup/getPolicyFileshare:getPolicyFileshare',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyFileshareResult.fromMap(result);
}

/// Use this data source to access information about an existing VM Backup Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const policy = azure.backup.getPolicyVM({
///     name: "policy",
///     recoveryVaultName: "recovery_vault",
///     resourceGroupName: "resource_group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// policy = azure.backup.get_policy_vm(name="policy",
///     recovery_vault_name="recovery_vault",
///     resource_group_name="resource_group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Azure.Backup.GetPolicyVM.Invoke(new()
///     {
///         Name = "policy",
///         RecoveryVaultName = "recovery_vault",
///         ResourceGroupName = "resource_group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/backup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backup.LookupPolicyVM(ctx, &backup.LookupPolicyVMArgs{
/// 			Name:              "policy",
/// 			RecoveryVaultName: "recovery_vault",
/// 			ResourceGroupName: "resource_group",
/// 		}, nil)
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
/// import com.pulumi.azure.backup.BackupFunctions;
/// import com.pulumi.azure.backup.inputs.GetPolicyVMArgs;
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
///         final var policy = BackupFunctions.getPolicyVM(GetPolicyVMArgs.builder()
///             .name("policy")
///             .recoveryVaultName("recovery_vault")
///             .resourceGroupName("resource_group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: azure:backup:getPolicyVM
///       arguments:
///         name: policy
///         recoveryVaultName: recovery_vault
///         resourceGroupName: resource_group
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_backup_get_policy_vm_get_policy_vmargs_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyVMResult> getPolicyVM(
  GetPolicyVMArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:backup/getPolicyVM:getPolicyVM',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyVMResult.fromMap(result);
}
