import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_mutual_tls_hostname_settings_args.dart';
import 'access_mutual_tls_hostname_settings_setting.dart';
import 'access_mutual_tls_hostname_settings_state.dart';

/// Accepted Permissions
///
/// - `Access: Mutual TLS Certificates Read`
/// - `Access: Mutual TLS Certificates Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustAccessMtlsHostnameSettings = new cloudflare.ZeroTrustAccessMtlsHostnameSettings("example_zero_trust_access_mtls_hostname_settings", {
///     settings: [{
///         chinaNetwork: false,
///         clientCertificateForwarding: true,
///         hostname: "admin.example.com",
///     }],
///     zoneId: "zone_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_access_mtls_hostname_settings = cloudflare.ZeroTrustAccessMtlsHostnameSettings("example_zero_trust_access_mtls_hostname_settings",
///     settings=[{
///         "china_network": False,
///         "client_certificate_forwarding": True,
///         "hostname": "admin.example.com",
///     }],
///     zone_id="zone_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustAccessMtlsHostnameSettings = new Cloudflare.ZeroTrustAccessMtlsHostnameSettings("example_zero_trust_access_mtls_hostname_settings", new()
///     {
///         Settings = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustAccessMtlsHostnameSettingsSettingArgs
///             {
///                 ChinaNetwork = false,
///                 ClientCertificateForwarding = true,
///                 Hostname = "admin.example.com",
///             },
///         },
///         ZoneId = "zone_id",
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
/// 		_, err := cloudflare.NewZeroTrustAccessMtlsHostnameSettings(ctx, "example_zero_trust_access_mtls_hostname_settings", &cloudflare.ZeroTrustAccessMtlsHostnameSettingsArgs{
/// 			Settings: cloudflare.ZeroTrustAccessMtlsHostnameSettingsSettingArray{
/// 				&cloudflare.ZeroTrustAccessMtlsHostnameSettingsSettingArgs{
/// 					ChinaNetwork:                pulumi.Bool(false),
/// 					ClientCertificateForwarding: pulumi.Bool(true),
/// 					Hostname:                    pulumi.String("admin.example.com"),
/// 				},
/// 			},
/// 			ZoneId: pulumi.String("zone_id"),
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
/// resource "cloudflare_zerotrustaccessmtlshostnamesettings" "example_zero_trust_access_mtls_hostname_settings" {
///   settings {
///     china_network                 = false
///     client_certificate_forwarding = true
///     hostname                      = "admin.example.com"
///   }
///   zone_id = "zone_id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustAccessMtlsHostnameSettings;
/// import com.pulumi.cloudflare.ZeroTrustAccessMtlsHostnameSettingsArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessMtlsHostnameSettingsSettingArgs;
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
///         var exampleZeroTrustAccessMtlsHostnameSettings = new ZeroTrustAccessMtlsHostnameSettings("exampleZeroTrustAccessMtlsHostnameSettings", ZeroTrustAccessMtlsHostnameSettingsArgs.builder()
///             .settings(ZeroTrustAccessMtlsHostnameSettingsSettingArgs.builder()
///                 .chinaNetwork(false)
///                 .clientCertificateForwarding(true)
///                 .hostname("admin.example.com")
///                 .build())
///             .zoneId("zone_id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustAccessMtlsHostnameSettings:
///     type: cloudflare:ZeroTrustAccessMtlsHostnameSettings
///     name: example_zero_trust_access_mtls_hostname_settings
///     properties:
///       settings:
///         - chinaNetwork: false
///           clientCertificateForwarding: true
///           hostname: admin.example.com
///       zoneId: zone_id
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class AccessMutualTlsHostnameSettings extends pulumi.CustomResource {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  late final pulumi.Output<String?> accountId;
  /// Request client certificates for this hostname in China. Can only be set to true if this zone is china network enabled.
  late final pulumi.Output<bool> chinaNetwork;
  /// Client Certificate Forwarding is a feature that takes the client cert provided by the eyeball to the edge, and forwards it to the origin as a HTTP header to allow logging on the origin.
  late final pulumi.Output<bool> clientCertificateForwarding;
  /// The hostname that these settings apply to.
  late final pulumi.Output<String> hostname;
  late final pulumi.Output<List<AccessMutualTlsHostnameSettingsSetting>> settings;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [AccessMutualTlsHostnameSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessMutualTlsHostnameSettings]. {@macro pulumi_index_access_mutual_tls_hostname_settings_access_mutual_tls_hostname_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessMutualTlsHostnameSettings(
    String name, {
    AccessMutualTlsHostnameSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accessMutualTlsHostnameSettings:AccessMutualTlsHostnameSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String?>('accountId');
    chinaNetwork = registerOutput<bool>('chinaNetwork');
    clientCertificateForwarding = registerOutput<bool>('clientCertificateForwarding');
    hostname = registerOutput<String>('hostname');
    settings = registerOutput<List<AccessMutualTlsHostnameSettingsSetting>>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessMutualTlsHostnameSettingsSetting>(guardedValue, (value) => AccessMutualTlsHostnameSettingsSetting.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [AccessMutualTlsHostnameSettings] resource's state with the given [name] and [id].
  static AccessMutualTlsHostnameSettings get(
    String name,
    pulumi.Input<String> id, {
    AccessMutualTlsHostnameSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccessMutualTlsHostnameSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccessMutualTlsHostnameSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accessMutualTlsHostnameSettings:AccessMutualTlsHostnameSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    chinaNetwork = registerOutput<bool>('chinaNetwork');
    clientCertificateForwarding = registerOutput<bool>('clientCertificateForwarding');
    hostname = registerOutput<String>('hostname');
    settings = registerOutput<List<AccessMutualTlsHostnameSettingsSetting>>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessMutualTlsHostnameSettingsSetting>(guardedValue, (value) => AccessMutualTlsHostnameSettingsSetting.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Creates a typed reference to an existing [AccessMutualTlsHostnameSettings] resource.
  AccessMutualTlsHostnameSettings.reference(String urn)
    : super(
        'cloudflare:index/accessMutualTlsHostnameSettings:AccessMutualTlsHostnameSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String?>('accountId');
    chinaNetwork = registerOutput<bool>('chinaNetwork');
    clientCertificateForwarding = registerOutput<bool>('clientCertificateForwarding');
    hostname = registerOutput<String>('hostname');
    settings = registerOutput<List<AccessMutualTlsHostnameSettingsSetting>>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessMutualTlsHostnameSettingsSetting>(guardedValue, (value) => AccessMutualTlsHostnameSettingsSetting.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String?>('zoneId');
  }
}
