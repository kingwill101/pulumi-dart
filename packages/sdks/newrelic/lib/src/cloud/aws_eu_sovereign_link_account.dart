import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_eu_sovereign_link_account_args.dart';
import 'aws_eu_sovereign_link_account_state.dart';

/// Use this resource to link an AWS EU Sovereign account to New Relic.
///
/// ## Prerequisite
///
/// Setup is required in AWS EU Sovereign for this resource to work properly. To link an AWS EU Sovereign account to New Relic, you need an AWS EU Sovereign Cloud account.
///
/// Using a metric stream to New Relic is the only supported method for AWS EU Sovereign Cloud to get metrics into New Relic for the majority of AWS services. Follow the [steps outlined here](https://docs-preview.newrelic.com/docs/aws-eu-sovereign-cloud-integration) to set up a metric stream.
///
/// To pull data from AWS EU Sovereign for services not supported by CloudWatch Metric Streams (Billing, CloudTrail and X-Ray), complete the [steps outlined here](https://docs-preview.newrelic.com/docs/aws-eu-sovereign-cloud-integration).
///
/// ## Example Usage
///
/// You can also use the full example, including the AWS set up, found in our guides.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.cloud.AwsEuSovereignLinkAccount("foo", {
///     accountId: "1234567",
///     name: "My New Relic - AWS EU Sovereign Linked Account",
///     metricCollectionMode: "PUSH",
///     arn: "arn:aws-eusc:iam::123456789012:role/NewRelicInfrastructure-Integrations",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.cloud.AwsEuSovereignLinkAccount("foo",
///     account_id="1234567",
///     name="My New Relic - AWS EU Sovereign Linked Account",
///     metric_collection_mode="PUSH",
///     arn="arn:aws-eusc:iam::123456789012:role/NewRelicInfrastructure-Integrations")
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
///         AccountId = "1234567",
///         Name = "My New Relic - AWS EU Sovereign Linked Account",
///         MetricCollectionMode = "PUSH",
///         Arn = "arn:aws-eusc:iam::123456789012:role/NewRelicInfrastructure-Integrations",
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
/// 		_, err := cloud.NewAwsEuSovereignLinkAccount(ctx, "foo", &cloud.AwsEuSovereignLinkAccountArgs{
/// 			AccountId:            pulumi.String("1234567"),
/// 			Name:                 pulumi.String("My New Relic - AWS EU Sovereign Linked Account"),
/// 			MetricCollectionMode: pulumi.String("PUSH"),
/// 			Arn:                  pulumi.String("arn:aws-eusc:iam::123456789012:role/NewRelicInfrastructure-Integrations"),
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
///             .accountId("1234567")
///             .name("My New Relic - AWS EU Sovereign Linked Account")
///             .metricCollectionMode("PUSH")
///             .arn("arn:aws-eusc:iam::123456789012:role/NewRelicInfrastructure-Integrations")
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
///       accountId: 1.234567e+06
///       name: My New Relic - AWS EU Sovereign Linked Account
///       metricCollectionMode: PUSH
///       arn: arn:aws-eusc:iam::123456789012:role/NewRelicInfrastructure-Integrations
/// ```
///
///
/// ## Import
///
/// Linked AWS EU Sovereign accounts can be imported using the `id`, e.g.
///
/// ```bash
/// $ terraform import newrelic_cloud_aws_eu_sovereign_link_account.foo <id>
/// ```
class AwsEuSovereignLinkAccount extends pulumi.CustomResource {
  /// The New Relic account ID to operate on. This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`, if not specified in the configuration.
  late final pulumi.Output<String> accountId;

  /// The Amazon Resource Name (ARN) of the IAM role.
  late final pulumi.Output<String> arn;

  /// How metrics will be collected. Use `PUSH` for metric stream, `PULL` for API polling of the 3 services not supported by metric streams (Billing, CloudTrail and X-Ray), or `BOTH` for both methods. Defaults to `PUSH`, if not specified in the configuration.
  late final pulumi.Output<String?> metricCollectionMode;

  /// The name/identifier of the AWS EU Sovereign - New Relic 'linked' account.
  ///
  /// &gt; **WARNING:** Updating any of the aforementioned attributes (except `name`) of a `newrelic.cloud.AwsEuSovereignLinkAccount` resource that has been applied would **force a replacement** of the resource (destruction of the resource, followed by the creation of a new resource). Please carefully review the output of `pulumi preview`, which would clearly indicate a replacement of this resource, before performing a `pulumi up`.
  ///
  /// &gt; **NOTE:** This resource requires the New Relic provider to be configured with `region = "EU"` or the `NEW_RELIC_REGION=EU` environment variable.
  late final pulumi.Output<String> name;

  /// Creates a new [AwsEuSovereignLinkAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AwsEuSovereignLinkAccount]. {@macro pulumi_cloud_aws_eu_sovereign_link_account_aws_eu_sovereign_link_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AwsEuSovereignLinkAccount(
    String name, {
    AwsEuSovereignLinkAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:cloud/awsEuSovereignLinkAccount:AwsEuSovereignLinkAccount',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    arn = registerOutput<String>('arn');
    metricCollectionMode = registerOutput<String?>('metricCollectionMode');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [AwsEuSovereignLinkAccount] resource's state with the given [name] and [id].
  static AwsEuSovereignLinkAccount get(
    String name,
    pulumi.Input<String> id, {
    AwsEuSovereignLinkAccountState? state,
  }) {
    return AwsEuSovereignLinkAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AwsEuSovereignLinkAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:cloud/awsEuSovereignLinkAccount:AwsEuSovereignLinkAccount',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    arn = registerOutput<String>('arn');
    metricCollectionMode = registerOutput<String?>('metricCollectionMode');
    this.name = registerOutput<String>('name');
  }
}
