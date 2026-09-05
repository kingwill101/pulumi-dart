import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloudforce_one_request_message_args.dart';
import 'cloudforce_one_request_message_state.dart';

/// Accepted Permissions
///
/// - `Cloudforce One Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleCloudforceOneRequestMessage = new cloudflare.CloudforceOneRequestMessage("example_cloudforce_one_request_message", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     requestId: "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///     content: "Can you elaborate on the type of DoS that occurred?",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_cloudforce_one_request_message = cloudflare.CloudforceOneRequestMessage("example_cloudforce_one_request_message",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     request_id="f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///     content="Can you elaborate on the type of DoS that occurred?")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCloudforceOneRequestMessage = new Cloudflare.CloudforceOneRequestMessage("example_cloudforce_one_request_message", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         RequestId = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///         Content = "Can you elaborate on the type of DoS that occurred?",
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
/// 		_, err := cloudflare.NewCloudforceOneRequestMessage(ctx, "example_cloudforce_one_request_message", &cloudflare.CloudforceOneRequestMessageArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			RequestId: pulumi.String("f174e90a-fafe-4643-bbbc-4a0ed4fc8415"),
/// 			Content:   pulumi.String("Can you elaborate on the type of DoS that occurred?"),
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
/// resource "cloudflare_cloudforceonerequestmessage" "example_cloudforce_one_request_message" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   request_id = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415"
///   content    = "Can you elaborate on the type of DoS that occurred?"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.CloudforceOneRequestMessage;
/// import com.pulumi.cloudflare.CloudforceOneRequestMessageArgs;
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
///         var exampleCloudforceOneRequestMessage = new CloudforceOneRequestMessage("exampleCloudforceOneRequestMessage", CloudforceOneRequestMessageArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .requestId("f174e90a-fafe-4643-bbbc-4a0ed4fc8415")
///             .content("Can you elaborate on the type of DoS that occurred?")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCloudforceOneRequestMessage:
///     type: cloudflare:CloudforceOneRequestMessage
///     name: example_cloudforce_one_request_message
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       requestId: f174e90a-fafe-4643-bbbc-4a0ed4fc8415
///       content: Can you elaborate on the type of DoS that occurred?
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/cloudforceOneRequestMessage:CloudforceOneRequestMessage example '<account_id>/<request_id>/<page>/<per_page>'
/// ```
class CloudforceOneRequestMessage extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// Author of message.
  late final pulumi.Output<String> author;
  /// Content of message.
  late final pulumi.Output<String?> content;
  /// Defines the message creation time.
  late final pulumi.Output<String> created;
  /// Whether the message is a follow-on request.
  late final pulumi.Output<bool> isFollowOnRequest;
  /// UUID.
  late final pulumi.Output<String> requestId;
  /// Defines the message last updated time.
  late final pulumi.Output<String> updated;

  /// Creates a new [CloudforceOneRequestMessage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudforceOneRequestMessage]. {@macro pulumi_index_cloudforce_one_request_message_cloudforce_one_request_message_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudforceOneRequestMessage(
    String name, {
    CloudforceOneRequestMessageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/cloudforceOneRequestMessage:CloudforceOneRequestMessage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    author = registerOutput<String>('author');
    content = registerOutput<String?>('content');
    created = registerOutput<String>('created');
    isFollowOnRequest = registerOutput<bool>('isFollowOnRequest');
    requestId = registerOutput<String>('requestId');
    updated = registerOutput<String>('updated');
  }

  /// Gets an existing [CloudforceOneRequestMessage] resource's state with the given [name] and [id].
  static CloudforceOneRequestMessage get(
    String name,
    pulumi.Input<String> id, {
    CloudforceOneRequestMessageState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CloudforceOneRequestMessage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CloudforceOneRequestMessage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/cloudforceOneRequestMessage:CloudforceOneRequestMessage',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    author = registerOutput<String>('author');
    content = registerOutput<String?>('content');
    created = registerOutput<String>('created');
    isFollowOnRequest = registerOutput<bool>('isFollowOnRequest');
    requestId = registerOutput<String>('requestId');
    updated = registerOutput<String>('updated');
  }

  /// Creates a typed reference to an existing [CloudforceOneRequestMessage] resource.
  CloudforceOneRequestMessage.reference(String urn)
    : super(
        'cloudflare:index/cloudforceOneRequestMessage:CloudforceOneRequestMessage',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    author = registerOutput<String>('author');
    content = registerOutput<String?>('content');
    created = registerOutput<String>('created');
    isFollowOnRequest = registerOutput<bool>('isFollowOnRequest');
    requestId = registerOutput<String>('requestId');
    updated = registerOutput<String>('updated');
  }
}
