import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_batch_configuration_args.dart';
import 'integration_account_batch_configuration_release_criteria.dart';
import 'integration_account_batch_configuration_state.dart';

/// Manages a Logic App Integration Account Batch Configuration.
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
/// const exampleIntegrationAccount = new azure.logicapps.IntegrationAccount("example", {
///     name: "example-ia",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Standard",
/// });
/// const exampleIntegrationAccountBatchConfiguration = new azure.logicapps.IntegrationAccountBatchConfiguration("example", {
///     name: "exampleiabc",
///     resourceGroupName: example.name,
///     integrationAccountName: exampleIntegrationAccount.name,
///     batchGroupName: "TestBatchGroup",
///     releaseCriteria: {
///         messageCount: 80,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_integration_account = azure.logicapps.IntegrationAccount("example",
///     name="example-ia",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Standard")
/// example_integration_account_batch_configuration = azure.logicapps.IntegrationAccountBatchConfiguration("example",
///     name="exampleiabc",
///     resource_group_name=example.name,
///     integration_account_name=example_integration_account.name,
///     batch_group_name="TestBatchGroup",
///     release_criteria={
///         "message_count": 80,
///     })
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
///     var exampleIntegrationAccount = new Azure.LogicApps.IntegrationAccount("example", new()
///     {
///         Name = "example-ia",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Standard",
///     });
///
///     var exampleIntegrationAccountBatchConfiguration = new Azure.LogicApps.IntegrationAccountBatchConfiguration("example", new()
///     {
///         Name = "exampleiabc",
///         ResourceGroupName = example.Name,
///         IntegrationAccountName = exampleIntegrationAccount.Name,
///         BatchGroupName = "TestBatchGroup",
///         ReleaseCriteria = new Azure.LogicApps.Inputs.IntegrationAccountBatchConfigurationReleaseCriteriaArgs
///         {
///             MessageCount = 80,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/logicapps"
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
/// 		exampleIntegrationAccount, err := logicapps.NewIntegrationAccount(ctx, "example", &logicapps.IntegrationAccountArgs{
/// 			Name:              pulumi.String("example-ia"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logicapps.NewIntegrationAccountBatchConfiguration(ctx, "example", &logicapps.IntegrationAccountBatchConfigurationArgs{
/// 			Name:                   pulumi.String("exampleiabc"),
/// 			ResourceGroupName:      example.Name,
/// 			IntegrationAccountName: exampleIntegrationAccount.Name,
/// 			BatchGroupName:         pulumi.String("TestBatchGroup"),
/// 			ReleaseCriteria: &logicapps.IntegrationAccountBatchConfigurationReleaseCriteriaArgs{
/// 				MessageCount: pulumi.Int(80),
/// 			},
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
/// resource "azure_logicapps_integrationaccount" "example" {
///   name                = "example-ia"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Standard"
/// }
/// resource "azure_logicapps_integrationaccountbatchconfiguration" "example" {
///   name                     = "exampleiabc"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   integration_account_name = azure_logicapps_integrationaccount.example.name
///   batch_group_name         = "TestBatchGroup"
///   release_criteria = {
///     message_count = 80
///   }
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
/// import com.pulumi.azure.logicapps.IntegrationAccount;
/// import com.pulumi.azure.logicapps.IntegrationAccountArgs;
/// import com.pulumi.azure.logicapps.IntegrationAccountBatchConfiguration;
/// import com.pulumi.azure.logicapps.IntegrationAccountBatchConfigurationArgs;
/// import com.pulumi.azure.logicapps.inputs.IntegrationAccountBatchConfigurationReleaseCriteriaArgs;
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
///         var exampleIntegrationAccount = new IntegrationAccount("exampleIntegrationAccount", IntegrationAccountArgs.builder()
///             .name("example-ia")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Standard")
///             .build());
///
///         var exampleIntegrationAccountBatchConfiguration = new IntegrationAccountBatchConfiguration("exampleIntegrationAccountBatchConfiguration", IntegrationAccountBatchConfigurationArgs.builder()
///             .name("exampleiabc")
///             .resourceGroupName(example.name())
///             .integrationAccountName(exampleIntegrationAccount.name())
///             .batchGroupName("TestBatchGroup")
///             .releaseCriteria(IntegrationAccountBatchConfigurationReleaseCriteriaArgs.builder()
///                 .messageCount(80)
///                 .build())
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
///   exampleIntegrationAccount:
///     type: azure:logicapps:IntegrationAccount
///     name: example
///     properties:
///       name: example-ia
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Standard
///   exampleIntegrationAccountBatchConfiguration:
///     type: azure:logicapps:IntegrationAccountBatchConfiguration
///     name: example
///     properties:
///       name: exampleiabc
///       resourceGroupName: ${example.name}
///       integrationAccountName: ${exampleIntegrationAccount.name}
///       batchGroupName: TestBatchGroup
///       releaseCriteria:
///         messageCount: 80
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Logic` - 2019-05-01
///
/// ## Import
///
/// Logic App Integration Account Batch Configurations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:logicapps/integrationAccountBatchConfiguration:IntegrationAccountBatchConfiguration example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Logic/integrationAccounts/account1/batchConfigurations/batchConfiguration1
/// ```
class IntegrationAccountBatchConfiguration extends pulumi.CustomResource {
  /// The batch group name of the Logic App Integration Batch Configuration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> batchGroupName;
  /// The name of the Logic App Integration Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> integrationAccountName;
  /// A JSON mapping of any Metadata for this Logic App Integration Account Batch Configuration.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The name which should be used for this Logic App Integration Account Batch Configuration. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `releaseCriteria` block as documented below, which is used to select the criteria to meet before processing each batch.
  late final pulumi.Output<IntegrationAccountBatchConfigurationReleaseCriteria> releaseCriteria;
  /// The name of the Resource Group where the Logic App Integration Account Batch Configuration should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [IntegrationAccountBatchConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationAccountBatchConfiguration]. {@macro pulumi_logicapps_integration_account_batch_configuration_integration_account_batch_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationAccountBatchConfiguration(
    String name, {
    IntegrationAccountBatchConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/integrationAccountBatchConfiguration:IntegrationAccountBatchConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    batchGroupName = registerOutput<String>('batchGroupName');
    integrationAccountName = registerOutput<String>('integrationAccountName');
    metadata = registerOutput<Map<String, String>?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    releaseCriteria = registerOutput<IntegrationAccountBatchConfigurationReleaseCriteria>('releaseCriteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntegrationAccountBatchConfigurationReleaseCriteria.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [IntegrationAccountBatchConfiguration] resource's state with the given [name] and [id].
  static IntegrationAccountBatchConfiguration get(
    String name,
    pulumi.Input<String> id, {
    IntegrationAccountBatchConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return IntegrationAccountBatchConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  IntegrationAccountBatchConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/integrationAccountBatchConfiguration:IntegrationAccountBatchConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    batchGroupName = registerOutput<String>('batchGroupName');
    integrationAccountName = registerOutput<String>('integrationAccountName');
    metadata = registerOutput<Map<String, String>?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    releaseCriteria = registerOutput<IntegrationAccountBatchConfigurationReleaseCriteria>('releaseCriteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntegrationAccountBatchConfigurationReleaseCriteria.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Creates a typed reference to an existing [IntegrationAccountBatchConfiguration] resource.
  IntegrationAccountBatchConfiguration.reference(String urn)
    : super(
        'azure:logicapps/integrationAccountBatchConfiguration:IntegrationAccountBatchConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    batchGroupName = registerOutput<String>('batchGroupName');
    integrationAccountName = registerOutput<String>('integrationAccountName');
    metadata = registerOutput<Map<String, String>?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    releaseCriteria = registerOutput<IntegrationAccountBatchConfigurationReleaseCriteria>('releaseCriteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntegrationAccountBatchConfigurationReleaseCriteria.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
