import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_subscription_args.dart';
import 'account_subscription_rate_plan.dart';
import 'account_subscription_state.dart';

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
/// const exampleAccountSubscription = new cloudflare.AccountSubscription("example_account_subscription", {
///     accountId: "account_id",
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
/// example_account_subscription = cloudflare.AccountSubscription("example_account_subscription",
///     account_id="account_id",
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
///     var exampleAccountSubscription = new Cloudflare.AccountSubscription("example_account_subscription", new()
///     {
///         AccountId = "account_id",
///         Frequency = "monthly",
///         RatePlan = new Cloudflare.Inputs.AccountSubscriptionRatePlanArgs
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
/// 		_, err := cloudflare.NewAccountSubscription(ctx, "example_account_subscription", &cloudflare.AccountSubscriptionArgs{
/// 			AccountId: pulumi.String("account_id"),
/// 			Frequency: pulumi.String("monthly"),
/// 			RatePlan: &cloudflare.AccountSubscriptionRatePlanArgs{
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
/// resource "cloudflare_accountsubscription" "example_account_subscription" {
///   account_id = "account_id"
///   frequency  = "monthly"
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
/// import com.pulumi.cloudflare.AccountSubscription;
/// import com.pulumi.cloudflare.AccountSubscriptionArgs;
/// import com.pulumi.cloudflare.inputs.AccountSubscriptionRatePlanArgs;
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
///         var exampleAccountSubscription = new AccountSubscription("exampleAccountSubscription", AccountSubscriptionArgs.builder()
///             .accountId("account_id")
///             .frequency("monthly")
///             .ratePlan(AccountSubscriptionRatePlanArgs.builder()
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
///   exampleAccountSubscription:
///     type: cloudflare:AccountSubscription
///     name: example_account_subscription
///     properties:
///       accountId: account_id
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
/// $ pulumi import cloudflare:index/accountSubscription:AccountSubscription example '<account_id>'
/// ```
class AccountSubscription extends pulumi.CustomResource {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  late final pulumi.Output<String?> accountId;
  /// The monetary unit in which pricing information is displayed.
  late final pulumi.Output<String> currency;
  /// The end of the current period and also when the next billing is due.
  late final pulumi.Output<String> currentPeriodEnd;
  /// When the current billing period started. May match initial*period*start if this is the first period.
  late final pulumi.Output<String> currentPeriodStart;
  /// How often the subscription is renewed automatically.
  /// Available values: "weekly", "monthly", "quarterly", "yearly".
  late final pulumi.Output<String> frequency;
  /// The price of the subscription that will be billed, in US dollars.
  late final pulumi.Output<double> price;
  /// The rate plan applied to the subscription.
  late final pulumi.Output<AccountSubscriptionRatePlan> ratePlan;
  /// The state that the subscription is in.
  /// Available values: "Trial", "Provisioned", "Paid", "AwaitingPayment", "Cancelled", "Failed", "Expired".
  late final pulumi.Output<String> state;

  /// Creates a new [AccountSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountSubscription]. {@macro pulumi_index_account_subscription_account_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountSubscription(
    String name, {
    AccountSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accountSubscription:AccountSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String?>('accountId');
    currency = registerOutput<String>('currency');
    currentPeriodEnd = registerOutput<String>('currentPeriodEnd');
    currentPeriodStart = registerOutput<String>('currentPeriodStart');
    frequency = registerOutput<String>('frequency');
    price = registerOutput<double>('price');
    ratePlan = registerOutput<AccountSubscriptionRatePlan>('ratePlan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountSubscriptionRatePlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
  }

  /// Gets an existing [AccountSubscription] resource's state with the given [name] and [id].
  static AccountSubscription get(
    String name,
    pulumi.Input<String> id, {
    AccountSubscriptionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccountSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccountSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accountSubscription:AccountSubscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    currency = registerOutput<String>('currency');
    currentPeriodEnd = registerOutput<String>('currentPeriodEnd');
    currentPeriodStart = registerOutput<String>('currentPeriodStart');
    frequency = registerOutput<String>('frequency');
    price = registerOutput<double>('price');
    ratePlan = registerOutput<AccountSubscriptionRatePlan>('ratePlan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountSubscriptionRatePlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [AccountSubscription] resource.
  AccountSubscription.reference(String urn)
    : super(
        'cloudflare:index/accountSubscription:AccountSubscription',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String?>('accountId');
    currency = registerOutput<String>('currency');
    currentPeriodEnd = registerOutput<String>('currentPeriodEnd');
    currentPeriodStart = registerOutput<String>('currentPeriodStart');
    frequency = registerOutput<String>('frequency');
    price = registerOutput<double>('price');
    ratePlan = registerOutput<AccountSubscriptionRatePlan>('ratePlan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountSubscriptionRatePlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
  }
}
