import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_account_exclusion_args.dart';
import 'billing_account_exclusion_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_exclusion = new gcp.logging.BillingAccountExclusion("my-exclusion", {
///     name: "my-instance-debug-exclusion",
///     billingAccount: "ABCDEF-012345-GHIJKL",
///     description: "Exclude GCE instance debug logs",
///     filter: "resource.type = gce_instance AND severity <= DEBUG",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_exclusion = gcp.logging.BillingAccountExclusion("my-exclusion",
///     name="my-instance-debug-exclusion",
///     billing_account="ABCDEF-012345-GHIJKL",
///     description="Exclude GCE instance debug logs",
///     filter="resource.type = gce_instance AND severity <= DEBUG")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_exclusion = new Gcp.Logging.BillingAccountExclusion("my-exclusion", new()
///     {
///         Name = "my-instance-debug-exclusion",
///         BillingAccount = "ABCDEF-012345-GHIJKL",
///         Description = "Exclude GCE instance debug logs",
///         Filter = "resource.type = gce_instance AND severity <= DEBUG",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.NewBillingAccountExclusion(ctx, "my-exclusion", &logging.BillingAccountExclusionArgs{
/// 			Name:           pulumi.String("my-instance-debug-exclusion"),
/// 			BillingAccount: pulumi.String("ABCDEF-012345-GHIJKL"),
/// 			Description:    pulumi.String("Exclude GCE instance debug logs"),
/// 			Filter:         pulumi.String("resource.type = gce_instance AND severity <= DEBUG"),
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
/// import com.pulumi.gcp.logging.BillingAccountExclusion;
/// import com.pulumi.gcp.logging.BillingAccountExclusionArgs;
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
///         var my_exclusion = new BillingAccountExclusion("my-exclusion", BillingAccountExclusionArgs.builder()
///             .name("my-instance-debug-exclusion")
///             .billingAccount("ABCDEF-012345-GHIJKL")
///             .description("Exclude GCE instance debug logs")
///             .filter("resource.type = gce_instance AND severity <= DEBUG")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-exclusion:
///     type: gcp:logging:BillingAccountExclusion
///     properties:
///       name: my-instance-debug-exclusion
///       billingAccount: ABCDEF-012345-GHIJKL
///       description: Exclude GCE instance debug logs
///       filter: resource.type = gce_instance AND severity <= DEBUG
/// ```
///
///
/// ## Import
///
/// Billing account logging exclusions can be imported using their URI, e.g.
///
/// * `billingAccounts/{{billing_account}}/exclusions/{{name}}`
///
/// When using the `pulumi import` command, billing account logging exclusions can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/billingAccountExclusion:BillingAccountExclusion default billingAccounts/{{billing_account}}/exclusions/{{name}}
/// ```
class BillingAccountExclusion extends pulumi.CustomResource {
  /// The billing account to create the exclusion for.
  late final pulumi.Output<String> billingAccount;
  /// A human-readable description.
  late final pulumi.Output<String?> description;
  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  late final pulumi.Output<bool?> disabled;
  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  late final pulumi.Output<String> filter;
  /// The name of the logging exclusion.
  late final pulumi.Output<String> name;

  /// Creates a new [BillingAccountExclusion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BillingAccountExclusion]. {@macro pulumi_logging_billing_account_exclusion_billing_account_exclusion_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BillingAccountExclusion(
    String name, {
    BillingAccountExclusionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/billingAccountExclusion:BillingAccountExclusion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    billingAccount = registerOutput<String>('billingAccount');
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [BillingAccountExclusion] resource's state with the given [name] and [id].
  static BillingAccountExclusion get(
    String name,
    pulumi.Input<String> id, {
    BillingAccountExclusionState? state,
  }) {
    return BillingAccountExclusion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BillingAccountExclusion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/billingAccountExclusion:BillingAccountExclusion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    billingAccount = registerOutput<String>('billingAccount');
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
  }
}
