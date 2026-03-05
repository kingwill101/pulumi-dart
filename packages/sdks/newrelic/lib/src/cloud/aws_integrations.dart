import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_integrations_alb.dart';
import 'aws_integrations_api_gateway.dart';
import 'aws_integrations_args.dart';
import 'aws_integrations_auto_scaling.dart';
import 'aws_integrations_aws_app_sync.dart';
import 'aws_integrations_aws_athena.dart';
import 'aws_integrations_aws_auto_discovery.dart';
import 'aws_integrations_aws_cognito.dart';
import 'aws_integrations_aws_connect.dart';
import 'aws_integrations_aws_direct_connect.dart';
import 'aws_integrations_aws_fsx.dart';
import 'aws_integrations_aws_glue.dart';
import 'aws_integrations_aws_kinesis_analytics.dart';
import 'aws_integrations_aws_media_convert.dart';
import 'aws_integrations_aws_media_package_vod.dart';
import 'aws_integrations_aws_mq.dart';
import 'aws_integrations_aws_msk.dart';
import 'aws_integrations_aws_neptune.dart';
import 'aws_integrations_aws_qldb.dart';
import 'aws_integrations_aws_route53resolver.dart';
import 'aws_integrations_aws_states.dart';
import 'aws_integrations_aws_transit_gateway.dart';
import 'aws_integrations_aws_waf.dart';
import 'aws_integrations_aws_wafv2.dart';
import 'aws_integrations_billing.dart';
import 'aws_integrations_cloudfront.dart';
import 'aws_integrations_cloudtrail.dart';
import 'aws_integrations_doc_db.dart';
import 'aws_integrations_dynamodb.dart';
import 'aws_integrations_ebs.dart';
import 'aws_integrations_ec2.dart';
import 'aws_integrations_ecs.dart';
import 'aws_integrations_efs.dart';
import 'aws_integrations_elasticache.dart';
import 'aws_integrations_elasticbeanstalk.dart';
import 'aws_integrations_elasticsearch.dart';
import 'aws_integrations_elb.dart';
import 'aws_integrations_emr.dart';
import 'aws_integrations_health.dart';
import 'aws_integrations_iam.dart';
import 'aws_integrations_iot.dart';
import 'aws_integrations_kinesis.dart';
import 'aws_integrations_kinesis_firehose.dart';
import 'aws_integrations_lambda.dart';
import 'aws_integrations_rds.dart';
import 'aws_integrations_redshift.dart';
import 'aws_integrations_route53.dart';
import 'aws_integrations_s3.dart';
import 'aws_integrations_security_hub.dart';
import 'aws_integrations_ses.dart';
import 'aws_integrations_sns.dart';
import 'aws_integrations_sqs.dart';
import 'aws_integrations_state.dart';
import 'aws_integrations_trusted_advisor.dart';
import 'aws_integrations_vpc.dart';
import 'aws_integrations_xray.dart';

/// Use this resource to integrate AWS services with New Relic.
///
/// ## Prerequisite
///
/// Setup is required for this resource to work properly. This resource assumes you have linked an AWS account to New Relic and configured it to push metrics using CloudWatch Metric Streams.
///
/// New Relic doesn't automatically receive metrics from AWS for some services so this resource can be used to configure integrations to those services.
///
/// Using a metric stream to New Relic is the preferred way to integrate with AWS. Follow the [steps outlined here](https://docs.newrelic.com/docs/infrastructure/amazon-integrations/aws-integrations-list/aws-metric-stream/#set-up-metric-stream) to set up a metric stream. This resource supports any integration that's not available through AWS metric stream.
///
/// ## Example Usage
///
/// The following example demonstrates the use of the `newrelic.cloud.AwsIntegrations` resource with multiple AWS integrations supported by the resource.
///
/// To view a full example with all supported AWS integrations, please see the Additional Examples section. Integration blocks used in the resource may also be left empty to use the default configuration of the integration.
///
/// A full example, inclusive of setup of AWS resources (from the AWS Terraform Provider) associated with this resource, may be found in our AWS cloud integration guide.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.cloud.AwsLinkAccount("foo", {
///     arn: newrelicAwsRole.arn,
///     metricCollectionMode: "PULL",
///     name: "foo",
/// });
/// const bar = new newrelic.cloud.AwsIntegrations("bar", {
///     linkedAccountId: foo.id,
///     cloudtrail: {
///         metricsPollingInterval: 300,
///         awsRegions: [
///             "us-east-1",
///             "us-east-2",
///         ],
///     },
///     vpc: {
///         metricsPollingInterval: 900,
///         awsRegions: [
///             "us-east-1",
///             "us-east-2",
///         ],
///         fetchNatGateway: true,
///         fetchVpn: false,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     sqs: {
///         fetchExtendedInventory: true,
///         fetchTags: true,
///         queuePrefixes: ["queue prefix"],
///         metricsPollingInterval: 300,
///         awsRegions: ["us-east-1"],
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     apiGateway: {
///         metricsPollingInterval: 300,
///         awsRegions: ["us-east-1"],
///         stagePrefixes: ["stage prefix"],
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     cloudfront: {
///         fetchLambdasAtEdge: true,
///         fetchTags: true,
///         metricsPollingInterval: 300,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     ec2: {
///         awsRegions: ["us-east-1"],
///         duplicateEc2Tags: true,
///         fetchIpAddresses: true,
///         metricsPollingInterval: 300,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     elasticsearch: {
///         awsRegions: ["us-east-1"],
///         fetchNodes: true,
///         metricsPollingInterval: 300,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     kinesis: {
///         awsRegions: ["us-east-1"],
///         fetchShards: true,
///         fetchTags: true,
///         metricsPollingInterval: 900,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.cloud.AwsLinkAccount("foo",
///     arn=newrelic_aws_role["arn"],
///     metric_collection_mode="PULL",
///     name="foo")
/// bar = newrelic.cloud.AwsIntegrations("bar",
///     linked_account_id=foo.id,
///     cloudtrail={
///         "metrics_polling_interval": 300,
///         "aws_regions": [
///             "us-east-1",
///             "us-east-2",
///         ],
///     },
///     vpc={
///         "metrics_polling_interval": 900,
///         "aws_regions": [
///             "us-east-1",
///             "us-east-2",
///         ],
///         "fetch_nat_gateway": True,
///         "fetch_vpn": False,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     sqs={
///         "fetch_extended_inventory": True,
///         "fetch_tags": True,
///         "queue_prefixes": ["queue prefix"],
///         "metrics_polling_interval": 300,
///         "aws_regions": ["us-east-1"],
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     api_gateway={
///         "metrics_polling_interval": 300,
///         "aws_regions": ["us-east-1"],
///         "stage_prefixes": ["stage prefix"],
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     cloudfront={
///         "fetch_lambdas_at_edge": True,
///         "fetch_tags": True,
///         "metrics_polling_interval": 300,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     ec2={
///         "aws_regions": ["us-east-1"],
///         "duplicate_ec2_tags": True,
///         "fetch_ip_addresses": True,
///         "metrics_polling_interval": 300,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     elasticsearch={
///         "aws_regions": ["us-east-1"],
///         "fetch_nodes": True,
///         "metrics_polling_interval": 300,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     kinesis={
///         "aws_regions": ["us-east-1"],
///         "fetch_shards": True,
///         "fetch_tags": True,
///         "metrics_polling_interval": 900,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
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
///     var foo = new NewRelic.Cloud.AwsLinkAccount("foo", new()
///     {
///         Arn = newrelicAwsRole.Arn,
///         MetricCollectionMode = "PULL",
///         Name = "foo",
///     });
///
///     var bar = new NewRelic.Cloud.AwsIntegrations("bar", new()
///     {
///         LinkedAccountId = foo.Id,
///         Cloudtrail = new NewRelic.Cloud.Inputs.AwsIntegrationsCloudtrailArgs
///         {
///             MetricsPollingInterval = 300,
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///                 "us-east-2",
///             },
///         },
///         Vpc = new NewRelic.Cloud.Inputs.AwsIntegrationsVpcArgs
///         {
///             MetricsPollingInterval = 900,
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///                 "us-east-2",
///             },
///             FetchNatGateway = true,
///             FetchVpn = false,
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Sqs = new NewRelic.Cloud.Inputs.AwsIntegrationsSqsArgs
///         {
///             FetchExtendedInventory = true,
///             FetchTags = true,
///             QueuePrefixes = new[]
///             {
///                 "queue prefix",
///             },
///             MetricsPollingInterval = 300,
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         ApiGateway = new NewRelic.Cloud.Inputs.AwsIntegrationsApiGatewayArgs
///         {
///             MetricsPollingInterval = 300,
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             StagePrefixes = new[]
///             {
///                 "stage prefix",
///             },
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Cloudfront = new NewRelic.Cloud.Inputs.AwsIntegrationsCloudfrontArgs
///         {
///             FetchLambdasAtEdge = true,
///             FetchTags = true,
///             MetricsPollingInterval = 300,
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Ec2 = new NewRelic.Cloud.Inputs.AwsIntegrationsEc2Args
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             DuplicateEc2Tags = true,
///             FetchIpAddresses = true,
///             MetricsPollingInterval = 300,
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Elasticsearch = new NewRelic.Cloud.Inputs.AwsIntegrationsElasticsearchArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             FetchNodes = true,
///             MetricsPollingInterval = 300,
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Kinesis = new NewRelic.Cloud.Inputs.AwsIntegrationsKinesisArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             FetchShards = true,
///             FetchTags = true,
///             MetricsPollingInterval = 900,
///             TagKey = "tag key",
///             TagValue = "tag value",
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
/// 		foo, err := cloud.NewAwsLinkAccount(ctx, "foo", &cloud.AwsLinkAccountArgs{
/// 			Arn:                  pulumi.Any(newrelicAwsRole.Arn),
/// 			MetricCollectionMode: pulumi.String("PULL"),
/// 			Name:                 pulumi.String("foo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloud.NewAwsIntegrations(ctx, "bar", &cloud.AwsIntegrationsArgs{
/// 			LinkedAccountId: foo.ID(),
/// 			Cloudtrail: &cloud.AwsIntegrationsCloudtrailArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 					pulumi.String("us-east-2"),
/// 				},
/// 			},
/// 			Vpc: &cloud.AwsIntegrationsVpcArgs{
/// 				MetricsPollingInterval: pulumi.Int(900),
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 					pulumi.String("us-east-2"),
/// 				},
/// 				FetchNatGateway: pulumi.Bool(true),
/// 				FetchVpn:        pulumi.Bool(false),
/// 				TagKey:          pulumi.String("tag key"),
/// 				TagValue:        pulumi.String("tag value"),
/// 			},
/// 			Sqs: &cloud.AwsIntegrationsSqsArgs{
/// 				FetchExtendedInventory: pulumi.Bool(true),
/// 				FetchTags:              pulumi.Bool(true),
/// 				QueuePrefixes: pulumi.StringArray{
/// 					pulumi.String("queue prefix"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				TagKey:   pulumi.String("tag key"),
/// 				TagValue: pulumi.String("tag value"),
/// 			},
/// 			ApiGateway: &cloud.AwsIntegrationsApiGatewayArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				StagePrefixes: pulumi.StringArray{
/// 					pulumi.String("stage prefix"),
/// 				},
/// 				TagKey:   pulumi.String("tag key"),
/// 				TagValue: pulumi.String("tag value"),
/// 			},
/// 			Cloudfront: &cloud.AwsIntegrationsCloudfrontArgs{
/// 				FetchLambdasAtEdge:     pulumi.Bool(true),
/// 				FetchTags:              pulumi.Bool(true),
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				TagKey:                 pulumi.String("tag key"),
/// 				TagValue:               pulumi.String("tag value"),
/// 			},
/// 			Ec2: &cloud.AwsIntegrationsEc2Args{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				DuplicateEc2Tags:       pulumi.Bool(true),
/// 				FetchIpAddresses:       pulumi.Bool(true),
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				TagKey:                 pulumi.String("tag key"),
/// 				TagValue:               pulumi.String("tag value"),
/// 			},
/// 			Elasticsearch: &cloud.AwsIntegrationsElasticsearchArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				FetchNodes:             pulumi.Bool(true),
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				TagKey:                 pulumi.String("tag key"),
/// 				TagValue:               pulumi.String("tag value"),
/// 			},
/// 			Kinesis: &cloud.AwsIntegrationsKinesisArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				FetchShards:            pulumi.Bool(true),
/// 				FetchTags:              pulumi.Bool(true),
/// 				MetricsPollingInterval: pulumi.Int(900),
/// 				TagKey:                 pulumi.String("tag key"),
/// 				TagValue:               pulumi.String("tag value"),
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
/// import com.pulumi.newrelic.cloud.AwsLinkAccount;
/// import com.pulumi.newrelic.cloud.AwsLinkAccountArgs;
/// import com.pulumi.newrelic.cloud.AwsIntegrations;
/// import com.pulumi.newrelic.cloud.AwsIntegrationsArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsCloudtrailArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsVpcArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsSqsArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsApiGatewayArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsCloudfrontArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsEc2Args;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsElasticsearchArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsKinesisArgs;
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
///             .arn(newrelicAwsRole.arn())
///             .metricCollectionMode("PULL")
///             .name("foo")
///             .build());
///
///         var bar = new AwsIntegrations("bar", AwsIntegrationsArgs.builder()
///             .linkedAccountId(foo.id())
///             .cloudtrail(AwsIntegrationsCloudtrailArgs.builder()
///                 .metricsPollingInterval(300)
///                 .awsRegions(
///                     "us-east-1",
///                     "us-east-2")
///                 .build())
///             .vpc(AwsIntegrationsVpcArgs.builder()
///                 .metricsPollingInterval(900)
///                 .awsRegions(
///                     "us-east-1",
///                     "us-east-2")
///                 .fetchNatGateway(true)
///                 .fetchVpn(false)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .sqs(AwsIntegrationsSqsArgs.builder()
///                 .fetchExtendedInventory(true)
///                 .fetchTags(true)
///                 .queuePrefixes("queue prefix")
///                 .metricsPollingInterval(300)
///                 .awsRegions("us-east-1")
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .apiGateway(AwsIntegrationsApiGatewayArgs.builder()
///                 .metricsPollingInterval(300)
///                 .awsRegions("us-east-1")
///                 .stagePrefixes("stage prefix")
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .cloudfront(AwsIntegrationsCloudfrontArgs.builder()
///                 .fetchLambdasAtEdge(true)
///                 .fetchTags(true)
///                 .metricsPollingInterval(300)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .ec2(AwsIntegrationsEc2Args.builder()
///                 .awsRegions("us-east-1")
///                 .duplicateEc2Tags(true)
///                 .fetchIpAddresses(true)
///                 .metricsPollingInterval(300)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .elasticsearch(AwsIntegrationsElasticsearchArgs.builder()
///                 .awsRegions("us-east-1")
///                 .fetchNodes(true)
///                 .metricsPollingInterval(300)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .kinesis(AwsIntegrationsKinesisArgs.builder()
///                 .awsRegions("us-east-1")
///                 .fetchShards(true)
///                 .fetchTags(true)
///                 .metricsPollingInterval(900)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
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
///       arn: ${newrelicAwsRole.arn}
///       metricCollectionMode: PULL
///       name: foo
///   bar:
///     type: newrelic:cloud:AwsIntegrations
///     properties:
///       linkedAccountId: ${foo.id}
///       cloudtrail:
///         metricsPollingInterval: 300
///         awsRegions:
///           - us-east-1
///           - us-east-2
///       vpc:
///         metricsPollingInterval: 900
///         awsRegions:
///           - us-east-1
///           - us-east-2
///         fetchNatGateway: true
///         fetchVpn: false
///         tagKey: tag key
///         tagValue: tag value
///       sqs:
///         fetchExtendedInventory: true
///         fetchTags: true
///         queuePrefixes:
///           - queue prefix
///         metricsPollingInterval: 300
///         awsRegions:
///           - us-east-1
///         tagKey: tag key
///         tagValue: tag value
///       apiGateway:
///         metricsPollingInterval: 300
///         awsRegions:
///           - us-east-1
///         stagePrefixes:
///           - stage prefix
///         tagKey: tag key
///         tagValue: tag value
///       cloudfront:
///         fetchLambdasAtEdge: true
///         fetchTags: true
///         metricsPollingInterval: 300
///         tagKey: tag key
///         tagValue: tag value
///       ec2:
///         awsRegions:
///           - us-east-1
///         duplicateEc2Tags: true
///         fetchIpAddresses: true
///         metricsPollingInterval: 300
///         tagKey: tag key
///         tagValue: tag value
///       elasticsearch:
///         awsRegions:
///           - us-east-1
///         fetchNodes: true
///         metricsPollingInterval: 300
///         tagKey: tag key
///         tagValue: tag value
///       kinesis:
///         awsRegions:
///           - us-east-1
///         fetchShards: true
///         fetchTags: true
///         metricsPollingInterval: 900
///         tagKey: tag key
///         tagValue: tag value
/// ```
///
///
/// ## Supported AWS Integrations
///
/// &lt;details&gt;
/// &lt;summary&gt;Expand this section to view all supported AWS services supported, that may be integrated via this resource.&lt;/summary&gt;
///
/// | Block                   | Description                   |
/// |-------------------------|-------------------------------|
/// | `alb`                   | ALB Integration               |
/// | `api_gateway`           | API Gateway Integration       |
/// | `auto_scaling`          | Auto Scaling Integration      |
/// | `aws_app_sync`          | AppSync Integration           |
/// | `aws_athena`            | Athena Integration            |
/// | `aws_cognito`           | Cognito Integration           |
/// | `aws_connect`           | Connect Integration           |
/// | `aws_direct_connect`    | Direct Connect Integration    |
/// | `aws_fsx`               | FSx Integration               |
/// | `aws_glue`              | Glue Integration              |
/// | `aws_kinesis_analytics` | Kinesis Analytics Integration |
/// | `aws_media_convert`     | MediaConvert Integration      |
/// | `aws_media_package_vod` | Media Package VOD Integration |
/// | `aws_mq`                | MQ Integration                |
/// | `aws_msk`               | MSK Integration               |
/// | `aws_neptune`           | Neptune Integration           |
/// | `aws_qldb`              | QLDB Integration              |
/// | `aws_route53resolver`   | Route53 Resolver Integration  |
/// | `aws_states`            | States Integration            |
/// | `aws_transit_gateway`   | Transit Gateway Integration   |
/// | `aws_waf`               | WAF Integration               |
/// | `aws_wafv2`             | WAFv2 Integration             |
/// | `billing`               | Billing Integration           |
/// | `cloudfront`            | CloudFront Integration        |
/// | `cloudtrail`            | CloudTrail Integration        |
/// | `doc_db`                | DocumentDB Integration        |
/// | `dynamodb`              | DynamoDB Integration          |
/// | `ebs`                   | EBS Integration               |
/// | `ec2`                   | EC2 Integration               |
/// | `ecs`                   | ECS Integration               |
/// | `efs`                   | EFS Integration               |
/// | `elasticache`           | ElastiCache Integration       |
/// | `elasticbeanstalk`      | Elastic Beanstalk Integration |
/// | `elasticsearch`         | Elasticsearch Integration     |
/// | `elb`                   | ELB Integration               |
/// | `emr`                   | EMR Integration               |
/// | `health`                | Health Integration            |
/// | `iam`                   | IAM Integration               |
/// | `iot`                   | IoT Integration               |
/// | `kinesis`               | Kinesis Integration           |
/// | `kinesis_firehose`      | Kinesis Firehose Integration  |
/// | `lambda`                | Lambda Integration            |
/// | `rds`                   | RDS Integration               |
/// | `redshift`              | Redshift Integration          |
/// | `route53`               | Route53 Integration           |
/// | `s3`                    | S3 Integration                |
/// | `ses`                   | SES Integration               |
/// | `security_hub`          | Security Hub Integration      |
/// | `sns`                   | SNS Integration               |
/// | `sqs`                   | SQS Integration               |
/// | `trusted_advisor`       | Trusted Advisor Integration   |
/// | `vpc`                   | VPC Integration               |
/// | `x_ray`                 | X-Ray Integration             |
///
/// &lt;/details&gt;
///
/// ## Integration Blocks
///
/// The following section lists out arguments which may be used with each AWS integration supported by this resource.
///
/// As specified above in the Arguments to be Specified with Integration Blocks section, except for `linked_account_id` and `account_id`, all aforementioned arguments are to be specified within an integration block as they are supported by a specific set of integrations each; the following list of integration blocks elucidates the same with samples of what each integration block would look like.
///
/// &lt;details&gt;
/// &lt;summary&gt; Expand this list to see a list of all integration blocks supported by this resource, the arguments which go with them and a sample of what the block would look like with these arguments. &lt;/summary&gt;
/// &lt;details&gt;
/// &lt;summary&gt;cloudtrail&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///      cloudtrail {
///         metrics_polling_interval = 300
///         aws_regions              = ["us-east-1", "us-east-2"]
///      }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;vpc&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `fetch_nat_gateway` `fetch_vpn` `tag_key` `tag_value` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///      vpc {
///       metrics_polling_interval = 900
///       aws_regions              = ["us-east-1", "us-east-2"]
///       fetch_nat_gateway        = true
///       fetch_vpn                = false
///       tag_key                  = "tag key"
///       tag_value                = "tag value"
///     }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;x_ray&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 60,300, 900, 1800, 3600 (seconds)
/// ```hcl
///      x_ray {
///       metrics_polling_interval = 300
///       aws_regions              = ["us-east-1", "us-east-2"]
///     }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;s3&lt;/summary&gt;
/// *  Supported Arguments: `fetch_extended_inventory` `fetch_tags` `tag_key` `tag_value` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///      s3 {
///         metrics_polling_interval = 3600
///         fetch_extended_inventory = true
///         fetch_tags               = true
///         tag_key                  = "tag key"
///         tag_value                = "tag value"
///      }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;doc_db&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///        doc_db {
///           metrics_polling_interval = 300
///           aws_regions              = ["us-east-1", "us-east-2"]
///        }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;sqs&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `fetch_extended_inventory` `fetch_tags` `queue_prefixes` `tag_key` `tag_value` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///        sqs {
///           fetch_extended_inventory = true
///           fetch_tags               = true
///           queue_prefixes           = ["queue prefix"]
///           metrics_polling_interval = 300
///           aws_regions              = ["us-east-1"]
///           tag_key                  = "tag key"
///           tag_value                = "tag value"
///         }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;ebs&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `fetch_extended_inventory` `tag_key` `tag_value` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 900, 1800, 3600 (seconds)
/// ```hcl
///        ebs {
///         metrics_polling_interval = 900
///         fetch_extended_inventory = true
///         aws_regions              = ["us-east-1"]
///         tag_key                  = "tag key"
///         tag_value                = "tag value"
///       }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;alb&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `fetch_extended_inventory` `fetch_tags` `load_balancer_prefixes` `tag_key` `tag_value` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///         alb {
///           fetch_extended_inventory = true
///           fetch_tags               = true
///           load_balancer_prefixes   = ["load balancer prefix"]
///           metrics_polling_interval = 300
///           aws_regions              = ["us-east-1"]
///           tag_key                  = "tag key"
///           tag_value                = "tag value"
///         }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;elasticache&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `fetch_tags` `tag_key` `tag_value` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///        elasticache {
///         aws_regions              = ["us-east-1"]
///         fetch_tags               = true
///         metrics_polling_interval = 300
///         tag_key                  = "tag key"
///         tag_value                = "tag value"
///       }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;api_gateway&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `tag_key` `tag_value` `stage_prefixes`
/// ```hcl
///        api_gateway {
///         metrics_polling_interval = 300
///         aws_regions              = ["us-east-1"]
///         stage_prefixes           = ["stage prefix"]
///         tag_key                  = "tag key"
///         tag_value                = "tag value"
///       }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;cloudfront&lt;/summary&gt;
/// *  Supported Arguments: `fetch_lambdas_at_edge` `fetch_tags` `tag_key` `tag_value` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///        cloudfront {
///         fetch_lambdas_at_edge    = true
///         fetch_tags               = true
///         metrics_polling_interval = 300
///         tag_key                  = "tag key"
///         tag_value                = "tag value"
///       }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;dynamodb&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `fetch_extended_inventory` `fetch_tags` `tag_key` `tag_value` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///         dynamodb {
///           aws_regions              = ["us-east-1"]
///           fetch_extended_inventory = true
///           fetch_tags               = true
///           metrics_polling_interval = 300
///           tag_key                  = "tag key"
///           tag_value                = "tag value"
///         }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;ec2&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `duplicate_ec2_tags` `fetch_ip_addresses` `tag_key` `tag_value` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///        ec2 {
///         aws_regions              = ["us-east-1"]
///         duplicate_ec2_tags       = true
///         fetch_ip_addresses       = true
///         metrics_polling_interval = 300
///         tag_key                  = "tag key"
///         tag_value                = "tag value"
///       }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;ecs&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `fetch_tags` `tag_key` `tag_value` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///         ecs {
///           aws_regions              = ["us-east-1"]
///           fetch_tags               = true
///           metrics_polling_interval = 300
///           tag_key                  = "tag key"
///           tag_value                = "tag value"
///         }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;efs&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `fetch_tags` `tag_key` `tag_value` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///         efs {
///           aws_regions              = ["us-east-1"]
///           fetch_tags               = true
///           metrics_polling_interval = 300
///           tag_key                  = "tag key"
///           tag_value                = "tag value"
///         }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;elasticbeanstalk&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `fetch_extended_inventory` `fetch_tags` `tag_key` `tag_value` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///        elasticbeanstalk {
///         aws_regions              = ["us-east-1"]
///         fetch_extended_inventory = true
///         fetch_tags               = true
///         metrics_polling_interval = 300
///         tag_key                  = "tag key"
///         tag_value                = "tag value"
///       }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;elasticsearch&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `fetch_nodes` `tag_key` `tag_value` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///        elasticsearch {
///         aws_regions              = ["us-east-1"]
///         fetch_nodes              = true
///         metrics_polling_interval = 300
///         tag_key                  = "tag key"
///         tag_value                = "tag value"
///       }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;elb&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `fetch_extended_inventory` `fetch_tags` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///         elb {
///           aws_regions              = ["us-east-1"]
///           fetch_extended_inventory = true
///           fetch_tags               = true
///           metrics_polling_interval = 300
///         }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;emr&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `fetch_tags` `tag_key` `tag_value` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///         emr {
///           aws_regions              = ["us-east-1"]
///           fetch_tags               = true
///           metrics_polling_interval = 300
///           tag_key                  = "tag key"
///           tag_value                = "tag value"
///         }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;iam&lt;/summary&gt;
/// *  Supported Arguments: `tag_key` `tag_value` `metrics_polling_interval`
/// ```hcl
///         iam {
///           metrics_polling_interval = 300
///           tag_key                  = "tag key"
///           tag_value                = "tag value"
///         }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt; kinesis &lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `fetch_shards` `fetch_tags` `tag_key` `tag_value` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 900, 1800, 3600 (seconds)
/// ```hcl
///         kinesis {
///           aws_regions              = ["us-east-1"]
///           fetch_shards             = true
///           fetch_tags               = true
///           metrics_polling_interval = 900
///           tag_key                  = "tag key"
///           tag_value                = "tag value"
///         }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;lambda&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `fetch_tags` `tag_key` `tag_value` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///         lambda {
///           aws_regions              = ["us-east-1"]
///           fetch_tags               = true
///           metrics_polling_interval = 300
///           tag_key                  = "tag key"
///           tag_value                = "tag value"
///         }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;rds&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `fetch_tags` `tag_key` `tag_value` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///         rds {
///           aws_regions              = ["us-east-1"]
///           fetch_tags               = true
///           metrics_polling_interval = 300
///           tag_key                  = "tag key"
///           tag_value                = "tag value"
///         }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;redshift&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `tag_key` `tag_value` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///         redshift {
///           aws_regions              = ["us-east-1"]
///           metrics_polling_interval = 300
///           tag_key                  = "tag key"
///           tag_value                = "tag value"
///         }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;route53&lt;/summary&gt;
/// *  Supported Arguments: `fetch_extended_inventory` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///         route53 {
///           fetch_extended_inventory = true
///           metrics_polling_interval = 300
///         }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;sns&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `fetch_extended_inventory` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 300, 900, 1800, 3600 (seconds)
/// ```hcl
///         sns {
///           aws_regions              = ["us-east-1"]
///           fetch_extended_inventory = true
///           metrics_polling_interval = 300
///         }
/// ```
/// &lt;/details&gt;
/// &lt;details&gt;
/// &lt;summary&gt;security hub&lt;/summary&gt;
/// *  Supported Arguments: `aws_regions` `metrics_polling_interval`
/// *  Valid `metrics_polling_interval` values: 21600, 43200, 86400 (seconds)
/// ```hcl
///         security_hub {
///           aws_regions              = ["us-east-1"]
///           metrics_polling_interval = 86400
///         }
/// ```
/// &lt;/details&gt;
/// &lt;/details&gt;
///
///
/// ## Additional Examples
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const bar = new newrelic.cloud.AwsIntegrations("bar", {
///     linkedAccountId: foo.id,
///     billing: {
///         metricsPollingInterval: 3600,
///     },
///     cloudtrail: {
///         metricsPollingInterval: 300,
///         awsRegions: [
///             "us-east-1",
///             "us-east-2",
///         ],
///     },
///     health: {
///         metricsPollingInterval: 300,
///     },
///     trustedAdvisor: {
///         metricsPollingInterval: 3600,
///     },
///     vpc: {
///         metricsPollingInterval: 900,
///         awsRegions: [
///             "us-east-1",
///             "us-east-2",
///         ],
///         fetchNatGateway: true,
///         fetchVpn: false,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     xRay: {
///         metricsPollingInterval: 300,
///         awsRegions: [
///             "us-east-1",
///             "us-east-2",
///         ],
///     },
///     s3: {
///         metricsPollingInterval: 3600,
///     },
///     docDb: {
///         metricsPollingInterval: 300,
///     },
///     sqs: {
///         fetchExtendedInventory: true,
///         fetchTags: true,
///         queuePrefixes: ["queue prefix"],
///         metricsPollingInterval: 300,
///         awsRegions: ["us-east-1"],
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     ebs: {
///         metricsPollingInterval: 900,
///         fetchExtendedInventory: true,
///         awsRegions: ["us-east-1"],
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     alb: {
///         fetchExtendedInventory: true,
///         fetchTags: true,
///         loadBalancerPrefixes: ["load balancer prefix"],
///         metricsPollingInterval: 300,
///         awsRegions: ["us-east-1"],
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     elasticache: {
///         awsRegions: ["us-east-1"],
///         fetchTags: true,
///         metricsPollingInterval: 300,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     apiGateway: {
///         metricsPollingInterval: 300,
///         awsRegions: ["us-east-1"],
///         stagePrefixes: ["stage prefix"],
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     autoScaling: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     awsAppSync: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     awsAthena: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     awsCognito: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     awsConnect: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     awsDirectConnect: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     awsFsx: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     awsGlue: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     awsKinesisAnalytics: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     awsMediaConvert: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     awsMediaPackageVod: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     awsMq: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     awsMsk: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     awsNeptune: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     awsQldb: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     awsRoute53resolver: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     awsStates: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     awsTransitGateway: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     awsWaf: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     awsWafv2: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     cloudfront: {
///         fetchLambdasAtEdge: true,
///         fetchTags: true,
///         metricsPollingInterval: 300,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     dynamodb: {
///         awsRegions: ["us-east-1"],
///         fetchExtendedInventory: true,
///         fetchTags: true,
///         metricsPollingInterval: 300,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     ec2: {
///         awsRegions: ["us-east-1"],
///         duplicateEc2Tags: true,
///         fetchIpAddresses: true,
///         metricsPollingInterval: 300,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     ecs: {
///         awsRegions: ["us-east-1"],
///         fetchTags: true,
///         metricsPollingInterval: 300,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     efs: {
///         awsRegions: ["us-east-1"],
///         fetchTags: true,
///         metricsPollingInterval: 300,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     elasticbeanstalk: {
///         awsRegions: ["us-east-1"],
///         fetchExtendedInventory: true,
///         fetchTags: true,
///         metricsPollingInterval: 300,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     elasticsearch: {
///         awsRegions: ["us-east-1"],
///         fetchNodes: true,
///         metricsPollingInterval: 300,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     elb: {
///         awsRegions: ["us-east-1"],
///         fetchExtendedInventory: true,
///         fetchTags: true,
///         metricsPollingInterval: 300,
///     },
///     emr: {
///         awsRegions: ["us-east-1"],
///         fetchTags: true,
///         metricsPollingInterval: 300,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     iam: {
///         metricsPollingInterval: 300,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     iot: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     kinesis: {
///         awsRegions: ["us-east-1"],
///         fetchShards: true,
///         fetchTags: true,
///         metricsPollingInterval: 900,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     kinesisFirehose: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     lambda: {
///         awsRegions: ["us-east-1"],
///         fetchTags: true,
///         metricsPollingInterval: 300,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     rds: {
///         awsRegions: ["us-east-1"],
///         fetchTags: true,
///         metricsPollingInterval: 300,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     redshift: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///         tagKey: "tag key",
///         tagValue: "tag value",
///     },
///     route53: {
///         fetchExtendedInventory: true,
///         metricsPollingInterval: 300,
///     },
///     ses: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 300,
///     },
///     sns: {
///         awsRegions: ["us-east-1"],
///         fetchExtendedInventory: true,
///         metricsPollingInterval: 300,
///     },
///     securityHub: {
///         awsRegions: ["us-east-1"],
///         metricsPollingInterval: 86400,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// bar = newrelic.cloud.AwsIntegrations("bar",
///     linked_account_id=foo["id"],
///     billing={
///         "metrics_polling_interval": 3600,
///     },
///     cloudtrail={
///         "metrics_polling_interval": 300,
///         "aws_regions": [
///             "us-east-1",
///             "us-east-2",
///         ],
///     },
///     health={
///         "metrics_polling_interval": 300,
///     },
///     trusted_advisor={
///         "metrics_polling_interval": 3600,
///     },
///     vpc={
///         "metrics_polling_interval": 900,
///         "aws_regions": [
///             "us-east-1",
///             "us-east-2",
///         ],
///         "fetch_nat_gateway": True,
///         "fetch_vpn": False,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     x_ray={
///         "metrics_polling_interval": 300,
///         "aws_regions": [
///             "us-east-1",
///             "us-east-2",
///         ],
///     },
///     s3={
///         "metrics_polling_interval": 3600,
///     },
///     doc_db={
///         "metrics_polling_interval": 300,
///     },
///     sqs={
///         "fetch_extended_inventory": True,
///         "fetch_tags": True,
///         "queue_prefixes": ["queue prefix"],
///         "metrics_polling_interval": 300,
///         "aws_regions": ["us-east-1"],
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     ebs={
///         "metrics_polling_interval": 900,
///         "fetch_extended_inventory": True,
///         "aws_regions": ["us-east-1"],
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     alb={
///         "fetch_extended_inventory": True,
///         "fetch_tags": True,
///         "load_balancer_prefixes": ["load balancer prefix"],
///         "metrics_polling_interval": 300,
///         "aws_regions": ["us-east-1"],
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     elasticache={
///         "aws_regions": ["us-east-1"],
///         "fetch_tags": True,
///         "metrics_polling_interval": 300,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     api_gateway={
///         "metrics_polling_interval": 300,
///         "aws_regions": ["us-east-1"],
///         "stage_prefixes": ["stage prefix"],
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     auto_scaling={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     aws_app_sync={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     aws_athena={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     aws_cognito={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     aws_connect={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     aws_direct_connect={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     aws_fsx={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     aws_glue={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     aws_kinesis_analytics={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     aws_media_convert={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     aws_media_package_vod={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     aws_mq={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     aws_msk={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     aws_neptune={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     aws_qldb={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     aws_route53resolver={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     aws_states={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     aws_transit_gateway={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     aws_waf={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     aws_wafv2={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     cloudfront={
///         "fetch_lambdas_at_edge": True,
///         "fetch_tags": True,
///         "metrics_polling_interval": 300,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     dynamodb={
///         "aws_regions": ["us-east-1"],
///         "fetch_extended_inventory": True,
///         "fetch_tags": True,
///         "metrics_polling_interval": 300,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     ec2={
///         "aws_regions": ["us-east-1"],
///         "duplicate_ec2_tags": True,
///         "fetch_ip_addresses": True,
///         "metrics_polling_interval": 300,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     ecs={
///         "aws_regions": ["us-east-1"],
///         "fetch_tags": True,
///         "metrics_polling_interval": 300,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     efs={
///         "aws_regions": ["us-east-1"],
///         "fetch_tags": True,
///         "metrics_polling_interval": 300,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     elasticbeanstalk={
///         "aws_regions": ["us-east-1"],
///         "fetch_extended_inventory": True,
///         "fetch_tags": True,
///         "metrics_polling_interval": 300,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     elasticsearch={
///         "aws_regions": ["us-east-1"],
///         "fetch_nodes": True,
///         "metrics_polling_interval": 300,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     elb={
///         "aws_regions": ["us-east-1"],
///         "fetch_extended_inventory": True,
///         "fetch_tags": True,
///         "metrics_polling_interval": 300,
///     },
///     emr={
///         "aws_regions": ["us-east-1"],
///         "fetch_tags": True,
///         "metrics_polling_interval": 300,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     iam={
///         "metrics_polling_interval": 300,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     iot={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     kinesis={
///         "aws_regions": ["us-east-1"],
///         "fetch_shards": True,
///         "fetch_tags": True,
///         "metrics_polling_interval": 900,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     kinesis_firehose={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     lambda_={
///         "aws_regions": ["us-east-1"],
///         "fetch_tags": True,
///         "metrics_polling_interval": 300,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     rds={
///         "aws_regions": ["us-east-1"],
///         "fetch_tags": True,
///         "metrics_polling_interval": 300,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     redshift={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///         "tag_key": "tag key",
///         "tag_value": "tag value",
///     },
///     route53={
///         "fetch_extended_inventory": True,
///         "metrics_polling_interval": 300,
///     },
///     ses={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 300,
///     },
///     sns={
///         "aws_regions": ["us-east-1"],
///         "fetch_extended_inventory": True,
///         "metrics_polling_interval": 300,
///     },
///     security_hub={
///         "aws_regions": ["us-east-1"],
///         "metrics_polling_interval": 86400,
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
///     var bar = new NewRelic.Cloud.AwsIntegrations("bar", new()
///     {
///         LinkedAccountId = foo.Id,
///         Billing = new NewRelic.Cloud.Inputs.AwsIntegrationsBillingArgs
///         {
///             MetricsPollingInterval = 3600,
///         },
///         Cloudtrail = new NewRelic.Cloud.Inputs.AwsIntegrationsCloudtrailArgs
///         {
///             MetricsPollingInterval = 300,
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///                 "us-east-2",
///             },
///         },
///         Health = new NewRelic.Cloud.Inputs.AwsIntegrationsHealthArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         TrustedAdvisor = new NewRelic.Cloud.Inputs.AwsIntegrationsTrustedAdvisorArgs
///         {
///             MetricsPollingInterval = 3600,
///         },
///         Vpc = new NewRelic.Cloud.Inputs.AwsIntegrationsVpcArgs
///         {
///             MetricsPollingInterval = 900,
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///                 "us-east-2",
///             },
///             FetchNatGateway = true,
///             FetchVpn = false,
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         XRay = new NewRelic.Cloud.Inputs.AwsIntegrationsXRayArgs
///         {
///             MetricsPollingInterval = 300,
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///                 "us-east-2",
///             },
///         },
///         S3 = new NewRelic.Cloud.Inputs.AwsIntegrationsS3Args
///         {
///             MetricsPollingInterval = 3600,
///         },
///         DocDb = new NewRelic.Cloud.Inputs.AwsIntegrationsDocDbArgs
///         {
///             MetricsPollingInterval = 300,
///         },
///         Sqs = new NewRelic.Cloud.Inputs.AwsIntegrationsSqsArgs
///         {
///             FetchExtendedInventory = true,
///             FetchTags = true,
///             QueuePrefixes = new[]
///             {
///                 "queue prefix",
///             },
///             MetricsPollingInterval = 300,
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Ebs = new NewRelic.Cloud.Inputs.AwsIntegrationsEbsArgs
///         {
///             MetricsPollingInterval = 900,
///             FetchExtendedInventory = true,
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Alb = new NewRelic.Cloud.Inputs.AwsIntegrationsAlbArgs
///         {
///             FetchExtendedInventory = true,
///             FetchTags = true,
///             LoadBalancerPrefixes = new[]
///             {
///                 "load balancer prefix",
///             },
///             MetricsPollingInterval = 300,
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Elasticache = new NewRelic.Cloud.Inputs.AwsIntegrationsElasticacheArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             FetchTags = true,
///             MetricsPollingInterval = 300,
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         ApiGateway = new NewRelic.Cloud.Inputs.AwsIntegrationsApiGatewayArgs
///         {
///             MetricsPollingInterval = 300,
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             StagePrefixes = new[]
///             {
///                 "stage prefix",
///             },
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         AutoScaling = new NewRelic.Cloud.Inputs.AwsIntegrationsAutoScalingArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         AwsAppSync = new NewRelic.Cloud.Inputs.AwsIntegrationsAwsAppSyncArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         AwsAthena = new NewRelic.Cloud.Inputs.AwsIntegrationsAwsAthenaArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         AwsCognito = new NewRelic.Cloud.Inputs.AwsIntegrationsAwsCognitoArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         AwsConnect = new NewRelic.Cloud.Inputs.AwsIntegrationsAwsConnectArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         AwsDirectConnect = new NewRelic.Cloud.Inputs.AwsIntegrationsAwsDirectConnectArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         AwsFsx = new NewRelic.Cloud.Inputs.AwsIntegrationsAwsFsxArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         AwsGlue = new NewRelic.Cloud.Inputs.AwsIntegrationsAwsGlueArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         AwsKinesisAnalytics = new NewRelic.Cloud.Inputs.AwsIntegrationsAwsKinesisAnalyticsArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         AwsMediaConvert = new NewRelic.Cloud.Inputs.AwsIntegrationsAwsMediaConvertArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         AwsMediaPackageVod = new NewRelic.Cloud.Inputs.AwsIntegrationsAwsMediaPackageVodArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         AwsMq = new NewRelic.Cloud.Inputs.AwsIntegrationsAwsMqArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         AwsMsk = new NewRelic.Cloud.Inputs.AwsIntegrationsAwsMskArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         AwsNeptune = new NewRelic.Cloud.Inputs.AwsIntegrationsAwsNeptuneArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         AwsQldb = new NewRelic.Cloud.Inputs.AwsIntegrationsAwsQldbArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         AwsRoute53resolver = new NewRelic.Cloud.Inputs.AwsIntegrationsAwsRoute53resolverArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         AwsStates = new NewRelic.Cloud.Inputs.AwsIntegrationsAwsStatesArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         AwsTransitGateway = new NewRelic.Cloud.Inputs.AwsIntegrationsAwsTransitGatewayArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         AwsWaf = new NewRelic.Cloud.Inputs.AwsIntegrationsAwsWafArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         AwsWafv2 = new NewRelic.Cloud.Inputs.AwsIntegrationsAwsWafv2Args
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         Cloudfront = new NewRelic.Cloud.Inputs.AwsIntegrationsCloudfrontArgs
///         {
///             FetchLambdasAtEdge = true,
///             FetchTags = true,
///             MetricsPollingInterval = 300,
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Dynamodb = new NewRelic.Cloud.Inputs.AwsIntegrationsDynamodbArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             FetchExtendedInventory = true,
///             FetchTags = true,
///             MetricsPollingInterval = 300,
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Ec2 = new NewRelic.Cloud.Inputs.AwsIntegrationsEc2Args
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             DuplicateEc2Tags = true,
///             FetchIpAddresses = true,
///             MetricsPollingInterval = 300,
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Ecs = new NewRelic.Cloud.Inputs.AwsIntegrationsEcsArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             FetchTags = true,
///             MetricsPollingInterval = 300,
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Efs = new NewRelic.Cloud.Inputs.AwsIntegrationsEfsArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             FetchTags = true,
///             MetricsPollingInterval = 300,
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Elasticbeanstalk = new NewRelic.Cloud.Inputs.AwsIntegrationsElasticbeanstalkArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             FetchExtendedInventory = true,
///             FetchTags = true,
///             MetricsPollingInterval = 300,
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Elasticsearch = new NewRelic.Cloud.Inputs.AwsIntegrationsElasticsearchArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             FetchNodes = true,
///             MetricsPollingInterval = 300,
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Elb = new NewRelic.Cloud.Inputs.AwsIntegrationsElbArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             FetchExtendedInventory = true,
///             FetchTags = true,
///             MetricsPollingInterval = 300,
///         },
///         Emr = new NewRelic.Cloud.Inputs.AwsIntegrationsEmrArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             FetchTags = true,
///             MetricsPollingInterval = 300,
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Iam = new NewRelic.Cloud.Inputs.AwsIntegrationsIamArgs
///         {
///             MetricsPollingInterval = 300,
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Iot = new NewRelic.Cloud.Inputs.AwsIntegrationsIotArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         Kinesis = new NewRelic.Cloud.Inputs.AwsIntegrationsKinesisArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             FetchShards = true,
///             FetchTags = true,
///             MetricsPollingInterval = 900,
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         KinesisFirehose = new NewRelic.Cloud.Inputs.AwsIntegrationsKinesisFirehoseArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         Lambda = new NewRelic.Cloud.Inputs.AwsIntegrationsLambdaArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             FetchTags = true,
///             MetricsPollingInterval = 300,
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Rds = new NewRelic.Cloud.Inputs.AwsIntegrationsRdsArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             FetchTags = true,
///             MetricsPollingInterval = 300,
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Redshift = new NewRelic.Cloud.Inputs.AwsIntegrationsRedshiftArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///             TagKey = "tag key",
///             TagValue = "tag value",
///         },
///         Route53 = new NewRelic.Cloud.Inputs.AwsIntegrationsRoute53Args
///         {
///             FetchExtendedInventory = true,
///             MetricsPollingInterval = 300,
///         },
///         Ses = new NewRelic.Cloud.Inputs.AwsIntegrationsSesArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 300,
///         },
///         Sns = new NewRelic.Cloud.Inputs.AwsIntegrationsSnsArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             FetchExtendedInventory = true,
///             MetricsPollingInterval = 300,
///         },
///         SecurityHub = new NewRelic.Cloud.Inputs.AwsIntegrationsSecurityHubArgs
///         {
///             AwsRegions = new[]
///             {
///                 "us-east-1",
///             },
///             MetricsPollingInterval = 86400,
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
/// 		_, err := cloud.NewAwsIntegrations(ctx, "bar", &cloud.AwsIntegrationsArgs{
/// 			LinkedAccountId: pulumi.Any(foo.Id),
/// 			Billing: &cloud.AwsIntegrationsBillingArgs{
/// 				MetricsPollingInterval: pulumi.Int(3600),
/// 			},
/// 			Cloudtrail: &cloud.AwsIntegrationsCloudtrailArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 					pulumi.String("us-east-2"),
/// 				},
/// 			},
/// 			Health: &cloud.AwsIntegrationsHealthArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			TrustedAdvisor: &cloud.AwsIntegrationsTrustedAdvisorArgs{
/// 				MetricsPollingInterval: pulumi.Int(3600),
/// 			},
/// 			Vpc: &cloud.AwsIntegrationsVpcArgs{
/// 				MetricsPollingInterval: pulumi.Int(900),
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 					pulumi.String("us-east-2"),
/// 				},
/// 				FetchNatGateway: pulumi.Bool(true),
/// 				FetchVpn:        pulumi.Bool(false),
/// 				TagKey:          pulumi.String("tag key"),
/// 				TagValue:        pulumi.String("tag value"),
/// 			},
/// 			XRay: &cloud.AwsIntegrationsXRayArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 					pulumi.String("us-east-2"),
/// 				},
/// 			},
/// 			S3: &cloud.AwsIntegrationsS3Args{
/// 				MetricsPollingInterval: pulumi.Int(3600),
/// 			},
/// 			DocDb: &cloud.AwsIntegrationsDocDbArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			Sqs: &cloud.AwsIntegrationsSqsArgs{
/// 				FetchExtendedInventory: pulumi.Bool(true),
/// 				FetchTags:              pulumi.Bool(true),
/// 				QueuePrefixes: pulumi.StringArray{
/// 					pulumi.String("queue prefix"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				TagKey:   pulumi.String("tag key"),
/// 				TagValue: pulumi.String("tag value"),
/// 			},
/// 			Ebs: &cloud.AwsIntegrationsEbsArgs{
/// 				MetricsPollingInterval: pulumi.Int(900),
/// 				FetchExtendedInventory: pulumi.Bool(true),
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				TagKey:   pulumi.String("tag key"),
/// 				TagValue: pulumi.String("tag value"),
/// 			},
/// 			Alb: &cloud.AwsIntegrationsAlbArgs{
/// 				FetchExtendedInventory: pulumi.Bool(true),
/// 				FetchTags:              pulumi.Bool(true),
/// 				LoadBalancerPrefixes: pulumi.StringArray{
/// 					pulumi.String("load balancer prefix"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				TagKey:   pulumi.String("tag key"),
/// 				TagValue: pulumi.String("tag value"),
/// 			},
/// 			Elasticache: &cloud.AwsIntegrationsElasticacheArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				FetchTags:              pulumi.Bool(true),
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				TagKey:                 pulumi.String("tag key"),
/// 				TagValue:               pulumi.String("tag value"),
/// 			},
/// 			ApiGateway: &cloud.AwsIntegrationsApiGatewayArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				StagePrefixes: pulumi.StringArray{
/// 					pulumi.String("stage prefix"),
/// 				},
/// 				TagKey:   pulumi.String("tag key"),
/// 				TagValue: pulumi.String("tag value"),
/// 			},
/// 			AutoScaling: &cloud.AwsIntegrationsAutoScalingArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			AwsAppSync: &cloud.AwsIntegrationsAwsAppSyncArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			AwsAthena: &cloud.AwsIntegrationsAwsAthenaArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			AwsCognito: &cloud.AwsIntegrationsAwsCognitoArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			AwsConnect: &cloud.AwsIntegrationsAwsConnectArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			AwsDirectConnect: &cloud.AwsIntegrationsAwsDirectConnectArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			AwsFsx: &cloud.AwsIntegrationsAwsFsxArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			AwsGlue: &cloud.AwsIntegrationsAwsGlueArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			AwsKinesisAnalytics: &cloud.AwsIntegrationsAwsKinesisAnalyticsArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			AwsMediaConvert: &cloud.AwsIntegrationsAwsMediaConvertArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			AwsMediaPackageVod: &cloud.AwsIntegrationsAwsMediaPackageVodArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			AwsMq: &cloud.AwsIntegrationsAwsMqArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			AwsMsk: &cloud.AwsIntegrationsAwsMskArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			AwsNeptune: &cloud.AwsIntegrationsAwsNeptuneArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			AwsQldb: &cloud.AwsIntegrationsAwsQldbArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			AwsRoute53resolver: &cloud.AwsIntegrationsAwsRoute53resolverArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			AwsStates: &cloud.AwsIntegrationsAwsStatesArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			AwsTransitGateway: &cloud.AwsIntegrationsAwsTransitGatewayArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			AwsWaf: &cloud.AwsIntegrationsAwsWafArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			AwsWafv2: &cloud.AwsIntegrationsAwsWafv2Args{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			Cloudfront: &cloud.AwsIntegrationsCloudfrontArgs{
/// 				FetchLambdasAtEdge:     pulumi.Bool(true),
/// 				FetchTags:              pulumi.Bool(true),
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				TagKey:                 pulumi.String("tag key"),
/// 				TagValue:               pulumi.String("tag value"),
/// 			},
/// 			Dynamodb: &cloud.AwsIntegrationsDynamodbArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				FetchExtendedInventory: pulumi.Bool(true),
/// 				FetchTags:              pulumi.Bool(true),
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				TagKey:                 pulumi.String("tag key"),
/// 				TagValue:               pulumi.String("tag value"),
/// 			},
/// 			Ec2: &cloud.AwsIntegrationsEc2Args{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				DuplicateEc2Tags:       pulumi.Bool(true),
/// 				FetchIpAddresses:       pulumi.Bool(true),
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				TagKey:                 pulumi.String("tag key"),
/// 				TagValue:               pulumi.String("tag value"),
/// 			},
/// 			Ecs: &cloud.AwsIntegrationsEcsArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				FetchTags:              pulumi.Bool(true),
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				TagKey:                 pulumi.String("tag key"),
/// 				TagValue:               pulumi.String("tag value"),
/// 			},
/// 			Efs: &cloud.AwsIntegrationsEfsArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				FetchTags:              pulumi.Bool(true),
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				TagKey:                 pulumi.String("tag key"),
/// 				TagValue:               pulumi.String("tag value"),
/// 			},
/// 			Elasticbeanstalk: &cloud.AwsIntegrationsElasticbeanstalkArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				FetchExtendedInventory: pulumi.Bool(true),
/// 				FetchTags:              pulumi.Bool(true),
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				TagKey:                 pulumi.String("tag key"),
/// 				TagValue:               pulumi.String("tag value"),
/// 			},
/// 			Elasticsearch: &cloud.AwsIntegrationsElasticsearchArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				FetchNodes:             pulumi.Bool(true),
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				TagKey:                 pulumi.String("tag key"),
/// 				TagValue:               pulumi.String("tag value"),
/// 			},
/// 			Elb: &cloud.AwsIntegrationsElbArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				FetchExtendedInventory: pulumi.Bool(true),
/// 				FetchTags:              pulumi.Bool(true),
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			Emr: &cloud.AwsIntegrationsEmrArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				FetchTags:              pulumi.Bool(true),
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				TagKey:                 pulumi.String("tag key"),
/// 				TagValue:               pulumi.String("tag value"),
/// 			},
/// 			Iam: &cloud.AwsIntegrationsIamArgs{
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				TagKey:                 pulumi.String("tag key"),
/// 				TagValue:               pulumi.String("tag value"),
/// 			},
/// 			Iot: &cloud.AwsIntegrationsIotArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			Kinesis: &cloud.AwsIntegrationsKinesisArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				FetchShards:            pulumi.Bool(true),
/// 				FetchTags:              pulumi.Bool(true),
/// 				MetricsPollingInterval: pulumi.Int(900),
/// 				TagKey:                 pulumi.String("tag key"),
/// 				TagValue:               pulumi.String("tag value"),
/// 			},
/// 			KinesisFirehose: &cloud.AwsIntegrationsKinesisFirehoseArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			Lambda: &cloud.AwsIntegrationsLambdaArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				FetchTags:              pulumi.Bool(true),
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				TagKey:                 pulumi.String("tag key"),
/// 				TagValue:               pulumi.String("tag value"),
/// 			},
/// 			Rds: &cloud.AwsIntegrationsRdsArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				FetchTags:              pulumi.Bool(true),
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				TagKey:                 pulumi.String("tag key"),
/// 				TagValue:               pulumi.String("tag value"),
/// 			},
/// 			Redshift: &cloud.AwsIntegrationsRedshiftArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 				TagKey:                 pulumi.String("tag key"),
/// 				TagValue:               pulumi.String("tag value"),
/// 			},
/// 			Route53: &cloud.AwsIntegrationsRoute53Args{
/// 				FetchExtendedInventory: pulumi.Bool(true),
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			Ses: &cloud.AwsIntegrationsSesArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			Sns: &cloud.AwsIntegrationsSnsArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				FetchExtendedInventory: pulumi.Bool(true),
/// 				MetricsPollingInterval: pulumi.Int(300),
/// 			},
/// 			SecurityHub: &cloud.AwsIntegrationsSecurityHubArgs{
/// 				AwsRegions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 				},
/// 				MetricsPollingInterval: pulumi.Int(86400),
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
/// import com.pulumi.newrelic.cloud.AwsIntegrations;
/// import com.pulumi.newrelic.cloud.AwsIntegrationsArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsBillingArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsCloudtrailArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsHealthArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsTrustedAdvisorArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsVpcArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsXRayArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsS3Args;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsDocDbArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsSqsArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsEbsArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAlbArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsElasticacheArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsApiGatewayArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAutoScalingArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAwsAppSyncArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAwsAthenaArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAwsCognitoArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAwsConnectArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAwsDirectConnectArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAwsFsxArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAwsGlueArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAwsKinesisAnalyticsArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAwsMediaConvertArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAwsMediaPackageVodArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAwsMqArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAwsMskArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAwsNeptuneArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAwsQldbArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAwsRoute53resolverArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAwsStatesArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAwsTransitGatewayArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAwsWafArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsAwsWafv2Args;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsCloudfrontArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsDynamodbArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsEc2Args;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsEcsArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsEfsArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsElasticbeanstalkArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsElasticsearchArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsElbArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsEmrArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsIamArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsIotArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsKinesisArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsKinesisFirehoseArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsLambdaArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsRdsArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsRedshiftArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsRoute53Args;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsSesArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsSnsArgs;
/// import com.pulumi.newrelic.cloud.inputs.AwsIntegrationsSecurityHubArgs;
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
///         var bar = new AwsIntegrations("bar", AwsIntegrationsArgs.builder()
///             .linkedAccountId(foo.id())
///             .billing(AwsIntegrationsBillingArgs.builder()
///                 .metricsPollingInterval(3600)
///                 .build())
///             .cloudtrail(AwsIntegrationsCloudtrailArgs.builder()
///                 .metricsPollingInterval(300)
///                 .awsRegions(
///                     "us-east-1",
///                     "us-east-2")
///                 .build())
///             .health(AwsIntegrationsHealthArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .trustedAdvisor(AwsIntegrationsTrustedAdvisorArgs.builder()
///                 .metricsPollingInterval(3600)
///                 .build())
///             .vpc(AwsIntegrationsVpcArgs.builder()
///                 .metricsPollingInterval(900)
///                 .awsRegions(
///                     "us-east-1",
///                     "us-east-2")
///                 .fetchNatGateway(true)
///                 .fetchVpn(false)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .xRay(AwsIntegrationsXRayArgs.builder()
///                 .metricsPollingInterval(300)
///                 .awsRegions(
///                     "us-east-1",
///                     "us-east-2")
///                 .build())
///             .s3(AwsIntegrationsS3Args.builder()
///                 .metricsPollingInterval(3600)
///                 .build())
///             .docDb(AwsIntegrationsDocDbArgs.builder()
///                 .metricsPollingInterval(300)
///                 .build())
///             .sqs(AwsIntegrationsSqsArgs.builder()
///                 .fetchExtendedInventory(true)
///                 .fetchTags(true)
///                 .queuePrefixes("queue prefix")
///                 .metricsPollingInterval(300)
///                 .awsRegions("us-east-1")
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .ebs(AwsIntegrationsEbsArgs.builder()
///                 .metricsPollingInterval(900)
///                 .fetchExtendedInventory(true)
///                 .awsRegions("us-east-1")
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .alb(AwsIntegrationsAlbArgs.builder()
///                 .fetchExtendedInventory(true)
///                 .fetchTags(true)
///                 .loadBalancerPrefixes("load balancer prefix")
///                 .metricsPollingInterval(300)
///                 .awsRegions("us-east-1")
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .elasticache(AwsIntegrationsElasticacheArgs.builder()
///                 .awsRegions("us-east-1")
///                 .fetchTags(true)
///                 .metricsPollingInterval(300)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .apiGateway(AwsIntegrationsApiGatewayArgs.builder()
///                 .metricsPollingInterval(300)
///                 .awsRegions("us-east-1")
///                 .stagePrefixes("stage prefix")
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .autoScaling(AwsIntegrationsAutoScalingArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .awsAppSync(AwsIntegrationsAwsAppSyncArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .awsAthena(AwsIntegrationsAwsAthenaArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .awsCognito(AwsIntegrationsAwsCognitoArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .awsConnect(AwsIntegrationsAwsConnectArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .awsDirectConnect(AwsIntegrationsAwsDirectConnectArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .awsFsx(AwsIntegrationsAwsFsxArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .awsGlue(AwsIntegrationsAwsGlueArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .awsKinesisAnalytics(AwsIntegrationsAwsKinesisAnalyticsArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .awsMediaConvert(AwsIntegrationsAwsMediaConvertArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .awsMediaPackageVod(AwsIntegrationsAwsMediaPackageVodArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .awsMq(AwsIntegrationsAwsMqArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .awsMsk(AwsIntegrationsAwsMskArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .awsNeptune(AwsIntegrationsAwsNeptuneArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .awsQldb(AwsIntegrationsAwsQldbArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .awsRoute53resolver(AwsIntegrationsAwsRoute53resolverArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .awsStates(AwsIntegrationsAwsStatesArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .awsTransitGateway(AwsIntegrationsAwsTransitGatewayArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .awsWaf(AwsIntegrationsAwsWafArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .awsWafv2(AwsIntegrationsAwsWafv2Args.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .cloudfront(AwsIntegrationsCloudfrontArgs.builder()
///                 .fetchLambdasAtEdge(true)
///                 .fetchTags(true)
///                 .metricsPollingInterval(300)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .dynamodb(AwsIntegrationsDynamodbArgs.builder()
///                 .awsRegions("us-east-1")
///                 .fetchExtendedInventory(true)
///                 .fetchTags(true)
///                 .metricsPollingInterval(300)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .ec2(AwsIntegrationsEc2Args.builder()
///                 .awsRegions("us-east-1")
///                 .duplicateEc2Tags(true)
///                 .fetchIpAddresses(true)
///                 .metricsPollingInterval(300)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .ecs(AwsIntegrationsEcsArgs.builder()
///                 .awsRegions("us-east-1")
///                 .fetchTags(true)
///                 .metricsPollingInterval(300)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .efs(AwsIntegrationsEfsArgs.builder()
///                 .awsRegions("us-east-1")
///                 .fetchTags(true)
///                 .metricsPollingInterval(300)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .elasticbeanstalk(AwsIntegrationsElasticbeanstalkArgs.builder()
///                 .awsRegions("us-east-1")
///                 .fetchExtendedInventory(true)
///                 .fetchTags(true)
///                 .metricsPollingInterval(300)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .elasticsearch(AwsIntegrationsElasticsearchArgs.builder()
///                 .awsRegions("us-east-1")
///                 .fetchNodes(true)
///                 .metricsPollingInterval(300)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .elb(AwsIntegrationsElbArgs.builder()
///                 .awsRegions("us-east-1")
///                 .fetchExtendedInventory(true)
///                 .fetchTags(true)
///                 .metricsPollingInterval(300)
///                 .build())
///             .emr(AwsIntegrationsEmrArgs.builder()
///                 .awsRegions("us-east-1")
///                 .fetchTags(true)
///                 .metricsPollingInterval(300)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .iam(AwsIntegrationsIamArgs.builder()
///                 .metricsPollingInterval(300)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .iot(AwsIntegrationsIotArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .kinesis(AwsIntegrationsKinesisArgs.builder()
///                 .awsRegions("us-east-1")
///                 .fetchShards(true)
///                 .fetchTags(true)
///                 .metricsPollingInterval(900)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .kinesisFirehose(AwsIntegrationsKinesisFirehoseArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .lambda(AwsIntegrationsLambdaArgs.builder()
///                 .awsRegions("us-east-1")
///                 .fetchTags(true)
///                 .metricsPollingInterval(300)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .rds(AwsIntegrationsRdsArgs.builder()
///                 .awsRegions("us-east-1")
///                 .fetchTags(true)
///                 .metricsPollingInterval(300)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .redshift(AwsIntegrationsRedshiftArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .tagKey("tag key")
///                 .tagValue("tag value")
///                 .build())
///             .route53(AwsIntegrationsRoute53Args.builder()
///                 .fetchExtendedInventory(true)
///                 .metricsPollingInterval(300)
///                 .build())
///             .ses(AwsIntegrationsSesArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(300)
///                 .build())
///             .sns(AwsIntegrationsSnsArgs.builder()
///                 .awsRegions("us-east-1")
///                 .fetchExtendedInventory(true)
///                 .metricsPollingInterval(300)
///                 .build())
///             .securityHub(AwsIntegrationsSecurityHubArgs.builder()
///                 .awsRegions("us-east-1")
///                 .metricsPollingInterval(86400)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bar:
///     type: newrelic:cloud:AwsIntegrations
///     properties:
///       linkedAccountId: ${foo.id}
///       billing:
///         metricsPollingInterval: 3600
///       cloudtrail:
///         metricsPollingInterval: 300
///         awsRegions:
///           - us-east-1
///           - us-east-2
///       health:
///         metricsPollingInterval: 300
///       trustedAdvisor:
///         metricsPollingInterval: 3600
///       vpc:
///         metricsPollingInterval: 900
///         awsRegions:
///           - us-east-1
///           - us-east-2
///         fetchNatGateway: true
///         fetchVpn: false
///         tagKey: tag key
///         tagValue: tag value
///       xRay:
///         metricsPollingInterval: 300
///         awsRegions:
///           - us-east-1
///           - us-east-2
///       s3:
///         metricsPollingInterval: 3600
///       docDb:
///         metricsPollingInterval: 300
///       sqs:
///         fetchExtendedInventory: true
///         fetchTags: true
///         queuePrefixes:
///           - queue prefix
///         metricsPollingInterval: 300
///         awsRegions:
///           - us-east-1
///         tagKey: tag key
///         tagValue: tag value
///       ebs:
///         metricsPollingInterval: 900
///         fetchExtendedInventory: true
///         awsRegions:
///           - us-east-1
///         tagKey: tag key
///         tagValue: tag value
///       alb:
///         fetchExtendedInventory: true
///         fetchTags: true
///         loadBalancerPrefixes:
///           - load balancer prefix
///         metricsPollingInterval: 300
///         awsRegions:
///           - us-east-1
///         tagKey: tag key
///         tagValue: tag value
///       elasticache:
///         awsRegions:
///           - us-east-1
///         fetchTags: true
///         metricsPollingInterval: 300
///         tagKey: tag key
///         tagValue: tag value
///       apiGateway:
///         metricsPollingInterval: 300
///         awsRegions:
///           - us-east-1
///         stagePrefixes:
///           - stage prefix
///         tagKey: tag key
///         tagValue: tag value
///       autoScaling:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       awsAppSync:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       awsAthena:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       awsCognito:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       awsConnect:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       awsDirectConnect:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       awsFsx:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       awsGlue:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       awsKinesisAnalytics:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       awsMediaConvert:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       awsMediaPackageVod:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       awsMq:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       awsMsk:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       awsNeptune:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       awsQldb:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       awsRoute53resolver:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       awsStates:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       awsTransitGateway:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       awsWaf:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       awsWafv2:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       cloudfront:
///         fetchLambdasAtEdge: true
///         fetchTags: true
///         metricsPollingInterval: 300
///         tagKey: tag key
///         tagValue: tag value
///       dynamodb:
///         awsRegions:
///           - us-east-1
///         fetchExtendedInventory: true
///         fetchTags: true
///         metricsPollingInterval: 300
///         tagKey: tag key
///         tagValue: tag value
///       ec2:
///         awsRegions:
///           - us-east-1
///         duplicateEc2Tags: true
///         fetchIpAddresses: true
///         metricsPollingInterval: 300
///         tagKey: tag key
///         tagValue: tag value
///       ecs:
///         awsRegions:
///           - us-east-1
///         fetchTags: true
///         metricsPollingInterval: 300
///         tagKey: tag key
///         tagValue: tag value
///       efs:
///         awsRegions:
///           - us-east-1
///         fetchTags: true
///         metricsPollingInterval: 300
///         tagKey: tag key
///         tagValue: tag value
///       elasticbeanstalk:
///         awsRegions:
///           - us-east-1
///         fetchExtendedInventory: true
///         fetchTags: true
///         metricsPollingInterval: 300
///         tagKey: tag key
///         tagValue: tag value
///       elasticsearch:
///         awsRegions:
///           - us-east-1
///         fetchNodes: true
///         metricsPollingInterval: 300
///         tagKey: tag key
///         tagValue: tag value
///       elb:
///         awsRegions:
///           - us-east-1
///         fetchExtendedInventory: true
///         fetchTags: true
///         metricsPollingInterval: 300
///       emr:
///         awsRegions:
///           - us-east-1
///         fetchTags: true
///         metricsPollingInterval: 300
///         tagKey: tag key
///         tagValue: tag value
///       iam:
///         metricsPollingInterval: 300
///         tagKey: tag key
///         tagValue: tag value
///       iot:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       kinesis:
///         awsRegions:
///           - us-east-1
///         fetchShards: true
///         fetchTags: true
///         metricsPollingInterval: 900
///         tagKey: tag key
///         tagValue: tag value
///       kinesisFirehose:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       lambda:
///         awsRegions:
///           - us-east-1
///         fetchTags: true
///         metricsPollingInterval: 300
///         tagKey: tag key
///         tagValue: tag value
///       rds:
///         awsRegions:
///           - us-east-1
///         fetchTags: true
///         metricsPollingInterval: 300
///         tagKey: tag key
///         tagValue: tag value
///       redshift:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///         tagKey: tag key
///         tagValue: tag value
///       route53:
///         fetchExtendedInventory: true
///         metricsPollingInterval: 300
///       ses:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 300
///       sns:
///         awsRegions:
///           - us-east-1
///         fetchExtendedInventory: true
///         metricsPollingInterval: 300
///       securityHub:
///         awsRegions:
///           - us-east-1
///         metricsPollingInterval: 86400
/// ```
///
///
/// ## Import
///
/// Linked AWS account integrations can be imported using the `id`, e.g.
///
/// ```bash
/// $ terraform import newrelic_cloud_aws_integrations.foo <id>
/// ```
class AwsIntegrations extends pulumi.CustomResource {
  /// The New Relic account ID to operate on.  This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  late final pulumi.Output<String> accountId;
  /// ALB integration
  late final pulumi.Output<AwsIntegrationsAlb?> alb;
  /// API Gateway integration
  late final pulumi.Output<AwsIntegrationsApiGateway?> apiGateway;
  /// AutoScaling integration
  late final pulumi.Output<AwsIntegrationsAutoScaling?> autoScaling;
  /// Aws Appsync integration
  late final pulumi.Output<AwsIntegrationsAwsAppSync?> awsAppSync;
  /// Aws Athena integration
  late final pulumi.Output<AwsIntegrationsAwsAthena?> awsAthena;
  /// Aws Auto Discovery Integration
  late final pulumi.Output<AwsIntegrationsAwsAutoDiscovery?> awsAutoDiscovery;
  /// Aws Cognito integration
  late final pulumi.Output<AwsIntegrationsAwsCognito?> awsCognito;
  /// Aws Connect integration
  late final pulumi.Output<AwsIntegrationsAwsConnect?> awsConnect;
  /// Aws Direct Connect integration
  late final pulumi.Output<AwsIntegrationsAwsDirectConnect?> awsDirectConnect;
  /// Aws Fsx integration
  late final pulumi.Output<AwsIntegrationsAwsFsx?> awsFsx;
  /// Aws Glue integration
  late final pulumi.Output<AwsIntegrationsAwsGlue?> awsGlue;
  /// Aws Kinesis Analytics integration
  late final pulumi.Output<AwsIntegrationsAwsKinesisAnalytics?> awsKinesisAnalytics;
  /// Aws Media Convert integration
  late final pulumi.Output<AwsIntegrationsAwsMediaConvert?> awsMediaConvert;
  /// Aws Media PackageVod integration
  late final pulumi.Output<AwsIntegrationsAwsMediaPackageVod?> awsMediaPackageVod;
  /// Aws Mq integration
  late final pulumi.Output<AwsIntegrationsAwsMq?> awsMq;
  /// Aws Msk integration
  late final pulumi.Output<AwsIntegrationsAwsMsk?> awsMsk;
  /// Aws Neptune integration
  late final pulumi.Output<AwsIntegrationsAwsNeptune?> awsNeptune;
  /// Aws Qldb integration
  late final pulumi.Output<AwsIntegrationsAwsQldb?> awsQldb;
  /// Aws Route53resolver integration
  late final pulumi.Output<AwsIntegrationsAwsRoute53resolver?> awsRoute53resolver;
  /// Aws states integration
  late final pulumi.Output<AwsIntegrationsAwsStates?> awsStates;
  /// Aws Transit Gateway integration
  late final pulumi.Output<AwsIntegrationsAwsTransitGateway?> awsTransitGateway;
  /// Aws Waf integration
  late final pulumi.Output<AwsIntegrationsAwsWaf?> awsWaf;
  /// Aws Wafv2 integration
  late final pulumi.Output<AwsIntegrationsAwsWafv2?> awsWafv2;
  /// Billing integration
  late final pulumi.Output<AwsIntegrationsBilling?> billing;
  /// Cloudfront integration
  late final pulumi.Output<AwsIntegrationsCloudfront?> cloudfront;
  /// CloudTrail integration
  late final pulumi.Output<AwsIntegrationsCloudtrail?> cloudtrail;
  /// Doc DB integration
  late final pulumi.Output<AwsIntegrationsDocDb?> docDb;
  /// Dynamo DB integration
  late final pulumi.Output<AwsIntegrationsDynamodb?> dynamodb;
  /// EBS integration
  late final pulumi.Output<AwsIntegrationsEbs?> ebs;
  /// Ec2 integration
  late final pulumi.Output<AwsIntegrationsEc2?> ec2;
  /// Ecs integration
  late final pulumi.Output<AwsIntegrationsEcs?> ecs;
  /// Efs integration
  late final pulumi.Output<AwsIntegrationsEfs?> efs;
  /// Elasticache integration
  late final pulumi.Output<AwsIntegrationsElasticache?> elasticache;
  /// Elastic Bean Stalk integration
  late final pulumi.Output<AwsIntegrationsElasticbeanstalk?> elasticbeanstalk;
  /// Elastic Search integration
  late final pulumi.Output<AwsIntegrationsElasticsearch?> elasticsearch;
  /// Elb integration
  late final pulumi.Output<AwsIntegrationsElb?> elb;
  /// Emr integration
  late final pulumi.Output<AwsIntegrationsEmr?> emr;
  /// Health integration
  late final pulumi.Output<AwsIntegrationsHealth?> health;
  /// Iam integration
  late final pulumi.Output<AwsIntegrationsIam?> iam;
  /// Iot integration
  late final pulumi.Output<AwsIntegrationsIot?> iot;
  /// Kinesis integration
  late final pulumi.Output<AwsIntegrationsKinesis?> kinesis;
  /// Kinesis Firehose integration
  late final pulumi.Output<AwsIntegrationsKinesisFirehose?> kinesisFirehose;
  /// Lambda integration
  late final pulumi.Output<AwsIntegrationsLambda?> lambda;
  /// The ID of the linked AWS account in New Relic.
  late final pulumi.Output<String> linkedAccountId;
  /// Rds integration
  late final pulumi.Output<AwsIntegrationsRds?> rds;
  /// Redshift integration
  late final pulumi.Output<AwsIntegrationsRedshift?> redshift;
  /// Route53 integration
  late final pulumi.Output<AwsIntegrationsRoute53?> route53;
  /// S3 integration
  late final pulumi.Output<AwsIntegrationsS3?> s3;
  /// Security Hub integration
  late final pulumi.Output<AwsIntegrationsSecurityHub?> securityHub;
  /// Ses integration
  late final pulumi.Output<AwsIntegrationsSes?> ses;
  /// Sns integration
  late final pulumi.Output<AwsIntegrationsSns?> sns;
  /// SQS integration
  late final pulumi.Output<AwsIntegrationsSqs?> sqs;
  /// Trusted Advisor integration
  late final pulumi.Output<AwsIntegrationsTrustedAdvisor?> trustedAdvisor;
  /// VPC integration
  late final pulumi.Output<AwsIntegrationsVpc?> vpc;
  /// X-Ray integration
  late final pulumi.Output<AwsIntegrationsXRay?> xRay;

  /// Creates a new [AwsIntegrations].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AwsIntegrations]. {@macro pulumi_cloud_aws_integrations_aws_integrations_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AwsIntegrations(
    String name, {
    AwsIntegrationsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:cloud/awsIntegrations:AwsIntegrations',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    alb = registerOutput<AwsIntegrationsAlb?>('alb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAlb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    apiGateway = registerOutput<AwsIntegrationsApiGateway?>('apiGateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsApiGateway.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoScaling = registerOutput<AwsIntegrationsAutoScaling?>('autoScaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAutoScaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsAppSync = registerOutput<AwsIntegrationsAwsAppSync?>('awsAppSync', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsAppSync.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsAthena = registerOutput<AwsIntegrationsAwsAthena?>('awsAthena', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsAthena.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsAutoDiscovery = registerOutput<AwsIntegrationsAwsAutoDiscovery?>('awsAutoDiscovery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsAutoDiscovery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsCognito = registerOutput<AwsIntegrationsAwsCognito?>('awsCognito', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsCognito.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsConnect = registerOutput<AwsIntegrationsAwsConnect?>('awsConnect', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsConnect.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsDirectConnect = registerOutput<AwsIntegrationsAwsDirectConnect?>('awsDirectConnect', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsDirectConnect.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsFsx = registerOutput<AwsIntegrationsAwsFsx?>('awsFsx', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsFsx.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsGlue = registerOutput<AwsIntegrationsAwsGlue?>('awsGlue', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsGlue.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsKinesisAnalytics = registerOutput<AwsIntegrationsAwsKinesisAnalytics?>('awsKinesisAnalytics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsKinesisAnalytics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsMediaConvert = registerOutput<AwsIntegrationsAwsMediaConvert?>('awsMediaConvert', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsMediaConvert.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsMediaPackageVod = registerOutput<AwsIntegrationsAwsMediaPackageVod?>('awsMediaPackageVod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsMediaPackageVod.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsMq = registerOutput<AwsIntegrationsAwsMq?>('awsMq', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsMq.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsMsk = registerOutput<AwsIntegrationsAwsMsk?>('awsMsk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsMsk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsNeptune = registerOutput<AwsIntegrationsAwsNeptune?>('awsNeptune', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsNeptune.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsQldb = registerOutput<AwsIntegrationsAwsQldb?>('awsQldb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsQldb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsRoute53resolver = registerOutput<AwsIntegrationsAwsRoute53resolver?>('awsRoute53resolver', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsRoute53resolver.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsStates = registerOutput<AwsIntegrationsAwsStates?>('awsStates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsStates.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsTransitGateway = registerOutput<AwsIntegrationsAwsTransitGateway?>('awsTransitGateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsTransitGateway.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsWaf = registerOutput<AwsIntegrationsAwsWaf?>('awsWaf', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsWaf.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsWafv2 = registerOutput<AwsIntegrationsAwsWafv2?>('awsWafv2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsWafv2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    billing = registerOutput<AwsIntegrationsBilling?>('billing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsBilling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudfront = registerOutput<AwsIntegrationsCloudfront?>('cloudfront', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsCloudfront.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudtrail = registerOutput<AwsIntegrationsCloudtrail?>('cloudtrail', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsCloudtrail.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    docDb = registerOutput<AwsIntegrationsDocDb?>('docDb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsDocDb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dynamodb = registerOutput<AwsIntegrationsDynamodb?>('dynamodb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsDynamodb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ebs = registerOutput<AwsIntegrationsEbs?>('ebs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsEbs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ec2 = registerOutput<AwsIntegrationsEc2?>('ec2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsEc2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ecs = registerOutput<AwsIntegrationsEcs?>('ecs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsEcs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    efs = registerOutput<AwsIntegrationsEfs?>('efs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsEfs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    elasticache = registerOutput<AwsIntegrationsElasticache?>('elasticache', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsElasticache.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    elasticbeanstalk = registerOutput<AwsIntegrationsElasticbeanstalk?>('elasticbeanstalk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsElasticbeanstalk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    elasticsearch = registerOutput<AwsIntegrationsElasticsearch?>('elasticsearch', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsElasticsearch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    elb = registerOutput<AwsIntegrationsElb?>('elb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsElb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    emr = registerOutput<AwsIntegrationsEmr?>('emr', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsEmr.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    health = registerOutput<AwsIntegrationsHealth?>('health', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsHealth.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    iam = registerOutput<AwsIntegrationsIam?>('iam', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsIam.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    iot = registerOutput<AwsIntegrationsIot?>('iot', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsIot.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kinesis = registerOutput<AwsIntegrationsKinesis?>('kinesis', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsKinesis.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kinesisFirehose = registerOutput<AwsIntegrationsKinesisFirehose?>('kinesisFirehose', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsKinesisFirehose.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lambda = registerOutput<AwsIntegrationsLambda?>('lambda', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsLambda.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    linkedAccountId = registerOutput<String>('linkedAccountId');
    rds = registerOutput<AwsIntegrationsRds?>('rds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsRds.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redshift = registerOutput<AwsIntegrationsRedshift?>('redshift', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsRedshift.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    route53 = registerOutput<AwsIntegrationsRoute53?>('route53', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsRoute53.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    s3 = registerOutput<AwsIntegrationsS3?>('s3', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsS3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    securityHub = registerOutput<AwsIntegrationsSecurityHub?>('securityHub', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsSecurityHub.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ses = registerOutput<AwsIntegrationsSes?>('ses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsSes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sns = registerOutput<AwsIntegrationsSns?>('sns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsSns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sqs = registerOutput<AwsIntegrationsSqs?>('sqs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsSqs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trustedAdvisor = registerOutput<AwsIntegrationsTrustedAdvisor?>('trustedAdvisor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsTrustedAdvisor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpc = registerOutput<AwsIntegrationsVpc?>('vpc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsVpc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    xRay = registerOutput<AwsIntegrationsXRay?>('xRay', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsXRay.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AwsIntegrations] resource's state with the given [name] and [id].
  static AwsIntegrations get(
    String name,
    pulumi.Input<String> id, {
    AwsIntegrationsState? state,
  }) {
    return AwsIntegrations._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AwsIntegrations._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:cloud/awsIntegrations:AwsIntegrations',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    alb = registerOutput<AwsIntegrationsAlb?>('alb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAlb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    apiGateway = registerOutput<AwsIntegrationsApiGateway?>('apiGateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsApiGateway.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoScaling = registerOutput<AwsIntegrationsAutoScaling?>('autoScaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAutoScaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsAppSync = registerOutput<AwsIntegrationsAwsAppSync?>('awsAppSync', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsAppSync.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsAthena = registerOutput<AwsIntegrationsAwsAthena?>('awsAthena', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsAthena.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsAutoDiscovery = registerOutput<AwsIntegrationsAwsAutoDiscovery?>('awsAutoDiscovery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsAutoDiscovery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsCognito = registerOutput<AwsIntegrationsAwsCognito?>('awsCognito', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsCognito.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsConnect = registerOutput<AwsIntegrationsAwsConnect?>('awsConnect', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsConnect.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsDirectConnect = registerOutput<AwsIntegrationsAwsDirectConnect?>('awsDirectConnect', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsDirectConnect.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsFsx = registerOutput<AwsIntegrationsAwsFsx?>('awsFsx', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsFsx.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsGlue = registerOutput<AwsIntegrationsAwsGlue?>('awsGlue', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsGlue.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsKinesisAnalytics = registerOutput<AwsIntegrationsAwsKinesisAnalytics?>('awsKinesisAnalytics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsKinesisAnalytics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsMediaConvert = registerOutput<AwsIntegrationsAwsMediaConvert?>('awsMediaConvert', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsMediaConvert.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsMediaPackageVod = registerOutput<AwsIntegrationsAwsMediaPackageVod?>('awsMediaPackageVod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsMediaPackageVod.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsMq = registerOutput<AwsIntegrationsAwsMq?>('awsMq', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsMq.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsMsk = registerOutput<AwsIntegrationsAwsMsk?>('awsMsk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsMsk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsNeptune = registerOutput<AwsIntegrationsAwsNeptune?>('awsNeptune', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsNeptune.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsQldb = registerOutput<AwsIntegrationsAwsQldb?>('awsQldb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsQldb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsRoute53resolver = registerOutput<AwsIntegrationsAwsRoute53resolver?>('awsRoute53resolver', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsRoute53resolver.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsStates = registerOutput<AwsIntegrationsAwsStates?>('awsStates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsStates.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsTransitGateway = registerOutput<AwsIntegrationsAwsTransitGateway?>('awsTransitGateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsTransitGateway.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsWaf = registerOutput<AwsIntegrationsAwsWaf?>('awsWaf', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsWaf.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsWafv2 = registerOutput<AwsIntegrationsAwsWafv2?>('awsWafv2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsAwsWafv2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    billing = registerOutput<AwsIntegrationsBilling?>('billing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsBilling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudfront = registerOutput<AwsIntegrationsCloudfront?>('cloudfront', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsCloudfront.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudtrail = registerOutput<AwsIntegrationsCloudtrail?>('cloudtrail', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsCloudtrail.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    docDb = registerOutput<AwsIntegrationsDocDb?>('docDb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsDocDb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dynamodb = registerOutput<AwsIntegrationsDynamodb?>('dynamodb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsDynamodb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ebs = registerOutput<AwsIntegrationsEbs?>('ebs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsEbs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ec2 = registerOutput<AwsIntegrationsEc2?>('ec2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsEc2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ecs = registerOutput<AwsIntegrationsEcs?>('ecs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsEcs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    efs = registerOutput<AwsIntegrationsEfs?>('efs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsEfs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    elasticache = registerOutput<AwsIntegrationsElasticache?>('elasticache', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsElasticache.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    elasticbeanstalk = registerOutput<AwsIntegrationsElasticbeanstalk?>('elasticbeanstalk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsElasticbeanstalk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    elasticsearch = registerOutput<AwsIntegrationsElasticsearch?>('elasticsearch', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsElasticsearch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    elb = registerOutput<AwsIntegrationsElb?>('elb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsElb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    emr = registerOutput<AwsIntegrationsEmr?>('emr', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsEmr.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    health = registerOutput<AwsIntegrationsHealth?>('health', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsHealth.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    iam = registerOutput<AwsIntegrationsIam?>('iam', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsIam.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    iot = registerOutput<AwsIntegrationsIot?>('iot', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsIot.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kinesis = registerOutput<AwsIntegrationsKinesis?>('kinesis', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsKinesis.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kinesisFirehose = registerOutput<AwsIntegrationsKinesisFirehose?>('kinesisFirehose', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsKinesisFirehose.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lambda = registerOutput<AwsIntegrationsLambda?>('lambda', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsLambda.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    linkedAccountId = registerOutput<String>('linkedAccountId');
    rds = registerOutput<AwsIntegrationsRds?>('rds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsRds.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redshift = registerOutput<AwsIntegrationsRedshift?>('redshift', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsRedshift.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    route53 = registerOutput<AwsIntegrationsRoute53?>('route53', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsRoute53.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    s3 = registerOutput<AwsIntegrationsS3?>('s3', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsS3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    securityHub = registerOutput<AwsIntegrationsSecurityHub?>('securityHub', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsSecurityHub.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ses = registerOutput<AwsIntegrationsSes?>('ses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsSes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sns = registerOutput<AwsIntegrationsSns?>('sns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsSns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sqs = registerOutput<AwsIntegrationsSqs?>('sqs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsSqs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trustedAdvisor = registerOutput<AwsIntegrationsTrustedAdvisor?>('trustedAdvisor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsTrustedAdvisor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpc = registerOutput<AwsIntegrationsVpc?>('vpc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsVpc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    xRay = registerOutput<AwsIntegrationsXRay?>('xRay', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsIntegrationsXRay.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
