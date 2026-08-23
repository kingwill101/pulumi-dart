import 'package:pulumi/pulumi.dart' as pulumi;
import 'byoip_prefix_args.dart';
import 'byoip_prefix_state.dart';

/// Provides a DigitalOcean BYOIP (Bring Your Own IP) prefix resource. This can be used to
/// create, modify, and delete BYOIP prefixes.
///
/// BYOIP prefixes allow you to bring your own IP address space to DigitalOcean. You can
/// use this feature to maintain your IP reputation or meet specific compliance requirements.
///
/// BYOIP prefix provisioning documentation: https://docs.digitalocean.com/products/networking/reserved-ips/how-to/provision-byoip/
///
/// Note: By default, newly provisioned BYOIP prefixes are not advertised to the internet. After the initial `pulumi up`, BYOIP provisioning request is initiated and DigitalOcean provisions the prefix, the prefix status changes to Active. At this point, you can initiate advertising prefix to the internet by setting field `advertised = true` and apply the configuration to make your prefix fully usable and accessible from the internet.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// // Create a new BYOIP prefix
/// const example = new digitalocean.ByoipPrefix("example", {
///     prefix: "192.0.2.0/24",
///     signature: prefixSignature,
///     region: "nyc3",
///     advertised: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// # Create a new BYOIP prefix
/// example = digitalocean.ByoipPrefix("example",
///     prefix="192.0.2.0/24",
///     signature=prefix_signature,
///     region="nyc3",
///     advertised=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new BYOIP prefix
///     var example = new DigitalOcean.ByoipPrefix("example", new()
///     {
///         Prefix = "192.0.2.0/24",
///         Signature = prefixSignature,
///         Region = "nyc3",
///         Advertised = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a new BYOIP prefix
/// 		_, err := digitalocean.NewByoipPrefix(ctx, "example", &digitalocean.ByoipPrefixArgs{
/// 			Prefix:     pulumi.String("192.0.2.0/24"),
/// 			Signature:  pulumi.Any(prefixSignature),
/// 			Region:     pulumi.String("nyc3"),
/// 			Advertised: pulumi.Bool(false),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// # Create a new BYOIP prefix
/// resource "digitalocean_byoipprefix" "example" {
///   prefix     = "192.0.2.0/24"
///   signature  = prefixSignature
///   region     = "nyc3"
///   advertised = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.ByoipPrefix;
/// import com.pulumi.digitalocean.ByoipPrefixArgs;
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
///         // Create a new BYOIP prefix
///         var example = new ByoipPrefix("example", ByoipPrefixArgs.builder()
///             .prefix("192.0.2.0/24")
///             .signature(prefixSignature)
///             .region("nyc3")
///             .advertised(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new BYOIP prefix
///   example:
///     type: digitalocean:ByoipPrefix
///     properties:
///       prefix: 192.0.2.0/24
///       signature: ${prefixSignature}
///       region: nyc3
///       advertised: false
/// ```
///
///
/// ## Import
///
/// BYOIP prefixes can be imported using the prefix `uuid`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/byoipPrefix:ByoipPrefix example 506f78a4-e098-11e5-ad9f-000f53306ae1
/// ```
class ByoipPrefix extends pulumi.CustomResource {
  /// A boolean indicating whether the prefix should be advertised.
  /// Defaults to `false`.
  late final pulumi.Output<bool?> advertised;
  /// The reason for failure if the status is "failed".
  late final pulumi.Output<String> failureReason;
  /// The CIDR notation of the prefix (e.g., "192.0.2.0/24").
  late final pulumi.Output<String> prefix;
  /// The DigitalOcean region where the prefix will be deployed.
  late final pulumi.Output<String> region;
  /// The cryptographic signature proving ownership of the prefix.
  /// This is required during creation but can be omitted in subsequent updates.
  late final pulumi.Output<String?> signature;
  /// The current status of the BYOIP prefix (e.g., "verified", "pending", "failed").
  late final pulumi.Output<String> status;
  /// The UUID of the BYOIP prefix.
  late final pulumi.Output<String> uuid;

  /// Creates a new [ByoipPrefix].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ByoipPrefix]. {@macro pulumi_index_byoip_prefix_byoip_prefix_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ByoipPrefix(
    String name, {
    ByoipPrefixArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/byoipPrefix:ByoipPrefix',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advertised = registerOutput<bool?>('advertised');
    failureReason = registerOutput<String>('failureReason');
    prefix = registerOutput<String>('prefix');
    region = registerOutput<String>('region');
    signature = registerOutput<String?>('signature');
    status = registerOutput<String>('status');
    uuid = registerOutput<String>('uuid');
  }

  /// Gets an existing [ByoipPrefix] resource's state with the given [name] and [id].
  static ByoipPrefix get(
    String name,
    pulumi.Input<String> id, {
    ByoipPrefixState? state,
  }) {
    return ByoipPrefix._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ByoipPrefix._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/byoipPrefix:ByoipPrefix',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advertised = registerOutput<bool?>('advertised');
    failureReason = registerOutput<String>('failureReason');
    prefix = registerOutput<String>('prefix');
    region = registerOutput<String>('region');
    signature = registerOutput<String?>('signature');
    status = registerOutput<String>('status');
    uuid = registerOutput<String>('uuid');
  }
}
