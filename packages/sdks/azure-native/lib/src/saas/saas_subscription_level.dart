import 'package:pulumi/pulumi.dart' as pulumi;
import 'saas_resource_response_properties.dart';
import 'saas_subscription_level_args.dart';

/// SaaS REST API resource definition.
///
/// Uses Azure REST API version 2018-03-01-beta. In version 2.x of the Azure Native provider, it used API version 2018-03-01-beta.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create subscription level SaaS resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var saasSubscriptionLevel = new AzureNative.SaaS.SaasSubscriptionLevel("saasSubscriptionLevel", new()
///     {
///         Location = "global",
///         Name = "MyContosoSubscription",
///         Properties = new AzureNative.SaaS.Inputs.SaasCreationPropertiesArgs
///         {
///             OfferId = "contosoOffer",
///             PaymentChannelMetadata =
///             {
///                 { "AzureSubscriptionId", "155af98a-3205-47e7-883b-a2ab9db9f88d" },
///             },
///             PaymentChannelType = AzureNative.SaaS.PaymentChannelType.SubscriptionDelegated,
///             PublisherId = "microsoft-contoso",
///             SaasResourceName = "MyContosoSubscription",
///             SkuId = "free",
///             TermId = "hjdtn7tfnxcy",
///         },
///         ResourceGroupName = "my-saas-rg",
///         ResourceName = "MyContosoSubscription",
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
/// 	saas "github.com/pulumi/pulumi-azure-native-sdk/saas/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := saas.NewSaasSubscriptionLevel(ctx, "saasSubscriptionLevel", &saas.SaasSubscriptionLevelArgs{
/// 			Location: pulumi.String("global"),
/// 			Name:     pulumi.String("MyContosoSubscription"),
/// 			Properties: &saas.SaasCreationPropertiesArgs{
/// 				OfferId: pulumi.String("contosoOffer"),
/// 				PaymentChannelMetadata: pulumi.StringMap{
/// 					"AzureSubscriptionId": pulumi.String("155af98a-3205-47e7-883b-a2ab9db9f88d"),
/// 				},
/// 				PaymentChannelType: pulumi.String(saas.PaymentChannelTypeSubscriptionDelegated),
/// 				PublisherId:        pulumi.String("microsoft-contoso"),
/// 				SaasResourceName:   pulumi.String("MyContosoSubscription"),
/// 				SkuId:              pulumi.String("free"),
/// 				TermId:             pulumi.String("hjdtn7tfnxcy"),
/// 			},
/// 			ResourceGroupName: pulumi.String("my-saas-rg"),
/// 			ResourceName:      pulumi.String("MyContosoSubscription"),
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
/// resource "azure-native_saas_saassubscriptionlevel" "saasSubscriptionLevel" {
///   location = "global"
///   name     = "MyContosoSubscription"
///   properties = {
///     offer_id = "contosoOffer"
///     payment_channel_metadata = {
///       "AzureSubscriptionId" = "155af98a-3205-47e7-883b-a2ab9db9f88d"
///     }
///     payment_channel_type = "SubscriptionDelegated"
///     publisher_id         = "microsoft-contoso"
///     saas_resource_name   = "MyContosoSubscription"
///     sku_id               = "free"
///     term_id              = "hjdtn7tfnxcy"
///   }
///   resource_group_name = "my-saas-rg"
///   resource_name       = "MyContosoSubscription"
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
/// import com.pulumi.azurenative.saas.SaasSubscriptionLevel;
/// import com.pulumi.azurenative.saas.SaasSubscriptionLevelArgs;
/// import com.pulumi.azurenative.saas.inputs.SaasCreationPropertiesArgs;
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
///         var saasSubscriptionLevel = new SaasSubscriptionLevel("saasSubscriptionLevel", SaasSubscriptionLevelArgs.builder()
///             .location("global")
///             .name("MyContosoSubscription")
///             .properties(SaasCreationPropertiesArgs.builder()
///                 .offerId("contosoOffer")
///                 .paymentChannelMetadata(Map.of("AzureSubscriptionId", "155af98a-3205-47e7-883b-a2ab9db9f88d"))
///                 .paymentChannelType("SubscriptionDelegated")
///                 .publisherId("microsoft-contoso")
///                 .saasResourceName("MyContosoSubscription")
///                 .skuId("free")
///                 .termId("hjdtn7tfnxcy")
///                 .build())
///             .resourceGroupName("my-saas-rg")
///             .resourceName("MyContosoSubscription")
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
/// const saasSubscriptionLevel = new azure_native.saas.SaasSubscriptionLevel("saasSubscriptionLevel", {
///     location: "global",
///     name: "MyContosoSubscription",
///     properties: {
///         offerId: "contosoOffer",
///         paymentChannelMetadata: {
///             AzureSubscriptionId: "155af98a-3205-47e7-883b-a2ab9db9f88d",
///         },
///         paymentChannelType: azure_native.saas.PaymentChannelType.SubscriptionDelegated,
///         publisherId: "microsoft-contoso",
///         saasResourceName: "MyContosoSubscription",
///         skuId: "free",
///         termId: "hjdtn7tfnxcy",
///     },
///     resourceGroupName: "my-saas-rg",
///     resourceName: "MyContosoSubscription",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// saas_subscription_level = azure_native.saas.SaasSubscriptionLevel("saasSubscriptionLevel",
///     location="global",
///     name="MyContosoSubscription",
///     properties={
///         "offer_id": "contosoOffer",
///         "payment_channel_metadata": {
///             "AzureSubscriptionId": "155af98a-3205-47e7-883b-a2ab9db9f88d",
///         },
///         "payment_channel_type": azure_native.saas.PaymentChannelType.SUBSCRIPTION_DELEGATED,
///         "publisher_id": "microsoft-contoso",
///         "saas_resource_name": "MyContosoSubscription",
///         "sku_id": "free",
///         "term_id": "hjdtn7tfnxcy",
///     },
///     resource_group_name="my-saas-rg",
///     resource_name_="MyContosoSubscription")
///
/// ```
///
/// ```yaml
/// resources:
///   saasSubscriptionLevel:
///     type: azure-native:saas:SaasSubscriptionLevel
///     properties:
///       location: global
///       name: MyContosoSubscription
///       properties:
///         offerId: contosoOffer
///         paymentChannelMetadata:
///           AzureSubscriptionId: 155af98a-3205-47e7-883b-a2ab9db9f88d
///         paymentChannelType: SubscriptionDelegated
///         publisherId: microsoft-contoso
///         saasResourceName: MyContosoSubscription
///         skuId: free
///         termId: hjdtn7tfnxcy
///       resourceGroupName: my-saas-rg
///       resourceName: MyContosoSubscription
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
/// $ pulumi import azure-native:saas:SaasSubscriptionLevel MyContosoSubscription /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SaaS/resources/{resourceName}
/// ```
class SaasSubscriptionLevel extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// saas properties
  late final pulumi.Output<SaasResourceResponseProperties> properties;
  /// the resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [SaasSubscriptionLevel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SaasSubscriptionLevel]. {@macro pulumi_saas_saas_subscription_level_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SaasSubscriptionLevel(
    String name, {
    SaasSubscriptionLevelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:saas:SaasSubscriptionLevel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SaasResourceResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SaasResourceResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [SaasSubscriptionLevel] resource.
  SaasSubscriptionLevel.reference(String urn)
    : super(
        'azure-native:saas:SaasSubscriptionLevel',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SaasResourceResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SaasResourceResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
