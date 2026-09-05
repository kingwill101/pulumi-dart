import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_encryption.dart';
import 'account_identity.dart';
import 'account_private_endpoint_connection.dart';
import 'account_state.dart';

/// Manages an Automation Account.
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
/// const exampleAccount = new azure.automation.Account("example", {
///     name: "example-account",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Basic",
///     tags: {
///         environment: "development",
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
/// example_account = azure.automation.Account("example",
///     name="example-account",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Basic",
///     tags={
///         "environment": "development",
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
///     var exampleAccount = new Azure.Automation.Account("example", new()
///     {
///         Name = "example-account",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Basic",
///         Tags =
///         {
///             { "environment", "development" },
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
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = automation.NewAccount(ctx, "example", &automation.AccountArgs{
/// 			Name:              pulumi.String("example-account"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Basic"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("development"),
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
/// resource "azure_automation_account" "example" {
///   name                = "example-account"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Basic"
///   tags = {
///     "environment" = "development"
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
/// import com.pulumi.azure.automation.Account;
/// import com.pulumi.azure.automation.AccountArgs;
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
///             .name("example-account")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Basic")
///             .tags(Map.of("environment", "development"))
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
///     type: azure:automation:Account
///     name: example
///     properties:
///       name: example-account
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Basic
///       tags:
///         environment: development
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Automation` - 2024-10-23, 2019-06-01
///
/// ## Import
///
/// Automation Accounts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/account:Account account1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1
/// ```
class Account extends pulumi.CustomResource {
  /// The Primary Access Key for the DSC Endpoint associated with this Automation Account.
  late final pulumi.Output<String> dscPrimaryAccessKey;
  /// The Secondary Access Key for the DSC Endpoint associated with this Automation Account.
  late final pulumi.Output<String> dscSecondaryAccessKey;
  /// The DSC Server Endpoint associated with this Automation Account.
  late final pulumi.Output<String> dscServerEndpoint;
  /// An `encryption` block as defined below.
  late final pulumi.Output<List<AccountEncryption>?> encryptions;
  /// The URL of automation hybrid service which is used for hybrid worker on-boarding With this Automation Account.
  late final pulumi.Output<String> hybridServiceUrl;
  /// An `identity` block as defined below.
  late final pulumi.Output<AccountIdentity?> identity;
  /// Whether requests using non-AAD authentication are blocked. Defaults to `true`.
  late final pulumi.Output<bool?> localAuthenticationEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Automation Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  late final pulumi.Output<List<AccountPrivateEndpointConnection>> privateEndpointConnections;
  /// Whether public network access is allowed for the automation account. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the resource group in which the Automation Account is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The SKU of the account. Possible values are `Basic` and `Free`.
  late final pulumi.Output<String> skuName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_automation_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['dscPrimaryAccessKey', 'dscSecondaryAccessKey'],
        ) {
    dscPrimaryAccessKey = registerOutput<String>('dscPrimaryAccessKey', isSecret: true);
    dscSecondaryAccessKey = registerOutput<String>('dscSecondaryAccessKey', isSecret: true);
    dscServerEndpoint = registerOutput<String>('dscServerEndpoint');
    encryptions = registerOutput<List<AccountEncryption>?>('encryptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccountEncryption>(guardedValue, (value) => AccountEncryption.fromMap((value as Map).cast<String, dynamic>())); });
    hybridServiceUrl = registerOutput<String>('hybridServiceUrl');
    identity = registerOutput<AccountIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localAuthenticationEnabled = registerOutput<bool?>('localAuthenticationEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<AccountPrivateEndpointConnection>>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccountPrivateEndpointConnection>(guardedValue, (value) => AccountPrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>())); });
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Account] resource's state with the given [name] and [id].
  static Account get(
    String name,
    pulumi.Input<String> id, {
    AccountState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Account._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Account._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/account:Account',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dscPrimaryAccessKey = registerOutput<String>('dscPrimaryAccessKey', isSecret: true);
    dscSecondaryAccessKey = registerOutput<String>('dscSecondaryAccessKey', isSecret: true);
    dscServerEndpoint = registerOutput<String>('dscServerEndpoint');
    encryptions = registerOutput<List<AccountEncryption>?>('encryptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccountEncryption>(guardedValue, (value) => AccountEncryption.fromMap((value as Map).cast<String, dynamic>())); });
    hybridServiceUrl = registerOutput<String>('hybridServiceUrl');
    identity = registerOutput<AccountIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localAuthenticationEnabled = registerOutput<bool?>('localAuthenticationEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<AccountPrivateEndpointConnection>>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccountPrivateEndpointConnection>(guardedValue, (value) => AccountPrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>())); });
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Account] resource.
  Account.reference(String urn)
    : super(
        'azure:automation/account:Account',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['dscPrimaryAccessKey', 'dscSecondaryAccessKey'],
        isResourceReference: true,
      ) {
    dscPrimaryAccessKey = registerOutput<String>('dscPrimaryAccessKey', isSecret: true);
    dscSecondaryAccessKey = registerOutput<String>('dscSecondaryAccessKey', isSecret: true);
    dscServerEndpoint = registerOutput<String>('dscServerEndpoint');
    encryptions = registerOutput<List<AccountEncryption>?>('encryptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccountEncryption>(guardedValue, (value) => AccountEncryption.fromMap((value as Map).cast<String, dynamic>())); });
    hybridServiceUrl = registerOutput<String>('hybridServiceUrl');
    identity = registerOutput<AccountIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localAuthenticationEnabled = registerOutput<bool?>('localAuthenticationEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<AccountPrivateEndpointConnection>>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccountPrivateEndpointConnection>(guardedValue, (value) => AccountPrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>())); });
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
