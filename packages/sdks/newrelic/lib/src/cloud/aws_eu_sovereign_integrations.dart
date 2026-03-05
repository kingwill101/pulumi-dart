import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_eu_sovereign_integrations_args.dart';
import 'aws_eu_sovereign_integrations_billing.dart';
import 'aws_eu_sovereign_integrations_cloudtrail.dart';
import 'aws_eu_sovereign_integrations_state.dart';
import 'aws_eu_sovereign_integrations_xray.dart';

/// Use this resource to integrate AWS EU Sovereign services with New Relic.
///
/// ## Prerequisite
///
/// Setup is required for this resource to work properly. This resource assumes you have linked an AWS EU Sovereign account to New Relic.
///
/// The New Relic AWS EU Sovereign integration relies on two mechanisms to get data into New Relic:
///
/// * **CloudWatch Metric Streams (PUSH)**: This is the supported method for AWS EU Sovereign Cloud to get metrics into New Relic for the majority of AWS services. Follow the [steps outlined here](https://docs-preview.newrelic.com/docs/aws-eu-sovereign-cloud-integration) to set up a metric stream.
///
/// * **API Polling (PULL)**: Required for services that are **not supported** by CloudWatch Metric Streams. The following three services must be integrated via API Polling: **Billing**, **CloudTrail** and **X-Ray**. Follow the [steps outlined here](https://docs-preview.newrelic.com/docs/aws-eu-sovereign-cloud-integration).
///
/// This resource is used to configure API Polling integrations for those three services that are not available through AWS CloudWatch Metric Streams.
///
/// ## Example Usage
///
/// The following example demonstrates the use of the `newrelic.cloud.AwsEuSovereignIntegrations` resource with multiple AWS EU Sovereign integrations supported by the resource.
///
/// To view a full example with all supported AWS EU Sovereign integrations, please see the Additional Examples section. Integration blocks used in the resource may also be left empty to use the default configuration of the integration.
///
/// A full example, inclusive of setup of AWS resources (from the AWS Terraform Provider) associated with this resource, may be found in our AWS EU Sovereign cloud integration guide.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.cloud.AwsEuSovereignLinkAccount("foo", {
///     arn: "arn:aws-eusc:iam::123456789012:role/NewRelicInfrastructure-Integrations",
///     metricCollectionMode: "PULL",
///     name: "my-eu-sovereign-account",
/// });
/// const bar = new newrelic.cloud.AwsEuSovereignIntegrations("bar", {
///     linkedAccountId: foo.id,
///     billing: {
///         metricsPollingInterval: 3600,
///     },
///     cloudtrail: {
///         metricsPollingInterval: 300,
///         awsRegions: ["eusc-de-east-1"],
///     },
///     xRay: {
///         metricsPollingInterval: 300,
///         awsRegions: ["eusc-de-east-1"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.cloud.AwsEuSovereignLinkAccount("foo",
///     arn="arn:aws-eusc:iam::123456789012:role/NewRelicInfrastructure-Integrations",
///     metric_collection_mode="PULL",
///     name="my-eu-sovereign-account")
/// bar = newrelic.cloud.AwsEuSovereignIntegrations("bar",
///     linked_account_id=foo.id,
///     billing={
///         "metrics_polling_interval": 3600,
///     },
///     cloudtrail={
///         "metrics_polling_interval": 300,
///         "aws_regions": ["eusc-de-east-1"],
///     },
///     x_ray={
///         "metrics_polling_interval": 300,
///         "aws_regions": ["eusc-de-east-1"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.Cloud.AwsEuSovereignLinkAccount("foo", new()
///     {
///         Arn = "arn:aws-eusc:iam::123456789012:role/NewRelicInfrastructure-Integrations",
///         MetricCollectionMode = "PULL",
///         Name = "my-eu-sovereign-account",
///     });
///
///     var bar = new NewRelic.Cloud.AwsEuSovereignIntegrations("bar", new()
///     {
///         LinkedAccountId = foo.Id,
///         Billing = new NewRelic.Cloud.Inputs.AwsEuSovereignIntegrationsBillingArgs
///         {
///             MetricsPollingInterval = 3600,
///         },
///         Cloudtrail = new NewRelic.Cloud.Inputs.AwsEuSovereignIntegrationsCloudtrailArgs
///         {
///             MetricsPollingInterval = 300,
///             AwsRegions = new[]
///             {
///                 "eusc-de-east-1",
///             },
///         },
///         XRay = new NewRelic.Cloud.Inputs.AwsEuSovereignIntegrationsXRayArgs
///         {
///             MetricsPollingInterval = 300,
///             AwsRegions = new[]
///             {
///                 "eusc-de-east-1",
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
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/cloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := cloud.NewAwsEuSovereignLinkAccount(ctx, "foo", &cloud.AwsEuSovereignLinkAccountArgs{
/// 			Arn:                  pulumi.String("arn:aws-eusc:iam::123456789012:role/NewRelicInfrastructure-Integrations"),
/// 			MetricCollectionMode: pulumi.String("PULL"),
/// 			Name:                 pulumi.String("my-eu-sovereign-account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloud.NewAwsEuSovereignIntegrations(ctx, "bar", &cloud.AwsEuSovereignIntegrationsArgs{
/// 			LinkedAccountId: foo.ID(),
/// 			Billing: &cloud.AwsEuSovereignIntegrationsBillingArgs{
/// 				MetricsPollingInterval: pulumi.Int(3600),
/// 			},
/// 			Cloudtrail: &cloud.AwsEuSovereignIntegrationsCloudtrailArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("eusc-de-east-1"),
/// 				},
/// 			},
/// 			XRay: &cloud.AwsEuSovereignIntegrationsXRayArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("eusc-de-east-1"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.newrelic.cloud.AwsEuSovereignLinkAccount;
/// import com.pulumi.newrelic.cloud.AwsEuSovereignLinkAccountArgs;
/// import com.pulumi.newrelic.cloud.AwsEuSovereignIntegrations;
/// import com.pulumi.newrelic.cloud.AwsEuSovereignIntegrationsArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsEuSovereignIntegrationsBillingArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsEuSovereignIntegrationsCloudtrailArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsEuSovereignIntegrationsXRayArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var foo = new AwsEuSovereignLinkAccount("foo", AwsEuSovereignLinkAccountArgs.builder()
///             .arn("arn:aws-eusc:iam::123456789012:role/NewRelicInfrastructure-Integrations")
///             .metricCollectionMode("PULL")
///             .name("my-eu-sovereign-account")
///             .build());
///
///         var bar = new AwsEuSovereignIntegrations("bar", AwsEuSovereignIntegrationsArgs.builder()
///             .linkedAccountId(foo.id())
///             .billing(AwsEuSovereignIntegrationsBillingArgs.builder()
///                 .metricsPollingInterval(3600)
///                 .build())
///             .cloudtrail(AwsEuSovereignIntegrationsCloudtrailArgs.builder()
///                 .metricsPollingInterval(300)
///                 .awsRegions("eusc-de-east-1")
///                 .build())
///             .xRay(AwsEuSovereignIntegrationsXRayArgs.builder()
///                 .metricsPollingInterval(300)
///                 .awsRegions("eusc-de-east-1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:cloud:AwsEuSovereignLinkAccount
///     properties:
///       arn: arn:aws-eusc:iam::123456789012:role/NewRelicInfrastructure-Integrations
///       metricCollectionMode: PULL
///       name: my-eu-sovereign-account
///   bar:
///     type: newrelic:cloud:AwsEuSovereignIntegrations
///     properties:
///       linkedAccountId: ${foo.id}
///       billing:
///         metricsPollingInterval: 3600
///       cloudtrail:
///         metricsPollingInterval: 300
///         awsRegions:
///           - eusc-de-east-1
///       xRay:
///         metricsPollingInterval: 300
///         awsRegions:
///           - eusc-de-east-1
/// ```
///
///
/// ## Supported AWS EU Sovereign Integrations
///
/// &gt; **NOTE:** CloudWatch Metric Streams is the only supported method for AWS EU Sovereign Cloud. The following three integrations are for services **not supported by CloudWatch Metric Streams** and must be configured via API Polling using this resource.
///
/// &lt;details&gt;
/// &lt;summary&gt;Expand this section to view all supported AWS EU Sovereign services that may be integrated via this resource.&lt;/summary&gt;
///
/// | Block                  | Description                   |
/// |------------------------|-------------------------------|
/// | `billing`              | Billing Integration           |
/// | `cloudtrail`           | CloudTrail Integration        |
/// | `x_ray`                | X-Ray Integration             |
///
/// &lt;/details&gt;
///
/// ## Additional Examples
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const bar = new newrelic.cloud.AwsEuSovereignIntegrations("bar", {
///     linkedAccountId: foo.id,
///     billing: {
///         metricsPollingInterval: 300,
///     },
///     cloudtrail: {
///         metricsPollingInterval: 900,
///         awsRegions: ["eusc-de-east-1"],
///     },
///     xRay: {
///         metricsPollingInterval: 300,
///         awsRegions: ["eusc-de-east-1"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// bar = newrelic.cloud.AwsEuSovereignIntegrations("bar",
///     linked_account_id=foo["id"],
///     billing={
///         "metrics_polling_interval": 300,
///     },
///     cloudtrail={
///         "metrics_polling_interval": 900,
///         "aws_regions": ["eusc-de-east-1"],
///     },
///     x_ray={
///         "metrics_polling_interval": 300,
///         "aws_regions": ["eusc-de-east-1"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bar = new NewRelic.Cloud.AwsEuSovereignIntegrations("bar", new()
///     {
///         LinkedAccountId = foo.Id,
///         Billing = new NewRelic.Cloud.Inputs.AwsEuSovereignIntegrationsBillingArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         Cloudtrail = new NewRelic.Cloud.Inputs.AwsEuSovereignIntegrationsCloudtrailArgs
///         {
///             MetricsPollingInterval = 900,
///             AwsRegions = new[]
///             {
///                 "eusc-de-east-1",
///             },
///         },
///         XRay = new NewRelic.Cloud.Inputs.AwsEuSovereignIntegrationsXRayArgs
///         {
///             MetricsPollingInterval = 300,
///             AwsRegions = new[]
///             {
///                 "eusc-de-east-1",
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
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/cloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloud.NewAwsEuSovereignIntegrations(ctx, "bar", &cloud.AwsEuSovereignIntegrationsArgs{
/// 			LinkedAccountId: pulumi.Any(foo.Id),
/// 			Billing: &cloud.AwsEuSovereignIntegrationsBillingArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			Cloudtrail: &cloud.AwsEuSovereignIntegrationsCloudtrailArgs{
/// 				MetricsPollingInterval: pulumi.Int(900),
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("eusc-de-east-1"),
/// 				},
/// 			},
/// 			XRay: &cloud.AwsEuSovereignIntegrationsXRayArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("eusc-de-east-1"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.newrelic.cloud.AwsEuSovereignIntegrations;
/// import com.pulumi.newrelic.cloud.AwsEuSovereignIntegrationsArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsEuSovereignIntegrationsBillingArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsEuSovereignIntegrationsCloudtrailArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsEuSovereignIntegrationsXRayArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var bar = new AwsEuSovereignIntegrations("bar", AwsEuSovereignIntegrationsArgs.builder()
///             .linkedAccountId(foo.id())
///             .billing(AwsEuSovereignIntegrationsBillingArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .cloudtrail(AwsEuSovereignIntegrationsCloudtrailArgs.builder()
///                 .metricsPollingInterval(900)
///                 .awsRegions("eusc-de-east-1")
///                 .build())
///             .xRay(AwsEuSovereignIntegrationsXRayArgs.builder()
///                 .metricsPollingInterval(300)
///                 .awsRegions("eusc-de-east-1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bar:
///     type: newrelic:cloud:AwsEuSovereignIntegrations
///     properties:
///       linkedAccountId: ${foo.id}
///       billing:
///         metricsPollingInterval: 300
///       cloudtrail:
///         metricsPollingInterval: 900
///         awsRegions:
///           - eusc-de-east-1
///       xRay:
///         metricsPollingInterval: 300
///         awsRegions:
///           - eusc-de-east-1
/// ```
///
///
/// ## Import
///
/// Linked AWS EU Sovereign account integrations can be imported using the `id`, e.g.
///
/// ```bash
/// $ terraform import newrelic_cloud_aws_eu_sovereign_integrations.foo <id>
/// ```
class AwsEuSovereignIntegrations extends pulumi.CustomResource {
  /// The New Relic account ID to operate on. This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  late final pulumi.Output<String> accountId;
  /// Billing integration
  late final pulumi.Output<AwsEuSovereignIntegrationsBilling?> billing;
  /// CloudTrail integration
  late final pulumi.Output<AwsEuSovereignIntegrationsCloudtrail?> cloudtrail;
  /// The ID of the linked AWS EU Sovereign account in New Relic.
  late final pulumi.Output<String> linkedAccountId;
  /// X-Ray integration
  late final pulumi.Output<AwsEuSovereignIntegrationsXRay?> xRay;

  /// Creates a new [AwsEuSovereignIntegrations].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AwsEuSovereignIntegrations]. {@macro pulumi_cloud_aws_eu_sovereign_integrations_aws_eu_sovereign_integrations_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AwsEuSovereignIntegrations(
    String name, {
    AwsEuSovereignIntegrationsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:cloud/awsEuSovereignIntegrations:AwsEuSovereignIntegrations',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    billing = registerOutput<AwsEuSovereignIntegrationsBilling?>('billing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsEuSovereignIntegrationsBilling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudtrail = registerOutput<AwsEuSovereignIntegrationsCloudtrail?>('cloudtrail', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsEuSovereignIntegrationsCloudtrail.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    linkedAccountId = registerOutput<String>('linkedAccountId');
    xRay = registerOutput<AwsEuSovereignIntegrationsXRay?>('xRay', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsEuSovereignIntegrationsXRay.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AwsEuSovereignIntegrations] resource's state with the given [name] and [id].
  static AwsEuSovereignIntegrations get(
    String name,
    pulumi.Input<String> id, {
    AwsEuSovereignIntegrationsState? state,
  }) {
    return AwsEuSovereignIntegrations._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AwsEuSovereignIntegrations._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:cloud/awsEuSovereignIntegrations:AwsEuSovereignIntegrations',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    billing = registerOutput<AwsEuSovereignIntegrationsBilling?>('billing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsEuSovereignIntegrationsBilling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudtrail = registerOutput<AwsEuSovereignIntegrationsCloudtrail?>('cloudtrail', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsEuSovereignIntegrationsCloudtrail.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    linkedAccountId = registerOutput<String>('linkedAccountId');
    xRay = registerOutput<AwsEuSovereignIntegrationsXRay?>('xRay', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsEuSovereignIntegrationsXRay.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
