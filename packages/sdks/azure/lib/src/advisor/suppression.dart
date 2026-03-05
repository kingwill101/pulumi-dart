import 'package:pulumi/pulumi.dart' as pulumi;
import 'suppression_args.dart';
import 'suppression_state.dart';

/// Specifies a suppression for an Azure Advisor recommendation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = azure.advisor.getRecommendations({});
/// const exampleSuppression = new azure.advisor.Suppression("example", {
///     name: "HardcodedSuppressionName",
///     recommendationId: test.recommendations[0].recommendationName,
///     resourceId: current.then(current => `/subscriptions/${current.subscriptionId}`),
///     ttl: "01:00:00:00",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.advisor.get_recommendations()
/// example_suppression = azure.advisor.Suppression("example",
///     name="HardcodedSuppressionName",
///     recommendation_id=test["recommendations"][0]["recommendationName"],
///     resource_id=f"/subscriptions/{current.subscription_id}",
///     ttl="01:00:00:00")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = Azure.Advisor.GetRecommendations.Invoke();
///
///     var exampleSuppression = new Azure.Advisor.Suppression("example", new()
///     {
///         Name = "HardcodedSuppressionName",
///         RecommendationId = test.Recommendations[0].RecommendationName,
///         ResourceId = $"/subscriptions/{current.Apply(getClientConfigResult => getClientConfigResult.SubscriptionId)}",
///         Ttl = "01:00:00:00",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/advisor"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = advisor.GetRecommendations(ctx, &advisor.GetRecommendationsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = advisor.NewSuppression(ctx, "example", &advisor.SuppressionArgs{
/// 			Name:             pulumi.String("HardcodedSuppressionName"),
/// 			RecommendationId: pulumi.Any(test.Recommendations[0].RecommendationName),
/// 			ResourceId:       pulumi.Sprintf("/subscriptions/%v", current.SubscriptionId),
/// 			Ttl:              pulumi.String("01:00:00:00"),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.advisor.AdvisorFunctions;
/// import com.pulumi.azure.advisor.inputs.GetRecommendationsArgs;
/// import com.pulumi.azure.advisor.Suppression;
/// import com.pulumi.azure.advisor.SuppressionArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var example = AdvisorFunctions.getRecommendations(GetRecommendationsArgs.builder()
///             .build());
///
///         var exampleSuppression = new Suppression("exampleSuppression", SuppressionArgs.builder()
///             .name("HardcodedSuppressionName")
///             .recommendationId(test.recommendations()[0].recommendationName())
///             .resourceId(String.format("/subscriptions/%s", current.subscriptionId()))
///             .ttl("01:00:00:00")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSuppression:
///     type: azure:advisor:Suppression
///     name: example
///     properties:
///       name: HardcodedSuppressionName
///       recommendationId: ${test.recommendations[0].recommendationName}
///       resourceId: /subscriptions/${current.subscriptionId}
///       ttl: 01:00:00:00
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
///   example:
///     fn::invoke:
///       function: azure:advisor:getRecommendations
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Advisor` - 2023-01-01
///
/// ## Import
///
/// Advisor suppressions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:advisor/suppression:Suppression example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Advisor/recommendations/00000000-0000-0000-0000-000000000000/suppressions/name
/// ```
class Suppression extends pulumi.CustomResource {
  /// The Name which should be used for this Advisor suppression. Changing this forces a new Advisor suppression to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Advisor recommendation to suppress. Changing this forces a new Advisor suppression to be created.
  late final pulumi.Output<String> recommendationId;
  /// The ID of the Resource to suppress the Advisor recommendation for. Changing this forces a new Advisor suppression to be created.
  late final pulumi.Output<String> resourceId;
  /// The GUID of the suppression.
  late final pulumi.Output<String> suppressionId;
  /// A optional time to live value. If omitted, the suppression will not expire. Changing this forces a new Advisor suppression to be created.
  late final pulumi.Output<String?> ttl;

  /// Creates a new [Suppression].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Suppression]. {@macro pulumi_advisor_suppression_suppression_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Suppression(
    String name, {
    SuppressionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:advisor/suppression:Suppression',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    recommendationId = registerOutput<String>('recommendationId');
    resourceId = registerOutput<String>('resourceId');
    suppressionId = registerOutput<String>('suppressionId');
    ttl = registerOutput<String?>('ttl');
  }

  /// Gets an existing [Suppression] resource's state with the given [name] and [id].
  static Suppression get(
    String name,
    pulumi.Input<String> id, {
    SuppressionState? state,
  }) {
    return Suppression._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Suppression._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:advisor/suppression:Suppression',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    recommendationId = registerOutput<String>('recommendationId');
    resourceId = registerOutput<String>('resourceId');
    suppressionId = registerOutput<String>('suppressionId');
    ttl = registerOutput<String?>('ttl');
  }
}
