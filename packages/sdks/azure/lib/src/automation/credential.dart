import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_args.dart';
import 'credential_state.dart';

/// Manages a Automation Credential.
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
///     name: "account1",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Basic",
/// });
/// const exampleCredential = new azure.automation.Credential("example", {
///     name: "credential1",
///     resourceGroupName: example.name,
///     automationAccountName: exampleAccount.name,
///     username: "example_user",
///     password: "example_pwd",
///     description: "This is an example credential",
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
///     name="account1",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Basic")
/// example_credential = azure.automation.Credential("example",
///     name="credential1",
///     resource_group_name=example.name,
///     automation_account_name=example_account.name,
///     username="example_user",
///     password="example_pwd",
///     description="This is an example credential")
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
///         Name = "account1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Basic",
///     });
///
///     var exampleCredential = new Azure.Automation.Credential("example", new()
///     {
///         Name = "credential1",
///         ResourceGroupName = example.Name,
///         AutomationAccountName = exampleAccount.Name,
///         Username = "example_user",
///         Password = "example_pwd",
///         Description = "This is an example credential",
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
/// 		exampleAccount, err := automation.NewAccount(ctx, "example", &automation.AccountArgs{
/// 			Name:              pulumi.String("account1"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = automation.NewCredential(ctx, "example", &automation.CredentialArgs{
/// 			Name:                  pulumi.String("credential1"),
/// 			ResourceGroupName:     example.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 			Username:              pulumi.String("example_user"),
/// 			Password:              pulumi.String("example_pwd"),
/// 			Description:           pulumi.String("This is an example credential"),
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
///   name                = "account1"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Basic"
/// }
/// resource "azure_automation_credential" "example" {
///   name                    = "credential1"
///   resource_group_name     = azure_core_resourcegroup.example.name
///   automation_account_name = azure_automation_account.example.name
///   username                = "example_user"
///   password                = "example_pwd"
///   description             = "This is an example credential"
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
/// import com.pulumi.azure.automation.Credential;
/// import com.pulumi.azure.automation.CredentialArgs;
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
///             .name("account1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Basic")
///             .build());
///
///         var exampleCredential = new Credential("exampleCredential", CredentialArgs.builder()
///             .name("credential1")
///             .resourceGroupName(example.name())
///             .automationAccountName(exampleAccount.name())
///             .username("example_user")
///             .password("example_pwd")
///             .description("This is an example credential")
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
///       name: account1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Basic
///   exampleCredential:
///     type: azure:automation:Credential
///     name: example
///     properties:
///       name: credential1
///       resourceGroupName: ${example.name}
///       automationAccountName: ${exampleAccount.name}
///       username: example_user
///       password: example_pwd
///       description: This is an example credential
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
/// Automation Credentials can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/credential:Credential credential1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/credentials/credential1
/// ```
class Credential extends pulumi.CustomResource {
  /// The name of the automation account in which the Credential is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> automationAccountName;
  /// The description associated with this Automation Credential.
  late final pulumi.Output<String?> description;
  /// Specifies the name of the Credential. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The password associated with this Automation Credential.
  late final pulumi.Output<String> password;
  /// The name of the resource group in which the Credential is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The username associated with this Automation Credential.
  late final pulumi.Output<String> username;

  /// Creates a new [Credential].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Credential]. {@macro pulumi_automation_credential_credential_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Credential(
    String name, {
    CredentialArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/credential:Credential',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['password'],
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password', isSecret: true);
    resourceGroupName = registerOutput<String>('resourceGroupName');
    username = registerOutput<String>('username');
  }

  /// Gets an existing [Credential] resource's state with the given [name] and [id].
  static Credential get(
    String name,
    pulumi.Input<String> id, {
    CredentialState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Credential._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Credential._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/credential:Credential',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password', isSecret: true);
    resourceGroupName = registerOutput<String>('resourceGroupName');
    username = registerOutput<String>('username');
  }

  /// Creates a typed reference to an existing [Credential] resource.
  Credential.reference(String urn)
    : super(
        'azure:automation/credential:Credential',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['password'],
        isResourceReference: true,
      ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password', isSecret: true);
    resourceGroupName = registerOutput<String>('resourceGroupName');
    username = registerOutput<String>('username');
  }
}
