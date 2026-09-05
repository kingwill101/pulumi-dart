import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_service_principal_args.dart';
import 'connection_service_principal_state.dart';

/// Manages an Automation Connection with type `AzureServicePrincipal`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
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
/// const exampleConnectionServicePrincipal = new azure.automation.ConnectionServicePrincipal("example", {
///     name: "connection-example",
///     resourceGroupName: exampleResourceGroup.name,
///     automationAccountName: exampleAccount.name,
///     applicationId: "00000000-0000-0000-0000-000000000000",
///     tenantId: example.then(example => example.tenantId),
///     subscriptionId: example.then(example => example.subscriptionId),
///     certificateThumbprint: std.file({
///         input: "automation_certificate_test.thumb",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
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
/// example_connection_service_principal = azure.automation.ConnectionServicePrincipal("example",
///     name="connection-example",
///     resource_group_name=example_resource_group.name,
///     automation_account_name=example_account.name,
///     application_id="00000000-0000-0000-0000-000000000000",
///     tenant_id=example.tenant_id,
///     subscription_id=example.subscription_id,
///     certificate_thumbprint=std.file(input="automation_certificate_test.thumb").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
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
///     var exampleConnectionServicePrincipal = new Azure.Automation.ConnectionServicePrincipal("example", new()
///     {
///         Name = "connection-example",
///         ResourceGroupName = exampleResourceGroup.Name,
///         AutomationAccountName = exampleAccount.Name,
///         ApplicationId = "00000000-0000-0000-0000-000000000000",
///         TenantId = example.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SubscriptionId = example.Apply(getClientConfigResult => getClientConfigResult.SubscriptionId),
///         CertificateThumbprint = Std.File.Invoke(new()
///         {
///             Input = "automation_certificate_test.thumb",
///         }).Apply(invoke => invoke.Result),
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "automation_certificate_test.thumb",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = automation.NewConnectionServicePrincipal(ctx, "example", &automation.ConnectionServicePrincipalArgs{
/// 			Name:                  pulumi.String("connection-example"),
/// 			ResourceGroupName:     exampleResourceGroup.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 			ApplicationId:         pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			TenantId:              pulumi.String(example.TenantId),
/// 			SubscriptionId:        pulumi.String(example.SubscriptionId),
/// 			CertificateThumbprint: pulumi.String(invokeFile.Result),
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
///     std = {
///       source = "pulumi/std"
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
/// resource "azure_automation_connectionserviceprincipal" "example" {
///   name                    = "connection-example"
///   resource_group_name     = azure_core_resourcegroup.example.name
///   automation_account_name = azure_automation_account.example.name
///   application_id          = "00000000-0000-0000-0000-000000000000"
///   tenant_id               = data.azure_core_getclientconfig.example.tenant_id
///   subscription_id         = data.azure_core_getclientconfig.example.subscription_id
///   certificate_thumbprint  = file("automation_certificate_test.thumb")
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
/// import com.pulumi.azure.automation.ConnectionServicePrincipal;
/// import com.pulumi.azure.automation.ConnectionServicePrincipalArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var exampleConnectionServicePrincipal = new ConnectionServicePrincipal("exampleConnectionServicePrincipal", ConnectionServicePrincipalArgs.builder()
///             .name("connection-example")
///             .resourceGroupName(exampleResourceGroup.name())
///             .automationAccountName(exampleAccount.name())
///             .applicationId("00000000-0000-0000-0000-000000000000")
///             .tenantId(example.tenantId())
///             .subscriptionId(example.subscriptionId())
///             .certificateThumbprint(StdFunctions.file(FileArgs.builder()
///                 .input("automation_certificate_test.thumb")
///                 .build()).result())
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
///   exampleConnectionServicePrincipal:
///     type: azure:automation:ConnectionServicePrincipal
///     name: example
///     properties:
///       name: connection-example
///       resourceGroupName: ${exampleResourceGroup.name}
///       automationAccountName: ${exampleAccount.name}
///       applicationId: 00000000-0000-0000-0000-000000000000
///       tenantId: ${example.tenantId}
///       subscriptionId: ${example.subscriptionId}
///       certificateThumbprint:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: automation_certificate_test.thumb
///           return: result
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
/// $ pulumi import azure:automation/connectionServicePrincipal:ConnectionServicePrincipal conn1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/connections/conn1
/// ```
class ConnectionServicePrincipal extends pulumi.CustomResource {
  /// The (Client) ID of the Service Principal.
  late final pulumi.Output<String> applicationId;
  /// The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> automationAccountName;
  /// The thumbprint of the Service Principal Certificate.
  late final pulumi.Output<String> certificateThumbprint;
  /// A description for this Connection.
  late final pulumi.Output<String?> description;
  /// Specifies the name of the Connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The subscription GUID.
  late final pulumi.Output<String> subscriptionId;
  /// The ID of the Tenant the Service Principal is assigned in.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [ConnectionServicePrincipal].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionServicePrincipal]. {@macro pulumi_automation_connection_service_principal_connection_service_principal_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionServicePrincipal(
    String name, {
    ConnectionServicePrincipalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/connectionServicePrincipal:ConnectionServicePrincipal',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    applicationId = registerOutput<String>('applicationId');
    automationAccountName = registerOutput<String>('automationAccountName');
    certificateThumbprint = registerOutput<String>('certificateThumbprint');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subscriptionId = registerOutput<String>('subscriptionId');
    tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [ConnectionServicePrincipal] resource's state with the given [name] and [id].
  static ConnectionServicePrincipal get(
    String name,
    pulumi.Input<String> id, {
    ConnectionServicePrincipalState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ConnectionServicePrincipal._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ConnectionServicePrincipal._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/connectionServicePrincipal:ConnectionServicePrincipal',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    automationAccountName = registerOutput<String>('automationAccountName');
    certificateThumbprint = registerOutput<String>('certificateThumbprint');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subscriptionId = registerOutput<String>('subscriptionId');
    tenantId = registerOutput<String>('tenantId');
  }

  /// Creates a typed reference to an existing [ConnectionServicePrincipal] resource.
  ConnectionServicePrincipal.reference(String urn)
    : super(
        'azure:automation/connectionServicePrincipal:ConnectionServicePrincipal',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationId = registerOutput<String>('applicationId');
    automationAccountName = registerOutput<String>('automationAccountName');
    certificateThumbprint = registerOutput<String>('certificateThumbprint');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subscriptionId = registerOutput<String>('subscriptionId');
    tenantId = registerOutput<String>('tenantId');
  }
}
