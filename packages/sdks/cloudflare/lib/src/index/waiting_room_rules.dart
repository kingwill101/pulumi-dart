import 'package:pulumi/pulumi.dart' as pulumi;
import 'waiting_room_rules_args.dart';
import 'waiting_room_rules_rule.dart';
import 'waiting_room_rules_state.dart';

/// Accepted Permissions
///
/// - `Waiting Rooms Read`
/// - `Waiting Rooms Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleWaitingRoomRules = new cloudflare.WaitingRoomRules("example_waiting_room_rules", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     waitingRoomId: "699d98642c564d2e855e9661899b7252",
///     rules: [{
///         action: "bypass_waiting_room",
///         expression: "ip.src in {10.20.30.40}",
///         description: "allow all traffic from 10.20.30.40",
///         enabled: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_waiting_room_rules = cloudflare.WaitingRoomRules("example_waiting_room_rules",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     waiting_room_id="699d98642c564d2e855e9661899b7252",
///     rules=[{
///         "action": "bypass_waiting_room",
///         "expression": "ip.src in {10.20.30.40}",
///         "description": "allow all traffic from 10.20.30.40",
///         "enabled": True,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleWaitingRoomRules = new Cloudflare.WaitingRoomRules("example_waiting_room_rules", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         WaitingRoomId = "699d98642c564d2e855e9661899b7252",
///         Rules = new[]
///         {
///             new Cloudflare.Inputs.WaitingRoomRulesRuleArgs
///             {
///                 Action = "bypass_waiting_room",
///                 Expression = "ip.src in {10.20.30.40}",
///                 Description = "allow all traffic from 10.20.30.40",
///                 Enabled = true,
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
/// 		_, err := cloudflare.NewWaitingRoomRules(ctx, "example_waiting_room_rules", &cloudflare.WaitingRoomRulesArgs{
/// 			ZoneId:        pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			WaitingRoomId: pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			Rules: cloudflare.WaitingRoomRulesRuleArray{
/// 				&cloudflare.WaitingRoomRulesRuleArgs{
/// 					Action:      pulumi.String("bypass_waiting_room"),
/// 					Expression:  pulumi.String("ip.src in {10.20.30.40}"),
/// 					Description: pulumi.String("allow all traffic from 10.20.30.40"),
/// 					Enabled:     pulumi.Bool(true),
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
/// resource "cloudflare_waitingroomrules" "example_waiting_room_rules" {
///   zone_id         = "023e105f4ecef8ad9ca31a8372d0c353"
///   waiting_room_id = "699d98642c564d2e855e9661899b7252"
///   rules {
///     action      = "bypass_waiting_room"
///     expression  = "ip.src in {10.20.30.40}"
///     description = "allow all traffic from 10.20.30.40"
///     enabled     = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.WaitingRoomRules;
/// import com.pulumi.cloudflare.WaitingRoomRulesArgs;
/// import com.pulumi.cloudflare.inputs.WaitingRoomRulesRuleArgs;
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
///         var exampleWaitingRoomRules = new WaitingRoomRules("exampleWaitingRoomRules", WaitingRoomRulesArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .waitingRoomId("699d98642c564d2e855e9661899b7252")
///             .rules(WaitingRoomRulesRuleArgs.builder()
///                 .action("bypass_waiting_room")
///                 .expression("ip.src in {10.20.30.40}")
///                 .description("allow all traffic from 10.20.30.40")
///                 .enabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWaitingRoomRules:
///     type: cloudflare:WaitingRoomRules
///     name: example_waiting_room_rules
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       waitingRoomId: 699d98642c564d2e855e9661899b7252
///       rules:
///         - action: bypass_waiting_room
///           expression: ip.src in {10.20.30.40}
///           description: allow all traffic from 10.20.30.40
///           enabled: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/waitingRoomRules:WaitingRoomRules example '<zone_id>/<waiting_room_id>'
/// ```
class WaitingRoomRules extends pulumi.CustomResource {
  late final pulumi.Output<List<WaitingRoomRulesRule>> rules;
  late final pulumi.Output<String> waitingRoomId;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [WaitingRoomRules].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WaitingRoomRules]. {@macro pulumi_index_waiting_room_rules_waiting_room_rules_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WaitingRoomRules(
    String name, {
    WaitingRoomRulesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/waitingRoomRules:WaitingRoomRules',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    rules = registerOutput<List<WaitingRoomRulesRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WaitingRoomRulesRule>(guardedValue, (value) => WaitingRoomRulesRule.fromMap((value as Map).cast<String, dynamic>())); });
    waitingRoomId = registerOutput<String>('waitingRoomId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [WaitingRoomRules] resource's state with the given [name] and [id].
  static WaitingRoomRules get(
    String name,
    pulumi.Input<String> id, {
    WaitingRoomRulesState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WaitingRoomRules._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WaitingRoomRules._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/waitingRoomRules:WaitingRoomRules',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    rules = registerOutput<List<WaitingRoomRulesRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WaitingRoomRulesRule>(guardedValue, (value) => WaitingRoomRulesRule.fromMap((value as Map).cast<String, dynamic>())); });
    waitingRoomId = registerOutput<String>('waitingRoomId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [WaitingRoomRules] resource.
  WaitingRoomRules.reference(String urn)
    : super(
        'cloudflare:index/waitingRoomRules:WaitingRoomRules',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    rules = registerOutput<List<WaitingRoomRulesRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WaitingRoomRulesRule>(guardedValue, (value) => WaitingRoomRulesRule.fromMap((value as Map).cast<String, dynamic>())); });
    waitingRoomId = registerOutput<String>('waitingRoomId');
    zoneId = registerOutput<String>('zoneId');
  }
}
