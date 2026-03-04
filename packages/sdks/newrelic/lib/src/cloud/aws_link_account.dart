import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_link_account_args.dart';
import 'aws_link_account_state.dart';

/// Use this resource to link an AWS account to New Relic.
///
/// ## Prerequisite
///
/// Setup is required in AWS for this resource to work properly. The New Relic AWS integration can be set up to pull metrics from AWS services or AWS can push metrics to New Relic using CloudWatch Metric Streams.
///
/// Using a metric stream to New Relic is the preferred way to integrate with AWS. Follow the [steps outlined here](https://docs.newrelic.com/docs/infrastructure/amazon-integrations/aws-integrations-list/aws-metric-stream/#set-up-metric-stream) to set up a metric stream.
///
/// To pull data from AWS instead, complete the [steps outlined here](https://docs.newrelic.com/docs/infrastructure/amazon-integrations/get-started/connect-aws-new-relic-infrastructure-monitoring#connect).
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
/// const foo = new newrelic.cloud.AwsLinkAccount("foo", {
///     arn: "arn:aws:service:region:account-id:resource-id",
///     metricCollectionMode: "PUSH",
///     name: "account name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.cloud.AwsLinkAccount("foo",
///     arn="arn:aws:service:region:account-id:resource-id",
///     metric_collection_mode="PUSH",
///     name="account name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.Cloud.AwsLinkAccount("foo", new()
///     {
///         Arn = "arn:aws:service:region:account-id:resource-id",
///         MetricCollectionMode = "PUSH",
///         Name = "account name",
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
/// 		_, err := cloud.NewAwsLinkAccount(ctx, "foo", &cloud.AwsLinkAccountArgs{
/// 			Arn:                  pulumi.String("arn:aws:service:region:account-id:resource-id"),
/// 			MetricCollectionMode: pulumi.String("PUSH"),
/// 			Name:                 pulumi.String("account name"),
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
/// import com.pulumi.newrelic.cloud.AwsLinkAccount;
/// import com.pulumi.newrelic.cloud.AwsLinkAccountArgs;
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
///         var foo = new AwsLinkAccount("foo", AwsLinkAccountArgs.builder()
///             .arn("arn:aws:service:region:account-id:resource-id")
///             .metricCollectionMode("PUSH")
///             .name("account name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:cloud:AwsLinkAccount
///     properties:
///       arn: arn:aws:service:region:account-id:resource-id
///       metricCollectionMode: PUSH
///       name: account name
/// ```
///
///
/// ## Import
///
/// Linked AWS accounts can be imported using the `id`, e.g.
///
/// ```bash
/// $ terraform import newrelic_cloud_aws_link_account.foo <id>
/// ```
class AwsLinkAccount extends pulumi.CustomResource {
  /// The New Relic account ID to operate on.  This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  late final pulumi.Output<String> accountId;

  /// The Amazon Resource Name (ARN) of the IAM role.
  late final pulumi.Output<String> arn;

  /// How metrics will be collected. Use `PUSH` for a metric stream or `PULL` to integrate with individual services.
  late final pulumi.Output<String?> metricCollectionMode;

  /// The linked account name
  ///
  /// &gt; **WARNING:** Starting with v3.27.2 of the New Relic Terraform Provider, updating any of the aforementioned attributes (except `name`) of a `newrelic.cloud.AwsLinkAccount` resource that has been applied would **force a replacement** of the resource (destruction of the resource, followed by the creation of a new resource). Please carefully review the output of `pulumi preview`, which would clearly indicate a replacement of this resource, before performing a `pulumi up`.
  late final pulumi.Output<String> name;

  /// Creates a new [AwsLinkAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AwsLinkAccount]. {@macro pulumi_cloud_aws_link_account_aws_link_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AwsLinkAccount(
    String name, {
    AwsLinkAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:cloud/awsLinkAccount:AwsLinkAccount',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    arn = registerOutput<String>('arn');
    metricCollectionMode = registerOutput<String?>('metricCollectionMode');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [AwsLinkAccount] resource's state with the given [name] and [id].
  static AwsLinkAccount get(
    String name,
    pulumi.Input<String> id, {
    AwsLinkAccountState? state,
  }) {
    return AwsLinkAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AwsLinkAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:cloud/awsLinkAccount:AwsLinkAccount',
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
