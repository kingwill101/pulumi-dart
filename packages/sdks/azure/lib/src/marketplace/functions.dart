import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agreement_args.dart';
import 'get_agreement_result.dart';

/// Uses this data source to access information about an existing Marketplace Agreement.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const barracuda = azure.marketplace.getAgreement({
///     publisher: "barracudanetworks",
///     offer: "waf",
///     plan: "hourly",
/// });
/// export const azurermMarketplaceAgreementId = id;
/// export const azurermMarketplaceAgreementAccepted = accepted;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// barracuda = azure.marketplace.get_agreement(publisher="barracudanetworks",
///     offer="waf",
///     plan="hourly")
/// pulumi.export("azurermMarketplaceAgreementId", id)
/// pulumi.export("azurermMarketplaceAgreementAccepted", accepted)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var barracuda = Azure.Marketplace.GetAgreement.Invoke(new()
///     {
///         Publisher = "barracudanetworks",
///         Offer = "waf",
///         Plan = "hourly",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["azurermMarketplaceAgreementId"] = id,
///         ["azurermMarketplaceAgreementAccepted"] = accepted,
///     };
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
/// 		_, err := marketplace.LookupAgreement(ctx, &marketplace.LookupAgreementArgs{
/// 			Publisher: "barracudanetworks",
/// 			Offer:     "waf",
/// 			Plan:      "hourly",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("azurermMarketplaceAgreementId", id)
/// 		ctx.Export("azurermMarketplaceAgreementAccepted", accepted)
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
/// import com.pulumi.azure.marketplace.MarketplaceFunctions;
/// import com.pulumi.azure.marketplace.inputs.GetAgreementArgs;
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
///         final var barracuda = MarketplaceFunctions.getAgreement(GetAgreementArgs.builder()
///             .publisher("barracudanetworks")
///             .offer("waf")
///             .plan("hourly")
///             .build());
///
///         ctx.export("azurermMarketplaceAgreementId", id);
///         ctx.export("azurermMarketplaceAgreementAccepted", accepted);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   barracuda:
///     fn::invoke:
///       function: azure:marketplace:getAgreement
///       arguments:
///         publisher: barracudanetworks
///         offer: waf
///         plan: hourly
/// outputs:
///   azurermMarketplaceAgreementId: ${id}
///   azurermMarketplaceAgreementAccepted: ${accepted}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.MarketplaceOrdering` - 2015-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_marketplace_get_agreement_get_agreement_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgreementResult> getAgreement(
  GetAgreementArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:marketplace/getAgreement:getAgreement',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgreementResult.fromMap(result);
}
