import 'package:pulumi/pulumi.dart' as pulumi;
import 'obfuscation_rule_args.dart';
import 'obfuscation_rule_state.dart';

/// Use this resource to create, update and delete New Relic Obfuscation Rule.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const bar = new newrelic.ObfuscationExpression("bar", {
///     name: "expressionName",
///     description: "description of the expression",
///     regex: "(^http)",
/// });
/// const foo = new newrelic.ObfuscationRule("foo", {
///     name: "ruleName",
///     description: "description of the rule",
///     filter: "hostStatus=running",
///     enabled: true,
///     actions: [{
///         attributes: ["message"],
///         expressionId: bar.id,
///         method: "MASK",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// bar = newrelic.ObfuscationExpression("bar",
///     name="expressionName",
///     description="description of the expression",
///     regex="(^http)")
/// foo = newrelic.ObfuscationRule("foo",
///     name="ruleName",
///     description="description of the rule",
///     filter="hostStatus=running",
///     enabled=True,
///     actions=[{
///         "attributes": ["message"],
///         "expression_id": bar.id,
///         "method": "MASK",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bar = new NewRelic.ObfuscationExpression("bar", new()
///     {
///         Name = "expressionName",
///         Description = "description of the expression",
///         Regex = "(^http)",
///     });
///
///     var foo = new NewRelic.ObfuscationRule("foo", new()
///     {
///         Name = "ruleName",
///         Description = "description of the rule",
///         Filter = "hostStatus=running",
///         Enabled = true,
///         Actions = new[]
///         {
///             new NewRelic.Inputs.ObfuscationRuleActionArgs
///             {
///                 Attributes = new[]
///                 {
///                     "message",
///                 },
///                 ExpressionId = bar.Id,
///                 Method = "MASK",
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
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bar, err := newrelic.NewObfuscationExpression(ctx, "bar", &newrelic.ObfuscationExpressionArgs{
/// 			Name:        pulumi.String("expressionName"),
/// 			Description: pulumi.String("description of the expression"),
/// 			Regex:       pulumi.String("(^http)"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewObfuscationRule(ctx, "foo", &newrelic.ObfuscationRuleArgs{
/// 			Name:        pulumi.String("ruleName"),
/// 			Description: pulumi.String("description of the rule"),
/// 			Filter:      pulumi.String("hostStatus=running"),
/// 			Enabled:     pulumi.Bool(true),
/// 			Actions: newrelic.ObfuscationRuleActionArray{
/// 				&newrelic.ObfuscationRuleActionArgs{
/// 					Attributes: pulumi.StringArray{
/// 						pulumi.String("message"),
/// 					},
/// 					ExpressionId: bar.ID(),
/// 					Method:       pulumi.String("MASK"),
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
/// import com.pulumi.newrelic.ObfuscationExpression;
/// import com.pulumi.newrelic.ObfuscationExpressionArgs;
/// import com.pulumi.newrelic.ObfuscationRule;
/// import com.pulumi.newrelic.ObfuscationRuleArgs;
/// import com.pulumi.newrelic.inputs.ObfuscationRuleActionArgs;
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
///         var bar = new ObfuscationExpression("bar", ObfuscationExpressionArgs.builder()
///             .name("expressionName")
///             .description("description of the expression")
///             .regex("(^http)")
///             .build());
///
///         var foo = new ObfuscationRule("foo", ObfuscationRuleArgs.builder()
///             .name("ruleName")
///             .description("description of the rule")
///             .filter("hostStatus=running")
///             .enabled(true)
///             .actions(ObfuscationRuleActionArgs.builder()
///                 .attributes("message")
///                 .expressionId(bar.id())
///                 .method("MASK")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bar:
///     type: newrelic:ObfuscationExpression
///     properties:
///       name: expressionName
///       description: description of the expression
///       regex: (^http)
///   foo:
///     type: newrelic:ObfuscationRule
///     properties:
///       name: ruleName
///       description: description of the rule
///       filter: hostStatus=running
///       enabled: true
///       actions:
///         - attributes:
///             - message
///           expressionId: ${bar.id}
///           method: MASK
/// ```
///
///
/// ## Import
///
/// New Relic obfuscation rule can be imported using the rule ID, e.g.
///
/// ```bash
/// $ terraform import newrelic_obfuscation_rule.foo 34567
/// ```
class ObfuscationRule extends pulumi.CustomResource {
  /// The account id associated with the obfuscation rule.
  late final pulumi.Output<String> accountId;
  /// Actions for the rule. The actions will be applied in the order specified by this list.
  late final pulumi.Output<List<Map<String, dynamic>>> actions;
  /// Description of rule.
  late final pulumi.Output<String?> description;
  /// Whether the rule should be applied or not to incoming data.
  late final pulumi.Output<bool> enabled;
  /// NRQL for determining whether a given log record should have obfuscation actions applied.
  late final pulumi.Output<String> filter;
  /// Name of rule.
  late final pulumi.Output<String> name;

  /// Creates a new [ObfuscationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ObfuscationRule]. {@macro pulumi_index_obfuscation_rule_obfuscation_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ObfuscationRule(
    String name, {
    ObfuscationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/obfuscationRule:ObfuscationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    actions = registerOutput<List<Map<String, dynamic>>>('actions');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [ObfuscationRule] resource's state with the given [name] and [id].
  static ObfuscationRule get(
    String name,
    pulumi.Input<String> id, {
    ObfuscationRuleState? state,
  }) {
    return ObfuscationRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ObfuscationRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/obfuscationRule:ObfuscationRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    actions = registerOutput<List<Map<String, dynamic>>>('actions');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
  }
}
