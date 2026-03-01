import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_transaction_args.dart';
import 'key_transaction_state.dart';

/// Use this resource to create a new Key Transaction in New Relic.
///
/// > **NOTE:** For more information on Key Transactions, head over to [this page](https://docs.newrelic.com/docs/apm/transactions/key-transactions/introduction-key-transactions/) in New Relic's docs.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.KeyTransaction("foo", {
///     applicationGuid: "MzgfNjUyNnxBUE19QVBQTElDQVHJT068NTUfNDT4MjUy",
///     apdexIndex: 0.5,
///     browserApdexTarget: 0.5,
///     metricName: "WebTransaction/Function/__main__:foo_bar",
///     name: "Sample Key Transaction",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.KeyTransaction("foo",
///     application_guid="MzgfNjUyNnxBUE19QVBQTElDQVHJT068NTUfNDT4MjUy",
///     apdex_index=0.5,
///     browser_apdex_target=0.5,
///     metric_name="WebTransaction/Function/__main__:foo_bar",
///     name="Sample Key Transaction")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.KeyTransaction("foo", new()
///     {
///         ApplicationGuid = "MzgfNjUyNnxBUE19QVBQTElDQVHJT068NTUfNDT4MjUy",
///         ApdexIndex = 0.5,
///         BrowserApdexTarget = 0.5,
///         MetricName = "WebTransaction/Function/__main__:foo_bar",
///         Name = "Sample Key Transaction",
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
/// 		_, err := newrelic.NewKeyTransaction(ctx, "foo", &newrelic.KeyTransactionArgs{
/// 			ApplicationGuid:    pulumi.String("MzgfNjUyNnxBUE19QVBQTElDQVHJT068NTUfNDT4MjUy"),
/// 			ApdexIndex:         pulumi.Float64(0.5),
/// 			BrowserApdexTarget: pulumi.Float64(0.5),
/// 			MetricName:         pulumi.String("WebTransaction/Function/__main__:foo_bar"),
/// 			Name:               pulumi.String("Sample Key Transaction"),
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
/// import com.pulumi.newrelic.KeyTransaction;
/// import com.pulumi.newrelic.KeyTransactionArgs;
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
///         var foo = new KeyTransaction("foo", KeyTransactionArgs.builder()
///             .applicationGuid("MzgfNjUyNnxBUE19QVBQTElDQVHJT068NTUfNDT4MjUy")
///             .apdexIndex(0.5)
///             .browserApdexTarget(0.5)
///             .metricName("WebTransaction/Function/__main__:foo_bar")
///             .name("Sample Key Transaction")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:KeyTransaction
///     properties:
///       applicationGuid: MzgfNjUyNnxBUE19QVBQTElDQVHJT068NTUfNDT4MjUy
///       apdexIndex: 0.5
///       browserApdexTarget: 0.5
///       metricName: WebTransaction/Function/__main__:foo_bar
///       name: Sample Key Transaction
/// ```
///
///
/// ## Import
///
/// A Key Transaction in New Relic may be imported into Terraform using its GUID specified in the `<id>` field, in the following command.
///
/// ```bash
/// $ terraform import newrelic_key_transaction.foo <id>
/// ```
class KeyTransaction extends pulumi.CustomResource {
  /// A decimal value, measuring user satisfaction with response times, ranging from 0 (frustrated) to 1 (satisfied).
  late final pulumi.Output<double> apdexIndex;
  /// The GUID of the APM Application comprising transactions, of which one would be made a key transaction.
  late final pulumi.Output<String> applicationGuid;
  /// A decimal value representing the response time threshold for satisfactory experience (e.g., 0.5 seconds).
  ///
  /// > **NOTE:** It may be noted that the `metric_name` and `application_guid` of a Key Transaction _cannot_ be updated in a key transaction that has already been created; since this is not supported. As a consequence, altering the values of `application_guid` and/or `metric_name` of a `newrelic.KeyTransaction` resource created (to try updating these values) would result in `pulumi preview` prompting a forced destruction and re-creation of the resource.
  late final pulumi.Output<double> browserApdexTarget;
  /// The domain of the entity monitored by the key transaction.
  late final pulumi.Output<String> domain;
  /// The name of the underlying metric monitored by the key transaction to be created.
  late final pulumi.Output<String> metricName;
  /// The name of the key transaction.
  late final pulumi.Output<String> name;
  /// The type of the entity monitored by the key transaction.
  late final pulumi.Output<String> type;

  /// Creates a new [KeyTransaction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyTransaction]. {@macro pulumi_index_key_transaction_key_transaction_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyTransaction(
    String name, {
    KeyTransactionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/keyTransaction:KeyTransaction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apdexIndex = registerOutput<double>('apdexIndex');
    this.applicationGuid = registerOutput<String>('applicationGuid');
    this.browserApdexTarget = registerOutput<double>('browserApdexTarget');
    this.domain = registerOutput<String>('domain');
    this.metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
  }

  /// Gets an existing [KeyTransaction] resource's state with the given [name] and [id].
  static KeyTransaction get(
    String name,
    pulumi.Input<String> id, {
    KeyTransactionState? state,
  }) {
    return KeyTransaction._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KeyTransaction._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/keyTransaction:KeyTransaction',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apdexIndex = registerOutput<double>('apdexIndex');
    this.applicationGuid = registerOutput<String>('applicationGuid');
    this.browserApdexTarget = registerOutput<double>('browserApdexTarget');
    this.domain = registerOutput<String>('domain');
    this.metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
  }
}
