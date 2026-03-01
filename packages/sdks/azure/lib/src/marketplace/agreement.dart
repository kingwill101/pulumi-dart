import 'package:pulumi/pulumi.dart' as pulumi;
import 'agreement_args.dart';
import 'agreement_state.dart';

/// Allows accepting the Legal Terms for a Marketplace Image.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const barracuda = new azure.marketplace.Agreement("barracuda", {
///     publisher: "barracudanetworks",
///     offer: "waf",
///     plan: "hourly",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// barracuda = azure.marketplace.Agreement("barracuda",
///     publisher="barracudanetworks",
///     offer="waf",
///     plan="hourly")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var barracuda = new Azure.Marketplace.Agreement("barracuda", new()
///     {
///         Publisher = "barracudanetworks",
///         Offer = "waf",
///         Plan = "hourly",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/marketplace"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := marketplace.NewAgreement(ctx, "barracuda", &marketplace.AgreementArgs{
/// 			Publisher: pulumi.String("barracudanetworks"),
/// 			Offer:     pulumi.String("waf"),
/// 			Plan:      pulumi.String("hourly"),
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
/// import com.pulumi.azure.marketplace.Agreement;
/// import com.pulumi.azure.marketplace.AgreementArgs;
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
///         var barracuda = new Agreement("barracuda", AgreementArgs.builder()
///             .publisher("barracudanetworks")
///             .offer("waf")
///             .plan("hourly")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   barracuda:
///     type: azure:marketplace:Agreement
///     properties:
///       publisher: barracudanetworks
///       offer: waf
///       plan: hourly
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.MarketplaceOrdering` - 2015-06-01
///
/// ## Import
///
/// Marketplace Agreement can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:marketplace/agreement:Agreement example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.MarketplaceOrdering/agreements/publisher1/offers/offer1/plans/plan1
/// ```
class Agreement extends pulumi.CustomResource {
  late final pulumi.Output<String> licenseTextLink;
  /// The Offer of the Marketplace Image. Changing this forces a new resource to be created.
  late final pulumi.Output<String> offer;
  /// The Plan of the Marketplace Image. Changing this forces a new resource to be created.
  late final pulumi.Output<String> plan;
  late final pulumi.Output<String> privacyPolicyLink;
  /// The Publisher of the Marketplace Image. Changing this forces a new resource to be created.
  late final pulumi.Output<String> publisher;

  /// Creates a new [Agreement].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Agreement]. {@macro pulumi_marketplace_agreement_agreement_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Agreement(
    String name, {
    AgreementArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:marketplace/agreement:Agreement',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.licenseTextLink = registerOutput<String>('licenseTextLink');
    this.offer = registerOutput<String>('offer');
    this.plan = registerOutput<String>('plan');
    this.privacyPolicyLink = registerOutput<String>('privacyPolicyLink');
    this.publisher = registerOutput<String>('publisher');
  }

  /// Gets an existing [Agreement] resource's state with the given [name] and [id].
  static Agreement get(
    String name,
    pulumi.Input<String> id, {
    AgreementState? state,
  }) {
    return Agreement._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Agreement._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:marketplace/agreement:Agreement',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.licenseTextLink = registerOutput<String>('licenseTextLink');
    this.offer = registerOutput<String>('offer');
    this.plan = registerOutput<String>('plan');
    this.privacyPolicyLink = registerOutput<String>('privacyPolicyLink');
    this.publisher = registerOutput<String>('publisher');
  }
}
