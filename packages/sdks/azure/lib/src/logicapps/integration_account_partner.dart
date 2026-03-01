import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_partner_args.dart';
import 'integration_account_partner_business_identity.dart';
import 'integration_account_partner_state.dart';

/// Manages a Logic App Integration Account Partner.
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
/// const exampleIntegrationAccountPartner = new azure.logicapps.IntegrationAccountPartner("example", {
///     name: "example-iap",
///     resourceGroupName: example.name,
///     integrationAccountName: exampleIntegrationAccount.name,
///     businessIdentities: [{
///         qualifier: "ZZ",
///         value: "AA",
///     }],
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
/// example_integration_account_partner = azure.logicapps.IntegrationAccountPartner("example",
///     name="example-iap",
///     resource_group_name=example.name,
///     integration_account_name=example_integration_account.name,
///     business_identities=[{
///         "qualifier": "ZZ",
///         "value": "AA",
///     }])
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
///     var exampleIntegrationAccountPartner = new Azure.LogicApps.IntegrationAccountPartner("example", new()
///     {
///         Name = "example-iap",
///         ResourceGroupName = example.Name,
///         IntegrationAccountName = exampleIntegrationAccount.Name,
///         BusinessIdentities = new[]
///         {
///             new Azure.LogicApps.Inputs.IntegrationAccountPartnerBusinessIdentityArgs
///             {
///                 Qualifier = "ZZ",
///                 Value = "AA",
///             },
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
/// 		_, err = logicapps.NewIntegrationAccountPartner(ctx, "example", &logicapps.IntegrationAccountPartnerArgs{
/// 			Name:                   pulumi.String("example-iap"),
/// 			ResourceGroupName:      example.Name,
/// 			IntegrationAccountName: exampleIntegrationAccount.Name,
/// 			BusinessIdentities: logicapps.IntegrationAccountPartnerBusinessIdentityArray{
/// 				&logicapps.IntegrationAccountPartnerBusinessIdentityArgs{
/// 					Qualifier: pulumi.String("ZZ"),
/// 					Value:     pulumi.String("AA"),
/// 				},
/// 			},
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
/// import com.pulumi.azure.logicapps.IntegrationAccount;
/// import com.pulumi.azure.logicapps.IntegrationAccountArgs;
/// import com.pulumi.azure.logicapps.IntegrationAccountPartner;
/// import com.pulumi.azure.logicapps.IntegrationAccountPartnerArgs;
/// import com.pulumi.azure.logicapps.inputs.IntegrationAccountPartnerBusinessIdentityArgs;
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
///         var exampleIntegrationAccountPartner = new IntegrationAccountPartner("exampleIntegrationAccountPartner", IntegrationAccountPartnerArgs.builder()
///             .name("example-iap")
///             .resourceGroupName(example.name())
///             .integrationAccountName(exampleIntegrationAccount.name())
///             .businessIdentities(IntegrationAccountPartnerBusinessIdentityArgs.builder()
///                 .qualifier("ZZ")
///                 .value("AA")
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
///   exampleIntegrationAccountPartner:
///     type: azure:logicapps:IntegrationAccountPartner
///     name: example
///     properties:
///       name: example-iap
///       resourceGroupName: ${example.name}
///       integrationAccountName: ${exampleIntegrationAccount.name}
///       businessIdentities:
///         - qualifier: ZZ
///           value: AA
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Logic` - 2019-05-01
///
/// ## Import
///
/// Logic App Integration Account Partners can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:logicapps/integrationAccountPartner:IntegrationAccountPartner example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Logic/integrationAccounts/account1/partners/partner1
/// ```
class IntegrationAccountPartner extends pulumi.CustomResource {
  /// A `business_identity` block as documented below.
  late final pulumi.Output<List<IntegrationAccountPartnerBusinessIdentity>> businessIdentities;
  /// The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Partner to be created.
  late final pulumi.Output<String> integrationAccountName;
  /// A JSON mapping of any Metadata for this Logic App Integration Account Partner.
  late final pulumi.Output<String?> metadata;
  /// The name which should be used for this Logic App Integration Account Partner. Changing this forces a new Logic App Integration Account Partner to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Logic App Integration Account Partner should exist. Changing this forces a new Logic App Integration Account Partner to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [IntegrationAccountPartner].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationAccountPartner]. {@macro pulumi_logicapps_integration_account_partner_integration_account_partner_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationAccountPartner(
    String name, {
    IntegrationAccountPartnerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/integrationAccountPartner:IntegrationAccountPartner',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.businessIdentities = registerOutput<List<IntegrationAccountPartnerBusinessIdentity>>('businessIdentities');
    this.integrationAccountName = registerOutput<String>('integrationAccountName');
    this.metadata = registerOutput<String?>('metadata');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [IntegrationAccountPartner] resource's state with the given [name] and [id].
  static IntegrationAccountPartner get(
    String name,
    pulumi.Input<String> id, {
    IntegrationAccountPartnerState? state,
  }) {
    return IntegrationAccountPartner._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IntegrationAccountPartner._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/integrationAccountPartner:IntegrationAccountPartner',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.businessIdentities = registerOutput<List<IntegrationAccountPartnerBusinessIdentity>>('businessIdentities');
    this.integrationAccountName = registerOutput<String>('integrationAccountName');
    this.metadata = registerOutput<String?>('metadata');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
