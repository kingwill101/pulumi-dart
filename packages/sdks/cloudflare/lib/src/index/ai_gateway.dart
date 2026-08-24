import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_gateway_args.dart';
import 'ai_gateway_dlp.dart';
import 'ai_gateway_guardrails.dart';
import 'ai_gateway_otel.dart';
import 'ai_gateway_spend_limits.dart';
import 'ai_gateway_state.dart';
import 'ai_gateway_stripe.dart';

/// Accepted Permissions
///
/// - `AI Gateway Read`
/// - `AI Gateway Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleAiGateway = new cloudflare.AiGateway("example_ai_gateway", {
///     accountId: "3ebbcb006d4d46d7bb6a8c7f14676cb0",
///     aiGatewayId: "my-gateway",
///     cacheInvalidateOnUpdate: true,
///     cacheTtl: 0,
///     collectLogs: true,
///     rateLimitingInterval: 0,
///     rateLimitingLimit: 0,
///     authentication: true,
///     logManagement: 10000,
///     logManagementStrategy: "STOP_INSERTING",
///     logpush: true,
///     logpushPublicKey: "xxxxxxxxxxxxxxxx",
///     rateLimitingTechnique: "fixed",
///     retryBackoff: "constant",
///     retryDelay: 0,
///     retryMaxAttempts: 1,
///     workersAiBillingMode: "postpaid",
///     zdr: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_ai_gateway = cloudflare.AiGateway("example_ai_gateway",
///     account_id="3ebbcb006d4d46d7bb6a8c7f14676cb0",
///     ai_gateway_id="my-gateway",
///     cache_invalidate_on_update=True,
///     cache_ttl=0,
///     collect_logs=True,
///     rate_limiting_interval=0,
///     rate_limiting_limit=0,
///     authentication=True,
///     log_management=10000,
///     log_management_strategy="STOP_INSERTING",
///     logpush=True,
///     logpush_public_key="xxxxxxxxxxxxxxxx",
///     rate_limiting_technique="fixed",
///     retry_backoff="constant",
///     retry_delay=0,
///     retry_max_attempts=1,
///     workers_ai_billing_mode="postpaid",
///     zdr=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleAiGateway = new Cloudflare.AiGateway("example_ai_gateway", new()
///     {
///         AccountId = "3ebbcb006d4d46d7bb6a8c7f14676cb0",
///         AiGatewayId = "my-gateway",
///         CacheInvalidateOnUpdate = true,
///         CacheTtl = 0,
///         CollectLogs = true,
///         RateLimitingInterval = 0,
///         RateLimitingLimit = 0,
///         Authentication = true,
///         LogManagement = 10000,
///         LogManagementStrategy = "STOP_INSERTING",
///         Logpush = true,
///         LogpushPublicKey = "xxxxxxxxxxxxxxxx",
///         RateLimitingTechnique = "fixed",
///         RetryBackoff = "constant",
///         RetryDelay = 0,
///         RetryMaxAttempts = 1,
///         WorkersAiBillingMode = "postpaid",
///         Zdr = true,
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
/// 		_, err := cloudflare.NewAiGateway(ctx, "example_ai_gateway", &cloudflare.AiGatewayArgs{
/// 			AccountId:               pulumi.String("3ebbcb006d4d46d7bb6a8c7f14676cb0"),
/// 			AiGatewayId:             pulumi.String("my-gateway"),
/// 			CacheInvalidateOnUpdate: pulumi.Bool(true),
/// 			CacheTtl:                pulumi.Int(0),
/// 			CollectLogs:             pulumi.Bool(true),
/// 			RateLimitingInterval:    pulumi.Int(0),
/// 			RateLimitingLimit:       pulumi.Int(0),
/// 			Authentication:          pulumi.Bool(true),
/// 			LogManagement:           pulumi.Int(10000),
/// 			LogManagementStrategy:   pulumi.String("STOP_INSERTING"),
/// 			Logpush:                 pulumi.Bool(true),
/// 			LogpushPublicKey:        pulumi.String("xxxxxxxxxxxxxxxx"),
/// 			RateLimitingTechnique:   pulumi.String("fixed"),
/// 			RetryBackoff:            pulumi.String("constant"),
/// 			RetryDelay:              pulumi.Int(0),
/// 			RetryMaxAttempts:        pulumi.Int(1),
/// 			WorkersAiBillingMode:    pulumi.String("postpaid"),
/// 			Zdr:                     pulumi.Bool(true),
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
/// resource "cloudflare_aigateway" "example_ai_gateway" {
///   account_id                 = "3ebbcb006d4d46d7bb6a8c7f14676cb0"
///   ai_gateway_id              = "my-gateway"
///   cache_invalidate_on_update = true
///   cache_ttl                  = 0
///   collect_logs               = true
///   rate_limiting_interval     = 0
///   rate_limiting_limit        = 0
///   authentication             = true
///   log_management             = 10000
///   log_management_strategy    = "STOP_INSERTING"
///   logpush                    = true
///   logpush_public_key         = "xxxxxxxxxxxxxxxx"
///   rate_limiting_technique    = "fixed"
///   retry_backoff              = "constant"
///   retry_delay                = 0
///   retry_max_attempts         = 1
///   workers_ai_billing_mode    = "postpaid"
///   zdr                        = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.AiGateway;
/// import com.pulumi.cloudflare.AiGatewayArgs;
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
///         var exampleAiGateway = new AiGateway("exampleAiGateway", AiGatewayArgs.builder()
///             .accountId("3ebbcb006d4d46d7bb6a8c7f14676cb0")
///             .aiGatewayId("my-gateway")
///             .cacheInvalidateOnUpdate(true)
///             .cacheTtl(0)
///             .collectLogs(true)
///             .rateLimitingInterval(0)
///             .rateLimitingLimit(0)
///             .authentication(true)
///             .logManagement(10000)
///             .logManagementStrategy("STOP_INSERTING")
///             .logpush(true)
///             .logpushPublicKey("xxxxxxxxxxxxxxxx")
///             .rateLimitingTechnique("fixed")
///             .retryBackoff("constant")
///             .retryDelay(0)
///             .retryMaxAttempts(1)
///             .workersAiBillingMode("postpaid")
///             .zdr(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAiGateway:
///     type: cloudflare:AiGateway
///     name: example_ai_gateway
///     properties:
///       accountId: 3ebbcb006d4d46d7bb6a8c7f14676cb0
///       aiGatewayId: my-gateway
///       cacheInvalidateOnUpdate: true
///       cacheTtl: 0
///       collectLogs: true
///       rateLimitingInterval: 0
///       rateLimitingLimit: 0
///       authentication: true
///       logManagement: 10000
///       logManagementStrategy: STOP_INSERTING
///       logpush: true
///       logpushPublicKey: xxxxxxxxxxxxxxxx
///       rateLimitingTechnique: fixed
///       retryBackoff: constant
///       retryDelay: 0
///       retryMaxAttempts: 1
///       workersAiBillingMode: postpaid
///       zdr: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/aiGateway:AiGateway example '<account_id>/<id>'
/// ```
class AiGateway extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// gateway id
  late final pulumi.Output<String> aiGatewayId;
  late final pulumi.Output<bool?> authentication;
  late final pulumi.Output<bool> cacheInvalidateOnUpdate;
  late final pulumi.Output<int> cacheTtl;
  late final pulumi.Output<bool> collectLogs;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<AiGatewayDlp?> dlp;
  late final pulumi.Output<AiGatewayGuardrails?> guardrails;
  late final pulumi.Output<bool> isDefault;
  late final pulumi.Output<int?> logManagement;
  /// Available values: "STOP*INSERTING", "DELETE*OLDEST".
  late final pulumi.Output<String?> logManagementStrategy;
  late final pulumi.Output<bool?> logpush;
  late final pulumi.Output<String?> logpushPublicKey;
  late final pulumi.Output<String> modifiedAt;
  late final pulumi.Output<List<AiGatewayOtel>> otels;
  late final pulumi.Output<int> rateLimitingInterval;
  late final pulumi.Output<int> rateLimitingLimit;
  /// Available values: "fixed", "sliding".
  late final pulumi.Output<String?> rateLimitingTechnique;
  /// Backoff strategy for retry delays
  /// Available values: "constant", "linear", "exponential".
  late final pulumi.Output<String?> retryBackoff;
  /// Delay between retry attempts in milliseconds (0-5000)
  late final pulumi.Output<int?> retryDelay;
  /// Maximum number of retry attempts for failed requests (1-5)
  late final pulumi.Output<int?> retryMaxAttempts;
  late final pulumi.Output<AiGatewaySpendLimits> spendLimits;
  late final pulumi.Output<String?> storeId;
  late final pulumi.Output<AiGatewayStripe?> stripe;
  /// Controls how Workers AI inference calls routed through this gateway are billed. Only 'postpaid' is currently supported.
  /// Available values: "postpaid".
  late final pulumi.Output<String> workersAiBillingMode;
  late final pulumi.Output<bool?> zdr;

  /// Creates a new [AiGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiGateway]. {@macro pulumi_index_ai_gateway_ai_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiGateway(
    String name, {
    AiGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/aiGateway:AiGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    aiGatewayId = registerOutput<String>('aiGatewayId');
    authentication = registerOutput<bool?>('authentication');
    cacheInvalidateOnUpdate = registerOutput<bool>('cacheInvalidateOnUpdate');
    cacheTtl = registerOutput<int>('cacheTtl');
    collectLogs = registerOutput<bool>('collectLogs');
    createdAt = registerOutput<String>('createdAt');
    dlp = registerOutput<AiGatewayDlp?>('dlp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayDlp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    guardrails = registerOutput<AiGatewayGuardrails?>('guardrails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayGuardrails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isDefault = registerOutput<bool>('isDefault');
    logManagement = registerOutput<int?>('logManagement');
    logManagementStrategy = registerOutput<String?>('logManagementStrategy');
    logpush = registerOutput<bool?>('logpush');
    logpushPublicKey = registerOutput<String?>('logpushPublicKey');
    modifiedAt = registerOutput<String>('modifiedAt');
    otels = registerOutput<List<AiGatewayOtel>>('otels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiGatewayOtel>(guardedValue, (value) => AiGatewayOtel.fromMap((value as Map).cast<String, dynamic>())); });
    rateLimitingInterval = registerOutput<int>('rateLimitingInterval');
    rateLimitingLimit = registerOutput<int>('rateLimitingLimit');
    rateLimitingTechnique = registerOutput<String?>('rateLimitingTechnique');
    retryBackoff = registerOutput<String?>('retryBackoff');
    retryDelay = registerOutput<int?>('retryDelay');
    retryMaxAttempts = registerOutput<int?>('retryMaxAttempts');
    spendLimits = registerOutput<AiGatewaySpendLimits>('spendLimits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewaySpendLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storeId = registerOutput<String?>('storeId');
    stripe = registerOutput<AiGatewayStripe?>('stripe', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayStripe.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workersAiBillingMode = registerOutput<String>('workersAiBillingMode');
    zdr = registerOutput<bool?>('zdr');
  }

  /// Gets an existing [AiGateway] resource's state with the given [name] and [id].
  static AiGateway get(
    String name,
    pulumi.Input<String> id, {
    AiGatewayState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/aiGateway:AiGateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    aiGatewayId = registerOutput<String>('aiGatewayId');
    authentication = registerOutput<bool?>('authentication');
    cacheInvalidateOnUpdate = registerOutput<bool>('cacheInvalidateOnUpdate');
    cacheTtl = registerOutput<int>('cacheTtl');
    collectLogs = registerOutput<bool>('collectLogs');
    createdAt = registerOutput<String>('createdAt');
    dlp = registerOutput<AiGatewayDlp?>('dlp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayDlp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    guardrails = registerOutput<AiGatewayGuardrails?>('guardrails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayGuardrails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isDefault = registerOutput<bool>('isDefault');
    logManagement = registerOutput<int?>('logManagement');
    logManagementStrategy = registerOutput<String?>('logManagementStrategy');
    logpush = registerOutput<bool?>('logpush');
    logpushPublicKey = registerOutput<String?>('logpushPublicKey');
    modifiedAt = registerOutput<String>('modifiedAt');
    otels = registerOutput<List<AiGatewayOtel>>('otels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiGatewayOtel>(guardedValue, (value) => AiGatewayOtel.fromMap((value as Map).cast<String, dynamic>())); });
    rateLimitingInterval = registerOutput<int>('rateLimitingInterval');
    rateLimitingLimit = registerOutput<int>('rateLimitingLimit');
    rateLimitingTechnique = registerOutput<String?>('rateLimitingTechnique');
    retryBackoff = registerOutput<String?>('retryBackoff');
    retryDelay = registerOutput<int?>('retryDelay');
    retryMaxAttempts = registerOutput<int?>('retryMaxAttempts');
    spendLimits = registerOutput<AiGatewaySpendLimits>('spendLimits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewaySpendLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storeId = registerOutput<String?>('storeId');
    stripe = registerOutput<AiGatewayStripe?>('stripe', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayStripe.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workersAiBillingMode = registerOutput<String>('workersAiBillingMode');
    zdr = registerOutput<bool?>('zdr');
  }

  /// Creates a typed reference to an existing [AiGateway] resource.
  AiGateway.reference(String urn)
    : super(
        'cloudflare:index/aiGateway:AiGateway',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    aiGatewayId = registerOutput<String>('aiGatewayId');
    authentication = registerOutput<bool?>('authentication');
    cacheInvalidateOnUpdate = registerOutput<bool>('cacheInvalidateOnUpdate');
    cacheTtl = registerOutput<int>('cacheTtl');
    collectLogs = registerOutput<bool>('collectLogs');
    createdAt = registerOutput<String>('createdAt');
    dlp = registerOutput<AiGatewayDlp?>('dlp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayDlp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    guardrails = registerOutput<AiGatewayGuardrails?>('guardrails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayGuardrails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isDefault = registerOutput<bool>('isDefault');
    logManagement = registerOutput<int?>('logManagement');
    logManagementStrategy = registerOutput<String?>('logManagementStrategy');
    logpush = registerOutput<bool?>('logpush');
    logpushPublicKey = registerOutput<String?>('logpushPublicKey');
    modifiedAt = registerOutput<String>('modifiedAt');
    otels = registerOutput<List<AiGatewayOtel>>('otels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiGatewayOtel>(guardedValue, (value) => AiGatewayOtel.fromMap((value as Map).cast<String, dynamic>())); });
    rateLimitingInterval = registerOutput<int>('rateLimitingInterval');
    rateLimitingLimit = registerOutput<int>('rateLimitingLimit');
    rateLimitingTechnique = registerOutput<String?>('rateLimitingTechnique');
    retryBackoff = registerOutput<String?>('retryBackoff');
    retryDelay = registerOutput<int?>('retryDelay');
    retryMaxAttempts = registerOutput<int?>('retryMaxAttempts');
    spendLimits = registerOutput<AiGatewaySpendLimits>('spendLimits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewaySpendLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storeId = registerOutput<String?>('storeId');
    stripe = registerOutput<AiGatewayStripe?>('stripe', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayStripe.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workersAiBillingMode = registerOutput<String>('workersAiBillingMode');
    zdr = registerOutput<bool?>('zdr');
  }
}
