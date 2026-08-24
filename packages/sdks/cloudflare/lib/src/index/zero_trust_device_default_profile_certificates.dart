import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_default_profile_certificates_args.dart';
import 'zero_trust_device_default_profile_certificates_state.dart';

/// Accepted Permissions
///
/// - `SSL and Certificates Read`
/// - `SSL and Certificates Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustDeviceDefaultProfileCertificates = new cloudflare.ZeroTrustDeviceDefaultProfileCertificates("example_zero_trust_device_default_profile_certificates", {
///     zoneId: "699d98642c564d2e855e9661899b7252",
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_device_default_profile_certificates = cloudflare.ZeroTrustDeviceDefaultProfileCertificates("example_zero_trust_device_default_profile_certificates",
///     zone_id="699d98642c564d2e855e9661899b7252",
///     enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustDeviceDefaultProfileCertificates = new Cloudflare.ZeroTrustDeviceDefaultProfileCertificates("example_zero_trust_device_default_profile_certificates", new()
///     {
///         ZoneId = "699d98642c564d2e855e9661899b7252",
///         Enabled = true,
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
/// 		_, err := cloudflare.NewZeroTrustDeviceDefaultProfileCertificates(ctx, "example_zero_trust_device_default_profile_certificates", &cloudflare.ZeroTrustDeviceDefaultProfileCertificatesArgs{
/// 			ZoneId:  pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			Enabled: pulumi.Bool(true),
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
/// resource "cloudflare_zerotrustdevicedefaultprofilecertificates" "example_zero_trust_device_default_profile_certificates" {
///   zone_id = "699d98642c564d2e855e9661899b7252"
///   enabled = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDeviceDefaultProfileCertificates;
/// import com.pulumi.cloudflare.ZeroTrustDeviceDefaultProfileCertificatesArgs;
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
///         var exampleZeroTrustDeviceDefaultProfileCertificates = new ZeroTrustDeviceDefaultProfileCertificates("exampleZeroTrustDeviceDefaultProfileCertificates", ZeroTrustDeviceDefaultProfileCertificatesArgs.builder()
///             .zoneId("699d98642c564d2e855e9661899b7252")
///             .enabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDeviceDefaultProfileCertificates:
///     type: cloudflare:ZeroTrustDeviceDefaultProfileCertificates
///     name: example_zero_trust_device_default_profile_certificates
///     properties:
///       zoneId: 699d98642c564d2e855e9661899b7252
///       enabled: true
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class ZeroTrustDeviceDefaultProfileCertificates extends pulumi.CustomResource {
  /// The current status of the device policy certificate provisioning feature for WARP clients.
  late final pulumi.Output<bool> enabled;
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ZeroTrustDeviceDefaultProfileCertificates].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDeviceDefaultProfileCertificates]. {@macro pulumi_index_zero_trust_device_default_profile_certificates_zero_trust_device_default_profile_certificates_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDeviceDefaultProfileCertificates(
    String name, {
    ZeroTrustDeviceDefaultProfileCertificatesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDeviceDefaultProfileCertificates:ZeroTrustDeviceDefaultProfileCertificates',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    enabled = registerOutput<bool>('enabled');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ZeroTrustDeviceDefaultProfileCertificates] resource's state with the given [name] and [id].
  static ZeroTrustDeviceDefaultProfileCertificates get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDeviceDefaultProfileCertificatesState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDeviceDefaultProfileCertificates._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDeviceDefaultProfileCertificates._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDeviceDefaultProfileCertificates:ZeroTrustDeviceDefaultProfileCertificates',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabled = registerOutput<bool>('enabled');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ZeroTrustDeviceDefaultProfileCertificates] resource.
  ZeroTrustDeviceDefaultProfileCertificates.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDeviceDefaultProfileCertificates:ZeroTrustDeviceDefaultProfileCertificates',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    enabled = registerOutput<bool>('enabled');
    zoneId = registerOutput<String>('zoneId');
  }
}
