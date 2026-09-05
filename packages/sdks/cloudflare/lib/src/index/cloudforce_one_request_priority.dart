import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloudforce_one_request_priority_args.dart';
import 'cloudforce_one_request_priority_state.dart';

/// Accepted Permissions
///
/// - `Cloudforce One Read`
/// - `Cloudforce One Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleCloudforceOneRequestPriority = new cloudflare.CloudforceOneRequestPriority("example_cloudforce_one_request_priority", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     labels: [
///         "DoS",
///         "CVE",
///     ],
///     priority: 1,
///     requirement: "DoS attacks carried out by CVEs",
///     tlp: "clear",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_cloudforce_one_request_priority = cloudflare.CloudforceOneRequestPriority("example_cloudforce_one_request_priority",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     labels=[
///         "DoS",
///         "CVE",
///     ],
///     priority=1,
///     requirement="DoS attacks carried out by CVEs",
///     tlp="clear")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCloudforceOneRequestPriority = new Cloudflare.CloudforceOneRequestPriority("example_cloudforce_one_request_priority", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Labels = new[]
///         {
///             "DoS",
///             "CVE",
///         },
///         Priority = 1,
///         Requirement = "DoS attacks carried out by CVEs",
///         Tlp = "clear",
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
/// 		_, err := cloudflare.NewCloudforceOneRequestPriority(ctx, "example_cloudforce_one_request_priority", &cloudflare.CloudforceOneRequestPriorityArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Labels: pulumi.StringArray{
/// 				pulumi.String("DoS"),
/// 				pulumi.String("CVE"),
/// 			},
/// 			Priority:    pulumi.Int(1),
/// 			Requirement: pulumi.String("DoS attacks carried out by CVEs"),
/// 			Tlp:         pulumi.String("clear"),
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
/// resource "cloudflare_cloudforceonerequestpriority" "example_cloudforce_one_request_priority" {
///   account_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   labels      = ["DoS", "CVE"]
///   priority    = 1
///   requirement = "DoS attacks carried out by CVEs"
///   tlp         = "clear"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.CloudforceOneRequestPriority;
/// import com.pulumi.cloudflare.CloudforceOneRequestPriorityArgs;
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
///         var exampleCloudforceOneRequestPriority = new CloudforceOneRequestPriority("exampleCloudforceOneRequestPriority", CloudforceOneRequestPriorityArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .labels(
///                 "DoS",
///                 "CVE")
///             .priority(1)
///             .requirement("DoS attacks carried out by CVEs")
///             .tlp("clear")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCloudforceOneRequestPriority:
///     type: cloudflare:CloudforceOneRequestPriority
///     name: example_cloudforce_one_request_priority
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       labels:
///         - DoS
///         - CVE
///       priority: 1
///       requirement: DoS attacks carried out by CVEs
///       tlp: clear
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/cloudforceOneRequestPriority:CloudforceOneRequestPriority example '<account_id>/<priority_id>'
/// ```
class CloudforceOneRequestPriority extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> completed;
  /// Request content.
  late final pulumi.Output<String> content;
  late final pulumi.Output<String> created;
  /// List of labels.
  late final pulumi.Output<List<String>> labels;
  /// Tokens for the request messages.
  late final pulumi.Output<int> messageTokens;
  /// Priority.
  late final pulumi.Output<int> priority;
  /// Readable Request ID.
  late final pulumi.Output<String> readableId;
  /// Requested information from request.
  late final pulumi.Output<String> request;
  /// Requirement.
  late final pulumi.Output<String> requirement;
  /// Request Status.
  /// Available values: "open", "accepted", "reported", "approved", "completed", "declined".
  late final pulumi.Output<String> status;
  /// Brief description of the request.
  late final pulumi.Output<String> summary;
  /// The CISA defined Traffic Light Protocol (TLP).
  /// Available values: "clear", "amber", "amber-strict", "green", "red".
  late final pulumi.Output<String> tlp;
  /// Tokens for the request.
  late final pulumi.Output<int> tokens;
  late final pulumi.Output<String> updated;

  /// Creates a new [CloudforceOneRequestPriority].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudforceOneRequestPriority]. {@macro pulumi_index_cloudforce_one_request_priority_cloudforce_one_request_priority_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudforceOneRequestPriority(
    String name, {
    CloudforceOneRequestPriorityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/cloudforceOneRequestPriority:CloudforceOneRequestPriority',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    completed = registerOutput<String>('completed');
    content = registerOutput<String>('content');
    created = registerOutput<String>('created');
    labels = registerOutput<List<String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    messageTokens = registerOutput<int>('messageTokens');
    priority = registerOutput<int>('priority');
    readableId = registerOutput<String>('readableId');
    request = registerOutput<String>('request');
    requirement = registerOutput<String>('requirement');
    status = registerOutput<String>('status');
    summary = registerOutput<String>('summary');
    tlp = registerOutput<String>('tlp');
    tokens = registerOutput<int>('tokens');
    updated = registerOutput<String>('updated');
  }

  /// Gets an existing [CloudforceOneRequestPriority] resource's state with the given [name] and [id].
  static CloudforceOneRequestPriority get(
    String name,
    pulumi.Input<String> id, {
    CloudforceOneRequestPriorityState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CloudforceOneRequestPriority._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CloudforceOneRequestPriority._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/cloudforceOneRequestPriority:CloudforceOneRequestPriority',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    completed = registerOutput<String>('completed');
    content = registerOutput<String>('content');
    created = registerOutput<String>('created');
    labels = registerOutput<List<String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    messageTokens = registerOutput<int>('messageTokens');
    priority = registerOutput<int>('priority');
    readableId = registerOutput<String>('readableId');
    request = registerOutput<String>('request');
    requirement = registerOutput<String>('requirement');
    status = registerOutput<String>('status');
    summary = registerOutput<String>('summary');
    tlp = registerOutput<String>('tlp');
    tokens = registerOutput<int>('tokens');
    updated = registerOutput<String>('updated');
  }

  /// Creates a typed reference to an existing [CloudforceOneRequestPriority] resource.
  CloudforceOneRequestPriority.reference(String urn)
    : super(
        'cloudflare:index/cloudforceOneRequestPriority:CloudforceOneRequestPriority',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    completed = registerOutput<String>('completed');
    content = registerOutput<String>('content');
    created = registerOutput<String>('created');
    labels = registerOutput<List<String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    messageTokens = registerOutput<int>('messageTokens');
    priority = registerOutput<int>('priority');
    readableId = registerOutput<String>('readableId');
    request = registerOutput<String>('request');
    requirement = registerOutput<String>('requirement');
    status = registerOutput<String>('status');
    summary = registerOutput<String>('summary');
    tlp = registerOutput<String>('tlp');
    tokens = registerOutput<int>('tokens');
    updated = registerOutput<String>('updated');
  }
}
