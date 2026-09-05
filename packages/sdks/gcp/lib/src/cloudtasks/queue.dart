import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_app_engine_routing_override.dart';
import 'queue_args.dart';
import 'queue_http_target.dart';
import 'queue_rate_limits.dart';
import 'queue_retry_config.dart';
import 'queue_stackdriver_logging_config.dart';
import 'queue_state.dart';

/// A named resource to which messages are sent by publishers.
///
///
///
/// ## Example Usage
///
/// ### Queue Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudtasks.Queue("default", {
///     name: "cloud-tasks-queue-test",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudtasks.Queue("default",
///     name="cloud-tasks-queue-test",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CloudTasks.Queue("default", new()
///     {
///         Name = "cloud-tasks-queue-test",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudtasks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudtasks.NewQueue(ctx, "default", &cloudtasks.QueueArgs{
/// 			Name:     pulumi.String("cloud-tasks-queue-test"),
/// 			Location: pulumi.String("us-central1"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudtasks_queue" "default" {
///   name     = "cloud-tasks-queue-test"
///   location = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudtasks.Queue;
/// import com.pulumi.gcp.cloudtasks.QueueArgs;
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
///         var default_ = new Queue("default", QueueArgs.builder()
///             .name("cloud-tasks-queue-test")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudtasks:Queue
///     properties:
///       name: cloud-tasks-queue-test
///       location: us-central1
/// ```
///
/// ### Cloud Tasks Queue Advanced
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const advancedConfiguration = new gcp.cloudtasks.Queue("advanced_configuration", {
///     name: "instance-name",
///     location: "us-central1",
///     appEngineRoutingOverride: {
///         service: "worker",
///         version: "1.0",
///         instance: "test",
///     },
///     rateLimits: {
///         maxConcurrentDispatches: 3,
///         maxDispatchesPerSecond: 2,
///     },
///     retryConfig: {
///         maxAttempts: 5,
///         maxRetryDuration: "4s",
///         maxBackoff: "3s",
///         minBackoff: "2s",
///         maxDoublings: 1,
///     },
///     stackdriverLoggingConfig: {
///         samplingRatio: 0.9,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// advanced_configuration = gcp.cloudtasks.Queue("advanced_configuration",
///     name="instance-name",
///     location="us-central1",
///     app_engine_routing_override={
///         "service": "worker",
///         "version": "1.0",
///         "instance": "test",
///     },
///     rate_limits={
///         "max_concurrent_dispatches": 3,
///         "max_dispatches_per_second": float(2),
///     },
///     retry_config={
///         "max_attempts": 5,
///         "max_retry_duration": "4s",
///         "max_backoff": "3s",
///         "min_backoff": "2s",
///         "max_doublings": 1,
///     },
///     stackdriver_logging_config={
///         "sampling_ratio": 0.9,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var advancedConfiguration = new Gcp.CloudTasks.Queue("advanced_configuration", new()
///     {
///         Name = "instance-name",
///         Location = "us-central1",
///         AppEngineRoutingOverride = new Gcp.CloudTasks.Inputs.QueueAppEngineRoutingOverrideArgs
///         {
///             Service = "worker",
///             Version = "1.0",
///             Instance = "test",
///         },
///         RateLimits = new Gcp.CloudTasks.Inputs.QueueRateLimitsArgs
///         {
///             MaxConcurrentDispatches = 3,
///             MaxDispatchesPerSecond = 2.0,
///         },
///         RetryConfig = new Gcp.CloudTasks.Inputs.QueueRetryConfigArgs
///         {
///             MaxAttempts = 5,
///             MaxRetryDuration = "4s",
///             MaxBackoff = "3s",
///             MinBackoff = "2s",
///             MaxDoublings = 1,
///         },
///         StackdriverLoggingConfig = new Gcp.CloudTasks.Inputs.QueueStackdriverLoggingConfigArgs
///         {
///             SamplingRatio = 0.9,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudtasks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudtasks.NewQueue(ctx, "advanced_configuration", &cloudtasks.QueueArgs{
/// 			Name:     pulumi.String("instance-name"),
/// 			Location: pulumi.String("us-central1"),
/// 			AppEngineRoutingOverride: &cloudtasks.QueueAppEngineRoutingOverrideArgs{
/// 				Service:  pulumi.String("worker"),
/// 				Version:  pulumi.String("1.0"),
/// 				Instance: pulumi.String("test"),
/// 			},
/// 			RateLimits: &cloudtasks.QueueRateLimitsArgs{
/// 				MaxConcurrentDispatches: pulumi.Int(3),
/// 				MaxDispatchesPerSecond:  pulumi.Float64(2),
/// 			},
/// 			RetryConfig: &cloudtasks.QueueRetryConfigArgs{
/// 				MaxAttempts:      pulumi.Int(5),
/// 				MaxRetryDuration: pulumi.String("4s"),
/// 				MaxBackoff:       pulumi.String("3s"),
/// 				MinBackoff:       pulumi.String("2s"),
/// 				MaxDoublings:     pulumi.Int(1),
/// 			},
/// 			StackdriverLoggingConfig: &cloudtasks.QueueStackdriverLoggingConfigArgs{
/// 				SamplingRatio: pulumi.Float64(0.9),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudtasks_queue" "advanced_configuration" {
///   name     = "instance-name"
///   location = "us-central1"
///   app_engine_routing_override = {
///     service  = "worker"
///     version  = "1.0"
///     instance = "test"
///   }
///   rate_limits = {
///     max_concurrent_dispatches = 3
///     max_dispatches_per_second = 2
///   }
///   retry_config = {
///     max_attempts       = 5
///     max_retry_duration = "4s"
///     max_backoff        = "3s"
///     min_backoff        = "2s"
///     max_doublings      = 1
///   }
///   stackdriver_logging_config = {
///     sampling_ratio = 0.9
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudtasks.Queue;
/// import com.pulumi.gcp.cloudtasks.QueueArgs;
/// import com.pulumi.gcp.cloudtasks.inputs.QueueAppEngineRoutingOverrideArgs;
/// import com.pulumi.gcp.cloudtasks.inputs.QueueRateLimitsArgs;
/// import com.pulumi.gcp.cloudtasks.inputs.QueueRetryConfigArgs;
/// import com.pulumi.gcp.cloudtasks.inputs.QueueStackdriverLoggingConfigArgs;
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
///         var advancedConfiguration = new Queue("advancedConfiguration", QueueArgs.builder()
///             .name("instance-name")
///             .location("us-central1")
///             .appEngineRoutingOverride(QueueAppEngineRoutingOverrideArgs.builder()
///                 .service("worker")
///                 .version("1.0")
///                 .instance("test")
///                 .build())
///             .rateLimits(QueueRateLimitsArgs.builder()
///                 .maxConcurrentDispatches(3)
///                 .maxDispatchesPerSecond(2.0)
///                 .build())
///             .retryConfig(QueueRetryConfigArgs.builder()
///                 .maxAttempts(5)
///                 .maxRetryDuration("4s")
///                 .maxBackoff("3s")
///                 .minBackoff("2s")
///                 .maxDoublings(1)
///                 .build())
///             .stackdriverLoggingConfig(QueueStackdriverLoggingConfigArgs.builder()
///                 .samplingRatio(0.9)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   advancedConfiguration:
///     type: gcp:cloudtasks:Queue
///     name: advanced_configuration
///     properties:
///       name: instance-name
///       location: us-central1
///       appEngineRoutingOverride:
///         service: worker
///         version: '1.0'
///         instance: test
///       rateLimits:
///         maxConcurrentDispatches: 3
///         maxDispatchesPerSecond: 2
///       retryConfig:
///         maxAttempts: 5
///         maxRetryDuration: 4s
///         maxBackoff: 3s
///         minBackoff: 2s
///         maxDoublings: 1
///       stackdriverLoggingConfig:
///         samplingRatio: 0.9
/// ```
///
/// ### Cloud Tasks Queue Http Target Oidc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const oidcServiceAccount = new gcp.serviceaccount.Account("oidc_service_account", {
///     accountId: "example-oidc",
///     displayName: "Tasks Queue OIDC Service Account",
/// });
/// const httpTargetOidc = new gcp.cloudtasks.Queue("http_target_oidc", {
///     name: "cloud-tasks-queue-http-target-oidc",
///     location: "us-central1",
///     httpTarget: {
///         httpMethod: "POST",
///         uriOverride: {
///             scheme: "HTTPS",
///             host: "oidc.example.com",
///             port: "8443",
///             pathOverride: {
///                 path: "/users/1234",
///             },
///             queryOverride: {
///                 queryParams: "qparam1=123&qparam2=456",
///             },
///             uriOverrideEnforceMode: "IF_NOT_EXISTS",
///         },
///         headerOverrides: [
///             {
///                 header: {
///                     key: "AddSomethingElse",
///                     value: "MyOtherValue",
///                 },
///             },
///             {
///                 header: {
///                     key: "AddMe",
///                     value: "MyValue",
///                 },
///             },
///         ],
///         oidcToken: {
///             serviceAccountEmail: oidcServiceAccount.email,
///             audience: "https://oidc.example.com",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// oidc_service_account = gcp.serviceaccount.Account("oidc_service_account",
///     account_id="example-oidc",
///     display_name="Tasks Queue OIDC Service Account")
/// http_target_oidc = gcp.cloudtasks.Queue("http_target_oidc",
///     name="cloud-tasks-queue-http-target-oidc",
///     location="us-central1",
///     http_target={
///         "http_method": "POST",
///         "uri_override": {
///             "scheme": "HTTPS",
///             "host": "oidc.example.com",
///             "port": "8443",
///             "path_override": {
///                 "path": "/users/1234",
///             },
///             "query_override": {
///                 "query_params": "qparam1=123&qparam2=456",
///             },
///             "uri_override_enforce_mode": "IF_NOT_EXISTS",
///         },
///         "header_overrides": [
///             {
///                 "header": {
///                     "key": "AddSomethingElse",
///                     "value": "MyOtherValue",
///                 },
///             },
///             {
///                 "header": {
///                     "key": "AddMe",
///                     "value": "MyValue",
///                 },
///             },
///         ],
///         "oidc_token": {
///             "service_account_email": oidc_service_account.email,
///             "audience": "https://oidc.example.com",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var oidcServiceAccount = new Gcp.ServiceAccount.Account("oidc_service_account", new()
///     {
///         AccountId = "example-oidc",
///         DisplayName = "Tasks Queue OIDC Service Account",
///     });
///
///     var httpTargetOidc = new Gcp.CloudTasks.Queue("http_target_oidc", new()
///     {
///         Name = "cloud-tasks-queue-http-target-oidc",
///         Location = "us-central1",
///         HttpTarget = new Gcp.CloudTasks.Inputs.QueueHttpTargetArgs
///         {
///             HttpMethod = "POST",
///             UriOverride = new Gcp.CloudTasks.Inputs.QueueHttpTargetUriOverrideArgs
///             {
///                 Scheme = "HTTPS",
///                 Host = "oidc.example.com",
///                 Port = "8443",
///                 PathOverride = new Gcp.CloudTasks.Inputs.QueueHttpTargetUriOverridePathOverrideArgs
///                 {
///                     Path = "/users/1234",
///                 },
///                 QueryOverride = new Gcp.CloudTasks.Inputs.QueueHttpTargetUriOverrideQueryOverrideArgs
///                 {
///                     QueryParams = "qparam1=123&qparam2=456",
///                 },
///                 UriOverrideEnforceMode = "IF_NOT_EXISTS",
///             },
///             HeaderOverrides = new[]
///             {
///                 new Gcp.CloudTasks.Inputs.QueueHttpTargetHeaderOverrideArgs
///                 {
///                     Header = new Gcp.CloudTasks.Inputs.QueueHttpTargetHeaderOverrideHeaderArgs
///                     {
///                         Key = "AddSomethingElse",
///                         Value = "MyOtherValue",
///                     },
///                 },
///                 new Gcp.CloudTasks.Inputs.QueueHttpTargetHeaderOverrideArgs
///                 {
///                     Header = new Gcp.CloudTasks.Inputs.QueueHttpTargetHeaderOverrideHeaderArgs
///                     {
///                         Key = "AddMe",
///                         Value = "MyValue",
///                     },
///                 },
///             },
///             OidcToken = new Gcp.CloudTasks.Inputs.QueueHttpTargetOidcTokenArgs
///             {
///                 ServiceAccountEmail = oidcServiceAccount.Email,
///                 Audience = "https://oidc.example.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudtasks"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		oidcServiceAccount, err := serviceaccount.NewAccount(ctx, "oidc_service_account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("example-oidc"),
/// 			DisplayName: pulumi.String("Tasks Queue OIDC Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudtasks.NewQueue(ctx, "http_target_oidc", &cloudtasks.QueueArgs{
/// 			Name:     pulumi.String("cloud-tasks-queue-http-target-oidc"),
/// 			Location: pulumi.String("us-central1"),
/// 			HttpTarget: &cloudtasks.QueueHttpTargetArgs{
/// 				HttpMethod: pulumi.String("POST"),
/// 				UriOverride: &cloudtasks.QueueHttpTargetUriOverrideArgs{
/// 					Scheme: pulumi.String("HTTPS"),
/// 					Host:   pulumi.String("oidc.example.com"),
/// 					Port:   pulumi.String("8443"),
/// 					PathOverride: &cloudtasks.QueueHttpTargetUriOverridePathOverrideArgs{
/// 						Path: pulumi.String("/users/1234"),
/// 					},
/// 					QueryOverride: &cloudtasks.QueueHttpTargetUriOverrideQueryOverrideArgs{
/// 						QueryParams: pulumi.String("qparam1=123&qparam2=456"),
/// 					},
/// 					UriOverrideEnforceMode: pulumi.String("IF_NOT_EXISTS"),
/// 				},
/// 				HeaderOverrides: cloudtasks.QueueHttpTargetHeaderOverrideArray{
/// 					&cloudtasks.QueueHttpTargetHeaderOverrideArgs{
/// 						Header: &cloudtasks.QueueHttpTargetHeaderOverrideHeaderArgs{
/// 							Key:   pulumi.String("AddSomethingElse"),
/// 							Value: pulumi.String("MyOtherValue"),
/// 						},
/// 					},
/// 					&cloudtasks.QueueHttpTargetHeaderOverrideArgs{
/// 						Header: &cloudtasks.QueueHttpTargetHeaderOverrideHeaderArgs{
/// 							Key:   pulumi.String("AddMe"),
/// 							Value: pulumi.String("MyValue"),
/// 						},
/// 					},
/// 				},
/// 				OidcToken: &cloudtasks.QueueHttpTargetOidcTokenArgs{
/// 					ServiceAccountEmail: oidcServiceAccount.Email,
/// 					Audience:            pulumi.String("https://oidc.example.com"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudtasks_queue" "http_target_oidc" {
///   name     = "cloud-tasks-queue-http-target-oidc"
///   location = "us-central1"
///   http_target = {
///     http_method = "POST"
///     uri_override = {
///       scheme = "HTTPS"
///       host   = "oidc.example.com"
///       port   = 8443
///       path_override = {
///         path = "/users/1234"
///       }
///       query_override = {
///         query_params = "qparam1=123&qparam2=456"
///       }
///       uri_override_enforce_mode = "IF_NOT_EXISTS"
///     }
///     header_overrides = [{
///       "header" = {
///         "key"   = "AddSomethingElse"
///         "value" = "MyOtherValue"
///       }
///       }, {
///       "header" = {
///         "key"   = "AddMe"
///         "value" = "MyValue"
///       }
///     }]
///     oidc_token = {
///       service_account_email = gcp_serviceaccount_account.oidc_service_account.email
///       audience              = "https://oidc.example.com"
///     }
///   }
/// }
/// resource "gcp_serviceaccount_account" "oidc_service_account" {
///   account_id   = "example-oidc"
///   display_name = "Tasks Queue OIDC Service Account"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.cloudtasks.Queue;
/// import com.pulumi.gcp.cloudtasks.QueueArgs;
/// import com.pulumi.gcp.cloudtasks.inputs.QueueHttpTargetArgs;
/// import com.pulumi.gcp.cloudtasks.inputs.QueueHttpTargetUriOverrideArgs;
/// import com.pulumi.gcp.cloudtasks.inputs.QueueHttpTargetUriOverridePathOverrideArgs;
/// import com.pulumi.gcp.cloudtasks.inputs.QueueHttpTargetUriOverrideQueryOverrideArgs;
/// import com.pulumi.gcp.cloudtasks.inputs.QueueHttpTargetHeaderOverrideArgs;
/// import com.pulumi.gcp.cloudtasks.inputs.QueueHttpTargetHeaderOverrideHeaderArgs;
/// import com.pulumi.gcp.cloudtasks.inputs.QueueHttpTargetOidcTokenArgs;
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
///         var oidcServiceAccount = new Account("oidcServiceAccount", AccountArgs.builder()
///             .accountId("example-oidc")
///             .displayName("Tasks Queue OIDC Service Account")
///             .build());
///
///         var httpTargetOidc = new Queue("httpTargetOidc", QueueArgs.builder()
///             .name("cloud-tasks-queue-http-target-oidc")
///             .location("us-central1")
///             .httpTarget(QueueHttpTargetArgs.builder()
///                 .httpMethod("POST")
///                 .uriOverride(QueueHttpTargetUriOverrideArgs.builder()
///                     .scheme("HTTPS")
///                     .host("oidc.example.com")
///                     .port("8443")
///                     .pathOverride(QueueHttpTargetUriOverridePathOverrideArgs.builder()
///                         .path("/users/1234")
///                         .build())
///                     .queryOverride(QueueHttpTargetUriOverrideQueryOverrideArgs.builder()
///                         .queryParams("qparam1=123&qparam2=456")
///                         .build())
///                     .uriOverrideEnforceMode("IF_NOT_EXISTS")
///                     .build())
///                 .headerOverrides(
///                     QueueHttpTargetHeaderOverrideArgs.builder()
///                         .header(QueueHttpTargetHeaderOverrideHeaderArgs.builder()
///                             .key("AddSomethingElse")
///                             .value("MyOtherValue")
///                             .build())
///                         .build(),
///                     QueueHttpTargetHeaderOverrideArgs.builder()
///                         .header(QueueHttpTargetHeaderOverrideHeaderArgs.builder()
///                             .key("AddMe")
///                             .value("MyValue")
///                             .build())
///                         .build())
///                 .oidcToken(QueueHttpTargetOidcTokenArgs.builder()
///                     .serviceAccountEmail(oidcServiceAccount.email())
///                     .audience("https://oidc.example.com")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   httpTargetOidc:
///     type: gcp:cloudtasks:Queue
///     name: http_target_oidc
///     properties:
///       name: cloud-tasks-queue-http-target-oidc
///       location: us-central1
///       httpTarget:
///         httpMethod: POST
///         uriOverride:
///           scheme: HTTPS
///           host: oidc.example.com
///           port: 8443
///           pathOverride:
///             path: /users/1234
///           queryOverride:
///             queryParams: qparam1=123&qparam2=456
///           uriOverrideEnforceMode: IF_NOT_EXISTS
///         headerOverrides:
///           - header:
///               key: AddSomethingElse
///               value: MyOtherValue
///           - header:
///               key: AddMe
///               value: MyValue
///         oidcToken:
///           serviceAccountEmail: ${oidcServiceAccount.email}
///           audience: https://oidc.example.com
///   oidcServiceAccount:
///     type: gcp:serviceaccount:Account
///     name: oidc_service_account
///     properties:
///       accountId: example-oidc
///       displayName: Tasks Queue OIDC Service Account
/// ```
///
/// ### Cloud Tasks Queue Http Target Oauth
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const oauthServiceAccount = new gcp.serviceaccount.Account("oauth_service_account", {
///     accountId: "example-oauth",
///     displayName: "Tasks Queue OAuth Service Account",
/// });
/// const httpTargetOauth = new gcp.cloudtasks.Queue("http_target_oauth", {
///     name: "cloud-tasks-queue-http-target-oauth",
///     location: "us-central1",
///     httpTarget: {
///         httpMethod: "POST",
///         uriOverride: {
///             scheme: "HTTPS",
///             host: "oauth.example.com",
///             port: "8443",
///             pathOverride: {
///                 path: "/users/1234",
///             },
///             queryOverride: {
///                 queryParams: "qparam1=123&qparam2=456",
///             },
///             uriOverrideEnforceMode: "IF_NOT_EXISTS",
///         },
///         headerOverrides: [
///             {
///                 header: {
///                     key: "AddSomethingElse",
///                     value: "MyOtherValue",
///                 },
///             },
///             {
///                 header: {
///                     key: "AddMe",
///                     value: "MyValue",
///                 },
///             },
///         ],
///         oauthToken: {
///             serviceAccountEmail: oauthServiceAccount.email,
///             scope: "openid https://www.googleapis.com/auth/userinfo.email",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// oauth_service_account = gcp.serviceaccount.Account("oauth_service_account",
///     account_id="example-oauth",
///     display_name="Tasks Queue OAuth Service Account")
/// http_target_oauth = gcp.cloudtasks.Queue("http_target_oauth",
///     name="cloud-tasks-queue-http-target-oauth",
///     location="us-central1",
///     http_target={
///         "http_method": "POST",
///         "uri_override": {
///             "scheme": "HTTPS",
///             "host": "oauth.example.com",
///             "port": "8443",
///             "path_override": {
///                 "path": "/users/1234",
///             },
///             "query_override": {
///                 "query_params": "qparam1=123&qparam2=456",
///             },
///             "uri_override_enforce_mode": "IF_NOT_EXISTS",
///         },
///         "header_overrides": [
///             {
///                 "header": {
///                     "key": "AddSomethingElse",
///                     "value": "MyOtherValue",
///                 },
///             },
///             {
///                 "header": {
///                     "key": "AddMe",
///                     "value": "MyValue",
///                 },
///             },
///         ],
///         "oauth_token": {
///             "service_account_email": oauth_service_account.email,
///             "scope": "openid https://www.googleapis.com/auth/userinfo.email",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var oauthServiceAccount = new Gcp.ServiceAccount.Account("oauth_service_account", new()
///     {
///         AccountId = "example-oauth",
///         DisplayName = "Tasks Queue OAuth Service Account",
///     });
///
///     var httpTargetOauth = new Gcp.CloudTasks.Queue("http_target_oauth", new()
///     {
///         Name = "cloud-tasks-queue-http-target-oauth",
///         Location = "us-central1",
///         HttpTarget = new Gcp.CloudTasks.Inputs.QueueHttpTargetArgs
///         {
///             HttpMethod = "POST",
///             UriOverride = new Gcp.CloudTasks.Inputs.QueueHttpTargetUriOverrideArgs
///             {
///                 Scheme = "HTTPS",
///                 Host = "oauth.example.com",
///                 Port = "8443",
///                 PathOverride = new Gcp.CloudTasks.Inputs.QueueHttpTargetUriOverridePathOverrideArgs
///                 {
///                     Path = "/users/1234",
///                 },
///                 QueryOverride = new Gcp.CloudTasks.Inputs.QueueHttpTargetUriOverrideQueryOverrideArgs
///                 {
///                     QueryParams = "qparam1=123&qparam2=456",
///                 },
///                 UriOverrideEnforceMode = "IF_NOT_EXISTS",
///             },
///             HeaderOverrides = new[]
///             {
///                 new Gcp.CloudTasks.Inputs.QueueHttpTargetHeaderOverrideArgs
///                 {
///                     Header = new Gcp.CloudTasks.Inputs.QueueHttpTargetHeaderOverrideHeaderArgs
///                     {
///                         Key = "AddSomethingElse",
///                         Value = "MyOtherValue",
///                     },
///                 },
///                 new Gcp.CloudTasks.Inputs.QueueHttpTargetHeaderOverrideArgs
///                 {
///                     Header = new Gcp.CloudTasks.Inputs.QueueHttpTargetHeaderOverrideHeaderArgs
///                     {
///                         Key = "AddMe",
///                         Value = "MyValue",
///                     },
///                 },
///             },
///             OauthToken = new Gcp.CloudTasks.Inputs.QueueHttpTargetOauthTokenArgs
///             {
///                 ServiceAccountEmail = oauthServiceAccount.Email,
///                 Scope = "openid https://www.googleapis.com/auth/userinfo.email",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudtasks"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		oauthServiceAccount, err := serviceaccount.NewAccount(ctx, "oauth_service_account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("example-oauth"),
/// 			DisplayName: pulumi.String("Tasks Queue OAuth Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudtasks.NewQueue(ctx, "http_target_oauth", &cloudtasks.QueueArgs{
/// 			Name:     pulumi.String("cloud-tasks-queue-http-target-oauth"),
/// 			Location: pulumi.String("us-central1"),
/// 			HttpTarget: &cloudtasks.QueueHttpTargetArgs{
/// 				HttpMethod: pulumi.String("POST"),
/// 				UriOverride: &cloudtasks.QueueHttpTargetUriOverrideArgs{
/// 					Scheme: pulumi.String("HTTPS"),
/// 					Host:   pulumi.String("oauth.example.com"),
/// 					Port:   pulumi.String("8443"),
/// 					PathOverride: &cloudtasks.QueueHttpTargetUriOverridePathOverrideArgs{
/// 						Path: pulumi.String("/users/1234"),
/// 					},
/// 					QueryOverride: &cloudtasks.QueueHttpTargetUriOverrideQueryOverrideArgs{
/// 						QueryParams: pulumi.String("qparam1=123&qparam2=456"),
/// 					},
/// 					UriOverrideEnforceMode: pulumi.String("IF_NOT_EXISTS"),
/// 				},
/// 				HeaderOverrides: cloudtasks.QueueHttpTargetHeaderOverrideArray{
/// 					&cloudtasks.QueueHttpTargetHeaderOverrideArgs{
/// 						Header: &cloudtasks.QueueHttpTargetHeaderOverrideHeaderArgs{
/// 							Key:   pulumi.String("AddSomethingElse"),
/// 							Value: pulumi.String("MyOtherValue"),
/// 						},
/// 					},
/// 					&cloudtasks.QueueHttpTargetHeaderOverrideArgs{
/// 						Header: &cloudtasks.QueueHttpTargetHeaderOverrideHeaderArgs{
/// 							Key:   pulumi.String("AddMe"),
/// 							Value: pulumi.String("MyValue"),
/// 						},
/// 					},
/// 				},
/// 				OauthToken: &cloudtasks.QueueHttpTargetOauthTokenArgs{
/// 					ServiceAccountEmail: oauthServiceAccount.Email,
/// 					Scope:               pulumi.String("openid https://www.googleapis.com/auth/userinfo.email"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudtasks_queue" "http_target_oauth" {
///   name     = "cloud-tasks-queue-http-target-oauth"
///   location = "us-central1"
///   http_target = {
///     http_method = "POST"
///     uri_override = {
///       scheme = "HTTPS"
///       host   = "oauth.example.com"
///       port   = 8443
///       path_override = {
///         path = "/users/1234"
///       }
///       query_override = {
///         query_params = "qparam1=123&qparam2=456"
///       }
///       uri_override_enforce_mode = "IF_NOT_EXISTS"
///     }
///     header_overrides = [{
///       "header" = {
///         "key"   = "AddSomethingElse"
///         "value" = "MyOtherValue"
///       }
///       }, {
///       "header" = {
///         "key"   = "AddMe"
///         "value" = "MyValue"
///       }
///     }]
///     oauth_token = {
///       service_account_email = gcp_serviceaccount_account.oauth_service_account.email
///       scope                 = "openid https://www.googleapis.com/auth/userinfo.email"
///     }
///   }
/// }
/// resource "gcp_serviceaccount_account" "oauth_service_account" {
///   account_id   = "example-oauth"
///   display_name = "Tasks Queue OAuth Service Account"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.cloudtasks.Queue;
/// import com.pulumi.gcp.cloudtasks.QueueArgs;
/// import com.pulumi.gcp.cloudtasks.inputs.QueueHttpTargetArgs;
/// import com.pulumi.gcp.cloudtasks.inputs.QueueHttpTargetUriOverrideArgs;
/// import com.pulumi.gcp.cloudtasks.inputs.QueueHttpTargetUriOverridePathOverrideArgs;
/// import com.pulumi.gcp.cloudtasks.inputs.QueueHttpTargetUriOverrideQueryOverrideArgs;
/// import com.pulumi.gcp.cloudtasks.inputs.QueueHttpTargetHeaderOverrideArgs;
/// import com.pulumi.gcp.cloudtasks.inputs.QueueHttpTargetHeaderOverrideHeaderArgs;
/// import com.pulumi.gcp.cloudtasks.inputs.QueueHttpTargetOauthTokenArgs;
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
///         var oauthServiceAccount = new Account("oauthServiceAccount", AccountArgs.builder()
///             .accountId("example-oauth")
///             .displayName("Tasks Queue OAuth Service Account")
///             .build());
///
///         var httpTargetOauth = new Queue("httpTargetOauth", QueueArgs.builder()
///             .name("cloud-tasks-queue-http-target-oauth")
///             .location("us-central1")
///             .httpTarget(QueueHttpTargetArgs.builder()
///                 .httpMethod("POST")
///                 .uriOverride(QueueHttpTargetUriOverrideArgs.builder()
///                     .scheme("HTTPS")
///                     .host("oauth.example.com")
///                     .port("8443")
///                     .pathOverride(QueueHttpTargetUriOverridePathOverrideArgs.builder()
///                         .path("/users/1234")
///                         .build())
///                     .queryOverride(QueueHttpTargetUriOverrideQueryOverrideArgs.builder()
///                         .queryParams("qparam1=123&qparam2=456")
///                         .build())
///                     .uriOverrideEnforceMode("IF_NOT_EXISTS")
///                     .build())
///                 .headerOverrides(
///                     QueueHttpTargetHeaderOverrideArgs.builder()
///                         .header(QueueHttpTargetHeaderOverrideHeaderArgs.builder()
///                             .key("AddSomethingElse")
///                             .value("MyOtherValue")
///                             .build())
///                         .build(),
///                     QueueHttpTargetHeaderOverrideArgs.builder()
///                         .header(QueueHttpTargetHeaderOverrideHeaderArgs.builder()
///                             .key("AddMe")
///                             .value("MyValue")
///                             .build())
///                         .build())
///                 .oauthToken(QueueHttpTargetOauthTokenArgs.builder()
///                     .serviceAccountEmail(oauthServiceAccount.email())
///                     .scope("openid https://www.googleapis.com/auth/userinfo.email")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   httpTargetOauth:
///     type: gcp:cloudtasks:Queue
///     name: http_target_oauth
///     properties:
///       name: cloud-tasks-queue-http-target-oauth
///       location: us-central1
///       httpTarget:
///         httpMethod: POST
///         uriOverride:
///           scheme: HTTPS
///           host: oauth.example.com
///           port: 8443
///           pathOverride:
///             path: /users/1234
///           queryOverride:
///             queryParams: qparam1=123&qparam2=456
///           uriOverrideEnforceMode: IF_NOT_EXISTS
///         headerOverrides:
///           - header:
///               key: AddSomethingElse
///               value: MyOtherValue
///           - header:
///               key: AddMe
///               value: MyValue
///         oauthToken:
///           serviceAccountEmail: ${oauthServiceAccount.email}
///           scope: openid https://www.googleapis.com/auth/userinfo.email
///   oauthServiceAccount:
///     type: gcp:serviceaccount:Account
///     name: oauth_service_account
///     properties:
///       accountId: example-oauth
///       displayName: Tasks Queue OAuth Service Account
/// ```
///
///
/// ## Import
///
/// Queue can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/queues/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Queue can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudtasks/queue:Queue default projects/{{project}}/locations/{{location}}/queues/{{name}}
/// $ pulumi import gcp:cloudtasks/queue:Queue default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:cloudtasks/queue:Queue default {{location}}/{{name}}
/// ```
class Queue extends pulumi.CustomResource {
  /// Overrides for task-level appEngineRouting. These settings apply only
  /// to App Engine tasks in this queue
  /// Structure is documented below.
  late final pulumi.Output<QueueAppEngineRoutingOverride?> appEngineRoutingOverride;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The desired state of the queue. Use this to pause and resume the queue.
  ///
  /// * RUNNING: The queue is running. Tasks can be dispatched.
  /// * PAUSED: The queue is paused. Tasks are not dispatched but can be added to the queue.
  late final pulumi.Output<String?> desiredState;
  /// Modifies HTTP target for HTTP tasks.
  /// Structure is documented below.
  late final pulumi.Output<QueueHttpTarget?> httpTarget;
  /// The location of the queue
  late final pulumi.Output<String> location;
  /// The queue name.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Rate limits for task dispatches.
  /// The queue's actual dispatch rate is the result of:
  /// * Number of tasks in the queue
  /// * User-specified throttling: rateLimits, retryConfig, and the queue's state.
  /// * System throttling due to 429 (Too Many Requests) or 503 (Service
  /// Unavailable) responses from the worker, high error rates, or to
  /// smooth sudden large traffic spikes.
  /// Structure is documented below.
  late final pulumi.Output<QueueRateLimits> rateLimits;
  /// Settings that determine the retry behavior.
  /// Structure is documented below.
  late final pulumi.Output<QueueRetryConfig> retryConfig;
  /// Configuration options for writing logs to Stackdriver Logging.
  /// Structure is documented below.
  late final pulumi.Output<QueueStackdriverLoggingConfig?> stackdriverLoggingConfig;
  /// The current state of the queue.
  late final pulumi.Output<String> state;

  /// Creates a new [Queue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Queue]. {@macro pulumi_cloudtasks_queue_queue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Queue(
    String name, {
    QueueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudtasks/queue:Queue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    appEngineRoutingOverride = registerOutput<QueueAppEngineRoutingOverride?>('appEngineRoutingOverride', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueAppEngineRoutingOverride.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    desiredState = registerOutput<String?>('desiredState');
    httpTarget = registerOutput<QueueHttpTarget?>('httpTarget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueHttpTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rateLimits = registerOutput<QueueRateLimits>('rateLimits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueRateLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retryConfig = registerOutput<QueueRetryConfig>('retryConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueRetryConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    stackdriverLoggingConfig = registerOutput<QueueStackdriverLoggingConfig?>('stackdriverLoggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueStackdriverLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
  }

  /// Gets an existing [Queue] resource's state with the given [name] and [id].
  static Queue get(
    String name,
    pulumi.Input<String> id, {
    QueueState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Queue._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Queue._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudtasks/queue:Queue',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appEngineRoutingOverride = registerOutput<QueueAppEngineRoutingOverride?>('appEngineRoutingOverride', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueAppEngineRoutingOverride.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    desiredState = registerOutput<String?>('desiredState');
    httpTarget = registerOutput<QueueHttpTarget?>('httpTarget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueHttpTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rateLimits = registerOutput<QueueRateLimits>('rateLimits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueRateLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retryConfig = registerOutput<QueueRetryConfig>('retryConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueRetryConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    stackdriverLoggingConfig = registerOutput<QueueStackdriverLoggingConfig?>('stackdriverLoggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueStackdriverLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [Queue] resource.
  Queue.reference(String urn)
    : super(
        'gcp:cloudtasks/queue:Queue',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    appEngineRoutingOverride = registerOutput<QueueAppEngineRoutingOverride?>('appEngineRoutingOverride', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueAppEngineRoutingOverride.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    desiredState = registerOutput<String?>('desiredState');
    httpTarget = registerOutput<QueueHttpTarget?>('httpTarget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueHttpTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rateLimits = registerOutput<QueueRateLimits>('rateLimits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueRateLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retryConfig = registerOutput<QueueRetryConfig>('retryConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueRetryConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    stackdriverLoggingConfig = registerOutput<QueueStackdriverLoggingConfig?>('stackdriverLoggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueStackdriverLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
  }
}
