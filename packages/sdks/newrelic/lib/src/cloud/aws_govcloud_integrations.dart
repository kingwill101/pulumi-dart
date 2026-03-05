import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_govcloud_integrations_alb.dart';
import 'aws_govcloud_integrations_api_gateway.dart';
import 'aws_govcloud_integrations_args.dart';
import 'aws_govcloud_integrations_auto_scaling.dart';
import 'aws_govcloud_integrations_aws_direct_connect.dart';
import 'aws_govcloud_integrations_aws_states.dart';
import 'aws_govcloud_integrations_cloudtrail.dart';
import 'aws_govcloud_integrations_dynamo_db.dart';
import 'aws_govcloud_integrations_ebs.dart';
import 'aws_govcloud_integrations_ec2.dart';
import 'aws_govcloud_integrations_elastic_search.dart';
import 'aws_govcloud_integrations_elb.dart';
import 'aws_govcloud_integrations_emr.dart';
import 'aws_govcloud_integrations_iam.dart';
import 'aws_govcloud_integrations_lambda.dart';
import 'aws_govcloud_integrations_rds.dart';
import 'aws_govcloud_integrations_red_shift.dart';
import 'aws_govcloud_integrations_route53.dart';
import 'aws_govcloud_integrations_s3.dart';
import 'aws_govcloud_integrations_sns.dart';
import 'aws_govcloud_integrations_sqs.dart';
import 'aws_govcloud_integrations_state.dart';

/// &gt; **IMPORTANT!** This resource is in alpha state, and could still contain issues and missing functionality. If you encounter any issue please create a ticket on Github with all the required information.
///
/// Use this resource to integrate an AWSGovCloud account to New Relic.
///
/// ## Prerequisite
///
/// Obtain the AwsGovCloud account designed to address the specific regulatory needs of United States (federal, state, and local agencies), education institutions, and the supporting ecosystem.
///
/// It is an isolated AWS region designed to host sensitive data and regulated workloads in the cloud, helping customers support their US government compliance requirements.
///
/// To pull data from AWSGovCloud, complete the [steps outlined here](https://docs.newrelic.com/docs/infrastructure/amazon-integrations/connect/connect-aws-govcloud-new-relic).
///
/// ## Example Usage
///
///
/// ```yaml
/// resources:
///   account:
///     type: newrelic:CloudAwsGovcloudLinkAccount
///     properties:
///       accessKeyId: '%[1]s'
///       awsAccountId: '%[2]s'
///       metricCollectionMode: PULL
///       name: '%[4]s'
///       secretAccessKey: '%[3]s'
///   foo:
///     type: newrelic:cloud:AwsGovcloudIntegrations
///     properties:
///       accountId: 3.806526e+06
///       linkedAccountId: ${account.id}
///       alb:
///         metricsPollingInterval: 1000
///         awsRegions:
///           - us-east-1
///         fetchExtendedInventory: true
///         fetchTags: true
///         loadBalancerPrefixes:
///           - ""
///         tagKey: ""
///         tagValue: ""
///       apiGateway:
///         metricsPollingInterval: 1000
///         awsRegions:
///           - ""
///         stagePrefixes:
///           - ""
///         tagKey: ""
///         tagValue: ""
///       autoScaling:
///         metricsPollingInterval: 1000
///         awsRegions:
///           - ""
///       awsDirectConnect:
///         metricsPollingInterval: 1000
///         awsRegions:
///           - ""
///       awsStates:
///         metricsPollingInterval: 1000
///         awsRegions:
///           - ""
///       cloudtrail:
///         metricsPollingInterval: 1000
///         awsRegions:
///           - ""
///       dynamoDb:
///         metricsPollingInterval: 1000
///         awsRegions:
///           - ""
///         fetchExtendedInventory: true
///         fetchTags: true
///         tagKey: ""
///         tagValue: ""
///       ebs:
///         metricsPollingInterval: 1000
///         awsRegions:
///           - ""
///         fetchExtendedInventory: true
///         tagKey: ""
///         tagValue: ""
///       ec2:
///         metricsPollingInterval: 1000
///         awsRegions:
///           - ""
///         fetchIpAddresses: true
///         tagKey: ""
///         tagValue: ""
///       elasticSearch:
///         metricsPollingInterval: 1000
///         awsRegions:
///           - ""
///         fetchNodes: true
///         tagKey: ""
///         tagValue: ""
///       elb:
///         metricsPollingInterval: 1000
///         awsRegions:
///           - ""
///         fetchExtendedInventory: true
///         fetchTags: true
///       emr:
///         metricsPollingInterval: 1000
///         awsRegions:
///           - ""
///         fetchTags: true
///         tagKey: ""
///         tagValue: ""
///       iam:
///         metricsPollingInterval: 1000
///         tagKey: ""
///         tagValue: ""
///       lambda:
///         metricsPollingInterval: 1000
///         awsRegions:
///           - ""
///         fetchTags: true
///         tagKey: ""
///         tagValue: ""
///       rds:
///         metricsPollingInterval: 1000
///         awsRegions:
///           - ""
///         fetchTags: true
///         tagKey: ""
///         tagValue: ""
///       redShift:
///         metricsPollingInterval: 1000
///         awsRegions:
///           - ""
///         tagKey: ""
///         tagValue: ""
///       route53:
///         metricsPollingInterval: 1000
///         fetchExtendedInventory: true
///       s3:
///         metricsPollingInterval: 1000
///         fetchExtendedInventory: true
///         fetchTags: true
///         tagKey: ""
///         tagValue: ""
///       sns:
///         metricsPollingInterval: 1000
///         awsRegions:
///           - ""
///         fetchExtendedInventory: true
///       sqs:
///         metricsPollingInterval: 1000
///         awsRegions:
///           - ""
///         fetchExtendedInventory: true
///         fetchTags: true
///         queuePrefixes:
///           - ""
///         tagKey: ""
///         tagValue: ""
/// ```
///
///
/// ## Import
///
/// Integrate AWSGovCloud accounts can be imported using the `id`, e.g.
///
/// ```bash
/// $ terraform import newrelic_cloud_aws_govcloud_integrations.foo <id>
/// ```
class AwsGovcloudIntegrations extends pulumi.CustomResource {
  /// The New Relic account ID to operate on. This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  late final pulumi.Output<String> accountId;
  /// Application load balancer AwsGovCloud integration.See Integration blocks below for details.
  late final pulumi.Output<AwsGovcloudIntegrationsAlb?> alb;
  /// Api Gateway AwsGovCloud integration.See Integration blocks below for details.
  late final pulumi.Output<AwsGovcloudIntegrationsApiGateway?> apiGateway;
  /// Autoscaling AwsGovCloud integration.See Integration blocks below for details.
  late final pulumi.Output<AwsGovcloudIntegrationsAutoScaling?> autoScaling;
  /// Aws Direct Connect AwsGovCloud integration.See Integration blocks below for details.
  late final pulumi.Output<AwsGovcloudIntegrationsAwsDirectConnect?> awsDirectConnect;
  /// Aws States AwsGovCloud integration.See Integration blocks below for details.
  late final pulumi.Output<AwsGovcloudIntegrationsAwsStates?> awsStates;
  /// Cloudtrail AwsGovCloud integration.See Integration blocks below for details.
  late final pulumi.Output<AwsGovcloudIntegrationsCloudtrail?> cloudtrail;
  /// Dynamo DB AwsGovCloud integration.See Integration blocks below for details.
  late final pulumi.Output<AwsGovcloudIntegrationsDynamoDb?> dynamoDb;
  /// Elastic Beanstalk AwsGovCloud integration.See Integration blocks below for details.
  late final pulumi.Output<AwsGovcloudIntegrationsEbs?> ebs;
  /// EC2 AwsGovCloud integration.See Integration blocks below for details.
  late final pulumi.Output<AwsGovcloudIntegrationsEc2?> ec2;
  /// Elastic search AwsGovCloud integration.See Integration blocks below for details.
  late final pulumi.Output<AwsGovcloudIntegrationsElasticSearch?> elasticSearch;
  /// Elb AwsGovCloud integration.See Integration blocks below for details.
  late final pulumi.Output<AwsGovcloudIntegrationsElb?> elb;
  /// Emr AwsGovCloud integration.See Integration blocks below for details.
  late final pulumi.Output<AwsGovcloudIntegrationsEmr?> emr;
  /// IAM AwsGovCloud integration.See Integration blocks below for details.
  late final pulumi.Output<AwsGovcloudIntegrationsIam?> iam;
  /// Lambda AwsGovCloud integration.See Integration blocks below for details.
  late final pulumi.Output<AwsGovcloudIntegrationsLambda?> lambda;
  /// The access key of the AwsGovCloud.
  late final pulumi.Output<String> linkedAccountId;
  /// RDS AwsGovCloud integration.See Integration blocks below for details.
  late final pulumi.Output<AwsGovcloudIntegrationsRds?> rds;
  /// Redshift AwsGovCloud integration.See Integration blocks below for details.
  late final pulumi.Output<AwsGovcloudIntegrationsRedShift?> redShift;
  /// Route53 AwsGovCloud integration.See Integration blocks below for details.
  late final pulumi.Output<AwsGovcloudIntegrationsRoute53?> route53;
  /// The s3 integration
  late final pulumi.Output<AwsGovcloudIntegrationsS3?> s3;
  /// SNS AwsGovCloud integration.See Integration blocks below for details.
  late final pulumi.Output<AwsGovcloudIntegrationsSns?> sns;
  /// SQS AwsGovCloud integration.See Integration blocks below for details.
  late final pulumi.Output<AwsGovcloudIntegrationsSqs?> sqs;

  /// Creates a new [AwsGovcloudIntegrations].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AwsGovcloudIntegrations]. {@macro pulumi_cloud_aws_govcloud_integrations_aws_govcloud_integrations_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AwsGovcloudIntegrations(
    String name, {
    AwsGovcloudIntegrationsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:cloud/awsGovcloudIntegrations:AwsGovcloudIntegrations',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    alb = registerOutput<AwsGovcloudIntegrationsAlb?>('alb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsAlb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    apiGateway = registerOutput<AwsGovcloudIntegrationsApiGateway?>('apiGateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsApiGateway.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoScaling = registerOutput<AwsGovcloudIntegrationsAutoScaling?>('autoScaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsAutoScaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsDirectConnect = registerOutput<AwsGovcloudIntegrationsAwsDirectConnect?>('awsDirectConnect', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsAwsDirectConnect.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsStates = registerOutput<AwsGovcloudIntegrationsAwsStates?>('awsStates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsAwsStates.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudtrail = registerOutput<AwsGovcloudIntegrationsCloudtrail?>('cloudtrail', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsCloudtrail.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dynamoDb = registerOutput<AwsGovcloudIntegrationsDynamoDb?>('dynamoDb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsDynamoDb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ebs = registerOutput<AwsGovcloudIntegrationsEbs?>('ebs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsEbs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ec2 = registerOutput<AwsGovcloudIntegrationsEc2?>('ec2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsEc2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    elasticSearch = registerOutput<AwsGovcloudIntegrationsElasticSearch?>('elasticSearch', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsElasticSearch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    elb = registerOutput<AwsGovcloudIntegrationsElb?>('elb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsElb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    emr = registerOutput<AwsGovcloudIntegrationsEmr?>('emr', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsEmr.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    iam = registerOutput<AwsGovcloudIntegrationsIam?>('iam', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsIam.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lambda = registerOutput<AwsGovcloudIntegrationsLambda?>('lambda', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsLambda.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    linkedAccountId = registerOutput<String>('linkedAccountId');
    rds = registerOutput<AwsGovcloudIntegrationsRds?>('rds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsRds.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redShift = registerOutput<AwsGovcloudIntegrationsRedShift?>('redShift', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsRedShift.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    route53 = registerOutput<AwsGovcloudIntegrationsRoute53?>('route53', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsRoute53.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    s3 = registerOutput<AwsGovcloudIntegrationsS3?>('s3', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsS3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sns = registerOutput<AwsGovcloudIntegrationsSns?>('sns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsSns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sqs = registerOutput<AwsGovcloudIntegrationsSqs?>('sqs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsSqs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AwsGovcloudIntegrations] resource's state with the given [name] and [id].
  static AwsGovcloudIntegrations get(
    String name,
    pulumi.Input<String> id, {
    AwsGovcloudIntegrationsState? state,
  }) {
    return AwsGovcloudIntegrations._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AwsGovcloudIntegrations._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:cloud/awsGovcloudIntegrations:AwsGovcloudIntegrations',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    alb = registerOutput<AwsGovcloudIntegrationsAlb?>('alb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsAlb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    apiGateway = registerOutput<AwsGovcloudIntegrationsApiGateway?>('apiGateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsApiGateway.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoScaling = registerOutput<AwsGovcloudIntegrationsAutoScaling?>('autoScaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsAutoScaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsDirectConnect = registerOutput<AwsGovcloudIntegrationsAwsDirectConnect?>('awsDirectConnect', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsAwsDirectConnect.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    awsStates = registerOutput<AwsGovcloudIntegrationsAwsStates?>('awsStates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsAwsStates.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudtrail = registerOutput<AwsGovcloudIntegrationsCloudtrail?>('cloudtrail', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsCloudtrail.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dynamoDb = registerOutput<AwsGovcloudIntegrationsDynamoDb?>('dynamoDb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsDynamoDb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ebs = registerOutput<AwsGovcloudIntegrationsEbs?>('ebs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsEbs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ec2 = registerOutput<AwsGovcloudIntegrationsEc2?>('ec2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsEc2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    elasticSearch = registerOutput<AwsGovcloudIntegrationsElasticSearch?>('elasticSearch', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsElasticSearch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    elb = registerOutput<AwsGovcloudIntegrationsElb?>('elb', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsElb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    emr = registerOutput<AwsGovcloudIntegrationsEmr?>('emr', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsEmr.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    iam = registerOutput<AwsGovcloudIntegrationsIam?>('iam', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsIam.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lambda = registerOutput<AwsGovcloudIntegrationsLambda?>('lambda', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsLambda.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    linkedAccountId = registerOutput<String>('linkedAccountId');
    rds = registerOutput<AwsGovcloudIntegrationsRds?>('rds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsRds.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redShift = registerOutput<AwsGovcloudIntegrationsRedShift?>('redShift', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsRedShift.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    route53 = registerOutput<AwsGovcloudIntegrationsRoute53?>('route53', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsRoute53.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    s3 = registerOutput<AwsGovcloudIntegrationsS3?>('s3', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsS3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sns = registerOutput<AwsGovcloudIntegrationsSns?>('sns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsSns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sqs = registerOutput<AwsGovcloudIntegrationsSqs?>('sqs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsGovcloudIntegrationsSqs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
