import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_settings_args.dart';
import 'zero_trust_dlp_settings_payload_logging.dart';
import 'zero_trust_dlp_settings_state.dart';

/// Accepted Permissions
///
/// - `Zero Trust Read`
/// - `Zero Trust Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustDlpSettings = new cloudflare.ZeroTrustDlpSettings("example_zero_trust_dlp_settings", {
///     accountId: "account_id",
///     aiContextAnalysis: true,
///     ocr: true,
///     payloadLogging: {
///         maskingLevel: "full",
///         publicKey: "public_key",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_dlp_settings = cloudflare.ZeroTrustDlpSettings("example_zero_trust_dlp_settings",
///     account_id="account_id",
///     ai_context_analysis=True,
///     ocr=True,
///     payload_logging={
///         "masking_level": "full",
///         "public_key": "public_key",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustDlpSettings = new Cloudflare.ZeroTrustDlpSettings("example_zero_trust_dlp_settings", new()
///     {
///         AccountId = "account_id",
///         AiContextAnalysis = true,
///         Ocr = true,
///         PayloadLogging = new Cloudflare.Inputs.ZeroTrustDlpSettingsPayloadLoggingArgs
///         {
///             MaskingLevel = "full",
///             PublicKey = "public_key",
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
/// 		_, err := cloudflare.NewZeroTrustDlpSettings(ctx, "example_zero_trust_dlp_settings", &cloudflare.ZeroTrustDlpSettingsArgs{
/// 			AccountId:         pulumi.String("account_id"),
/// 			AiContextAnalysis: pulumi.Bool(true),
/// 			Ocr:               pulumi.Bool(true),
/// 			PayloadLogging: &cloudflare.ZeroTrustDlpSettingsPayloadLoggingArgs{
/// 				MaskingLevel: pulumi.String("full"),
/// 				PublicKey:    pulumi.String("public_key"),
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
/// resource "cloudflare_zerotrustdlpsettings" "example_zero_trust_dlp_settings" {
///   account_id          = "account_id"
///   ai_context_analysis = true
///   ocr                 = true
///   payload_logging = {
///     masking_level = "full"
///     public_key    = "public_key"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDlpSettings;
/// import com.pulumi.cloudflare.ZeroTrustDlpSettingsArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDlpSettingsPayloadLoggingArgs;
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
///         var exampleZeroTrustDlpSettings = new ZeroTrustDlpSettings("exampleZeroTrustDlpSettings", ZeroTrustDlpSettingsArgs.builder()
///             .accountId("account_id")
///             .aiContextAnalysis(true)
///             .ocr(true)
///             .payloadLogging(ZeroTrustDlpSettingsPayloadLoggingArgs.builder()
///                 .maskingLevel("full")
///                 .publicKey("public_key")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDlpSettings:
///     type: cloudflare:ZeroTrustDlpSettings
///     name: example_zero_trust_dlp_settings
///     properties:
///       accountId: account_id
///       aiContextAnalysis: true
///       ocr: true
///       payloadLogging:
///         maskingLevel: full
///         publicKey: public_key
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDlpSettings:ZeroTrustDlpSettings example '<account_id>'
/// ```
class ZeroTrustDlpSettings extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Whether AI context analysis is enabled at the account level.
  late final pulumi.Output<bool> aiContextAnalysis;
  /// Whether OCR is enabled at the account level.
  late final pulumi.Output<bool> ocr;
  /// Request model for payload log settings within the DLP settings endpoint.
  /// Unlike the legacy endpoint, null and missing are treated identically here
  /// (both mean "not provided" for PATCH, "reset to default" for PUT).
  late final pulumi.Output<ZeroTrustDlpSettingsPayloadLogging> payloadLogging;

  /// Creates a new [ZeroTrustDlpSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDlpSettings]. {@macro pulumi_index_zero_trust_dlp_settings_zero_trust_dlp_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDlpSettings(
    String name, {
    ZeroTrustDlpSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpSettings:ZeroTrustDlpSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    aiContextAnalysis = registerOutput<bool>('aiContextAnalysis');
    ocr = registerOutput<bool>('ocr');
    payloadLogging = registerOutput<ZeroTrustDlpSettingsPayloadLogging>('payloadLogging', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpSettingsPayloadLogging.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ZeroTrustDlpSettings] resource's state with the given [name] and [id].
  static ZeroTrustDlpSettings get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDlpSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDlpSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDlpSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpSettings:ZeroTrustDlpSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    aiContextAnalysis = registerOutput<bool>('aiContextAnalysis');
    ocr = registerOutput<bool>('ocr');
    payloadLogging = registerOutput<ZeroTrustDlpSettingsPayloadLogging>('payloadLogging', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpSettingsPayloadLogging.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ZeroTrustDlpSettings] resource.
  ZeroTrustDlpSettings.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDlpSettings:ZeroTrustDlpSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    aiContextAnalysis = registerOutput<bool>('aiContextAnalysis');
    ocr = registerOutput<bool>('ocr');
    payloadLogging = registerOutput<ZeroTrustDlpSettingsPayloadLogging>('payloadLogging', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpSettingsPayloadLogging.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
