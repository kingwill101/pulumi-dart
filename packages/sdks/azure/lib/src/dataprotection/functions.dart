import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_vault_args.dart';
import 'get_backup_vault_result.dart';

/// Use this data source to access information about an existing Backup Vault.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.dataprotection.getBackupVault({
///     name: "existing-backup-vault",
///     resourceGroupName: "existing-resource-group",
/// });
/// export const azurermDataProtectionBackupVaultId = exampleAzurermVpnGateway.id;
/// export const azurermDataProtectionBackupVaultPrincipalId = example.then(example => example.identities?.[0]?.principalId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.dataprotection.get_backup_vault(name="existing-backup-vault",
///     resource_group_name="existing-resource-group")
/// pulumi.export("azurermDataProtectionBackupVaultId", example_azurerm_vpn_gateway["id"])
/// pulumi.export("azurermDataProtectionBackupVaultPrincipalId", example.identities[0].principal_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.DataProtection.GetBackupVault.Invoke(new()
///     {
///         Name = "existing-backup-vault",
///         ResourceGroupName = "existing-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["azurermDataProtectionBackupVaultId"] = exampleAzurermVpnGateway.Id,
///         ["azurermDataProtectionBackupVaultPrincipalId"] = example.Apply(getBackupVaultResult => getBackupVaultResult.Identities[0]?.PrincipalId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dataprotection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dataprotection.LookupBackupVault(ctx, &dataprotection.LookupBackupVaultArgs{
/// 			Name:              "existing-backup-vault",
/// 			ResourceGroupName: "existing-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("azurermDataProtectionBackupVaultId", pulumi.Any(exampleAzurermVpnGateway.Id))
/// 		ctx.Export("azurermDataProtectionBackupVaultPrincipalId", example.Identities[0].PrincipalId)
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
/// data "azure_dataprotection_getbackupvault" "example" {
///   name                = "existing-backup-vault"
///   resource_group_name = "existing-resource-group"
/// }
///
/// output "azurermDataProtectionBackupVaultId" {
///   value = exampleAzurermVpnGateway.id
/// }
/// output "azurermDataProtectionBackupVaultPrincipalId" {
///   value = data.azure_dataprotection_getbackupvault.example.identities[0].principal_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.dataprotection.DataprotectionFunctions;
/// import com.pulumi.azure.dataprotection.inputs.GetBackupVaultArgs;
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
///         final var example = DataprotectionFunctions.getBackupVault(GetBackupVaultArgs.builder()
///             .name("existing-backup-vault")
///             .resourceGroupName("existing-resource-group")
///             .build());
///
///         ctx.export("azurermDataProtectionBackupVaultId", exampleAzurermVpnGateway.id());
///         ctx.export("azurermDataProtectionBackupVaultPrincipalId", example.identities()[0].principalId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:dataprotection:getBackupVault
///       arguments:
///         name: existing-backup-vault
///         resourceGroupName: existing-resource-group
/// outputs:
///   azurermDataProtectionBackupVaultId: ${exampleAzurermVpnGateway.id}
///   azurermDataProtectionBackupVaultPrincipalId: ${example.identities[0].principalId}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.DataProtection` - 2025-07-01
/// [args] Arguments passed to this invoke. {@macro pulumi_dataprotection_get_backup_vault_get_backup_vault_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupVaultResult> getBackupVault(
  GetBackupVaultArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:dataprotection/getBackupVault:getBackupVault',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupVaultResult.fromMap(result);
}
