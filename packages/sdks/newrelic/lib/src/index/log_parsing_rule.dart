import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_parsing_rule_args.dart';
import 'log_parsing_rule_state.dart';

/// Use this resource to create, update and delete New Relic Log Parsing Rule.
///
/// ## Example Usage
///
/// Use this example to create the log parse rule.
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.LogParsingRule("foo", {
///     name: "log_parse_rule",
///     attribute: "message",
///     enabled: true,
///     grok: "sampleattribute='%{NUMBER:test:int}'",
///     lucene: "logtype:linux_messages",
///     nrql: "SELECT * FROM Log WHERE logtype = 'linux_messages'",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.LogParsingRule("foo",
///     name="log_parse_rule",
///     attribute="message",
///     enabled=True,
///     grok="sampleattribute='%{NUMBER:test:int}'",
///     lucene="logtype:linux_messages",
///     nrql="SELECT * FROM Log WHERE logtype = 'linux_messages'")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.LogParsingRule("foo", new()
///     {
///         Name = "log_parse_rule",
///         Attribute = "message",
///         Enabled = true,
///         Grok = "sampleattribute='%{NUMBER:test:int}'",
///         Lucene = "logtype:linux_messages",
///         Nrql = "SELECT * FROM Log WHERE logtype = 'linux_messages'",
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
/// 		_, err := newrelic.NewLogParsingRule(ctx, "foo", &newrelic.LogParsingRuleArgs{
/// 			Name:      pulumi.String("log_parse_rule"),
/// 			Attribute: pulumi.String("message"),
/// 			Enabled:   pulumi.Bool(true),
/// 			Grok:      pulumi.String("sampleattribute='%{NUMBER:test:int}'"),
/// 			Lucene:    pulumi.String("logtype:linux_messages"),
/// 			Nrql:      pulumi.String("SELECT * FROM Log WHERE logtype = 'linux_messages'"),
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
/// import com.pulumi.newrelic.LogParsingRule;
/// import com.pulumi.newrelic.LogParsingRuleArgs;
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
///         var foo = new LogParsingRule("foo", LogParsingRuleArgs.builder()
///             .name("log_parse_rule")
///             .attribute("message")
///             .enabled(true)
///             .grok("sampleattribute='%{NUMBER:test:int}'")
///             .lucene("logtype:linux_messages")
///             .nrql("SELECT * FROM Log WHERE logtype = 'linux_messages'")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:LogParsingRule
///     properties:
///       name: log_parse_rule
///       attribute: message
///       enabled: true
///       grok: sampleattribute='%{NUMBER:test:int}'
///       lucene: logtype:linux_messages
///       nrql: SELECT * FROM Log WHERE logtype = 'linux_messages'
/// ```
///
///
/// ## Additional Example
///
/// Use this example to validate a grok pattern and create the log parse rule.  More
/// information on grok pattern can be found [here](https://docs.newrelic.com/docs/logs/ui-data/parsing/#grok)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const grok = newrelic.getTestGrokPattern({
///     grok: "%{IP:host_ip}",
///     logLines: ["host_ip: 43.3.120.2"],
/// });
/// const foo = new newrelic.LogParsingRule("foo", {
///     name: "log_parse_rule",
///     attribute: "message",
///     enabled: true,
///     grok: grok.then(grok => grok.grok),
///     lucene: "logtype:linux_messages",
///     nrql: "SELECT * FROM Log WHERE logtype = 'linux_messages'",
///     matched: grok.then(grok => grok.testGroks?.[0]?.matched),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// grok = newrelic.get_test_grok_pattern(grok="%{IP:host_ip}",
///     log_lines=["host_ip: 43.3.120.2"])
/// foo = newrelic.LogParsingRule("foo",
///     name="log_parse_rule",
///     attribute="message",
///     enabled=True,
///     grok=grok.grok,
///     lucene="logtype:linux_messages",
///     nrql="SELECT * FROM Log WHERE logtype = 'linux_messages'",
///     matched=grok.test_groks[0].matched)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var grok = NewRelic.GetTestGrokPattern.Invoke(new()
///     {
///         Grok = "%{IP:host_ip}",
///         LogLines = new[]
///         {
///             "host_ip: 43.3.120.2",
///         },
///     });
///
///     var foo = new NewRelic.LogParsingRule("foo", new()
///     {
///         Name = "log_parse_rule",
///         Attribute = "message",
///         Enabled = true,
///         Grok = grok.Apply(getTestGrokPatternResult => getTestGrokPatternResult.Grok),
///         Lucene = "logtype:linux_messages",
///         Nrql = "SELECT * FROM Log WHERE logtype = 'linux_messages'",
///         Matched = grok.Apply(getTestGrokPatternResult => getTestGrokPatternResult.TestGroks[0]?.Matched),
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
/// 		grok, err := newrelic.GetTestGrokPattern(ctx, &newrelic.GetTestGrokPatternArgs{
/// 			Grok: "%{IP:host_ip}",
/// 			LogLines: []string{
/// 				"host_ip: 43.3.120.2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewLogParsingRule(ctx, "foo", &newrelic.LogParsingRuleArgs{
/// 			Name:      pulumi.String("log_parse_rule"),
/// 			Attribute: pulumi.String("message"),
/// 			Enabled:   pulumi.Bool(true),
/// 			Grok:      pulumi.String(grok.Grok),
/// 			Lucene:    pulumi.String("logtype:linux_messages"),
/// 			Nrql:      pulumi.String("SELECT * FROM Log WHERE logtype = 'linux_messages'"),
/// 			Matched:   pulumi.Bool(grok.TestGroks[0].Matched),
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
/// import com.pulumi.newrelic.NewrelicFunctions;
/// import com.pulumi.newrelic.inputs.GetTestGrokPatternArgs;
/// import com.pulumi.newrelic.LogParsingRule;
/// import com.pulumi.newrelic.LogParsingRuleArgs;
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
///         final var grok = NewrelicFunctions.getTestGrokPattern(GetTestGrokPatternArgs.builder()
///             .grok("%{IP:host_ip}")
///             .logLines("host_ip: 43.3.120.2")
///             .build());
///
///         var foo = new LogParsingRule("foo", LogParsingRuleArgs.builder()
///             .name("log_parse_rule")
///             .attribute("message")
///             .enabled(true)
///             .grok(grok.grok())
///             .lucene("logtype:linux_messages")
///             .nrql("SELECT * FROM Log WHERE logtype = 'linux_messages'")
///             .matched(grok.testGroks()[0].matched())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:LogParsingRule
///     properties:
///       name: log_parse_rule
///       attribute: message
///       enabled: true
///       grok: ${grok.grok}
///       lucene: logtype:linux_messages
///       nrql: SELECT * FROM Log WHERE logtype = 'linux_messages'
///       matched: ${grok.testGroks[0].matched}
/// variables:
///   grok:
///     fn::invoke:
///       function: newrelic:getTestGrokPattern
///       arguments:
///         grok: '%{IP:host_ip}'
///         logLines:
///           - 'host_ip: 43.3.120.2'
/// ```
///
///
/// ## Import
///
/// New Relic log parsing rule can be imported using the rule ID, e.g.
///
/// ```bash
/// $ terraform import newrelic_log_parsing_rule.foo 3456789
/// ```
class LogParsingRule extends pulumi.CustomResource {
  /// The account id associated with the obfuscation rule.
  late final pulumi.Output<String> accountId;

  /// The parsing rule will apply to value of this attribute. If field is not provided, value will default to message.
  late final pulumi.Output<String?> attribute;

  /// Whether or not this rule is deleted.
  late final pulumi.Output<bool> deleted;

  /// Whether the rule should be applied or not to incoming data.
  late final pulumi.Output<bool> enabled;

  /// The Grok of what to parse.
  late final pulumi.Output<String> grok;

  /// The Lucene to match events to the parsing rule.
  late final pulumi.Output<String> lucene;

  /// Whether the Grok pattern matched.
  late final pulumi.Output<bool> matched;

  /// Name of rule.
  late final pulumi.Output<String> name;

  /// The NRQL to match events to the parsing rule.
  late final pulumi.Output<String> nrql;

  /// Creates a new [LogParsingRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogParsingRule]. {@macro pulumi_index_log_parsing_rule_log_parsing_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogParsingRule(
    String name, {
    LogParsingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/logParsingRule:LogParsingRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    attribute = registerOutput<String?>('attribute');
    deleted = registerOutput<bool>('deleted');
    enabled = registerOutput<bool>('enabled');
    grok = registerOutput<String>('grok');
    lucene = registerOutput<String>('lucene');
    matched = registerOutput<bool>('matched');
    this.name = registerOutput<String>('name');
    nrql = registerOutput<String>('nrql');
  }

  /// Gets an existing [LogParsingRule] resource's state with the given [name] and [id].
  static LogParsingRule get(
    String name,
    pulumi.Input<String> id, {
    LogParsingRuleState? state,
  }) {
    return LogParsingRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LogParsingRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/logParsingRule:LogParsingRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    attribute = registerOutput<String?>('attribute');
    deleted = registerOutput<bool>('deleted');
    enabled = registerOutput<bool>('enabled');
    grok = registerOutput<String>('grok');
    lucene = registerOutput<String>('lucene');
    matched = registerOutput<bool>('matched');
    this.name = registerOutput<String>('name');
    nrql = registerOutput<String>('nrql');
  }
}
