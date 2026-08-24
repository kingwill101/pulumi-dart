import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloudforce_one_request_args.dart';
import 'cloudforce_one_request_state.dart';

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
/// const exampleCloudforceOneRequest = new cloudflare.CloudforceOneRequest("example_cloudforce_one_request", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     content: "What regions were most effected by the recent DoS?",
///     priority: "routine",
///     requestType: "Victomology",
///     summary: "DoS attack",
///     tlp: "clear",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_cloudforce_one_request = cloudflare.CloudforceOneRequest("example_cloudforce_one_request",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     content="What regions were most effected by the recent DoS?",
///     priority="routine",
///     request_type="Victomology",
///     summary="DoS attack",
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
///     var exampleCloudforceOneRequest = new Cloudflare.CloudforceOneRequest("example_cloudforce_one_request", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Content = "What regions were most effected by the recent DoS?",
///         Priority = "routine",
///         RequestType = "Victomology",
///         Summary = "DoS attack",
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
/// 		_, err := cloudflare.NewCloudforceOneRequest(ctx, "example_cloudforce_one_request", &cloudflare.CloudforceOneRequestArgs{
/// 			AccountId:   pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Content:     pulumi.String("What regions were most effected by the recent DoS?"),
/// 			Priority:    pulumi.String("routine"),
/// 			RequestType: pulumi.String("Victomology"),
/// 			Summary:     pulumi.String("DoS attack"),
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
/// resource "cloudflare_cloudforceonerequest" "example_cloudforce_one_request" {
///   account_id   = "023e105f4ecef8ad9ca31a8372d0c353"
///   content      = "What regions were most effected by the recent DoS?"
///   priority     = "routine"
///   request_type = "Victomology"
///   summary      = "DoS attack"
///   tlp          = "clear"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.CloudforceOneRequest;
/// import com.pulumi.cloudflare.CloudforceOneRequestArgs;
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
///         var exampleCloudforceOneRequest = new CloudforceOneRequest("exampleCloudforceOneRequest", CloudforceOneRequestArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .content("What regions were most effected by the recent DoS?")
///             .priority("routine")
///             .requestType("Victomology")
///             .summary("DoS attack")
///             .tlp("clear")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCloudforceOneRequest:
///     type: cloudflare:CloudforceOneRequest
///     name: example_cloudforce_one_request
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       content: What regions were most effected by the recent DoS?
///       priority: routine
///       requestType: Victomology
///       summary: DoS attack
///       tlp: clear
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/cloudforceOneRequest:CloudforceOneRequest example '<account_id>/<request_id>'
/// ```
class CloudforceOneRequest extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> completed;
  /// Request content.
  late final pulumi.Output<String?> content;
  late final pulumi.Output<String> created;
  /// Tokens for the request messages.
  late final pulumi.Output<int> messageTokens;
  /// Priority for analyzing the request.
  late final pulumi.Output<String?> priority;
  /// Readable Request ID.
  late final pulumi.Output<String> readableId;
  /// Requested information from request.
  late final pulumi.Output<String> request;
  /// Requested information from request.
  late final pulumi.Output<String?> requestType;
  /// Request Status.
  /// Available values: "open", "accepted", "reported", "approved", "completed", "declined".
  late final pulumi.Output<String> status;
  /// Brief description of the request.
  late final pulumi.Output<String?> summary;
  /// The CISA defined Traffic Light Protocol (TLP).
  /// Available values: "clear", "amber", "amber-strict", "green", "red".
  late final pulumi.Output<String?> tlp;
  /// Tokens for the request.
  late final pulumi.Output<int> tokens;
  late final pulumi.Output<String> updated;

  /// Creates a new [CloudforceOneRequest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudforceOneRequest]. {@macro pulumi_index_cloudforce_one_request_cloudforce_one_request_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudforceOneRequest(
    String name, {
    CloudforceOneRequestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/cloudforceOneRequest:CloudforceOneRequest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    completed = registerOutput<String>('completed');
    content = registerOutput<String?>('content');
    created = registerOutput<String>('created');
    messageTokens = registerOutput<int>('messageTokens');
    priority = registerOutput<String?>('priority');
    readableId = registerOutput<String>('readableId');
    request = registerOutput<String>('request');
    requestType = registerOutput<String?>('requestType');
    status = registerOutput<String>('status');
    summary = registerOutput<String?>('summary');
    tlp = registerOutput<String?>('tlp');
    tokens = registerOutput<int>('tokens');
    updated = registerOutput<String>('updated');
  }

  /// Gets an existing [CloudforceOneRequest] resource's state with the given [name] and [id].
  static CloudforceOneRequest get(
    String name,
    pulumi.Input<String> id, {
    CloudforceOneRequestState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CloudforceOneRequest._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CloudforceOneRequest._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/cloudforceOneRequest:CloudforceOneRequest',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    completed = registerOutput<String>('completed');
    content = registerOutput<String?>('content');
    created = registerOutput<String>('created');
    messageTokens = registerOutput<int>('messageTokens');
    priority = registerOutput<String?>('priority');
    readableId = registerOutput<String>('readableId');
    request = registerOutput<String>('request');
    requestType = registerOutput<String?>('requestType');
    status = registerOutput<String>('status');
    summary = registerOutput<String?>('summary');
    tlp = registerOutput<String?>('tlp');
    tokens = registerOutput<int>('tokens');
    updated = registerOutput<String>('updated');
  }

  /// Creates a typed reference to an existing [CloudforceOneRequest] resource.
  CloudforceOneRequest.reference(String urn)
    : super(
        'cloudflare:index/cloudforceOneRequest:CloudforceOneRequest',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    completed = registerOutput<String>('completed');
    content = registerOutput<String?>('content');
    created = registerOutput<String>('created');
    messageTokens = registerOutput<int>('messageTokens');
    priority = registerOutput<String?>('priority');
    readableId = registerOutput<String>('readableId');
    request = registerOutput<String>('request');
    requestType = registerOutput<String?>('requestType');
    status = registerOutput<String>('status');
    summary = registerOutput<String?>('summary');
    tlp = registerOutput<String?>('tlp');
    tokens = registerOutput<int>('tokens');
    updated = registerOutput<String>('updated');
  }
}
