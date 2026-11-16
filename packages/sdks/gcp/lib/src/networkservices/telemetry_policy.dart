import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_policy_args.dart';
import 'telemetry_policy_metrics_configuration.dart';
import 'telemetry_policy_state.dart';
import 'telemetry_policy_telemetry_target.dart';
import 'telemetry_policy_tracing_configuration.dart';

/// Provides a configuration for telemetry.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about TelemetryPolicy, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-services/rest/v1beta1/projects.locations.telemetryPolicies)
///
///
/// ## Example Usage
///
/// ### Network Services Telemetry Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.TelemetryPolicy("default", {
///     name: "my-telemetry-policy",
///     location: "us-central1",
///     labels: {
///         foo: "bar",
///     },
///     telemetryTarget: {
///         resources: ["//run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.TelemetryPolicy("default",
///     name="my-telemetry-policy",
///     location="us-central1",
///     labels={
///         "foo": "bar",
///     },
///     telemetry_target={
///         "resources": ["//run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service"],
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
///     var @default = new Gcp.NetworkServices.TelemetryPolicy("default", new()
///     {
///         Name = "my-telemetry-policy",
///         Location = "us-central1",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         TelemetryTarget = new Gcp.NetworkServices.Inputs.TelemetryPolicyTelemetryTargetArgs
///         {
///             Resources = new[]
///             {
///                 "//run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewTelemetryPolicy(ctx, "default", &networkservices.TelemetryPolicyArgs{
/// 			Name:     pulumi.String("my-telemetry-policy"),
/// 			Location: pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			TelemetryTarget: &networkservices.TelemetryPolicyTelemetryTargetArgs{
/// 				Resources: pulumi.StringArray{
/// 					pulumi.String("//run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_networkservices_telemetry_policy" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "my-telemetry-policy"
///   location = "us-central1"
///   labels = {
///     "foo" = "bar"
///   }
///   telemetry_target = {
///     resources = ["//run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networkservices.TelemetryPolicy;
/// import com.pulumi.gcp.networkservices.TelemetryPolicyArgs;
/// import com.pulumi.gcp.networkservices.inputs.TelemetryPolicyTelemetryTargetArgs;
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
///         var default_ = new TelemetryPolicy("default", TelemetryPolicyArgs.builder()
///             .name("my-telemetry-policy")
///             .location("us-central1")
///             .labels(Map.of("foo", "bar"))
///             .telemetryTarget(TelemetryPolicyTelemetryTargetArgs.builder()
///                 .resources("//run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:TelemetryPolicy
///     properties:
///       name: my-telemetry-policy
///       location: us-central1
///       labels:
///         foo: bar
///       telemetryTarget:
///         resources:
///           - //run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service
/// ```
///
///
/// ### Network Services Telemetry Policy Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.TelemetryPolicy("default", {
///     name: "my-telemetry-policy-full",
///     location: "us-central1",
///     displayName: "Full Telemetry Policy Sample",
///     labels: {
///         foo: "bar",
///     },
///     telemetryTarget: {
///         resources: ["//run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service"],
///     },
///     tracingConfiguration: {
///         samplingRate: 0.5,
///         customSpanAttributes: [
///             {
///                 attributeName: "env",
///                 literalValue: "prod",
///             },
///             {
///                 attributeName: "user-id",
///                 fromHeaderValue: "x-user-id",
///             },
///         ],
///         parentBasedSampling: {
///             enabled: true,
///             samplingRate: 0.75,
///         },
///     },
///     metricsConfiguration: {
///         enabled: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.TelemetryPolicy("default",
///     name="my-telemetry-policy-full",
///     location="us-central1",
///     display_name="Full Telemetry Policy Sample",
///     labels={
///         "foo": "bar",
///     },
///     telemetry_target={
///         "resources": ["//run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service"],
///     },
///     tracing_configuration={
///         "sampling_rate": 0.5,
///         "custom_span_attributes": [
///             {
///                 "attribute_name": "env",
///                 "literal_value": "prod",
///             },
///             {
///                 "attribute_name": "user-id",
///                 "from_header_value": "x-user-id",
///             },
///         ],
///         "parent_based_sampling": {
///             "enabled": True,
///             "sampling_rate": 0.75,
///         },
///     },
///     metrics_configuration={
///         "enabled": True,
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
///     var @default = new Gcp.NetworkServices.TelemetryPolicy("default", new()
///     {
///         Name = "my-telemetry-policy-full",
///         Location = "us-central1",
///         DisplayName = "Full Telemetry Policy Sample",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         TelemetryTarget = new Gcp.NetworkServices.Inputs.TelemetryPolicyTelemetryTargetArgs
///         {
///             Resources = new[]
///             {
///                 "//run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service",
///             },
///         },
///         TracingConfiguration = new Gcp.NetworkServices.Inputs.TelemetryPolicyTracingConfigurationArgs
///         {
///             SamplingRate = 0.5,
///             CustomSpanAttributes = new[]
///             {
///                 new Gcp.NetworkServices.Inputs.TelemetryPolicyTracingConfigurationCustomSpanAttributeArgs
///                 {
///                     AttributeName = "env",
///                     LiteralValue = "prod",
///                 },
///                 new Gcp.NetworkServices.Inputs.TelemetryPolicyTracingConfigurationCustomSpanAttributeArgs
///                 {
///                     AttributeName = "user-id",
///                     FromHeaderValue = "x-user-id",
///                 },
///             },
///             ParentBasedSampling = new Gcp.NetworkServices.Inputs.TelemetryPolicyTracingConfigurationParentBasedSamplingArgs
///             {
///                 Enabled = true,
///                 SamplingRate = 0.75,
///             },
///         },
///         MetricsConfiguration = new Gcp.NetworkServices.Inputs.TelemetryPolicyMetricsConfigurationArgs
///         {
///             Enabled = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewTelemetryPolicy(ctx, "default", &networkservices.TelemetryPolicyArgs{
/// 			Name:        pulumi.String("my-telemetry-policy-full"),
/// 			Location:    pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("Full Telemetry Policy Sample"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			TelemetryTarget: &networkservices.TelemetryPolicyTelemetryTargetArgs{
/// 				Resources: pulumi.StringArray{
/// 					pulumi.String("//run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service"),
/// 				},
/// 			},
/// 			TracingConfiguration: &networkservices.TelemetryPolicyTracingConfigurationArgs{
/// 				SamplingRate: pulumi.Float64(0.5),
/// 				CustomSpanAttributes: networkservices.TelemetryPolicyTracingConfigurationCustomSpanAttributeArray{
/// 					&networkservices.TelemetryPolicyTracingConfigurationCustomSpanAttributeArgs{
/// 						AttributeName: pulumi.String("env"),
/// 						LiteralValue:  pulumi.String("prod"),
/// 					},
/// 					&networkservices.TelemetryPolicyTracingConfigurationCustomSpanAttributeArgs{
/// 						AttributeName:   pulumi.String("user-id"),
/// 						FromHeaderValue: pulumi.String("x-user-id"),
/// 					},
/// 				},
/// 				ParentBasedSampling: &networkservices.TelemetryPolicyTracingConfigurationParentBasedSamplingArgs{
/// 					Enabled:      pulumi.Bool(true),
/// 					SamplingRate: pulumi.Float64(0.75),
/// 				},
/// 			},
/// 			MetricsConfiguration: &networkservices.TelemetryPolicyMetricsConfigurationArgs{
/// 				Enabled: pulumi.Bool(true),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_networkservices_telemetry_policy" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name         = "my-telemetry-policy-full"
///   location     = "us-central1"
///   display_name = "Full Telemetry Policy Sample"
///   labels = {
///     "foo" = "bar"
///   }
///   telemetry_target = {
///     resources = ["//run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service"]
///   }
///   tracing_configuration = {
///     sampling_rate = 0.5
///     custom_span_attributes = [{
///       attribute_name = "env"
///       literal_value  = "prod"
///       }, {
///       attribute_name    = "user-id"
///       from_header_value = "x-user-id"
///     }]
///     parent_based_sampling = {
///       enabled       = true
///       sampling_rate = 0.75
///     }
///   }
///   metrics_configuration = {
///     enabled = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networkservices.TelemetryPolicy;
/// import com.pulumi.gcp.networkservices.TelemetryPolicyArgs;
/// import com.pulumi.gcp.networkservices.inputs.TelemetryPolicyTelemetryTargetArgs;
/// import com.pulumi.gcp.networkservices.inputs.TelemetryPolicyTracingConfigurationArgs;
/// import com.pulumi.gcp.networkservices.inputs.TelemetryPolicyTracingConfigurationCustomSpanAttributeArgs;
/// import com.pulumi.gcp.networkservices.inputs.TelemetryPolicyTracingConfigurationParentBasedSamplingArgs;
/// import com.pulumi.gcp.networkservices.inputs.TelemetryPolicyMetricsConfigurationArgs;
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
///         var default_ = new TelemetryPolicy("default", TelemetryPolicyArgs.builder()
///             .name("my-telemetry-policy-full")
///             .location("us-central1")
///             .displayName("Full Telemetry Policy Sample")
///             .labels(Map.of("foo", "bar"))
///             .telemetryTarget(TelemetryPolicyTelemetryTargetArgs.builder()
///                 .resources("//run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service")
///                 .build())
///             .tracingConfiguration(TelemetryPolicyTracingConfigurationArgs.builder()
///                 .samplingRate(0.5)
///                 .customSpanAttributes(
///                     TelemetryPolicyTracingConfigurationCustomSpanAttributeArgs.builder()
///                         .attributeName("env")
///                         .literalValue("prod")
///                         .build(),
///                     TelemetryPolicyTracingConfigurationCustomSpanAttributeArgs.builder()
///                         .attributeName("user-id")
///                         .fromHeaderValue("x-user-id")
///                         .build())
///                 .parentBasedSampling(TelemetryPolicyTracingConfigurationParentBasedSamplingArgs.builder()
///                     .enabled(true)
///                     .samplingRate(0.75)
///                     .build())
///                 .build())
///             .metricsConfiguration(TelemetryPolicyMetricsConfigurationArgs.builder()
///                 .enabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:TelemetryPolicy
///     properties:
///       name: my-telemetry-policy-full
///       location: us-central1
///       displayName: Full Telemetry Policy Sample
///       labels:
///         foo: bar
///       telemetryTarget:
///         resources:
///           - //run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service
///       tracingConfiguration:
///         samplingRate: 0.5
///         customSpanAttributes:
///           - attributeName: env
///             literalValue: prod
///           - attributeName: user-id
///             fromHeaderValue: x-user-id
///         parentBasedSampling:
///           enabled: true
///           samplingRate: 0.75
///       metricsConfiguration:
///         enabled: true
/// ```
///
///
/// ### Network Services Telemetry Policy Global
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.TelemetryPolicy("default", {
///     name: "my-telemetry-policy-global",
///     location: "global",
///     labels: {
///         foo: "bar",
///     },
///     telemetryTarget: {
///         resources: ["//run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.TelemetryPolicy("default",
///     name="my-telemetry-policy-global",
///     location="global",
///     labels={
///         "foo": "bar",
///     },
///     telemetry_target={
///         "resources": ["//run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service"],
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
///     var @default = new Gcp.NetworkServices.TelemetryPolicy("default", new()
///     {
///         Name = "my-telemetry-policy-global",
///         Location = "global",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         TelemetryTarget = new Gcp.NetworkServices.Inputs.TelemetryPolicyTelemetryTargetArgs
///         {
///             Resources = new[]
///             {
///                 "//run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewTelemetryPolicy(ctx, "default", &networkservices.TelemetryPolicyArgs{
/// 			Name:     pulumi.String("my-telemetry-policy-global"),
/// 			Location: pulumi.String("global"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			TelemetryTarget: &networkservices.TelemetryPolicyTelemetryTargetArgs{
/// 				Resources: pulumi.StringArray{
/// 					pulumi.String("//run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_networkservices_telemetry_policy" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "my-telemetry-policy-global"
///   location = "global"
///   labels = {
///     "foo" = "bar"
///   }
///   telemetry_target = {
///     resources = ["//run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networkservices.TelemetryPolicy;
/// import com.pulumi.gcp.networkservices.TelemetryPolicyArgs;
/// import com.pulumi.gcp.networkservices.inputs.TelemetryPolicyTelemetryTargetArgs;
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
///         var default_ = new TelemetryPolicy("default", TelemetryPolicyArgs.builder()
///             .name("my-telemetry-policy-global")
///             .location("global")
///             .labels(Map.of("foo", "bar"))
///             .telemetryTarget(TelemetryPolicyTelemetryTargetArgs.builder()
///                 .resources("//run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:TelemetryPolicy
///     properties:
///       name: my-telemetry-policy-global
///       location: global
///       labels:
///         foo: bar
///       telemetryTarget:
///         resources:
///           - //run.googleapis.com/projects/my-project-name/locations/us-central1/services/my-service
/// ```
///
///
/// ## Import
///
/// TelemetryPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/telemetryPolicies/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, TelemetryPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/telemetryPolicy:TelemetryPolicy default projects/{{project}}/locations/{{location}}/telemetryPolicies/{{name}}
/// $ pulumi import gcp:networkservices/telemetryPolicy:TelemetryPolicy default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:networkservices/telemetryPolicy:TelemetryPolicy default {{location}}/{{name}}
/// ```
class TelemetryPolicy extends pulumi.CustomResource {
  /// Time the TelemetryPolicy was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Provides a human-readable name for the policy.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Set of label tags associated with the TelemetryPolicy resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Location (region) of the TelemetryPolicy resource to be created. Defaults to 'global'.
  late final pulumi.Output<String?> location;
  /// Specifies the top-level configuration block within the telemetry policy that contains all the settings for how metrics will be applied to the target resources.
  /// Structure is documented below.
  late final pulumi.Output<TelemetryPolicyMetricsConfiguration?> metricsConfiguration;
  /// Short name of the TelemetryPolicy resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Specifies the set of targets to which this telemetry policy applies.
  /// Structure is documented below.
  late final pulumi.Output<TelemetryPolicyTelemetryTarget> telemetryTarget;
  /// Specifies the top-level configuration block within the telemetry policy that contains all the settings for how tracing will be applied to the target resources.
  /// Structure is documented below.
  late final pulumi.Output<TelemetryPolicyTracingConfiguration?> tracingConfiguration;
  /// Specifies the server-assigned unique identifier for the policy.
  late final pulumi.Output<String> uid;
  /// Time the TelemetryPolicy was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [TelemetryPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TelemetryPolicy]. {@macro pulumi_networkservices_telemetry_policy_telemetry_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TelemetryPolicy(
    String name, {
    TelemetryPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/telemetryPolicy:TelemetryPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.2').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String?>('location');
    metricsConfiguration = registerOutput<TelemetryPolicyMetricsConfiguration?>('metricsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryPolicyMetricsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    telemetryTarget = registerOutput<TelemetryPolicyTelemetryTarget>('telemetryTarget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryPolicyTelemetryTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tracingConfiguration = registerOutput<TelemetryPolicyTracingConfiguration?>('tracingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryPolicyTracingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [TelemetryPolicy] resource's state with the given [name] and [id].
  static TelemetryPolicy get(
    String name,
    pulumi.Input<String> id, {
    TelemetryPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TelemetryPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TelemetryPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/telemetryPolicy:TelemetryPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String?>('location');
    metricsConfiguration = registerOutput<TelemetryPolicyMetricsConfiguration?>('metricsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryPolicyMetricsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    telemetryTarget = registerOutput<TelemetryPolicyTelemetryTarget>('telemetryTarget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryPolicyTelemetryTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tracingConfiguration = registerOutput<TelemetryPolicyTracingConfiguration?>('tracingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryPolicyTracingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [TelemetryPolicy] resource.
  TelemetryPolicy.reference(String urn)
    : super(
        'gcp:networkservices/telemetryPolicy:TelemetryPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String?>('location');
    metricsConfiguration = registerOutput<TelemetryPolicyMetricsConfiguration?>('metricsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryPolicyMetricsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    telemetryTarget = registerOutput<TelemetryPolicyTelemetryTarget>('telemetryTarget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryPolicyTelemetryTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tracingConfiguration = registerOutput<TelemetryPolicyTracingConfiguration?>('tracingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryPolicyTracingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
