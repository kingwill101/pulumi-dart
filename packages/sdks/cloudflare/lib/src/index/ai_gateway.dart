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
///     byokOnly: true,
///     dlp: {
///         action: "BLOCK",
///         enabled: true,
///         profiles: ["string"],
///     },
///     guardrails: {
///         prompt: {
///             p1: "FLAG",
///             s1: "FLAG",
///             s10: "FLAG",
///             s11: "FLAG",
///             s12: "FLAG",
///             s13: "FLAG",
///             s2: "FLAG",
///             s3: "FLAG",
///             s4: "FLAG",
///             s5: "FLAG",
///             s6: "FLAG",
///             s7: "FLAG",
///             s8: "FLAG",
///             s9: "FLAG",
///         },
///         response: {
///             p1: "FLAG",
///             s1: "FLAG",
///             s10: "FLAG",
///             s11: "FLAG",
///             s12: "FLAG",
///             s13: "FLAG",
///             s2: "FLAG",
///             s3: "FLAG",
///             s4: "FLAG",
///             s5: "FLAG",
///             s6: "FLAG",
///             s7: "FLAG",
///             s8: "FLAG",
///             s9: "FLAG",
///         },
///     },
///     logClassification: true,
///     logManagement: 10000,
///     logManagementStrategy: "STOP_INSERTING",
///     logpush: true,
///     logpushPublicKey: "xxxxxxxxxxxxxxxx",
///     otels: [{
///         headers: {
///             foo: "string",
///         },
///         url: "https://example.com",
///         authorization: "authorization",
///         contentType: "json",
///     }],
///     rateLimitingTechnique: "fixed",
///     retryBackoff: "constant",
///     retryDelay: 0,
///     retryMaxAttempts: 1,
///     spendLimits: {
///         enabled: true,
///         rules: [{
///             limit: 1,
///             limitType: "cost",
///             window: 1,
///             id: "x",
///             enabled: true,
///             metadata: {
///                 foo: {
///                     mode: "partition",
///                 },
///             },
///             model: {
///                 mode: "filter",
///                 values: ["string"],
///             },
///             aiGatewayProvider: {
///                 mode: "filter",
///                 values: ["string"],
///             },
///             technique: "fixed",
///         }],
///     },
///     storeId: "store_id",
///     stripe: {
///         authorization: "authorization",
///         usageEvents: [{
///             payload: "payload",
///         }],
///     },
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
///     byok_only=True,
///     dlp={
///         "action": "BLOCK",
///         "enabled": True,
///         "profiles": ["string"],
///     },
///     guardrails={
///         "prompt": {
///             "p1": "FLAG",
///             "s1": "FLAG",
///             "s10": "FLAG",
///             "s11": "FLAG",
///             "s12": "FLAG",
///             "s13": "FLAG",
///             "s2": "FLAG",
///             "s3": "FLAG",
///             "s4": "FLAG",
///             "s5": "FLAG",
///             "s6": "FLAG",
///             "s7": "FLAG",
///             "s8": "FLAG",
///             "s9": "FLAG",
///         },
///         "response": {
///             "p1": "FLAG",
///             "s1": "FLAG",
///             "s10": "FLAG",
///             "s11": "FLAG",
///             "s12": "FLAG",
///             "s13": "FLAG",
///             "s2": "FLAG",
///             "s3": "FLAG",
///             "s4": "FLAG",
///             "s5": "FLAG",
///             "s6": "FLAG",
///             "s7": "FLAG",
///             "s8": "FLAG",
///             "s9": "FLAG",
///         },
///     },
///     log_classification=True,
///     log_management=10000,
///     log_management_strategy="STOP_INSERTING",
///     logpush=True,
///     logpush_public_key="xxxxxxxxxxxxxxxx",
///     otels=[{
///         "headers": {
///             "foo": "string",
///         },
///         "url": "https://example.com",
///         "authorization": "authorization",
///         "content_type": "json",
///     }],
///     rate_limiting_technique="fixed",
///     retry_backoff="constant",
///     retry_delay=0,
///     retry_max_attempts=1,
///     spend_limits={
///         "enabled": True,
///         "rules": [{
///             "limit": float(1),
///             "limit_type": "cost",
///             "window": 1,
///             "id": "x",
///             "enabled": True,
///             "metadata": {
///                 "foo": {
///                     "mode": "partition",
///                 },
///             },
///             "model": {
///                 "mode": "filter",
///                 "values": ["string"],
///             },
///             "ai_gateway_provider": {
///                 "mode": "filter",
///                 "values": ["string"],
///             },
///             "technique": "fixed",
///         }],
///     },
///     store_id="store_id",
///     stripe={
///         "authorization": "authorization",
///         "usage_events": [{
///             "payload": "payload",
///         }],
///     },
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
///         ByokOnly = true,
///         Dlp = new Cloudflare.Inputs.AiGatewayDlpArgs
///         {
///             Action = "BLOCK",
///             Enabled = true,
///             Profiles = new[]
///             {
///                 "string",
///             },
///         },
///         Guardrails = new Cloudflare.Inputs.AiGatewayGuardrailsArgs
///         {
///             Prompt = new Cloudflare.Inputs.AiGatewayGuardrailsPromptArgs
///             {
///                 P1 = "FLAG",
///                 S1 = "FLAG",
///                 S10 = "FLAG",
///                 S11 = "FLAG",
///                 S12 = "FLAG",
///                 S13 = "FLAG",
///                 S2 = "FLAG",
///                 S3 = "FLAG",
///                 S4 = "FLAG",
///                 S5 = "FLAG",
///                 S6 = "FLAG",
///                 S7 = "FLAG",
///                 S8 = "FLAG",
///                 S9 = "FLAG",
///             },
///             Response = new Cloudflare.Inputs.AiGatewayGuardrailsResponseArgs
///             {
///                 P1 = "FLAG",
///                 S1 = "FLAG",
///                 S10 = "FLAG",
///                 S11 = "FLAG",
///                 S12 = "FLAG",
///                 S13 = "FLAG",
///                 S2 = "FLAG",
///                 S3 = "FLAG",
///                 S4 = "FLAG",
///                 S5 = "FLAG",
///                 S6 = "FLAG",
///                 S7 = "FLAG",
///                 S8 = "FLAG",
///                 S9 = "FLAG",
///             },
///         },
///         LogClassification = true,
///         LogManagement = 10000,
///         LogManagementStrategy = "STOP_INSERTING",
///         Logpush = true,
///         LogpushPublicKey = "xxxxxxxxxxxxxxxx",
///         Otels = new[]
///         {
///             new Cloudflare.Inputs.AiGatewayOtelArgs
///             {
///                 Headers =
///                 {
///                     { "foo", "string" },
///                 },
///                 Url = "https://example.com",
///                 Authorization = "authorization",
///                 ContentType = "json",
///             },
///         },
///         RateLimitingTechnique = "fixed",
///         RetryBackoff = "constant",
///         RetryDelay = 0,
///         RetryMaxAttempts = 1,
///         SpendLimits = new Cloudflare.Inputs.AiGatewaySpendLimitsArgs
///         {
///             Enabled = true,
///             Rules = new[]
///             {
///                 new Cloudflare.Inputs.AiGatewaySpendLimitsRuleArgs
///                 {
///                     Limit = 1.0,
///                     LimitType = "cost",
///                     Window = 1,
///                     Id = "x",
///                     Enabled = true,
///                     Metadata =
///                     {
///                         { "foo", new Cloudflare.Inputs.AiGatewaySpendLimitsRuleMetadataArgs
///                         {
///                             Mode = "partition",
///                         } },
///                     },
///                     Model = new Cloudflare.Inputs.AiGatewaySpendLimitsRuleModelArgs
///                     {
///                         Mode = "filter",
///                         Values = new[]
///                         {
///                             "string",
///                         },
///                     },
///                     AiGatewayProvider = new Cloudflare.Inputs.AiGatewaySpendLimitsRuleAiGatewayProviderArgs
///                     {
///                         Mode = "filter",
///                         Values = new[]
///                         {
///                             "string",
///                         },
///                     },
///                     Technique = "fixed",
///                 },
///             },
///         },
///         StoreId = "store_id",
///         Stripe = new Cloudflare.Inputs.AiGatewayStripeArgs
///         {
///             Authorization = "authorization",
///             UsageEvents = new[]
///             {
///                 new Cloudflare.Inputs.AiGatewayStripeUsageEventArgs
///                 {
///                     Payload = "payload",
///                 },
///             },
///         },
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
/// 			ByokOnly:                pulumi.Bool(true),
/// 			Dlp: &cloudflare.AiGatewayDlpArgs{
/// 				Action:  pulumi.String("BLOCK"),
/// 				Enabled: pulumi.Bool(true),
/// 				Profiles: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 			},
/// 			Guardrails: &cloudflare.AiGatewayGuardrailsArgs{
/// 				Prompt: &cloudflare.AiGatewayGuardrailsPromptArgs{
/// 					P1:  pulumi.String("FLAG"),
/// 					S1:  pulumi.String("FLAG"),
/// 					S10: pulumi.String("FLAG"),
/// 					S11: pulumi.String("FLAG"),
/// 					S12: pulumi.String("FLAG"),
/// 					S13: pulumi.String("FLAG"),
/// 					S2:  pulumi.String("FLAG"),
/// 					S3:  pulumi.String("FLAG"),
/// 					S4:  pulumi.String("FLAG"),
/// 					S5:  pulumi.String("FLAG"),
/// 					S6:  pulumi.String("FLAG"),
/// 					S7:  pulumi.String("FLAG"),
/// 					S8:  pulumi.String("FLAG"),
/// 					S9:  pulumi.String("FLAG"),
/// 				},
/// 				Response: &cloudflare.AiGatewayGuardrailsResponseArgs{
/// 					P1:  pulumi.String("FLAG"),
/// 					S1:  pulumi.String("FLAG"),
/// 					S10: pulumi.String("FLAG"),
/// 					S11: pulumi.String("FLAG"),
/// 					S12: pulumi.String("FLAG"),
/// 					S13: pulumi.String("FLAG"),
/// 					S2:  pulumi.String("FLAG"),
/// 					S3:  pulumi.String("FLAG"),
/// 					S4:  pulumi.String("FLAG"),
/// 					S5:  pulumi.String("FLAG"),
/// 					S6:  pulumi.String("FLAG"),
/// 					S7:  pulumi.String("FLAG"),
/// 					S8:  pulumi.String("FLAG"),
/// 					S9:  pulumi.String("FLAG"),
/// 				},
/// 			},
/// 			LogClassification:     pulumi.Bool(true),
/// 			LogManagement:         pulumi.Int(10000),
/// 			LogManagementStrategy: pulumi.String("STOP_INSERTING"),
/// 			Logpush:               pulumi.Bool(true),
/// 			LogpushPublicKey:      pulumi.String("xxxxxxxxxxxxxxxx"),
/// 			Otels: cloudflare.AiGatewayOtelArray{
/// 				&cloudflare.AiGatewayOtelArgs{
/// 					Headers: pulumi.StringMap{
/// 						"foo": pulumi.String("string"),
/// 					},
/// 					Url:           pulumi.String("https://example.com"),
/// 					Authorization: pulumi.String("authorization"),
/// 					ContentType:   pulumi.String("json"),
/// 				},
/// 			},
/// 			RateLimitingTechnique: pulumi.String("fixed"),
/// 			RetryBackoff:          pulumi.String("constant"),
/// 			RetryDelay:            pulumi.Int(0),
/// 			RetryMaxAttempts:      pulumi.Int(1),
/// 			SpendLimits: &cloudflare.AiGatewaySpendLimitsArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				Rules: cloudflare.AiGatewaySpendLimitsRuleArray{
/// 					&cloudflare.AiGatewaySpendLimitsRuleArgs{
/// 						Limit:     pulumi.Float64(1),
/// 						LimitType: pulumi.String("cost"),
/// 						Window:    pulumi.Int(1),
/// 						Id:        pulumi.String("x"),
/// 						Enabled:   pulumi.Bool(true),
/// 						Metadata: cloudflare.AiGatewaySpendLimitsRuleMetadataMap{
/// 							"foo": &cloudflare.AiGatewaySpendLimitsRuleMetadataArgs{
/// 								Mode: pulumi.String("partition"),
/// 							},
/// 						},
/// 						Model: &cloudflare.AiGatewaySpendLimitsRuleModelArgs{
/// 							Mode: pulumi.String("filter"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("string"),
/// 							},
/// 						},
/// 						AiGatewayProvider: &cloudflare.AiGatewaySpendLimitsRuleAiGatewayProviderArgs{
/// 							Mode: pulumi.String("filter"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("string"),
/// 							},
/// 						},
/// 						Technique: pulumi.String("fixed"),
/// 					},
/// 				},
/// 			},
/// 			StoreId: pulumi.String("store_id"),
/// 			Stripe: &cloudflare.AiGatewayStripeArgs{
/// 				Authorization: pulumi.String("authorization"),
/// 				UsageEvents: cloudflare.AiGatewayStripeUsageEventArray{
/// 					&cloudflare.AiGatewayStripeUsageEventArgs{
/// 						Payload: pulumi.String("payload"),
/// 					},
/// 				},
/// 			},
/// 			WorkersAiBillingMode: pulumi.String("postpaid"),
/// 			Zdr:                  pulumi.Bool(true),
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
/// resource "cloudflare_ai_gateway" "example_ai_gateway" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id                 = "3ebbcb006d4d46d7bb6a8c7f14676cb0"
///   ai_gateway_id              = "my-gateway"
///   cache_invalidate_on_update = true
///   cache_ttl                  = 0
///   collect_logs               = true
///   rate_limiting_interval     = 0
///   rate_limiting_limit        = 0
///   authentication             = true
///   byok_only                  = true
///   dlp = {
///     action   = "BLOCK"
///     enabled  = true
///     profiles = ["string"]
///   }
///   guardrails = {
///     prompt = {
///       p1  = "FLAG"
///       s1  = "FLAG"
///       s10 = "FLAG"
///       s11 = "FLAG"
///       s12 = "FLAG"
///       s13 = "FLAG"
///       s2  = "FLAG"
///       s3  = "FLAG"
///       s4  = "FLAG"
///       s5  = "FLAG"
///       s6  = "FLAG"
///       s7  = "FLAG"
///       s8  = "FLAG"
///       s9  = "FLAG"
///     }
///     response = {
///       p1  = "FLAG"
///       s1  = "FLAG"
///       s10 = "FLAG"
///       s11 = "FLAG"
///       s12 = "FLAG"
///       s13 = "FLAG"
///       s2  = "FLAG"
///       s3  = "FLAG"
///       s4  = "FLAG"
///       s5  = "FLAG"
///       s6  = "FLAG"
///       s7  = "FLAG"
///       s8  = "FLAG"
///       s9  = "FLAG"
///     }
///   }
///   log_classification      = true
///   log_management          = 10000
///   log_management_strategy = "STOP_INSERTING"
///   logpush                 = true
///   logpush_public_key      = "xxxxxxxxxxxxxxxx"
///   otels {
///     headers = {
///       "foo" = "string"
///     }
///     url           = "https://example.com"
///     authorization = "authorization"
///     content_type  = "json"
///   }
///   rate_limiting_technique = "fixed"
///   retry_backoff           = "constant"
///   retry_delay             = 0
///   retry_max_attempts      = 1
///   spend_limits = {
///     enabled = true
///     rules = [{
///       limit      = 1
///       limit_type = "cost"
///       window     = 1
///       id         = "x"
///       enabled    = true
///       metadata = {
///         "foo" = {
///           mode = "partition"
///         }
///       }
///       model = {
///         mode   = "filter"
///         values = ["string"]
///       }
///       ai_gateway_provider = {
///         mode   = "filter"
///         values = ["string"]
///       }
///       technique = "fixed"
///     }]
///   }
///   store_id = "store_id"
///   stripe = {
///     authorization = "authorization"
///     usage_events = [{
///       payload = "payload"
///     }]
///   }
///   workers_ai_billing_mode = "postpaid"
///   zdr                     = true
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
/// import com.pulumi.cloudflare.inputs.AiGatewayDlpArgs;
/// import com.pulumi.cloudflare.inputs.AiGatewayGuardrailsArgs;
/// import com.pulumi.cloudflare.inputs.AiGatewayGuardrailsPromptArgs;
/// import com.pulumi.cloudflare.inputs.AiGatewayGuardrailsResponseArgs;
/// import com.pulumi.cloudflare.inputs.AiGatewayOtelArgs;
/// import com.pulumi.cloudflare.inputs.AiGatewaySpendLimitsArgs;
/// import com.pulumi.cloudflare.inputs.AiGatewaySpendLimitsRuleArgs;
/// import com.pulumi.cloudflare.inputs.AiGatewaySpendLimitsRuleMetadataArgs;
/// import com.pulumi.cloudflare.inputs.AiGatewaySpendLimitsRuleModelArgs;
/// import com.pulumi.cloudflare.inputs.AiGatewaySpendLimitsRuleAiGatewayProviderArgs;
/// import com.pulumi.cloudflare.inputs.AiGatewayStripeArgs;
/// import com.pulumi.cloudflare.inputs.AiGatewayStripeUsageEventArgs;
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
///             .byokOnly(true)
///             .dlp(AiGatewayDlpArgs.builder()
///                 .action("BLOCK")
///                 .enabled(true)
///                 .profiles("string")
///                 .build())
///             .guardrails(AiGatewayGuardrailsArgs.builder()
///                 .prompt(AiGatewayGuardrailsPromptArgs.builder()
///                     .p1("FLAG")
///                     .s1("FLAG")
///                     .s10("FLAG")
///                     .s11("FLAG")
///                     .s12("FLAG")
///                     .s13("FLAG")
///                     .s2("FLAG")
///                     .s3("FLAG")
///                     .s4("FLAG")
///                     .s5("FLAG")
///                     .s6("FLAG")
///                     .s7("FLAG")
///                     .s8("FLAG")
///                     .s9("FLAG")
///                     .build())
///                 .response(AiGatewayGuardrailsResponseArgs.builder()
///                     .p1("FLAG")
///                     .s1("FLAG")
///                     .s10("FLAG")
///                     .s11("FLAG")
///                     .s12("FLAG")
///                     .s13("FLAG")
///                     .s2("FLAG")
///                     .s3("FLAG")
///                     .s4("FLAG")
///                     .s5("FLAG")
///                     .s6("FLAG")
///                     .s7("FLAG")
///                     .s8("FLAG")
///                     .s9("FLAG")
///                     .build())
///                 .build())
///             .logClassification(true)
///             .logManagement(10000)
///             .logManagementStrategy("STOP_INSERTING")
///             .logpush(true)
///             .logpushPublicKey("xxxxxxxxxxxxxxxx")
///             .otels(AiGatewayOtelArgs.builder()
///                 .headers(Map.of("foo", "string"))
///                 .url("https://example.com")
///                 .authorization("authorization")
///                 .contentType("json")
///                 .build())
///             .rateLimitingTechnique("fixed")
///             .retryBackoff("constant")
///             .retryDelay(0)
///             .retryMaxAttempts(1)
///             .spendLimits(AiGatewaySpendLimitsArgs.builder()
///                 .enabled(true)
///                 .rules(AiGatewaySpendLimitsRuleArgs.builder()
///                     .limit(1.0)
///                     .limitType("cost")
///                     .window(1)
///                     .id("x")
///                     .enabled(true)
///                     .metadata(Map.of("foo", AiGatewaySpendLimitsRuleMetadataArgs.builder()
///                         .mode("partition")
///                         .build()))
///                     .model(AiGatewaySpendLimitsRuleModelArgs.builder()
///                         .mode("filter")
///                         .values("string")
///                         .build())
///                     .aiGatewayProvider(AiGatewaySpendLimitsRuleAiGatewayProviderArgs.builder()
///                         .mode("filter")
///                         .values("string")
///                         .build())
///                     .technique("fixed")
///                     .build())
///                 .build())
///             .storeId("store_id")
///             .stripe(AiGatewayStripeArgs.builder()
///                 .authorization("authorization")
///                 .usageEvents(AiGatewayStripeUsageEventArgs.builder()
///                     .payload("payload")
///                     .build())
///                 .build())
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
///       byokOnly: true
///       dlp:
///         action: BLOCK
///         enabled: true
///         profiles:
///           - string
///       guardrails:
///         prompt:
///           p1: FLAG
///           s1: FLAG
///           s10: FLAG
///           s11: FLAG
///           s12: FLAG
///           s13: FLAG
///           s2: FLAG
///           s3: FLAG
///           s4: FLAG
///           s5: FLAG
///           s6: FLAG
///           s7: FLAG
///           s8: FLAG
///           s9: FLAG
///         response:
///           p1: FLAG
///           s1: FLAG
///           s10: FLAG
///           s11: FLAG
///           s12: FLAG
///           s13: FLAG
///           s2: FLAG
///           s3: FLAG
///           s4: FLAG
///           s5: FLAG
///           s6: FLAG
///           s7: FLAG
///           s8: FLAG
///           s9: FLAG
///       logClassification: true
///       logManagement: 10000
///       logManagementStrategy: STOP_INSERTING
///       logpush: true
///       logpushPublicKey: xxxxxxxxxxxxxxxx
///       otels:
///         - headers:
///             foo: string
///           url: https://example.com
///           authorization: authorization
///           contentType: json
///       rateLimitingTechnique: fixed
///       retryBackoff: constant
///       retryDelay: 0
///       retryMaxAttempts: 1
///       spendLimits:
///         enabled: true
///         rules:
///           - limit: 1
///             limitType: cost
///             window: 1
///             id: x
///             enabled: true
///             metadata:
///               foo:
///                 mode: partition
///             model:
///               mode: filter
///               values:
///                 - string
///             aiGatewayProvider:
///               mode: filter
///               values:
///                 - string
///             technique: fixed
///       storeId: store_id
///       stripe:
///         authorization: authorization
///         usageEvents:
///           - payload: payload
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
  /// Unique identifier of the AI Gateway within the account.
  late final pulumi.Output<String> aiGatewayId;
  late final pulumi.Output<bool> authentication;
  /// Requires customer-provided provider credentials and prevents fallback to Unified Billing.
  late final pulumi.Output<bool> byokOnly;
  late final pulumi.Output<bool> cacheInvalidateOnUpdate;
  late final pulumi.Output<int> cacheTtl;
  late final pulumi.Output<bool> collectLogs;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<AiGatewayDlp?> dlp;
  late final pulumi.Output<AiGatewayGuardrails?> guardrails;
  late final pulumi.Output<bool> isDefault;
  late final pulumi.Output<bool> logClassification;
  late final pulumi.Output<int> logManagement;
  /// Available values: "STOP*INSERTING", "DELETE*OLDEST".
  late final pulumi.Output<String> logManagementStrategy;
  late final pulumi.Output<bool> logpush;
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
  /// Delay between retry attempts in milliseconds (0-60000)
  late final pulumi.Output<int?> retryDelay;
  /// Maximum number of retry attempts for failed requests (1-5)
  late final pulumi.Output<int?> retryMaxAttempts;
  late final pulumi.Output<AiGatewaySpendLimits> spendLimits;
  late final pulumi.Output<String> storeId;
  late final pulumi.Output<AiGatewayStripe?> stripe;
  /// Controls how Workers AI inference calls routed through this gateway are billed. 'postpaid' bills the account directly through Workers AI; 'unified' deducts credits via AI Gateway using neuron-based pricing and delegates billing to AI Gateway.
  /// Available values: "postpaid", "unified".
  late final pulumi.Output<String> workersAiBillingMode;
  late final pulumi.Output<bool> zdr;

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
          pulumi.CustomResourceOptions(version: '6.23.1').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    aiGatewayId = registerOutput<String>('aiGatewayId');
    authentication = registerOutput<bool>('authentication');
    byokOnly = registerOutput<bool>('byokOnly');
    cacheInvalidateOnUpdate = registerOutput<bool>('cacheInvalidateOnUpdate');
    cacheTtl = registerOutput<int>('cacheTtl');
    collectLogs = registerOutput<bool>('collectLogs');
    createdAt = registerOutput<String>('createdAt');
    dlp = registerOutput<AiGatewayDlp?>('dlp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayDlp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    guardrails = registerOutput<AiGatewayGuardrails?>('guardrails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayGuardrails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isDefault = registerOutput<bool>('isDefault');
    logClassification = registerOutput<bool>('logClassification');
    logManagement = registerOutput<int>('logManagement');
    logManagementStrategy = registerOutput<String>('logManagementStrategy');
    logpush = registerOutput<bool>('logpush');
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
    storeId = registerOutput<String>('storeId');
    stripe = registerOutput<AiGatewayStripe?>('stripe', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayStripe.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workersAiBillingMode = registerOutput<String>('workersAiBillingMode');
    zdr = registerOutput<bool>('zdr');
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
    authentication = registerOutput<bool>('authentication');
    byokOnly = registerOutput<bool>('byokOnly');
    cacheInvalidateOnUpdate = registerOutput<bool>('cacheInvalidateOnUpdate');
    cacheTtl = registerOutput<int>('cacheTtl');
    collectLogs = registerOutput<bool>('collectLogs');
    createdAt = registerOutput<String>('createdAt');
    dlp = registerOutput<AiGatewayDlp?>('dlp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayDlp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    guardrails = registerOutput<AiGatewayGuardrails?>('guardrails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayGuardrails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isDefault = registerOutput<bool>('isDefault');
    logClassification = registerOutput<bool>('logClassification');
    logManagement = registerOutput<int>('logManagement');
    logManagementStrategy = registerOutput<String>('logManagementStrategy');
    logpush = registerOutput<bool>('logpush');
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
    storeId = registerOutput<String>('storeId');
    stripe = registerOutput<AiGatewayStripe?>('stripe', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayStripe.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workersAiBillingMode = registerOutput<String>('workersAiBillingMode');
    zdr = registerOutput<bool>('zdr');
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
    authentication = registerOutput<bool>('authentication');
    byokOnly = registerOutput<bool>('byokOnly');
    cacheInvalidateOnUpdate = registerOutput<bool>('cacheInvalidateOnUpdate');
    cacheTtl = registerOutput<int>('cacheTtl');
    collectLogs = registerOutput<bool>('collectLogs');
    createdAt = registerOutput<String>('createdAt');
    dlp = registerOutput<AiGatewayDlp?>('dlp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayDlp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    guardrails = registerOutput<AiGatewayGuardrails?>('guardrails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayGuardrails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isDefault = registerOutput<bool>('isDefault');
    logClassification = registerOutput<bool>('logClassification');
    logManagement = registerOutput<int>('logManagement');
    logManagementStrategy = registerOutput<String>('logManagementStrategy');
    logpush = registerOutput<bool>('logpush');
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
    storeId = registerOutput<String>('storeId');
    stripe = registerOutput<AiGatewayStripe?>('stripe', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayStripe.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workersAiBillingMode = registerOutput<String>('workersAiBillingMode');
    zdr = registerOutput<bool>('zdr');
  }
}
