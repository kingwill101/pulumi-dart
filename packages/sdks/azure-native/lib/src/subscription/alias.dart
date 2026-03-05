import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_args.dart';
import 'subscription_alias_response_properties_response.dart';
import 'system_data_response.dart';

/// Subscription Information with the alias.
///
/// Uses Azure REST API version 2024-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-10-01.
///
/// Other available API versions: 2021-10-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native subscription [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateAlias
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @alias = new AzureNative.Subscription.Alias("alias", new()
///     {
///         AliasName = "dummyalias",
///         Properties = new AzureNative.Subscription.Inputs.PutAliasRequestPropertiesArgs
///         {
///             AdditionalProperties = new AzureNative.Subscription.Inputs.PutAliasRequestAdditionalPropertiesArgs
///             {
///                 SubscriptionOwnerId = "f09b39eb-c496-482c-9ab9-afd799572f4c",
///                 SubscriptionTenantId = "66f6e4d6-07dc-4aea-94ea-e12d3026a3c8",
///                 Tags =
///                 {
///                     { "tag1", "Messi" },
///                     { "tag2", "Ronaldo" },
///                     { "tag3", "Lebron" },
///                 },
///             },
///             BillingScope = "/billingAccounts/af6231a7-7f8d-4fcc-a993-dd8466108d07:c663dac6-a9a5-405a-8938-cd903e12ab5b_2019_05_31/billingProfiles/QWDQ-QWHI-AUW-SJDO-DJH/invoiceSections/FEUF-EUHE-ISJ-SKDW-DJH",
///             DisplayName = "Test Subscription",
///             Workload = AzureNative.Subscription.Workload.Production,
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
/// 	subscription "github.com/pulumi/pulumi-azure-native-sdk/subscription/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := subscription.NewAlias(ctx, "alias", &subscription.AliasArgs{
/// 			AliasName: pulumi.String("dummyalias"),
/// 			Properties: &subscription.PutAliasRequestPropertiesArgs{
/// 				AdditionalProperties: &subscription.PutAliasRequestAdditionalPropertiesArgs{
/// 					SubscriptionOwnerId:  pulumi.String("f09b39eb-c496-482c-9ab9-afd799572f4c"),
/// 					SubscriptionTenantId: pulumi.String("66f6e4d6-07dc-4aea-94ea-e12d3026a3c8"),
/// 					Tags: pulumi.StringMap{
/// 						"tag1": pulumi.String("Messi"),
/// 						"tag2": pulumi.String("Ronaldo"),
/// 						"tag3": pulumi.String("Lebron"),
/// 					},
/// 				},
/// 				BillingScope: pulumi.String("/billingAccounts/af6231a7-7f8d-4fcc-a993-dd8466108d07:c663dac6-a9a5-405a-8938-cd903e12ab5b_2019_05_31/billingProfiles/QWDQ-QWHI-AUW-SJDO-DJH/invoiceSections/FEUF-EUHE-ISJ-SKDW-DJH"),
/// 				DisplayName:  pulumi.String("Test Subscription"),
/// 				Workload:     pulumi.String(subscription.WorkloadProduction),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.subscription.Alias;
/// import com.pulumi.azurenative.subscription.AliasArgs;
/// import com.pulumi.azurenative.subscription.inputs.PutAliasRequestPropertiesArgs;
/// import com.pulumi.azurenative.subscription.inputs.PutAliasRequestAdditionalPropertiesArgs;
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
///         var alias = new Alias("alias", AliasArgs.builder()
///             .aliasName("dummyalias")
///             .properties(PutAliasRequestPropertiesArgs.builder()
///                 .additionalProperties(PutAliasRequestAdditionalPropertiesArgs.builder()
///                     .subscriptionOwnerId("f09b39eb-c496-482c-9ab9-afd799572f4c")
///                     .subscriptionTenantId("66f6e4d6-07dc-4aea-94ea-e12d3026a3c8")
///                     .tags(Map.ofEntries(
///                         Map.entry("tag1", "Messi"),
///                         Map.entry("tag2", "Ronaldo"),
///                         Map.entry("tag3", "Lebron")
///                     ))
///                     .build())
///                 .billingScope("/billingAccounts/af6231a7-7f8d-4fcc-a993-dd8466108d07:c663dac6-a9a5-405a-8938-cd903e12ab5b_2019_05_31/billingProfiles/QWDQ-QWHI-AUW-SJDO-DJH/invoiceSections/FEUF-EUHE-ISJ-SKDW-DJH")
///                 .displayName("Test Subscription")
///                 .workload("Production")
///                 .build())
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
/// const alias = new azure_native.subscription.Alias("alias", {
///     aliasName: "dummyalias",
///     properties: {
///         additionalProperties: {
///             subscriptionOwnerId: "f09b39eb-c496-482c-9ab9-afd799572f4c",
///             subscriptionTenantId: "66f6e4d6-07dc-4aea-94ea-e12d3026a3c8",
///             tags: {
///                 tag1: "Messi",
///                 tag2: "Ronaldo",
///                 tag3: "Lebron",
///             },
///         },
///         billingScope: "/billingAccounts/af6231a7-7f8d-4fcc-a993-dd8466108d07:c663dac6-a9a5-405a-8938-cd903e12ab5b_2019_05_31/billingProfiles/QWDQ-QWHI-AUW-SJDO-DJH/invoiceSections/FEUF-EUHE-ISJ-SKDW-DJH",
///         displayName: "Test Subscription",
///         workload: azure_native.subscription.Workload.Production,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// alias = azure_native.subscription.Alias("alias",
///     alias_name="dummyalias",
///     properties={
///         "additional_properties": {
///             "subscription_owner_id": "f09b39eb-c496-482c-9ab9-afd799572f4c",
///             "subscription_tenant_id": "66f6e4d6-07dc-4aea-94ea-e12d3026a3c8",
///             "tags": {
///                 "tag1": "Messi",
///                 "tag2": "Ronaldo",
///                 "tag3": "Lebron",
///             },
///         },
///         "billing_scope": "/billingAccounts/af6231a7-7f8d-4fcc-a993-dd8466108d07:c663dac6-a9a5-405a-8938-cd903e12ab5b_2019_05_31/billingProfiles/QWDQ-QWHI-AUW-SJDO-DJH/invoiceSections/FEUF-EUHE-ISJ-SKDW-DJH",
///         "display_name": "Test Subscription",
///         "workload": azure_native.subscription.Workload.PRODUCTION,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   alias:
///     type: azure-native:subscription:Alias
///     properties:
///       aliasName: dummyalias
///       properties:
///         additionalProperties:
///           subscriptionOwnerId: f09b39eb-c496-482c-9ab9-afd799572f4c
///           subscriptionTenantId: 66f6e4d6-07dc-4aea-94ea-e12d3026a3c8
///           tags:
///             tag1: Messi
///             tag2: Ronaldo
///             tag3: Lebron
///         billingScope: /billingAccounts/af6231a7-7f8d-4fcc-a993-dd8466108d07:c663dac6-a9a5-405a-8938-cd903e12ab5b_2019_05_31/billingProfiles/QWDQ-QWHI-AUW-SJDO-DJH/invoiceSections/FEUF-EUHE-ISJ-SKDW-DJH
///         displayName: Test Subscription
///         workload: Production
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
/// $ pulumi import azure-native:subscription:Alias string /providers/Microsoft.Subscription/aliases/{aliasName}
/// ```
class Alias extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Alias ID.
  late final pulumi.Output<String> name;

  /// Subscription Alias response properties.
  late final pulumi.Output<SubscriptionAliasResponsePropertiesResponse>
  properties;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource type, Microsoft.Subscription/aliases.
  late final pulumi.Output<String> type;

  /// Creates a new [Alias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Alias]. {@macro pulumi_subscription_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Alias(String name, {AliasArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:subscription:Alias',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SubscriptionAliasResponsePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SubscriptionAliasResponsePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
