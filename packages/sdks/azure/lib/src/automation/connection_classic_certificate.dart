import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_classic_certificate_args.dart';
import 'connection_classic_certificate_state.dart';

/// Manages an Automation Connection with type `AzureClassicCertificate`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "resourceGroup-example",
///     location: "West Europe",
/// });
/// const example = azure.core.getClientConfig({});
/// const exampleAccount = new azure.automation.Account("example", {
///     name: "account-example",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     skuName: "Basic",
/// });
/// const exampleConnectionClassicCertificate = new azure.automation.ConnectionClassicCertificate("example", {
///     name: "connection-example",
///     resourceGroupName: exampleResourceGroup.name,
///     automationAccountName: exampleAccount.name,
///     certificateAssetName: "cert1",
///     subscriptionName: "subs1",
///     subscriptionId: example.then(example => example.subscriptionId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="resourceGroup-example",
///     location="West Europe")
/// example = azure.core.get_client_config()
/// example_account = azure.automation.Account("example",
///     name="account-example",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     sku_name="Basic")
/// example_connection_classic_certificate = azure.automation.ConnectionClassicCertificate("example",
///     name="connection-example",
///     resource_group_name=example_resource_group.name,
///     automation_account_name=example_account.name,
///     certificate_asset_name="cert1",
///     subscription_name="subs1",
///     subscription_id=example.subscription_id)
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
///         Name = "resourceGroup-example",
///         Location = "West Europe",
///     });
///
///     var example = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleAccount = new Azure.Automation.Account("example", new()
///     {
///         Name = "account-example",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         SkuName = "Basic",
///     });
///
///     var exampleConnectionClassicCertificate = new Azure.Automation.ConnectionClassicCertificate("example", new()
///     {
///         Name = "connection-example",
///         ResourceGroupName = exampleResourceGroup.Name,
///         AutomationAccountName = exampleAccount.Name,
///         CertificateAssetName = "cert1",
///         SubscriptionName = "subs1",
///         SubscriptionId = example.Apply(getClientConfigResult => getClientConfigResult.SubscriptionId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/automation"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("resourceGroup-example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := automation.NewAccount(ctx, "example", &automation.AccountArgs{
/// 			Name:              pulumi.String("account-example"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			SkuName:           pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = automation.NewConnectionClassicCertificate(ctx, "example", &automation.ConnectionClassicCertificateArgs{
/// 			Name:                  pulumi.String("connection-example"),
/// 			ResourceGroupName:     exampleResourceGroup.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 			CertificateAssetName:  pulumi.String("cert1"),
/// 			SubscriptionName:      pulumi.String("subs1"),
/// 			SubscriptionId:        pulumi.String(example.SubscriptionId),
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
/// data "azure_core_getclientconfig" "example" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "resourceGroup-example"
///   location = "West Europe"
/// }
/// resource "azure_automation_account" "example" {
///   name                = "account-example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Basic"
/// }
/// resource "azure_automation_connectionclassiccertificate" "example" {
///   name                    = "connection-example"
///   resource_group_name     = azure_core_resourcegroup.example.name
///   automation_account_name = azure_automation_account.example.name
///   certificate_asset_name  = "cert1"
///   subscription_name       = "subs1"
///   subscription_id         = data.azure_core_getclientconfig.example.subscription_id
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.automation.Account;
/// import com.pulumi.azure.automation.AccountArgs;
/// import com.pulumi.azure.automation.ConnectionClassicCertificate;
/// import com.pulumi.azure.automation.ConnectionClassicCertificateArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("resourceGroup-example")
///             .location("West Europe")
///             .build());
///
///         final var example = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("account-example")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .skuName("Basic")
///             .build());
///
///         var exampleConnectionClassicCertificate = new ConnectionClassicCertificate("exampleConnectionClassicCertificate", ConnectionClassicCertificateArgs.builder()
///             .name("connection-example")
///             .resourceGroupName(exampleResourceGroup.name())
///             .automationAccountName(exampleAccount.name())
///             .certificateAssetName("cert1")
///             .subscriptionName("subs1")
///             .subscriptionId(example.subscriptionId())
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
///       name: resourceGroup-example
///       location: West Europe
///   exampleAccount:
///     type: azure:automation:Account
///     name: example
///     properties:
///       name: account-example
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       skuName: Basic
///   exampleConnectionClassicCertificate:
///     type: azure:automation:ConnectionClassicCertificate
///     name: example
///     properties:
///       name: connection-example
///       resourceGroupName: ${exampleResourceGroup.name}
///       automationAccountName: ${exampleAccount.name}
///       certificateAssetName: cert1
///       subscriptionName: subs1
///       subscriptionId: ${example.subscriptionId}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Automation` - 2024-10-23
///
/// ## Import
///
/// Automation Connection can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/connectionClassicCertificate:ConnectionClassicCertificate conn1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/connections/conn1
/// ```
class ConnectionClassicCertificate extends pulumi.CustomResource {
  /// The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> automationAccountName;
  /// The name of the certificate asset.
  late final pulumi.Output<String> certificateAssetName;
  /// A description for this Connection.
  late final pulumi.Output<String?> description;
  /// Specifies the name of the Connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The id of subscription.
  late final pulumi.Output<String> subscriptionId;
  /// The name of subscription.
  late final pulumi.Output<String> subscriptionName;

  /// Creates a new [ConnectionClassicCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionClassicCertificate]. {@macro pulumi_automation_connection_classic_certificate_connection_classic_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionClassicCertificate(
    String name, {
    ConnectionClassicCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/connectionClassicCertificate:ConnectionClassicCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    certificateAssetName = registerOutput<String>('certificateAssetName');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subscriptionId = registerOutput<String>('subscriptionId');
    subscriptionName = registerOutput<String>('subscriptionName');
  }

  /// Gets an existing [ConnectionClassicCertificate] resource's state with the given [name] and [id].
  static ConnectionClassicCertificate get(
    String name,
    pulumi.Input<String> id, {
    ConnectionClassicCertificateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ConnectionClassicCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ConnectionClassicCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/connectionClassicCertificate:ConnectionClassicCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    certificateAssetName = registerOutput<String>('certificateAssetName');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subscriptionId = registerOutput<String>('subscriptionId');
    subscriptionName = registerOutput<String>('subscriptionName');
  }

  /// Creates a typed reference to an existing [ConnectionClassicCertificate] resource.
  ConnectionClassicCertificate.reference(String urn)
    : super(
        'azure:automation/connectionClassicCertificate:ConnectionClassicCertificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    certificateAssetName = registerOutput<String>('certificateAssetName');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subscriptionId = registerOutput<String>('subscriptionId');
    subscriptionName = registerOutput<String>('subscriptionName');
  }
}
