import 'package:pulumi/pulumi.dart' as pulumi;
import 'risk_behavior_args.dart';
import 'risk_behavior_behaviors.dart';
import 'risk_behavior_state.dart';

/// Accepted Permissions
///
/// - `Zero Trust Read`
/// - `Zero Trust Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustRiskBehavior = new cloudflare.ZeroTrustRiskBehavior("example_zero_trust_risk_behavior", {
///     accountId: "account_id",
///     behaviors: {
///         foo: {
///             enabled: true,
///             riskLevel: "low",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_risk_behavior = cloudflare.ZeroTrustRiskBehavior("example_zero_trust_risk_behavior",
///     account_id="account_id",
///     behaviors={
///         "foo": {
///             "enabled": True,
///             "risk_level": "low",
///         },
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
///     var exampleZeroTrustRiskBehavior = new Cloudflare.ZeroTrustRiskBehavior("example_zero_trust_risk_behavior", new()
///     {
///         AccountId = "account_id",
///         Behaviors =
///         {
///             { "foo", new Cloudflare.Inputs.ZeroTrustRiskBehaviorBehaviorsArgs
///             {
///                 Enabled = true,
///                 RiskLevel = "low",
///             } },
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
/// 		_, err := cloudflare.NewZeroTrustRiskBehavior(ctx, "example_zero_trust_risk_behavior", &cloudflare.ZeroTrustRiskBehaviorArgs{
/// 			AccountId: pulumi.String("account_id"),
/// 			Behaviors: cloudflare.ZeroTrustRiskBehaviorBehaviorsMap{
/// 				"foo": &cloudflare.ZeroTrustRiskBehaviorBehaviorsArgs{
/// 					Enabled:   pulumi.Bool(true),
/// 					RiskLevel: pulumi.String("low"),
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
/// resource "cloudflare_zerotrustriskbehavior" "example_zero_trust_risk_behavior" {
///   account_id = "account_id"
///   behaviors = {
///     "foo" = {
///       enabled    = true
///       risk_level = "low"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustRiskBehavior;
/// import com.pulumi.cloudflare.ZeroTrustRiskBehaviorArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustRiskBehaviorBehaviorsArgs;
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
///         var exampleZeroTrustRiskBehavior = new ZeroTrustRiskBehavior("exampleZeroTrustRiskBehavior", ZeroTrustRiskBehaviorArgs.builder()
///             .accountId("account_id")
///             .behaviors(Map.of("foo", ZeroTrustRiskBehaviorBehaviorsArgs.builder()
///                 .enabled(true)
///                 .riskLevel("low")
///                 .build()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustRiskBehavior:
///     type: cloudflare:ZeroTrustRiskBehavior
///     name: example_zero_trust_risk_behavior
///     properties:
///       accountId: account_id
///       behaviors:
///         foo:
///           enabled: true
///           riskLevel: low
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class RiskBehavior extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<Map<String, RiskBehaviorBehaviors>> behaviors;

  /// Creates a new [RiskBehavior].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RiskBehavior]. {@macro pulumi_index_risk_behavior_risk_behavior_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RiskBehavior(
    String name, {
    RiskBehaviorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/riskBehavior:RiskBehavior',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    behaviors = registerOutput<Map<String, RiskBehaviorBehaviors>>('behaviors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<RiskBehaviorBehaviors>(guardedValue, (value) => RiskBehaviorBehaviors.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [RiskBehavior] resource's state with the given [name] and [id].
  static RiskBehavior get(
    String name,
    pulumi.Input<String> id, {
    RiskBehaviorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RiskBehavior._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RiskBehavior._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/riskBehavior:RiskBehavior',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    behaviors = registerOutput<Map<String, RiskBehaviorBehaviors>>('behaviors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<RiskBehaviorBehaviors>(guardedValue, (value) => RiskBehaviorBehaviors.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [RiskBehavior] resource.
  RiskBehavior.reference(String urn)
    : super(
        'cloudflare:index/riskBehavior:RiskBehavior',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    behaviors = registerOutput<Map<String, RiskBehaviorBehaviors>>('behaviors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<RiskBehaviorBehaviors>(guardedValue, (value) => RiskBehaviorBehaviors.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
