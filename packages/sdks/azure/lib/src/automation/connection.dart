import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_state.dart';

/// Manages an Automation Connection.
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
/// const exampleConnection = new azure.automation.Connection("example", {
///     name: "connection-example",
///     resourceGroupName: exampleResourceGroup.name,
///     automationAccountName: exampleAccount.name,
///     type: "AzureServicePrincipal",
///     values: {
///         ApplicationId: "00000000-0000-0000-0000-000000000000",
///         TenantId: example.then(example => example.tenantId),
///         SubscriptionId: example.then(example => example.subscriptionId),
///         CertificateThumbprint: "sample-certificate-thumbprint",
///     },
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
/// example_connection = azure.automation.Connection("example",
///     name="connection-example",
///     resource_group_name=example_resource_group.name,
///     automation_account_name=example_account.name,
///     type="AzureServicePrincipal",
///     values={
///         "ApplicationId": "00000000-0000-0000-0000-000000000000",
///         "TenantId": example.tenant_id,
///         "SubscriptionId": example.subscription_id,
///         "CertificateThumbprint": "sample-certificate-thumbprint",
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
///     var exampleConnection = new Azure.Automation.Connection("example", new()
///     {
///         Name = "connection-example",
///         ResourceGroupName = exampleResourceGroup.Name,
///         AutomationAccountName = exampleAccount.Name,
///         Type = "AzureServicePrincipal",
///         Values =
///         {
///             { "ApplicationId", "00000000-0000-0000-0000-000000000000" },
///             { "TenantId", example.Apply(getClientConfigResult => getClientConfigResult.TenantId) },
///             { "SubscriptionId", example.Apply(getClientConfigResult => getClientConfigResult.SubscriptionId) },
///             { "CertificateThumbprint", "sample-certificate-thumbprint" },
///         },
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
/// 		_, err = automation.NewConnection(ctx, "example", &automation.ConnectionArgs{
/// 			Name:                  pulumi.String("connection-example"),
/// 			ResourceGroupName:     exampleResourceGroup.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 			Type:                  pulumi.String("AzureServicePrincipal"),
/// 			Values: pulumi.StringMap{
/// 				"ApplicationId":         pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 				"TenantId":              pulumi.String(example.TenantId),
/// 				"SubscriptionId":        pulumi.String(example.SubscriptionId),
/// 				"CertificateThumbprint": pulumi.String("sample-certificate-thumbprint"),
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
/// resource "azure_automation_connection" "example" {
///   name                    = "connection-example"
///   resource_group_name     = azure_core_resourcegroup.example.name
///   automation_account_name = azure_automation_account.example.name
///   type                    = "AzureServicePrincipal"
///   values = {
///     "ApplicationId"         = "00000000-0000-0000-0000-000000000000"
///     "TenantId"              = data.azure_core_getclientconfig.example.tenant_id
///     "SubscriptionId"        = data.azure_core_getclientconfig.example.subscription_id
///     "CertificateThumbprint" = "sample-certificate-thumbprint"
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.automation.Account;
/// import com.pulumi.azure.automation.AccountArgs;
/// import com.pulumi.azure.automation.Connection;
/// import com.pulumi.azure.automation.ConnectionArgs;
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
///         var exampleConnection = new Connection("exampleConnection", ConnectionArgs.builder()
///             .name("connection-example")
///             .resourceGroupName(exampleResourceGroup.name())
///             .automationAccountName(exampleAccount.name())
///             .type("AzureServicePrincipal")
///             .values(Map.ofEntries(
///                 Map.entry("ApplicationId", "00000000-0000-0000-0000-000000000000"),
///                 Map.entry("TenantId", example.tenantId()),
///                 Map.entry("SubscriptionId", example.subscriptionId()),
///                 Map.entry("CertificateThumbprint", "sample-certificate-thumbprint")
///             ))
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
///   exampleConnection:
///     type: azure:automation:Connection
///     name: example
///     properties:
///       name: connection-example
///       resourceGroupName: ${exampleResourceGroup.name}
///       automationAccountName: ${exampleAccount.name}
///       type: AzureServicePrincipal
///       values:
///         ApplicationId: 00000000-0000-0000-0000-000000000000
///         TenantId: ${example.tenantId}
///         SubscriptionId: ${example.subscriptionId}
///         CertificateThumbprint: sample-certificate-thumbprint
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
/// $ pulumi import azure:automation/connection:Connection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/connections/conn1
/// ```
class Connection extends pulumi.CustomResource {
  /// The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> automationAccountName;
  /// A description for this Connection.
  late final pulumi.Output<String?> description;
  /// Specifies the name of the Connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The type of the Connection - can be either builtin type such as `Azure`, `AzureClassicCertificate`, and `AzureServicePrincipal`, or a user defined types. Changing this forces a new resource to be created.
  late final pulumi.Output<String> type;
  /// A mapping of key value pairs passed to the connection. Different `type` needs different parameters in the `values`. Builtin types have required field values as below:
  ///
  /// * `Azure`: parameters `AutomationCertificateName` and `SubscriptionID`.
  ///
  /// * `AzureClassicCertificate`: parameters `SubscriptionName`, `SubscriptionId` and `CertificateAssetName`.
  ///
  /// * `AzureServicePrincipal`: parameters `ApplicationId`, `CertificateThumbprint`, `SubscriptionId` and `TenantId`.
  late final pulumi.Output<Map<String, String>> values;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_automation_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/connection:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    type = registerOutput<String>('type');
    values = registerOutput<Map<String, String>>('values');
  }

  /// Gets an existing [Connection] resource's state with the given [name] and [id].
  static Connection get(
    String name,
    pulumi.Input<String> id, {
    ConnectionState? state,
  }) {
    return Connection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Connection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/connection:Connection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    type = registerOutput<String>('type');
    values = registerOutput<Map<String, String>>('values');
  }
}
