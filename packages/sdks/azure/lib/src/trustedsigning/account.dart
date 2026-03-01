import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_state.dart';

/// Manages a Trusted Signing Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.trustedsigning.Account("example", {
///     name: "example-account",
///     resourceGroupName: example.name,
///     location: "West Europe",
///     skuName: "Basic",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_account = azure.trustedsigning.Account("example",
///     name="example-account",
///     resource_group_name=example.name,
///     location="West Europe",
///     sku_name="Basic")
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
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.TrustedSigning.Account("example", new()
///     {
///         Name = "example-account",
///         ResourceGroupName = example.Name,
///         Location = "West Europe",
///         SkuName = "Basic",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/trustedsigning"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = trustedsigning.NewAccount(ctx, "example", &trustedsigning.AccountArgs{
/// 			Name:              pulumi.String("example-account"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          pulumi.String("West Europe"),
/// 			SkuName:           pulumi.String("Basic"),
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
/// import com.pulumi.azure.trustedsigning.Account;
/// import com.pulumi.azure.trustedsigning.AccountArgs;
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
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-account")
///             .resourceGroupName(example.name())
///             .location("West Europe")
///             .skuName("Basic")
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
///       name: example
///       location: West Europe
///   exampleAccount:
///     type: azure:trustedsigning:Account
///     name: example
///     properties:
///       name: example-account
///       resourceGroupName: ${example.name}
///       location: West Europe
///       skuName: Basic
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.CodeSigning` - 2024-09-30-preview
///
/// ## Import
///
/// Trusted Signing Accounts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:trustedsigning/account:Account example /subscriptions/0000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.CodeSigning/codeSigningAccounts/example-account
/// ```
class Account extends pulumi.CustomResource {
  /// The URI of the Trusted Signing Account which is used during signing files.
  late final pulumi.Output<String> accountUri;
  /// The Azure Region where the Trusted Signing Account should exist. Changing this forces a new Trusted Signing Account to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Trusted Signing Account. Changing this forces a new Trusted Signing Account to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Trusted Signing Account should exist. Changing this forces a new Trusted Signing Account to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The sku name of this Trusted Signing Account. Possible values are `Basic` and `Premium`.
  late final pulumi.Output<String> skuName;
  /// A mapping of tags which should be assigned to the Trusted Signing Account.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_trustedsigning_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:trustedsigning/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountUri = registerOutput<String>('accountUri');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.skuName = registerOutput<String>('skuName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Account] resource's state with the given [name] and [id].
  static Account get(
    String name,
    pulumi.Input<String> id, {
    AccountState? state,
  }) {
    return Account._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Account._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:trustedsigning/account:Account',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountUri = registerOutput<String>('accountUri');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.skuName = registerOutput<String>('skuName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
