import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_security_custom_topics_args.dart';
import 'ai_security_custom_topics_state.dart';
import 'ai_security_custom_topics_topic.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleAiSecurityCustomTopics = new cloudflare.AiSecurityCustomTopics("example_ai_security_custom_topics", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     topics: [{
///         label: "credit-cards",
///         topic: "credit card numbers",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_ai_security_custom_topics = cloudflare.AiSecurityCustomTopics("example_ai_security_custom_topics",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     topics=[{
///         "label": "credit-cards",
///         "topic": "credit card numbers",
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
///     var exampleAiSecurityCustomTopics = new Cloudflare.AiSecurityCustomTopics("example_ai_security_custom_topics", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Topics = new[]
///         {
///             new Cloudflare.Inputs.AiSecurityCustomTopicsTopicArgs
///             {
///                 Label = "credit-cards",
///                 Topic = "credit card numbers",
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
/// 		_, err := cloudflare.NewAiSecurityCustomTopics(ctx, "example_ai_security_custom_topics", &cloudflare.AiSecurityCustomTopicsArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Topics: cloudflare.AiSecurityCustomTopicsTopicArray{
/// 				&cloudflare.AiSecurityCustomTopicsTopicArgs{
/// 					Label: pulumi.String("credit-cards"),
/// 					Topic: pulumi.String("credit card numbers"),
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
/// terraform {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_ai_security_custom_topics" "example_ai_security_custom_topics" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   topics = [{
///     label = "credit-cards"
///     topic = "credit card numbers"
///   }]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.AiSecurityCustomTopics;
/// import com.pulumi.cloudflare.AiSecurityCustomTopicsArgs;
/// import com.pulumi.cloudflare.inputs.AiSecurityCustomTopicsTopicArgs;
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
///         var exampleAiSecurityCustomTopics = new AiSecurityCustomTopics("exampleAiSecurityCustomTopics", AiSecurityCustomTopicsArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .topics(AiSecurityCustomTopicsTopicArgs.builder()
///                 .label("credit-cards")
///                 .topic("credit card numbers")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAiSecurityCustomTopics:
///     type: cloudflare:AiSecurityCustomTopics
///     name: example_ai_security_custom_topics
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       topics:
///         - label: credit-cards
///           topic: credit card numbers
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/aiSecurityCustomTopics:AiSecurityCustomTopics example '<zone_id>'
/// ```
class AiSecurityCustomTopics extends pulumi.CustomResource {
  /// Custom topic categories for AI Security for Apps content detection.
  late final pulumi.Output<List<AiSecurityCustomTopicsTopic>?> topics;
  /// Defines the zone.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [AiSecurityCustomTopics].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiSecurityCustomTopics]. {@macro pulumi_index_ai_security_custom_topics_ai_security_custom_topics_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiSecurityCustomTopics(
    String name, {
    AiSecurityCustomTopicsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/aiSecurityCustomTopics:AiSecurityCustomTopics',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
        ) {
    topics = registerOutput<List<AiSecurityCustomTopicsTopic>?>('topics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiSecurityCustomTopicsTopic>(guardedValue, (value) => AiSecurityCustomTopicsTopic.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [AiSecurityCustomTopics] resource's state with the given [name] and [id].
  static AiSecurityCustomTopics get(
    String name,
    pulumi.Input<String> id, {
    AiSecurityCustomTopicsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiSecurityCustomTopics._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiSecurityCustomTopics._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/aiSecurityCustomTopics:AiSecurityCustomTopics',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    topics = registerOutput<List<AiSecurityCustomTopicsTopic>?>('topics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiSecurityCustomTopicsTopic>(guardedValue, (value) => AiSecurityCustomTopicsTopic.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [AiSecurityCustomTopics] resource.
  AiSecurityCustomTopics.reference(String urn)
    : super(
        'cloudflare:index/aiSecurityCustomTopics:AiSecurityCustomTopics',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    topics = registerOutput<List<AiSecurityCustomTopicsTopic>?>('topics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiSecurityCustomTopicsTopic>(guardedValue, (value) => AiSecurityCustomTopicsTopic.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }
}
