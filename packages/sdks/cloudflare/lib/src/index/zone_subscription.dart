import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_subscription_args.dart';
import 'zone_subscription_rate_plan.dart';
import 'zone_subscription_state.dart';

/// Accepted Permissions
///
/// - `Billing Read`
/// - `Billing Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZoneSubscription = new cloudflare.ZoneSubscription("example_zone_subscription", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     frequency: "monthly",
///     ratePlan: {
///         id: "free",
///         currency: "USD",
///         externallyManaged: false,
///         isContract: false,
///         publicName: "Business Plan",
///         scope: "zone",
///         sets: ["string"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zone_subscription = cloudflare.ZoneSubscription("example_zone_subscription",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     frequency="monthly",
///     rate_plan={
///         "id": "free",
///         "currency": "USD",
///         "externally_managed": False,
///         "is_contract": False,
///         "public_name": "Business Plan",
///         "scope": "zone",
///         "sets": ["string"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZoneSubscription = new Cloudflare.ZoneSubscription("example_zone_subscription", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Frequency = "monthly",
///         RatePlan = new Cloudflare.Inputs.ZoneSubscriptionRatePlanArgs
///         {
///             Id = "free",
///             Currency = "USD",
///             ExternallyManaged = false,
///             IsContract = false,
///             PublicName = "Business Plan",
///             Scope = "zone",
///             Sets = new[]
///             {
///                 "string",
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
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewZoneSubscription(ctx, "example_zone_subscription", &cloudflare.ZoneSubscriptionArgs{
/// 			ZoneId:    pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Frequency: pulumi.String("monthly"),
/// 			RatePlan: &cloudflare.ZoneSubscriptionRatePlanArgs{
/// 				Id:                pulumi.String("free"),
/// 				Currency:          pulumi.String("USD"),
/// 				ExternallyManaged: pulumi.Bool(false),
/// 				IsContract:        pulumi.Bool(false),
/// 				PublicName:        pulumi.String("Business Plan"),
/// 				Scope:             pulumi.String("zone"),
/// 				Sets: pulumi.StringArray{
/// 					pulumi.String("string"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zonesubscription" "example_zone_subscription" {
///   zone_id   = "023e105f4ecef8ad9ca31a8372d0c353"
///   frequency = "monthly"
///   rate_plan = {
///     id                 = "free"
///     currency           = "USD"
///     externally_managed = false
///     is_contract        = false
///     public_name        = "Business Plan"
///     scope              = "zone"
///     sets               = ["string"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZoneSubscription;
/// import com.pulumi.cloudflare.ZoneSubscriptionArgs;
/// import com.pulumi.cloudflare.inputs.ZoneSubscriptionRatePlanArgs;
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
///         var exampleZoneSubscription = new ZoneSubscription("exampleZoneSubscription", ZoneSubscriptionArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .frequency("monthly")
///             .ratePlan(ZoneSubscriptionRatePlanArgs.builder()
///                 .id("free")
///                 .currency("USD")
///                 .externallyManaged(false)
///                 .isContract(false)
///                 .publicName("Business Plan")
///                 .scope("zone")
///                 .sets("string")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZoneSubscription:
///     type: cloudflare:ZoneSubscription
///     name: example_zone_subscription
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       frequency: monthly
///       ratePlan:
///         id: free
///         currency: USD
///         externallyManaged: false
///         isContract: false
///         publicName: Business Plan
///         scope: zone
///         sets:
///           - string
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zoneSubscription:ZoneSubscription example '<zone_id>'
/// ```
class ZoneSubscription extends pulumi.CustomResource {
  /// The monetary unit in which pricing information is displayed.
  late final pulumi.Output<String> currency;
  /// The end of the current period and also when the next billing is due.
  late final pulumi.Output<String> currentPeriodEnd;
  /// When the current billing period started. May match initial*period*start if this is the first period.
  late final pulumi.Output<String> currentPeriodStart;
  /// How often the subscription is renewed automatically.
  /// Available values: "weekly", "monthly", "quarterly", "yearly".
  /// Note: Some plans may not support frequency configuration and will return "not-applicable".
  late final pulumi.Output<String> frequency;
  /// The price of the subscription that will be billed, in US dollars.
  late final pulumi.Output<double> price;
  /// The rate plan applied to the subscription.
  late final pulumi.Output<ZoneSubscriptionRatePlan> ratePlan;
  /// The state that the subscription is in.
  /// Available values: "Trial", "Provisioned", "Paid", "AwaitingPayment", "Cancelled", "Failed", "Expired".
  late final pulumi.Output<String> state;
  /// Identifier
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ZoneSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZoneSubscription]. {@macro pulumi_index_zone_subscription_zone_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZoneSubscription(
    String name, {
    ZoneSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zoneSubscription:ZoneSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    currency = registerOutput<String>('currency');
    currentPeriodEnd = registerOutput<String>('currentPeriodEnd');
    currentPeriodStart = registerOutput<String>('currentPeriodStart');
    frequency = registerOutput<String>('frequency');
    price = registerOutput<double>('price');
    ratePlan = registerOutput<ZoneSubscriptionRatePlan>('ratePlan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneSubscriptionRatePlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ZoneSubscription] resource's state with the given [name] and [id].
  static ZoneSubscription get(
    String name,
    pulumi.Input<String> id, {
    ZoneSubscriptionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZoneSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZoneSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zoneSubscription:ZoneSubscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    currency = registerOutput<String>('currency');
    currentPeriodEnd = registerOutput<String>('currentPeriodEnd');
    currentPeriodStart = registerOutput<String>('currentPeriodStart');
    frequency = registerOutput<String>('frequency');
    price = registerOutput<double>('price');
    ratePlan = registerOutput<ZoneSubscriptionRatePlan>('ratePlan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneSubscriptionRatePlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.state = registerOutput<String>('state');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ZoneSubscription] resource.
  ZoneSubscription.reference(String urn)
    : super(
        'cloudflare:index/zoneSubscription:ZoneSubscription',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    currency = registerOutput<String>('currency');
    currentPeriodEnd = registerOutput<String>('currentPeriodEnd');
    currentPeriodStart = registerOutput<String>('currentPeriodStart');
    frequency = registerOutput<String>('frequency');
    price = registerOutput<double>('price');
    ratePlan = registerOutput<ZoneSubscriptionRatePlan>('ratePlan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneSubscriptionRatePlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    zoneId = registerOutput<String>('zoneId');
  }
}
