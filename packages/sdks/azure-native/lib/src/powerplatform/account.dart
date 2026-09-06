import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'system_data_response.dart';

/// Definition of the account.
///
/// Uses Azure REST API version 2020-10-30-preview. In version 2.x of the Azure Native provider, it used API version 2020-10-30-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update account
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new AzureNative.PowerPlatform.Account("account", new()
///     {
///         AccountName = "account",
///         Description = "Description of the account.",
///         Location = "East US",
///         ResourceGroupName = "resourceGroup",
///         Tags =
///         {
///             { "Organization", "Administration" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	powerplatform "github.com/pulumi/pulumi-azure-native-sdk/powerplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := powerplatform.NewAccount(ctx, "account", &powerplatform.AccountArgs{
/// 			AccountName:       pulumi.String("account"),
/// 			Description:       pulumi.String("Description of the account."),
/// 			Location:          pulumi.String("East US"),
/// 			ResourceGroupName: pulumi.String("resourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"Organization": pulumi.String("Administration"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_powerplatform_account" "account" {
///   account_name        = "account"
///   description         = "Description of the account."
///   location            = "East US"
///   resource_group_name = "resourceGroup"
///   tags = {
///     "Organization" = "Administration"
///   }
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.powerplatform.Account;
/// import com.pulumi.azurenative.powerplatform.AccountArgs;
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
///         var account = new Account("account", AccountArgs.builder()
///             .accountName("account")
///             .description("Description of the account.")
///             .location("East US")
///             .resourceGroupName("resourceGroup")
///             .tags(Map.of("Organization", "Administration"))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const account = new azure_native.powerplatform.Account("account", {
///     accountName: "account",
///     description: "Description of the account.",
///     location: "East US",
///     resourceGroupName: "resourceGroup",
///     tags: {
///         Organization: "Administration",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// account = azure_native.powerplatform.Account("account",
///     account_name="account",
///     description="Description of the account.",
///     location="East US",
///     resource_group_name="resourceGroup",
///     tags={
///         "Organization": "Administration",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   account:
///     type: azure-native:powerplatform:Account
///     properties:
///       accountName: account
///       description: Description of the account.
///       location: East US
///       resourceGroupName: resourceGroup
///       tags:
///         Organization: Administration
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:powerplatform:Account account /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.PowerPlatform/accounts/{accountName}
/// ```
class Account extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The description of the account.
  late final pulumi.Output<String?> description;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The internally assigned unique identifier of the resource.
  late final pulumi.Output<String> systemId;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_powerplatform_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:powerplatform:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemId = registerOutput<String>('systemId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Account] resource.
  Account.reference(String urn)
    : super(
        'azure-native:powerplatform:Account',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemId = registerOutput<String>('systemId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
