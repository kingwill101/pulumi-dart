import 'package:pulumi/pulumi.dart' as pulumi;
import 'moq_relay_args.dart';
import 'moq_relay_config.dart';
import 'moq_relay_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleMoqRelay = new cloudflare.MoqRelay("example_moq_relay", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "Production Live Stream",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_moq_relay = cloudflare.MoqRelay("example_moq_relay",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="Production Live Stream")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleMoqRelay = new Cloudflare.MoqRelay("example_moq_relay", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "Production Live Stream",
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
/// 		_, err := cloudflare.NewMoqRelay(ctx, "example_moq_relay", &cloudflare.MoqRelayArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("Production Live Stream"),
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
/// resource "cloudflare_moq_relay" "example_moq_relay" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name       = "Production Live Stream"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.MoqRelay;
/// import com.pulumi.cloudflare.MoqRelayArgs;
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
///         var exampleMoqRelay = new MoqRelay("exampleMoqRelay", MoqRelayArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("Production Live Stream")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleMoqRelay:
///     type: cloudflare:MoqRelay
///     name: example_moq_relay
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: Production Live Stream
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/moqRelay:MoqRelay example '<account_id>/<relay_id>'
/// ```
class MoqRelay extends pulumi.CustomResource {
  /// Cloudflare account identifier.
  late final pulumi.Output<String> accountId;
  /// upstreams and lingeringSubscribe are mutually exclusive.
  late final pulumi.Output<MoqRelayConfig> config;
  late final pulumi.Output<String> created;
  late final pulumi.Output<String> modified;
  /// Human-readable name for the relay.
  late final pulumi.Output<String> name;
  /// "connected" when active, omitted otherwise.
  /// Available values: "connected".
  late final pulumi.Output<String> status;
  /// Full access token (publish + subscribe). Treat as sensitive.
  late final pulumi.Output<String> tokenPublishSubscribe;
  /// Subscribe-only token. Treat as sensitive.
  late final pulumi.Output<String> tokenSubscribe;
  /// Server-generated unique identifier (32 hex chars).
  late final pulumi.Output<String> uid;

  /// Creates a new [MoqRelay].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MoqRelay]. {@macro pulumi_index_moq_relay_moq_relay_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MoqRelay(
    String name, {
    MoqRelayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/moqRelay:MoqRelay',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.22.1').merge(options),
          additionalSecretOutputs: const ['tokenPublishSubscribe', 'tokenSubscribe'],
        ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<MoqRelayConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MoqRelayConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    created = registerOutput<String>('created');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
    tokenPublishSubscribe = registerOutput<String>('tokenPublishSubscribe', isSecret: true);
    tokenSubscribe = registerOutput<String>('tokenSubscribe', isSecret: true);
    uid = registerOutput<String>('uid');
  }

  /// Gets an existing [MoqRelay] resource's state with the given [name] and [id].
  static MoqRelay get(
    String name,
    pulumi.Input<String> id, {
    MoqRelayState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MoqRelay._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MoqRelay._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/moqRelay:MoqRelay',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<MoqRelayConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MoqRelayConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    created = registerOutput<String>('created');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
    tokenPublishSubscribe = registerOutput<String>('tokenPublishSubscribe', isSecret: true);
    tokenSubscribe = registerOutput<String>('tokenSubscribe', isSecret: true);
    uid = registerOutput<String>('uid');
  }

  /// Creates a typed reference to an existing [MoqRelay] resource.
  MoqRelay.reference(String urn)
    : super(
        'cloudflare:index/moqRelay:MoqRelay',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['tokenPublishSubscribe', 'tokenSubscribe'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<MoqRelayConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MoqRelayConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    created = registerOutput<String>('created');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
    tokenPublishSubscribe = registerOutput<String>('tokenPublishSubscribe', isSecret: true);
    tokenSubscribe = registerOutput<String>('tokenSubscribe', isSecret: true);
    uid = registerOutput<String>('uid');
  }
}
