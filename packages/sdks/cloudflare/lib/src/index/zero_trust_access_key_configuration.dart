import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_key_configuration_args.dart';
import 'zero_trust_access_key_configuration_state.dart';

/// Accepted Permissions
///
/// - `Access: Organizations, Identity Providers, and Groups Read`
/// - `Access: Organizations, Identity Providers, and Groups Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustAccessKeyConfiguration = new cloudflare.ZeroTrustAccessKeyConfiguration("example_zero_trust_access_key_configuration", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     keyRotationIntervalDays: 30,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_access_key_configuration = cloudflare.ZeroTrustAccessKeyConfiguration("example_zero_trust_access_key_configuration",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     key_rotation_interval_days=float(30))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustAccessKeyConfiguration = new Cloudflare.ZeroTrustAccessKeyConfiguration("example_zero_trust_access_key_configuration", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         KeyRotationIntervalDays = 30,
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
/// 		_, err := cloudflare.NewZeroTrustAccessKeyConfiguration(ctx, "example_zero_trust_access_key_configuration", &cloudflare.ZeroTrustAccessKeyConfigurationArgs{
/// 			AccountId:               pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			KeyRotationIntervalDays: pulumi.Float64(30),
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
/// resource "cloudflare_zerotrustaccesskeyconfiguration" "example_zero_trust_access_key_configuration" {
///   account_id                 = "023e105f4ecef8ad9ca31a8372d0c353"
///   key_rotation_interval_days = 30
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustAccessKeyConfiguration;
/// import com.pulumi.cloudflare.ZeroTrustAccessKeyConfigurationArgs;
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
///         var exampleZeroTrustAccessKeyConfiguration = new ZeroTrustAccessKeyConfiguration("exampleZeroTrustAccessKeyConfiguration", ZeroTrustAccessKeyConfigurationArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .keyRotationIntervalDays(30.0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustAccessKeyConfiguration:
///     type: cloudflare:ZeroTrustAccessKeyConfiguration
///     name: example_zero_trust_access_key_configuration
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       keyRotationIntervalDays: 30
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustAccessKeyConfiguration:ZeroTrustAccessKeyConfiguration example '<account_id>'
/// ```
class ZeroTrustAccessKeyConfiguration extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// The number of days until the next key rotation.
  late final pulumi.Output<double> daysUntilNextRotation;
  /// The number of days between key rotations.
  late final pulumi.Output<double> keyRotationIntervalDays;
  /// The timestamp of the previous key rotation.
  late final pulumi.Output<String> lastKeyRotationAt;

  /// Creates a new [ZeroTrustAccessKeyConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustAccessKeyConfiguration]. {@macro pulumi_index_zero_trust_access_key_configuration_zero_trust_access_key_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustAccessKeyConfiguration(
    String name, {
    ZeroTrustAccessKeyConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustAccessKeyConfiguration:ZeroTrustAccessKeyConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    daysUntilNextRotation = registerOutput<double>('daysUntilNextRotation');
    keyRotationIntervalDays = registerOutput<double>('keyRotationIntervalDays');
    lastKeyRotationAt = registerOutput<String>('lastKeyRotationAt');
  }

  /// Gets an existing [ZeroTrustAccessKeyConfiguration] resource's state with the given [name] and [id].
  static ZeroTrustAccessKeyConfiguration get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustAccessKeyConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustAccessKeyConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustAccessKeyConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustAccessKeyConfiguration:ZeroTrustAccessKeyConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    daysUntilNextRotation = registerOutput<double>('daysUntilNextRotation');
    keyRotationIntervalDays = registerOutput<double>('keyRotationIntervalDays');
    lastKeyRotationAt = registerOutput<String>('lastKeyRotationAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustAccessKeyConfiguration] resource.
  ZeroTrustAccessKeyConfiguration.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustAccessKeyConfiguration:ZeroTrustAccessKeyConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    daysUntilNextRotation = registerOutput<double>('daysUntilNextRotation');
    keyRotationIntervalDays = registerOutput<double>('keyRotationIntervalDays');
    lastKeyRotationAt = registerOutput<String>('lastKeyRotationAt');
  }
}
