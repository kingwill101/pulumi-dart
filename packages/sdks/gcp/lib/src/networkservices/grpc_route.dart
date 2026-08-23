import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_args.dart';
import 'grpc_route_state.dart';

/// GrpcRoute is the resource defining how gRPC traffic routed by a Mesh or Gateway resource is routed.
///
///
/// To get more information about GrpcRoute, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-services/rest/v1beta1/projects.locations.grpcRoutes)
///
/// ## Example Usage
///
/// ### Network Services Grpc Route Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.GrpcRoute("default", {
///     name: "my-grpc-route",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     hostnames: ["example"],
///     rules: [{
///         matches: [{
///             headers: [{
///                 key: "key",
///                 value: "value",
///             }],
///         }],
///         action: {
///             retryPolicy: {
///                 retryConditions: ["cancelled"],
///                 numRetries: 1,
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.GrpcRoute("default",
///     name="my-grpc-route",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     hostnames=["example"],
///     rules=[{
///         "matches": [{
///             "headers": [{
///                 "key": "key",
///                 "value": "value",
///             }],
///         }],
///         "action": {
///             "retry_policy": {
///                 "retry_conditions": ["cancelled"],
///                 "num_retries": 1,
///             },
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkServices.GrpcRoute("default", new()
///     {
///         Name = "my-grpc-route",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Hostnames = new[]
///         {
///             "example",
///         },
///         Rules = new[]
///         {
///             new Gcp.NetworkServices.Inputs.GrpcRouteRuleArgs
///             {
///                 Matches = new[]
///                 {
///                     new Gcp.NetworkServices.Inputs.GrpcRouteRuleMatchArgs
///                     {
///                         Headers = new[]
///                         {
///                             new Gcp.NetworkServices.Inputs.GrpcRouteRuleMatchHeaderArgs
///                             {
///                                 Key = "key",
///                                 Value = "value",
///                             },
///                         },
///                     },
///                 },
///                 Action = new Gcp.NetworkServices.Inputs.GrpcRouteRuleActionArgs
///                 {
///                     RetryPolicy = new Gcp.NetworkServices.Inputs.GrpcRouteRuleActionRetryPolicyArgs
///                     {
///                         RetryConditions = new[]
///                         {
///                             "cancelled",
///                         },
///                         NumRetries = 1,
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewGrpcRoute(ctx, "default", &networkservices.GrpcRouteArgs{
/// 			Name: pulumi.String("my-grpc-route"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Hostnames: pulumi.StringArray{
/// 				pulumi.String("example"),
/// 			},
/// 			Rules: networkservices.GrpcRouteRuleArray{
/// 				&networkservices.GrpcRouteRuleArgs{
/// 					Matches: networkservices.GrpcRouteRuleMatchArray{
/// 						&networkservices.GrpcRouteRuleMatchArgs{
/// 							Headers: networkservices.GrpcRouteRuleMatchHeaderArray{
/// 								&networkservices.GrpcRouteRuleMatchHeaderArgs{
/// 									Key:   pulumi.String("key"),
/// 									Value: pulumi.String("value"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Action: &networkservices.GrpcRouteRuleActionArgs{
/// 						RetryPolicy: &networkservices.GrpcRouteRuleActionRetryPolicyArgs{
/// 							RetryConditions: pulumi.StringArray{
/// 								pulumi.String("cancelled"),
/// 							},
/// 							NumRetries: pulumi.Int(1),
/// 						},
/// 					},
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
/// resource "gcp_networkservices_grpcroute" "default" {
///   name = "my-grpc-route"
///   labels = {
///     "foo" = "bar"
///   }
///   description = "my description"
///   hostnames   = ["example"]
///   rules {
///     matches {
///       headers {
///         key   = "key"
///         value = "value"
///       }
///     }
///     action = {
///       retry_policy = {
///         retry_conditions = ["cancelled"]
///         num_retries      = 1
///       }
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
/// import com.pulumi.gcp.networkservices.GrpcRoute;
/// import com.pulumi.gcp.networkservices.GrpcRouteArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleMatchArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleMatchHeaderArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleActionArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleActionRetryPolicyArgs;
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
///         var default_ = new GrpcRoute("default", GrpcRouteArgs.builder()
///             .name("my-grpc-route")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .hostnames("example")
///             .rules(GrpcRouteRuleArgs.builder()
///                 .matches(GrpcRouteRuleMatchArgs.builder()
///                     .headers(GrpcRouteRuleMatchHeaderArgs.builder()
///                         .key("key")
///                         .value("value")
///                         .build())
///                     .build())
///                 .action(GrpcRouteRuleActionArgs.builder()
///                     .retryPolicy(GrpcRouteRuleActionRetryPolicyArgs.builder()
///                         .retryConditions("cancelled")
///                         .numRetries(1)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:GrpcRoute
///     properties:
///       name: my-grpc-route
///       labels:
///         foo: bar
///       description: my description
///       hostnames:
///         - example
///       rules:
///         - matches:
///             - headers:
///                 - key: key
///                   value: value
///           action:
///             retryPolicy:
///               retryConditions:
///                 - cancelled
///               numRetries: 1
/// ```
///
/// ### Network Services Grpc Route Matches And Actions
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.GrpcRoute("default", {
///     name: "my-grpc-route",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     hostnames: ["example"],
///     rules: [{
///         matches: [
///             {
///                 headers: [{
///                     key: "key",
///                     value: "value",
///                 }],
///             },
///             {
///                 headers: [{
///                     key: "key",
///                     value: "value",
///                 }],
///                 method: {
///                     grpcService: "foo",
///                     grpcMethod: "bar",
///                     caseSensitive: true,
///                 },
///             },
///         ],
///         action: {
///             faultInjectionPolicy: {
///                 delay: {
///                     fixedDelay: "1s",
///                     percentage: 1,
///                 },
///                 abort: {
///                     httpStatus: 500,
///                     percentage: 1,
///                 },
///             },
///             retryPolicy: {
///                 retryConditions: ["cancelled"],
///                 numRetries: 1,
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.GrpcRoute("default",
///     name="my-grpc-route",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     hostnames=["example"],
///     rules=[{
///         "matches": [
///             {
///                 "headers": [{
///                     "key": "key",
///                     "value": "value",
///                 }],
///             },
///             {
///                 "headers": [{
///                     "key": "key",
///                     "value": "value",
///                 }],
///                 "method": {
///                     "grpc_service": "foo",
///                     "grpc_method": "bar",
///                     "case_sensitive": True,
///                 },
///             },
///         ],
///         "action": {
///             "fault_injection_policy": {
///                 "delay": {
///                     "fixed_delay": "1s",
///                     "percentage": 1,
///                 },
///                 "abort": {
///                     "http_status": 500,
///                     "percentage": 1,
///                 },
///             },
///             "retry_policy": {
///                 "retry_conditions": ["cancelled"],
///                 "num_retries": 1,
///             },
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkServices.GrpcRoute("default", new()
///     {
///         Name = "my-grpc-route",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Hostnames = new[]
///         {
///             "example",
///         },
///         Rules = new[]
///         {
///             new Gcp.NetworkServices.Inputs.GrpcRouteRuleArgs
///             {
///                 Matches = new[]
///                 {
///                     new Gcp.NetworkServices.Inputs.GrpcRouteRuleMatchArgs
///                     {
///                         Headers = new[]
///                         {
///                             new Gcp.NetworkServices.Inputs.GrpcRouteRuleMatchHeaderArgs
///                             {
///                                 Key = "key",
///                                 Value = "value",
///                             },
///                         },
///                     },
///                     new Gcp.NetworkServices.Inputs.GrpcRouteRuleMatchArgs
///                     {
///                         Headers = new[]
///                         {
///                             new Gcp.NetworkServices.Inputs.GrpcRouteRuleMatchHeaderArgs
///                             {
///                                 Key = "key",
///                                 Value = "value",
///                             },
///                         },
///                         Method = new Gcp.NetworkServices.Inputs.GrpcRouteRuleMatchMethodArgs
///                         {
///                             GrpcService = "foo",
///                             GrpcMethod = "bar",
///                             CaseSensitive = true,
///                         },
///                     },
///                 },
///                 Action = new Gcp.NetworkServices.Inputs.GrpcRouteRuleActionArgs
///                 {
///                     FaultInjectionPolicy = new Gcp.NetworkServices.Inputs.GrpcRouteRuleActionFaultInjectionPolicyArgs
///                     {
///                         Delay = new Gcp.NetworkServices.Inputs.GrpcRouteRuleActionFaultInjectionPolicyDelayArgs
///                         {
///                             FixedDelay = "1s",
///                             Percentage = 1,
///                         },
///                         Abort = new Gcp.NetworkServices.Inputs.GrpcRouteRuleActionFaultInjectionPolicyAbortArgs
///                         {
///                             HttpStatus = 500,
///                             Percentage = 1,
///                         },
///                     },
///                     RetryPolicy = new Gcp.NetworkServices.Inputs.GrpcRouteRuleActionRetryPolicyArgs
///                     {
///                         RetryConditions = new[]
///                         {
///                             "cancelled",
///                         },
///                         NumRetries = 1,
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewGrpcRoute(ctx, "default", &networkservices.GrpcRouteArgs{
/// 			Name: pulumi.String("my-grpc-route"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Hostnames: pulumi.StringArray{
/// 				pulumi.String("example"),
/// 			},
/// 			Rules: networkservices.GrpcRouteRuleArray{
/// 				&networkservices.GrpcRouteRuleArgs{
/// 					Matches: networkservices.GrpcRouteRuleMatchArray{
/// 						&networkservices.GrpcRouteRuleMatchArgs{
/// 							Headers: networkservices.GrpcRouteRuleMatchHeaderArray{
/// 								&networkservices.GrpcRouteRuleMatchHeaderArgs{
/// 									Key:   pulumi.String("key"),
/// 									Value: pulumi.String("value"),
/// 								},
/// 							},
/// 						},
/// 						&networkservices.GrpcRouteRuleMatchArgs{
/// 							Headers: networkservices.GrpcRouteRuleMatchHeaderArray{
/// 								&networkservices.GrpcRouteRuleMatchHeaderArgs{
/// 									Key:   pulumi.String("key"),
/// 									Value: pulumi.String("value"),
/// 								},
/// 							},
/// 							Method: &networkservices.GrpcRouteRuleMatchMethodArgs{
/// 								GrpcService:   pulumi.String("foo"),
/// 								GrpcMethod:    pulumi.String("bar"),
/// 								CaseSensitive: pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					Action: &networkservices.GrpcRouteRuleActionArgs{
/// 						FaultInjectionPolicy: &networkservices.GrpcRouteRuleActionFaultInjectionPolicyArgs{
/// 							Delay: &networkservices.GrpcRouteRuleActionFaultInjectionPolicyDelayArgs{
/// 								FixedDelay: pulumi.String("1s"),
/// 								Percentage: pulumi.Int(1),
/// 							},
/// 							Abort: &networkservices.GrpcRouteRuleActionFaultInjectionPolicyAbortArgs{
/// 								HttpStatus: pulumi.Int(500),
/// 								Percentage: pulumi.Int(1),
/// 							},
/// 						},
/// 						RetryPolicy: &networkservices.GrpcRouteRuleActionRetryPolicyArgs{
/// 							RetryConditions: pulumi.StringArray{
/// 								pulumi.String("cancelled"),
/// 							},
/// 							NumRetries: pulumi.Int(1),
/// 						},
/// 					},
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
/// resource "gcp_networkservices_grpcroute" "default" {
///   name = "my-grpc-route"
///   labels = {
///     "foo" = "bar"
///   }
///   description = "my description"
///   hostnames   = ["example"]
///   rules {
///     matches {
///       headers {
///         key   = "key"
///         value = "value"
///       }
///     }
///     matches {
///       headers {
///         key   = "key"
///         value = "value"
///       }
///       method = {
///         grpc_service   = "foo"
///         grpc_method    = "bar"
///         case_sensitive = true
///       }
///     }
///     action = {
///       fault_injection_policy = {
///         delay = {
///           fixed_delay = "1s"
///           percentage  = 1
///         }
///         abort = {
///           http_status = 500
///           percentage  = 1
///         }
///       }
///       retry_policy = {
///         retry_conditions = ["cancelled"]
///         num_retries      = 1
///       }
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
/// import com.pulumi.gcp.networkservices.GrpcRoute;
/// import com.pulumi.gcp.networkservices.GrpcRouteArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleMatchArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleMatchHeaderArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleMatchMethodArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleActionArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleActionFaultInjectionPolicyArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleActionFaultInjectionPolicyDelayArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleActionFaultInjectionPolicyAbortArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleActionRetryPolicyArgs;
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
///         var default_ = new GrpcRoute("default", GrpcRouteArgs.builder()
///             .name("my-grpc-route")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .hostnames("example")
///             .rules(GrpcRouteRuleArgs.builder()
///                 .matches(
///                     GrpcRouteRuleMatchArgs.builder()
///                         .headers(GrpcRouteRuleMatchHeaderArgs.builder()
///                             .key("key")
///                             .value("value")
///                             .build())
///                         .build(),
///                     GrpcRouteRuleMatchArgs.builder()
///                         .headers(GrpcRouteRuleMatchHeaderArgs.builder()
///                             .key("key")
///                             .value("value")
///                             .build())
///                         .method(GrpcRouteRuleMatchMethodArgs.builder()
///                             .grpcService("foo")
///                             .grpcMethod("bar")
///                             .caseSensitive(true)
///                             .build())
///                         .build())
///                 .action(GrpcRouteRuleActionArgs.builder()
///                     .faultInjectionPolicy(GrpcRouteRuleActionFaultInjectionPolicyArgs.builder()
///                         .delay(GrpcRouteRuleActionFaultInjectionPolicyDelayArgs.builder()
///                             .fixedDelay("1s")
///                             .percentage(1)
///                             .build())
///                         .abort(GrpcRouteRuleActionFaultInjectionPolicyAbortArgs.builder()
///                             .httpStatus(500)
///                             .percentage(1)
///                             .build())
///                         .build())
///                     .retryPolicy(GrpcRouteRuleActionRetryPolicyArgs.builder()
///                         .retryConditions("cancelled")
///                         .numRetries(1)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:GrpcRoute
///     properties:
///       name: my-grpc-route
///       labels:
///         foo: bar
///       description: my description
///       hostnames:
///         - example
///       rules:
///         - matches:
///             - headers:
///                 - key: key
///                   value: value
///             - headers:
///                 - key: key
///                   value: value
///               method:
///                 grpcService: foo
///                 grpcMethod: bar
///                 caseSensitive: true
///           action:
///             faultInjectionPolicy:
///               delay:
///                 fixedDelay: 1s
///                 percentage: 1
///               abort:
///                 httpStatus: 500
///                 percentage: 1
///             retryPolicy:
///               retryConditions:
///                 - cancelled
///               numRetries: 1
/// ```
///
/// ### Network Services Grpc Route Actions
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.GrpcRoute("default", {
///     name: "my-grpc-route",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     hostnames: ["example"],
///     rules: [{
///         action: {
///             faultInjectionPolicy: {
///                 delay: {
///                     fixedDelay: "1s",
///                     percentage: 1,
///                 },
///                 abort: {
///                     httpStatus: 500,
///                     percentage: 1,
///                 },
///             },
///             retryPolicy: {
///                 retryConditions: ["cancelled"],
///                 numRetries: 1,
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.GrpcRoute("default",
///     name="my-grpc-route",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     hostnames=["example"],
///     rules=[{
///         "action": {
///             "fault_injection_policy": {
///                 "delay": {
///                     "fixed_delay": "1s",
///                     "percentage": 1,
///                 },
///                 "abort": {
///                     "http_status": 500,
///                     "percentage": 1,
///                 },
///             },
///             "retry_policy": {
///                 "retry_conditions": ["cancelled"],
///                 "num_retries": 1,
///             },
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkServices.GrpcRoute("default", new()
///     {
///         Name = "my-grpc-route",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Hostnames = new[]
///         {
///             "example",
///         },
///         Rules = new[]
///         {
///             new Gcp.NetworkServices.Inputs.GrpcRouteRuleArgs
///             {
///                 Action = new Gcp.NetworkServices.Inputs.GrpcRouteRuleActionArgs
///                 {
///                     FaultInjectionPolicy = new Gcp.NetworkServices.Inputs.GrpcRouteRuleActionFaultInjectionPolicyArgs
///                     {
///                         Delay = new Gcp.NetworkServices.Inputs.GrpcRouteRuleActionFaultInjectionPolicyDelayArgs
///                         {
///                             FixedDelay = "1s",
///                             Percentage = 1,
///                         },
///                         Abort = new Gcp.NetworkServices.Inputs.GrpcRouteRuleActionFaultInjectionPolicyAbortArgs
///                         {
///                             HttpStatus = 500,
///                             Percentage = 1,
///                         },
///                     },
///                     RetryPolicy = new Gcp.NetworkServices.Inputs.GrpcRouteRuleActionRetryPolicyArgs
///                     {
///                         RetryConditions = new[]
///                         {
///                             "cancelled",
///                         },
///                         NumRetries = 1,
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewGrpcRoute(ctx, "default", &networkservices.GrpcRouteArgs{
/// 			Name: pulumi.String("my-grpc-route"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Hostnames: pulumi.StringArray{
/// 				pulumi.String("example"),
/// 			},
/// 			Rules: networkservices.GrpcRouteRuleArray{
/// 				&networkservices.GrpcRouteRuleArgs{
/// 					Action: &networkservices.GrpcRouteRuleActionArgs{
/// 						FaultInjectionPolicy: &networkservices.GrpcRouteRuleActionFaultInjectionPolicyArgs{
/// 							Delay: &networkservices.GrpcRouteRuleActionFaultInjectionPolicyDelayArgs{
/// 								FixedDelay: pulumi.String("1s"),
/// 								Percentage: pulumi.Int(1),
/// 							},
/// 							Abort: &networkservices.GrpcRouteRuleActionFaultInjectionPolicyAbortArgs{
/// 								HttpStatus: pulumi.Int(500),
/// 								Percentage: pulumi.Int(1),
/// 							},
/// 						},
/// 						RetryPolicy: &networkservices.GrpcRouteRuleActionRetryPolicyArgs{
/// 							RetryConditions: pulumi.StringArray{
/// 								pulumi.String("cancelled"),
/// 							},
/// 							NumRetries: pulumi.Int(1),
/// 						},
/// 					},
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
/// resource "gcp_networkservices_grpcroute" "default" {
///   name = "my-grpc-route"
///   labels = {
///     "foo" = "bar"
///   }
///   description = "my description"
///   hostnames   = ["example"]
///   rules {
///     action = {
///       fault_injection_policy = {
///         delay = {
///           fixed_delay = "1s"
///           percentage  = 1
///         }
///         abort = {
///           http_status = 500
///           percentage  = 1
///         }
///       }
///       retry_policy = {
///         retry_conditions = ["cancelled"]
///         num_retries      = 1
///       }
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
/// import com.pulumi.gcp.networkservices.GrpcRoute;
/// import com.pulumi.gcp.networkservices.GrpcRouteArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleActionArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleActionFaultInjectionPolicyArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleActionFaultInjectionPolicyDelayArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleActionFaultInjectionPolicyAbortArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleActionRetryPolicyArgs;
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
///         var default_ = new GrpcRoute("default", GrpcRouteArgs.builder()
///             .name("my-grpc-route")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .hostnames("example")
///             .rules(GrpcRouteRuleArgs.builder()
///                 .action(GrpcRouteRuleActionArgs.builder()
///                     .faultInjectionPolicy(GrpcRouteRuleActionFaultInjectionPolicyArgs.builder()
///                         .delay(GrpcRouteRuleActionFaultInjectionPolicyDelayArgs.builder()
///                             .fixedDelay("1s")
///                             .percentage(1)
///                             .build())
///                         .abort(GrpcRouteRuleActionFaultInjectionPolicyAbortArgs.builder()
///                             .httpStatus(500)
///                             .percentage(1)
///                             .build())
///                         .build())
///                     .retryPolicy(GrpcRouteRuleActionRetryPolicyArgs.builder()
///                         .retryConditions("cancelled")
///                         .numRetries(1)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:GrpcRoute
///     properties:
///       name: my-grpc-route
///       labels:
///         foo: bar
///       description: my description
///       hostnames:
///         - example
///       rules:
///         - action:
///             faultInjectionPolicy:
///               delay:
///                 fixedDelay: 1s
///                 percentage: 1
///               abort:
///                 httpStatus: 500
///                 percentage: 1
///             retryPolicy:
///               retryConditions:
///                 - cancelled
///               numRetries: 1
/// ```
///
/// ### Network Services Grpc Route Location
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.GrpcRoute("default", {
///     name: "my-grpc-route",
///     location: "global",
///     hostnames: ["example"],
///     rules: [{
///         matches: [{
///             headers: [{
///                 key: "key",
///                 value: "value",
///             }],
///         }],
///         action: {
///             retryPolicy: {
///                 retryConditions: ["cancelled"],
///                 numRetries: 1,
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.GrpcRoute("default",
///     name="my-grpc-route",
///     location="global",
///     hostnames=["example"],
///     rules=[{
///         "matches": [{
///             "headers": [{
///                 "key": "key",
///                 "value": "value",
///             }],
///         }],
///         "action": {
///             "retry_policy": {
///                 "retry_conditions": ["cancelled"],
///                 "num_retries": 1,
///             },
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkServices.GrpcRoute("default", new()
///     {
///         Name = "my-grpc-route",
///         Location = "global",
///         Hostnames = new[]
///         {
///             "example",
///         },
///         Rules = new[]
///         {
///             new Gcp.NetworkServices.Inputs.GrpcRouteRuleArgs
///             {
///                 Matches = new[]
///                 {
///                     new Gcp.NetworkServices.Inputs.GrpcRouteRuleMatchArgs
///                     {
///                         Headers = new[]
///                         {
///                             new Gcp.NetworkServices.Inputs.GrpcRouteRuleMatchHeaderArgs
///                             {
///                                 Key = "key",
///                                 Value = "value",
///                             },
///                         },
///                     },
///                 },
///                 Action = new Gcp.NetworkServices.Inputs.GrpcRouteRuleActionArgs
///                 {
///                     RetryPolicy = new Gcp.NetworkServices.Inputs.GrpcRouteRuleActionRetryPolicyArgs
///                     {
///                         RetryConditions = new[]
///                         {
///                             "cancelled",
///                         },
///                         NumRetries = 1,
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewGrpcRoute(ctx, "default", &networkservices.GrpcRouteArgs{
/// 			Name:     pulumi.String("my-grpc-route"),
/// 			Location: pulumi.String("global"),
/// 			Hostnames: pulumi.StringArray{
/// 				pulumi.String("example"),
/// 			},
/// 			Rules: networkservices.GrpcRouteRuleArray{
/// 				&networkservices.GrpcRouteRuleArgs{
/// 					Matches: networkservices.GrpcRouteRuleMatchArray{
/// 						&networkservices.GrpcRouteRuleMatchArgs{
/// 							Headers: networkservices.GrpcRouteRuleMatchHeaderArray{
/// 								&networkservices.GrpcRouteRuleMatchHeaderArgs{
/// 									Key:   pulumi.String("key"),
/// 									Value: pulumi.String("value"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Action: &networkservices.GrpcRouteRuleActionArgs{
/// 						RetryPolicy: &networkservices.GrpcRouteRuleActionRetryPolicyArgs{
/// 							RetryConditions: pulumi.StringArray{
/// 								pulumi.String("cancelled"),
/// 							},
/// 							NumRetries: pulumi.Int(1),
/// 						},
/// 					},
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
/// resource "gcp_networkservices_grpcroute" "default" {
///   name      = "my-grpc-route"
///   location  = "global"
///   hostnames = ["example"]
///   rules {
///     matches {
///       headers {
///         key   = "key"
///         value = "value"
///       }
///     }
///     action = {
///       retry_policy = {
///         retry_conditions = ["cancelled"]
///         num_retries      = 1
///       }
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
/// import com.pulumi.gcp.networkservices.GrpcRoute;
/// import com.pulumi.gcp.networkservices.GrpcRouteArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleMatchArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleMatchHeaderArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleActionArgs;
/// import com.pulumi.gcp.networkservices.inputs.GrpcRouteRuleActionRetryPolicyArgs;
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
///         var default_ = new GrpcRoute("default", GrpcRouteArgs.builder()
///             .name("my-grpc-route")
///             .location("global")
///             .hostnames("example")
///             .rules(GrpcRouteRuleArgs.builder()
///                 .matches(GrpcRouteRuleMatchArgs.builder()
///                     .headers(GrpcRouteRuleMatchHeaderArgs.builder()
///                         .key("key")
///                         .value("value")
///                         .build())
///                     .build())
///                 .action(GrpcRouteRuleActionArgs.builder()
///                     .retryPolicy(GrpcRouteRuleActionRetryPolicyArgs.builder()
///                         .retryConditions("cancelled")
///                         .numRetries(1)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:GrpcRoute
///     properties:
///       name: my-grpc-route
///       location: global
///       hostnames:
///         - example
///       rules:
///         - matches:
///             - headers:
///                 - key: key
///                   value: value
///           action:
///             retryPolicy:
///               retryConditions:
///                 - cancelled
///               numRetries: 1
/// ```
///
///
/// ## Import
///
/// GrpcRoute can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/grpcRoutes/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, GrpcRoute can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/grpcRoute:GrpcRoute default projects/{{project}}/locations/{{location}}/grpcRoutes/{{name}}
/// $ pulumi import gcp:networkservices/grpcRoute:GrpcRoute default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:networkservices/grpcRoute:GrpcRoute default {{location}}/{{name}}
/// ```
class GrpcRoute extends pulumi.CustomResource {
  /// Time the GrpcRoute was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// List of gateways this GrpcRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  late final pulumi.Output<List<String>?> gateways;
  /// Required. Service hostnames with an optional port for which this route describes traffic.
  late final pulumi.Output<List<String>> hostnames;
  /// Set of label tags associated with the GrpcRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Location (region) of the GRPCRoute resource to be created. Only the value 'global' is currently allowed; defaults to 'global' if omitted.
  late final pulumi.Output<String?> location;
  /// List of meshes this GrpcRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  late final pulumi.Output<List<String>?> meshes;
  /// Name of the GrpcRoute resource.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Rules that define how traffic is routed and handled.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> rules;
  /// Server-defined URL of this resource.
  late final pulumi.Output<String> selfLink;
  /// Time the GrpcRoute was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GrpcRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GrpcRoute]. {@macro pulumi_networkservices_grpc_route_grpc_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GrpcRoute(
    String name, {
    GrpcRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/grpcRoute:GrpcRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    gateways = registerOutput<List<String>?>('gateways');
    hostnames = registerOutput<List<String>>('hostnames');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    meshes = registerOutput<List<String>?>('meshes');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    rules = registerOutput<List<Map<String, dynamic>>>('rules');
    selfLink = registerOutput<String>('selfLink');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [GrpcRoute] resource's state with the given [name] and [id].
  static GrpcRoute get(
    String name,
    pulumi.Input<String> id, {
    GrpcRouteState? state,
  }) {
    return GrpcRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GrpcRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/grpcRoute:GrpcRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    gateways = registerOutput<List<String>?>('gateways');
    hostnames = registerOutput<List<String>>('hostnames');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    meshes = registerOutput<List<String>?>('meshes');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    rules = registerOutput<List<Map<String, dynamic>>>('rules');
    selfLink = registerOutput<String>('selfLink');
    updateTime = registerOutput<String>('updateTime');
  }
}
