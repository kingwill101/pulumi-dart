import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_fabric_args.dart';
import 'get_fabric_result.dart';
import 'get_protection_container_args.dart';
import 'get_protection_container_result.dart';
import 'get_replication_policy_args.dart';
import 'get_replication_policy_result.dart';
import 'get_replication_recovery_plan_args.dart';
import 'get_replication_recovery_plan_result.dart';

/// Use this data source to access information about an existing Site Recovery Replication Fabric.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const fabric = azure.siterecovery.getFabric({
///     name: "primary-fabric",
///     recoveryVaultName: "tfex-recovery_vault",
///     resourceGroupName: "tfex-resource_group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// fabric = azure.siterecovery.get_fabric(name="primary-fabric",
///     recovery_vault_name="tfex-recovery_vault",
///     resource_group_name="tfex-resource_group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fabric = Azure.SiteRecovery.GetFabric.Invoke(new()
///     {
///         Name = "primary-fabric",
///         RecoveryVaultName = "tfex-recovery_vault",
///         ResourceGroupName = "tfex-resource_group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/siterecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := siterecovery.LookupFabric(ctx, &siterecovery.LookupFabricArgs{
/// 			Name:              "primary-fabric",
/// 			RecoveryVaultName: "tfex-recovery_vault",
/// 			ResourceGroupName: "tfex-resource_group",
/// 		}, nil)
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
/// data "azure_siterecovery_getfabric" "fabric" {
///   name                = "primary-fabric"
///   recovery_vault_name = "tfex-recovery_vault"
///   resource_group_name = "tfex-resource_group"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.siterecovery.SiterecoveryFunctions;
/// import com.pulumi.azure.siterecovery.inputs.GetFabricArgs;
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
///         final var fabric = SiterecoveryFunctions.getFabric(GetFabricArgs.builder()
///             .name("primary-fabric")
///             .recoveryVaultName("tfex-recovery_vault")
///             .resourceGroupName("tfex-resource_group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   fabric:
///     fn::invoke:
///       function: azure:siterecovery:getFabric
///       arguments:
///         name: primary-fabric
///         recoveryVaultName: tfex-recovery_vault
///         resourceGroupName: tfex-resource_group
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.RecoveryServices` - 2024-04-01
/// [args] Arguments passed to this invoke. {@macro pulumi_siterecovery_get_fabric_get_fabric_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFabricResult> getFabric(
  GetFabricArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:siterecovery/getFabric:getFabric',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFabricResult.fromMap(result);
}

pulumi.Output<GetFabricResult> getFabricOutput(
  GetFabricArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:siterecovery/getFabric:getFabric',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFabricResult.fromMap);
}

/// Use this data source to access information about an existing site recovery services protection container.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const container = azure.siterecovery.getProtectionContainer({
///     name: "primary-container",
///     recoveryVaultName: "tfex-recovery_vault",
///     resourceGroupName: "tfex-resource_group",
///     recoveryFabricName: "primary-fabric",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// container = azure.siterecovery.get_protection_container(name="primary-container",
///     recovery_vault_name="tfex-recovery_vault",
///     resource_group_name="tfex-resource_group",
///     recovery_fabric_name="primary-fabric")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var container = Azure.SiteRecovery.GetProtectionContainer.Invoke(new()
///     {
///         Name = "primary-container",
///         RecoveryVaultName = "tfex-recovery_vault",
///         ResourceGroupName = "tfex-resource_group",
///         RecoveryFabricName = "primary-fabric",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/siterecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := siterecovery.LookupProtectionContainer(ctx, &siterecovery.LookupProtectionContainerArgs{
/// 			Name:               "primary-container",
/// 			RecoveryVaultName:  "tfex-recovery_vault",
/// 			ResourceGroupName:  "tfex-resource_group",
/// 			RecoveryFabricName: "primary-fabric",
/// 		}, nil)
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
/// data "azure_siterecovery_getprotectioncontainer" "container" {
///   name                 = "primary-container"
///   recovery_vault_name  = "tfex-recovery_vault"
///   resource_group_name  = "tfex-resource_group"
///   recovery_fabric_name = "primary-fabric"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.siterecovery.SiterecoveryFunctions;
/// import com.pulumi.azure.siterecovery.inputs.GetProtectionContainerArgs;
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
///         final var container = SiterecoveryFunctions.getProtectionContainer(GetProtectionContainerArgs.builder()
///             .name("primary-container")
///             .recoveryVaultName("tfex-recovery_vault")
///             .resourceGroupName("tfex-resource_group")
///             .recoveryFabricName("primary-fabric")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   container:
///     fn::invoke:
///       function: azure:siterecovery:getProtectionContainer
///       arguments:
///         name: primary-container
///         recoveryVaultName: tfex-recovery_vault
///         resourceGroupName: tfex-resource_group
///         recoveryFabricName: primary-fabric
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.RecoveryServices` - 2024-04-01
/// [args] Arguments passed to this invoke. {@macro pulumi_siterecovery_get_protection_container_get_protection_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProtectionContainerResult> getProtectionContainer(
  GetProtectionContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:siterecovery/getProtectionContainer:getProtectionContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProtectionContainerResult.fromMap(result);
}

pulumi.Output<GetProtectionContainerResult> getProtectionContainerOutput(
  GetProtectionContainerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:siterecovery/getProtectionContainer:getProtectionContainer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProtectionContainerResult.fromMap);
}

/// Use this data source to access information about an existing Azure Site Recovery replication policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const policy = azure.siterecovery.getReplicationPolicy({
///     name: "replication-policy",
///     recoveryVaultName: "tfex-recovery_vault",
///     resourceGroupName: "tfex-resource_group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// policy = azure.siterecovery.get_replication_policy(name="replication-policy",
///     recovery_vault_name="tfex-recovery_vault",
///     resource_group_name="tfex-resource_group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Azure.SiteRecovery.GetReplicationPolicy.Invoke(new()
///     {
///         Name = "replication-policy",
///         RecoveryVaultName = "tfex-recovery_vault",
///         ResourceGroupName = "tfex-resource_group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/siterecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := siterecovery.LookupReplicationPolicy(ctx, &siterecovery.LookupReplicationPolicyArgs{
/// 			Name:              "replication-policy",
/// 			RecoveryVaultName: "tfex-recovery_vault",
/// 			ResourceGroupName: "tfex-resource_group",
/// 		}, nil)
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
/// data "azure_siterecovery_getreplicationpolicy" "policy" {
///   name                = "replication-policy"
///   recovery_vault_name = "tfex-recovery_vault"
///   resource_group_name = "tfex-resource_group"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.siterecovery.SiterecoveryFunctions;
/// import com.pulumi.azure.siterecovery.inputs.GetReplicationPolicyArgs;
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
///         final var policy = SiterecoveryFunctions.getReplicationPolicy(GetReplicationPolicyArgs.builder()
///             .name("replication-policy")
///             .recoveryVaultName("tfex-recovery_vault")
///             .resourceGroupName("tfex-resource_group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: azure:siterecovery:getReplicationPolicy
///       arguments:
///         name: replication-policy
///         recoveryVaultName: tfex-recovery_vault
///         resourceGroupName: tfex-resource_group
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.RecoveryServices` - 2024-04-01
/// [args] Arguments passed to this invoke. {@macro pulumi_siterecovery_get_replication_policy_get_replication_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationPolicyResult> getReplicationPolicy(
  GetReplicationPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:siterecovery/getReplicationPolicy:getReplicationPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationPolicyResult.fromMap(result);
}

pulumi.Output<GetReplicationPolicyResult> getReplicationPolicyOutput(
  GetReplicationPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:siterecovery/getReplicationPolicy:getReplicationPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReplicationPolicyResult.fromMap);
}

/// Get information about an Azure Site Recovery Plan within a Recovery Services vault. A recovery plan gathers machines into recovery groups for the purpose of failover.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const vault = azure.recoveryservices.getVault({
///     name: "tfex-recovery_vault",
///     resourceGroupName: "tfex-resource_group",
/// });
/// const example = vault.then(vault => azure.siterecovery.getReplicationRecoveryPlan({
///     name: "example-recovery-plan",
///     recoveryVaultId: vault.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// vault = azure.recoveryservices.get_vault(name="tfex-recovery_vault",
///     resource_group_name="tfex-resource_group")
/// example = azure.siterecovery.get_replication_recovery_plan(name="example-recovery-plan",
///     recovery_vault_id=vault.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vault = Azure.RecoveryServices.GetVault.Invoke(new()
///     {
///         Name = "tfex-recovery_vault",
///         ResourceGroupName = "tfex-resource_group",
///     });
///
///     var example = Azure.SiteRecovery.GetReplicationRecoveryPlan.Invoke(new()
///     {
///         Name = "example-recovery-plan",
///         RecoveryVaultId = vault.Apply(getVaultResult => getVaultResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/recoveryservices"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/siterecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		vault, err := recoveryservices.LookupVault(ctx, &recoveryservices.LookupVaultArgs{
/// 			Name:              "tfex-recovery_vault",
/// 			ResourceGroupName: "tfex-resource_group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = siterecovery.LookupReplicationRecoveryPlan(ctx, &siterecovery.LookupReplicationRecoveryPlanArgs{
/// 			Name:            "example-recovery-plan",
/// 			RecoveryVaultId: vault.Id,
/// 		}, nil)
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
/// data "azure_recoveryservices_getvault" "vault" {
///   name                = "tfex-recovery_vault"
///   resource_group_name = "tfex-resource_group"
/// }
/// data "azure_siterecovery_getreplicationrecoveryplan" "example" {
///   name              = "example-recovery-plan"
///   recovery_vault_id = data.azure_recoveryservices_getvault.vault.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.recoveryservices.RecoveryservicesFunctions;
/// import com.pulumi.azure.recoveryservices.inputs.GetVaultArgs;
/// import com.pulumi.azure.siterecovery.SiterecoveryFunctions;
/// import com.pulumi.azure.siterecovery.inputs.GetReplicationRecoveryPlanArgs;
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
///         final var vault = RecoveryservicesFunctions.getVault(GetVaultArgs.builder()
///             .name("tfex-recovery_vault")
///             .resourceGroupName("tfex-resource_group")
///             .build());
///
///         final var example = SiterecoveryFunctions.getReplicationRecoveryPlan(GetReplicationRecoveryPlanArgs.builder()
///             .name("example-recovery-plan")
///             .recoveryVaultId(vault.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   vault:
///     fn::invoke:
///       function: azure:recoveryservices:getVault
///       arguments:
///         name: tfex-recovery_vault
///         resourceGroupName: tfex-resource_group
///   example:
///     fn::invoke:
///       function: azure:siterecovery:getReplicationRecoveryPlan
///       arguments:
///         name: example-recovery-plan
///         recoveryVaultId: ${vault.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.RecoveryServices` - 2024-04-01
/// [args] Arguments passed to this invoke. {@macro pulumi_siterecovery_get_replication_recovery_plan_get_replication_recovery_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationRecoveryPlanResult> getReplicationRecoveryPlan(
  GetReplicationRecoveryPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:siterecovery/getReplicationRecoveryPlan:getReplicationRecoveryPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationRecoveryPlanResult.fromMap(result);
}

pulumi.Output<GetReplicationRecoveryPlanResult> getReplicationRecoveryPlanOutput(
  GetReplicationRecoveryPlanArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:siterecovery/getReplicationRecoveryPlan:getReplicationRecoveryPlan',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReplicationRecoveryPlanResult.fromMap);
}
