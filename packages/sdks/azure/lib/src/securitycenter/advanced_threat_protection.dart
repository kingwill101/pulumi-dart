import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_threat_protection_args.dart';
import 'advanced_threat_protection_state.dart';

/// Manages a resources Advanced Threat Protection setting.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "atp-example",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestorage",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     tags: {
///         environment: "example",
///     },
/// });
/// const exampleAdvancedThreatProtection = new azure.securitycenter.AdvancedThreatProtection("example", {
///     targetResourceId: exampleAccount.id,
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="atp-example",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplestorage",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     tags={
///         "environment": "example",
///     })
/// example_advanced_threat_protection = azure.securitycenter.AdvancedThreatProtection("example",
///     target_resource_id=example_account.id,
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
///         Name = "atp-example",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorage",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         Tags =
///         {
///             { "environment", "example" },
///         },
///     });
///
///     var exampleAdvancedThreatProtection = new Azure.SecurityCenter.AdvancedThreatProtection("example", new()
///     {
///         TargetResourceId = exampleAccount.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/securitycenter"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("atp-example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorage"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securitycenter.NewAdvancedThreatProtection(ctx, "example", &securitycenter.AdvancedThreatProtectionArgs{
/// 			TargetResourceId: exampleAccount.ID(),
/// 			Enabled:          pulumi.Bool(true),
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
/// import com.pulumi.azure.securitycenter.AdvancedThreatProtection;
/// import com.pulumi.azure.securitycenter.AdvancedThreatProtectionArgs;
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
///             .name("atp-example")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorage")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .tags(Map.of("environment", "example"))
///             .build());
///
///         var exampleAdvancedThreatProtection = new AdvancedThreatProtection("exampleAdvancedThreatProtection", AdvancedThreatProtectionArgs.builder()
///             .targetResourceId(exampleAccount.id())
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
///       name: atp-example
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorage
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       tags:
///         environment: example
///   exampleAdvancedThreatProtection:
///     type: azure:securitycenter:AdvancedThreatProtection
///     name: example
///     properties:
///       targetResourceId: ${exampleAccount.id}
///       enabled: true
/// ```
///
///
/// ## Import
///
/// Advanced Threat Protection can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:securitycenter/advancedThreatProtection:AdvancedThreatProtection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/exampleResourceGroup/providers/Microsoft.Storage/storageAccounts/exampleaccount/providers/Microsoft.Security/advancedThreatProtectionSettings/default
/// ```
class AdvancedThreatProtection extends pulumi.CustomResource {
  /// Should Advanced Threat Protection be enabled on this resource?
  late final pulumi.Output<bool> enabled;
  /// The ID of the Azure Resource which to enable Advanced Threat Protection on. Changing this forces a new resource to be created.
  late final pulumi.Output<String> targetResourceId;

  /// Creates a new [AdvancedThreatProtection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AdvancedThreatProtection]. {@macro pulumi_securitycenter_advanced_threat_protection_advanced_threat_protection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AdvancedThreatProtection(
    String name, {
    AdvancedThreatProtectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:securitycenter/advancedThreatProtection:AdvancedThreatProtection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabled = registerOutput<bool>('enabled');
    targetResourceId = registerOutput<String>('targetResourceId');
  }

  /// Gets an existing [AdvancedThreatProtection] resource's state with the given [name] and [id].
  static AdvancedThreatProtection get(
    String name,
    pulumi.Input<String> id, {
    AdvancedThreatProtectionState? state,
  }) {
    return AdvancedThreatProtection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AdvancedThreatProtection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:securitycenter/advancedThreatProtection:AdvancedThreatProtection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabled = registerOutput<bool>('enabled');
    targetResourceId = registerOutput<String>('targetResourceId');
  }
}
