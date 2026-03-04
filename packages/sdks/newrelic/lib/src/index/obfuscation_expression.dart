import 'package:pulumi/pulumi.dart' as pulumi;
import 'obfuscation_expression_args.dart';
import 'obfuscation_expression_state.dart';

/// Use this resource to create, update and delete New Relic Obfuscation Expressions.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.ObfuscationExpression("foo", {
///     accountId: "12345",
///     name: "OExp",
///     description: "The description",
///     regex: "(regex.*)",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.ObfuscationExpression("foo",
///     account_id="12345",
///     name="OExp",
///     description="The description",
///     regex="(regex.*)")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.ObfuscationExpression("foo", new()
///     {
///         AccountId = "12345",
///         Name = "OExp",
///         Description = "The description",
///         Regex = "(regex.*)",
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
/// 		_, err := newrelic.NewObfuscationExpression(ctx, "foo", &newrelic.ObfuscationExpressionArgs{
/// 			AccountId:   pulumi.String("12345"),
/// 			Name:        pulumi.String("OExp"),
/// 			Description: pulumi.String("The description"),
/// 			Regex:       pulumi.String("(regex.*)"),
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
///         var foo = new ObfuscationExpression("foo", ObfuscationExpressionArgs.builder()
///             .accountId("12345")
///             .name("OExp")
///             .description("The description")
///             .regex("(regex.*)")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:ObfuscationExpression
///     properties:
///       accountId: 12345
///       name: OExp
///       description: The description
///       regex: (regex.*)
/// ```
///
///
/// ## Import
///
/// New Relic obfuscation expression can be imported using the expression ID, e.g.
///
/// ```bash
/// $ terraform import newrelic_obfuscation_expression.foo 34567
/// ```
class ObfuscationExpression extends pulumi.CustomResource {
  /// The account id associated with the obfuscation expression.
  late final pulumi.Output<String> accountId;

  /// Description of expression.
  late final pulumi.Output<String?> description;

  /// Name of expression.
  late final pulumi.Output<String> name;

  /// Regex of expression. Must be wrapped in parentheses, e.g. (regex.*).
  late final pulumi.Output<String> regex;

  /// Creates a new [ObfuscationExpression].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ObfuscationExpression]. {@macro pulumi_index_obfuscation_expression_obfuscation_expression_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ObfuscationExpression(
    String name, {
    ObfuscationExpressionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/obfuscationExpression:ObfuscationExpression',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    regex = registerOutput<String>('regex');
  }

  /// Gets an existing [ObfuscationExpression] resource's state with the given [name] and [id].
  static ObfuscationExpression get(
    String name,
    pulumi.Input<String> id, {
    ObfuscationExpressionState? state,
  }) {
    return ObfuscationExpression._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ObfuscationExpression._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/obfuscationExpression:ObfuscationExpression',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    regex = registerOutput<String>('regex');
  }
}
