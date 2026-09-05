import 'package:pulumi/pulumi.dart' as pulumi;
import 'hostname_tls_setting_args.dart';
import 'hostname_tls_setting_state.dart';

/// Accepted Permissions
///
/// - `SSL and Certificates Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleHostnameTlsSetting = new cloudflare.HostnameTlsSetting("example_hostname_tls_setting", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     settingId: "ciphers",
///     hostname: "app.example.com",
///     value: [
///         "ECDHE-RSA-AES128-GCM-SHA256",
///         "AES128-GCM-SHA256",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_hostname_tls_setting = cloudflare.HostnameTlsSetting("example_hostname_tls_setting",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     setting_id="ciphers",
///     hostname="app.example.com",
///     value=[
///         "ECDHE-RSA-AES128-GCM-SHA256",
///         "AES128-GCM-SHA256",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleHostnameTlsSetting = new Cloudflare.HostnameTlsSetting("example_hostname_tls_setting", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         SettingId = "ciphers",
///         Hostname = "app.example.com",
///         Value = new[]
///         {
///             "ECDHE-RSA-AES128-GCM-SHA256",
///             "AES128-GCM-SHA256",
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
/// 		_, err := cloudflare.NewHostnameTlsSetting(ctx, "example_hostname_tls_setting", &cloudflare.HostnameTlsSettingArgs{
/// 			ZoneId:    pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			SettingId: pulumi.String("ciphers"),
/// 			Hostname:  pulumi.String("app.example.com"),
/// 			Value: pulumi.Any{
/// 				"ECDHE-RSA-AES128-GCM-SHA256",
/// 				"AES128-GCM-SHA256",
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
/// pulumi {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_hostnametlssetting" "example_hostname_tls_setting" {
///   zone_id    = "023e105f4ecef8ad9ca31a8372d0c353"
///   setting_id = "ciphers"
///   hostname   = "app.example.com"
///   value      = ["ECDHE-RSA-AES128-GCM-SHA256", "AES128-GCM-SHA256"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.HostnameTlsSetting;
/// import com.pulumi.cloudflare.HostnameTlsSettingArgs;
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
///         var exampleHostnameTlsSetting = new HostnameTlsSetting("exampleHostnameTlsSetting", HostnameTlsSettingArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .settingId("ciphers")
///             .hostname("app.example.com")
///             .value(
///                 "ECDHE-RSA-AES128-GCM-SHA256",
///                 "AES128-GCM-SHA256")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleHostnameTlsSetting:
///     type: cloudflare:HostnameTlsSetting
///     name: example_hostname_tls_setting
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       settingId: ciphers
///       hostname: app.example.com
///       value:
///         - ECDHE-RSA-AES128-GCM-SHA256
///         - AES128-GCM-SHA256
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/hostnameTlsSetting:HostnameTlsSetting example '<zone_id>/<setting_id>/<hostname>'
/// ```
class HostnameTlsSetting extends pulumi.CustomResource {
  /// This is the time the tls setting was originally created for this hostname.
  late final pulumi.Output<String> createdAt;
  /// The hostname for which the tls settings are set.
  late final pulumi.Output<String> hostname;
  /// The TLS Setting name.
  /// The value type depends on the setting:
  late final pulumi.Output<String> settingId;
  /// Deployment status for the given tls setting.
  late final pulumi.Output<String> status;
  /// This is the time the tls setting was updated.
  late final pulumi.Output<String> updatedAt;
  /// The TLS setting value.
  /// The type depends on the `settingId` used in the request path:
  late final pulumi.Output<dynamic> value;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [HostnameTlsSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HostnameTlsSetting]. {@macro pulumi_index_hostname_tls_setting_hostname_tls_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HostnameTlsSetting(
    String name, {
    HostnameTlsSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/hostnameTlsSetting:HostnameTlsSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    createdAt = registerOutput<String>('createdAt');
    hostname = registerOutput<String>('hostname');
    settingId = registerOutput<String>('settingId');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    value = registerOutput<dynamic>('value');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [HostnameTlsSetting] resource's state with the given [name] and [id].
  static HostnameTlsSetting get(
    String name,
    pulumi.Input<String> id, {
    HostnameTlsSettingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return HostnameTlsSetting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  HostnameTlsSetting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/hostnameTlsSetting:HostnameTlsSetting',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    hostname = registerOutput<String>('hostname');
    settingId = registerOutput<String>('settingId');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    value = registerOutput<dynamic>('value');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [HostnameTlsSetting] resource.
  HostnameTlsSetting.reference(String urn)
    : super(
        'cloudflare:index/hostnameTlsSetting:HostnameTlsSetting',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdAt = registerOutput<String>('createdAt');
    hostname = registerOutput<String>('hostname');
    settingId = registerOutput<String>('settingId');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    value = registerOutput<dynamic>('value');
    zoneId = registerOutput<String>('zoneId');
  }
}
