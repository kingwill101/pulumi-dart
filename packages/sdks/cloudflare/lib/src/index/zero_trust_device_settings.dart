import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_settings_args.dart';
import 'zero_trust_device_settings_state.dart';

/// Accepted Permissions
///
/// - `Zero Trust Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustDeviceSettings = new cloudflare.ZeroTrustDeviceSettings("example_zero_trust_device_settings", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     disableForTime: 0,
///     externalEmergencySignalEnabled: true,
///     externalEmergencySignalFingerprint: "abcd1234567890abcd1234567890abcd1234567890abcd1234567890abcd1234",
///     externalEmergencySignalInterval: "5m",
///     externalEmergencySignalUrl: "https://192.0.2.1/signal",
///     gatewayProxyEnabled: true,
///     gatewayUdpProxyEnabled: true,
///     rootCertificateInstallationEnabled: true,
///     useZtVirtualIp: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_device_settings = cloudflare.ZeroTrustDeviceSettings("example_zero_trust_device_settings",
///     account_id="699d98642c564d2e855e9661899b7252",
///     disable_for_time=float(0),
///     external_emergency_signal_enabled=True,
///     external_emergency_signal_fingerprint="abcd1234567890abcd1234567890abcd1234567890abcd1234567890abcd1234",
///     external_emergency_signal_interval="5m",
///     external_emergency_signal_url="https://192.0.2.1/signal",
///     gateway_proxy_enabled=True,
///     gateway_udp_proxy_enabled=True,
///     root_certificate_installation_enabled=True,
///     use_zt_virtual_ip=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustDeviceSettings = new Cloudflare.ZeroTrustDeviceSettings("example_zero_trust_device_settings", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         DisableForTime = 0,
///         ExternalEmergencySignalEnabled = true,
///         ExternalEmergencySignalFingerprint = "abcd1234567890abcd1234567890abcd1234567890abcd1234567890abcd1234",
///         ExternalEmergencySignalInterval = "5m",
///         ExternalEmergencySignalUrl = "https://192.0.2.1/signal",
///         GatewayProxyEnabled = true,
///         GatewayUdpProxyEnabled = true,
///         RootCertificateInstallationEnabled = true,
///         UseZtVirtualIp = true,
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
/// 		_, err := cloudflare.NewZeroTrustDeviceSettings(ctx, "example_zero_trust_device_settings", &cloudflare.ZeroTrustDeviceSettingsArgs{
/// 			AccountId:                          pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			DisableForTime:                     pulumi.Float64(0),
/// 			ExternalEmergencySignalEnabled:     pulumi.Bool(true),
/// 			ExternalEmergencySignalFingerprint: pulumi.String("abcd1234567890abcd1234567890abcd1234567890abcd1234567890abcd1234"),
/// 			ExternalEmergencySignalInterval:    pulumi.String("5m"),
/// 			ExternalEmergencySignalUrl:         pulumi.String("https://192.0.2.1/signal"),
/// 			GatewayProxyEnabled:                pulumi.Bool(true),
/// 			GatewayUdpProxyEnabled:             pulumi.Bool(true),
/// 			RootCertificateInstallationEnabled: pulumi.Bool(true),
/// 			UseZtVirtualIp:                     pulumi.Bool(true),
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
/// resource "cloudflare_zerotrustdevicesettings" "example_zero_trust_device_settings" {
///   account_id                            = "699d98642c564d2e855e9661899b7252"
///   disable_for_time                      = 0
///   external_emergency_signal_enabled     = true
///   external_emergency_signal_fingerprint = "abcd1234567890abcd1234567890abcd1234567890abcd1234567890abcd1234"
///   external_emergency_signal_interval    = "5m"
///   external_emergency_signal_url         = "https://192.0.2.1/signal"
///   gateway_proxy_enabled                 = true
///   gateway_udp_proxy_enabled             = true
///   root_certificate_installation_enabled = true
///   use_zt_virtual_ip                     = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDeviceSettings;
/// import com.pulumi.cloudflare.ZeroTrustDeviceSettingsArgs;
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
///         var exampleZeroTrustDeviceSettings = new ZeroTrustDeviceSettings("exampleZeroTrustDeviceSettings", ZeroTrustDeviceSettingsArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .disableForTime(0.0)
///             .externalEmergencySignalEnabled(true)
///             .externalEmergencySignalFingerprint("abcd1234567890abcd1234567890abcd1234567890abcd1234567890abcd1234")
///             .externalEmergencySignalInterval("5m")
///             .externalEmergencySignalUrl("https://192.0.2.1/signal")
///             .gatewayProxyEnabled(true)
///             .gatewayUdpProxyEnabled(true)
///             .rootCertificateInstallationEnabled(true)
///             .useZtVirtualIp(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDeviceSettings:
///     type: cloudflare:ZeroTrustDeviceSettings
///     name: example_zero_trust_device_settings
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       disableForTime: 0
///       externalEmergencySignalEnabled: true
///       externalEmergencySignalFingerprint: abcd1234567890abcd1234567890abcd1234567890abcd1234567890abcd1234
///       externalEmergencySignalInterval: 5m
///       externalEmergencySignalUrl: https://192.0.2.1/signal
///       gatewayProxyEnabled: true
///       gatewayUdpProxyEnabled: true
///       rootCertificateInstallationEnabled: true
///       useZtVirtualIp: true
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class ZeroTrustDeviceSettings extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Sets the time limit, in seconds, that a user can use an override code to bypass WARP.
  late final pulumi.Output<double?> disableForTime;
  /// Controls whether the external emergency disconnect feature is enabled.
  late final pulumi.Output<bool?> externalEmergencySignalEnabled;
  /// The SHA256 fingerprint (64 hexadecimal characters) of the HTTPS server certificate for the external*emergency*signal_url. If provided, the WARP client will use this value to verify the server's identity. The device will ignore any response if the server's certificate fingerprint does not exactly match this value.
  late final pulumi.Output<String?> externalEmergencySignalFingerprint;
  /// The interval at which the WARP client fetches the emergency disconnect signal, formatted as a duration string (e.g., "5m", "2m30s", "1h"). Minimum 30 seconds.
  late final pulumi.Output<String?> externalEmergencySignalInterval;
  /// The HTTPS URL from which to fetch the emergency disconnect signal. Must use HTTPS and have an IPv4 or IPv6 address as the host.
  late final pulumi.Output<String?> externalEmergencySignalUrl;
  /// Enable gateway proxy filtering on TCP.
  late final pulumi.Output<bool?> gatewayProxyEnabled;
  /// Enable gateway proxy filtering on UDP.
  late final pulumi.Output<bool?> gatewayUdpProxyEnabled;
  /// Enable installation of cloudflare managed root certificate.
  late final pulumi.Output<bool?> rootCertificateInstallationEnabled;
  /// Enable using CGNAT virtual IPv4.
  late final pulumi.Output<bool?> useZtVirtualIp;

  /// Creates a new [ZeroTrustDeviceSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDeviceSettings]. {@macro pulumi_index_zero_trust_device_settings_zero_trust_device_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDeviceSettings(
    String name, {
    ZeroTrustDeviceSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDeviceSettings:ZeroTrustDeviceSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    disableForTime = registerOutput<double?>('disableForTime');
    externalEmergencySignalEnabled = registerOutput<bool?>('externalEmergencySignalEnabled');
    externalEmergencySignalFingerprint = registerOutput<String?>('externalEmergencySignalFingerprint');
    externalEmergencySignalInterval = registerOutput<String?>('externalEmergencySignalInterval');
    externalEmergencySignalUrl = registerOutput<String?>('externalEmergencySignalUrl');
    gatewayProxyEnabled = registerOutput<bool?>('gatewayProxyEnabled');
    gatewayUdpProxyEnabled = registerOutput<bool?>('gatewayUdpProxyEnabled');
    rootCertificateInstallationEnabled = registerOutput<bool?>('rootCertificateInstallationEnabled');
    useZtVirtualIp = registerOutput<bool?>('useZtVirtualIp');
  }

  /// Gets an existing [ZeroTrustDeviceSettings] resource's state with the given [name] and [id].
  static ZeroTrustDeviceSettings get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDeviceSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDeviceSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDeviceSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDeviceSettings:ZeroTrustDeviceSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    disableForTime = registerOutput<double?>('disableForTime');
    externalEmergencySignalEnabled = registerOutput<bool?>('externalEmergencySignalEnabled');
    externalEmergencySignalFingerprint = registerOutput<String?>('externalEmergencySignalFingerprint');
    externalEmergencySignalInterval = registerOutput<String?>('externalEmergencySignalInterval');
    externalEmergencySignalUrl = registerOutput<String?>('externalEmergencySignalUrl');
    gatewayProxyEnabled = registerOutput<bool?>('gatewayProxyEnabled');
    gatewayUdpProxyEnabled = registerOutput<bool?>('gatewayUdpProxyEnabled');
    rootCertificateInstallationEnabled = registerOutput<bool?>('rootCertificateInstallationEnabled');
    useZtVirtualIp = registerOutput<bool?>('useZtVirtualIp');
  }

  /// Creates a typed reference to an existing [ZeroTrustDeviceSettings] resource.
  ZeroTrustDeviceSettings.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDeviceSettings:ZeroTrustDeviceSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    disableForTime = registerOutput<double?>('disableForTime');
    externalEmergencySignalEnabled = registerOutput<bool?>('externalEmergencySignalEnabled');
    externalEmergencySignalFingerprint = registerOutput<String?>('externalEmergencySignalFingerprint');
    externalEmergencySignalInterval = registerOutput<String?>('externalEmergencySignalInterval');
    externalEmergencySignalUrl = registerOutput<String?>('externalEmergencySignalUrl');
    gatewayProxyEnabled = registerOutput<bool?>('gatewayProxyEnabled');
    gatewayUdpProxyEnabled = registerOutput<bool?>('gatewayUdpProxyEnabled');
    rootCertificateInstallationEnabled = registerOutput<bool?>('rootCertificateInstallationEnabled');
    useZtVirtualIp = registerOutput<bool?>('useZtVirtualIp');
  }
}
