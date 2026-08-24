import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_gateway_logging_args.dart';
import 'zero_trust_gateway_logging_settings_by_rule_type.dart';
import 'zero_trust_gateway_logging_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustGatewayLogging = new cloudflare.ZeroTrustGatewayLogging("example_zero_trust_gateway_logging", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     redactPii: true,
///     settingsByRuleType: {
///         dns: {
///             logAll: false,
///             logBlocks: true,
///         },
///         http: {
///             logAll: false,
///             logBlocks: true,
///         },
///         l4: {
///             logAll: false,
///             logBlocks: true,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_gateway_logging = cloudflare.ZeroTrustGatewayLogging("example_zero_trust_gateway_logging",
///     account_id="699d98642c564d2e855e9661899b7252",
///     redact_pii=True,
///     settings_by_rule_type={
///         "dns": {
///             "log_all": False,
///             "log_blocks": True,
///         },
///         "http": {
///             "log_all": False,
///             "log_blocks": True,
///         },
///         "l4": {
///             "log_all": False,
///             "log_blocks": True,
///         },
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
///     var exampleZeroTrustGatewayLogging = new Cloudflare.ZeroTrustGatewayLogging("example_zero_trust_gateway_logging", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         RedactPii = true,
///         SettingsByRuleType = new Cloudflare.Inputs.ZeroTrustGatewayLoggingSettingsByRuleTypeArgs
///         {
///             Dns = new Cloudflare.Inputs.ZeroTrustGatewayLoggingSettingsByRuleTypeDnsArgs
///             {
///                 LogAll = false,
///                 LogBlocks = true,
///             },
///             Http = new Cloudflare.Inputs.ZeroTrustGatewayLoggingSettingsByRuleTypeHttpArgs
///             {
///                 LogAll = false,
///                 LogBlocks = true,
///             },
///             L4 = new Cloudflare.Inputs.ZeroTrustGatewayLoggingSettingsByRuleTypeL4Args
///             {
///                 LogAll = false,
///                 LogBlocks = true,
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
/// 		_, err := cloudflare.NewZeroTrustGatewayLogging(ctx, "example_zero_trust_gateway_logging", &cloudflare.ZeroTrustGatewayLoggingArgs{
/// 			AccountId: pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			RedactPii: pulumi.Bool(true),
/// 			SettingsByRuleType: &cloudflare.ZeroTrustGatewayLoggingSettingsByRuleTypeArgs{
/// 				Dns: &cloudflare.ZeroTrustGatewayLoggingSettingsByRuleTypeDnsArgs{
/// 					LogAll:    pulumi.Bool(false),
/// 					LogBlocks: pulumi.Bool(true),
/// 				},
/// 				Http: &cloudflare.ZeroTrustGatewayLoggingSettingsByRuleTypeHttpArgs{
/// 					LogAll:    pulumi.Bool(false),
/// 					LogBlocks: pulumi.Bool(true),
/// 				},
/// 				L4: &cloudflare.ZeroTrustGatewayLoggingSettingsByRuleTypeL4Args{
/// 					LogAll:    pulumi.Bool(false),
/// 					LogBlocks: pulumi.Bool(true),
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
/// pulumi {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zerotrustgatewaylogging" "example_zero_trust_gateway_logging" {
///   account_id = "699d98642c564d2e855e9661899b7252"
///   redact_pii = true
///   settings_by_rule_type = {
///     dns = {
///       log_all    = false
///       log_blocks = true
///     }
///     http = {
///       log_all    = false
///       log_blocks = true
///     }
///     l4 = {
///       log_all    = false
///       log_blocks = true
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustGatewayLogging;
/// import com.pulumi.cloudflare.ZeroTrustGatewayLoggingArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayLoggingSettingsByRuleTypeArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayLoggingSettingsByRuleTypeDnsArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayLoggingSettingsByRuleTypeHttpArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayLoggingSettingsByRuleTypeL4Args;
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
///         var exampleZeroTrustGatewayLogging = new ZeroTrustGatewayLogging("exampleZeroTrustGatewayLogging", ZeroTrustGatewayLoggingArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .redactPii(true)
///             .settingsByRuleType(ZeroTrustGatewayLoggingSettingsByRuleTypeArgs.builder()
///                 .dns(ZeroTrustGatewayLoggingSettingsByRuleTypeDnsArgs.builder()
///                     .logAll(false)
///                     .logBlocks(true)
///                     .build())
///                 .http(ZeroTrustGatewayLoggingSettingsByRuleTypeHttpArgs.builder()
///                     .logAll(false)
///                     .logBlocks(true)
///                     .build())
///                 .l4(ZeroTrustGatewayLoggingSettingsByRuleTypeL4Args.builder()
///                     .logAll(false)
///                     .logBlocks(true)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustGatewayLogging:
///     type: cloudflare:ZeroTrustGatewayLogging
///     name: example_zero_trust_gateway_logging
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       redactPii: true
///       settingsByRuleType:
///         dns:
///           logAll: false
///           logBlocks: true
///         http:
///           logAll: false
///           logBlocks: true
///         l4:
///           logAll: false
///           logBlocks: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustGatewayLogging:ZeroTrustGatewayLogging example '<account_id>'
/// ```
class ZeroTrustGatewayLogging extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Indicate whether to redact personally identifiable information from activity logging (PII fields include source IP, user email, user ID, device ID, URL, referrer, and user agent).
  late final pulumi.Output<bool> redactPii;
  /// Configure logging settings for each rule type.
  late final pulumi.Output<ZeroTrustGatewayLoggingSettingsByRuleType> settingsByRuleType;

  /// Creates a new [ZeroTrustGatewayLogging].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustGatewayLogging]. {@macro pulumi_index_zero_trust_gateway_logging_zero_trust_gateway_logging_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustGatewayLogging(
    String name, {
    ZeroTrustGatewayLoggingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustGatewayLogging:ZeroTrustGatewayLogging',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    redactPii = registerOutput<bool>('redactPii');
    settingsByRuleType = registerOutput<ZeroTrustGatewayLoggingSettingsByRuleType>('settingsByRuleType', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustGatewayLoggingSettingsByRuleType.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ZeroTrustGatewayLogging] resource's state with the given [name] and [id].
  static ZeroTrustGatewayLogging get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustGatewayLoggingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustGatewayLogging._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustGatewayLogging._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustGatewayLogging:ZeroTrustGatewayLogging',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    redactPii = registerOutput<bool>('redactPii');
    settingsByRuleType = registerOutput<ZeroTrustGatewayLoggingSettingsByRuleType>('settingsByRuleType', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustGatewayLoggingSettingsByRuleType.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ZeroTrustGatewayLogging] resource.
  ZeroTrustGatewayLogging.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustGatewayLogging:ZeroTrustGatewayLogging',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    redactPii = registerOutput<bool>('redactPii');
    settingsByRuleType = registerOutput<ZeroTrustGatewayLoggingSettingsByRuleType>('settingsByRuleType', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustGatewayLoggingSettingsByRuleType.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
