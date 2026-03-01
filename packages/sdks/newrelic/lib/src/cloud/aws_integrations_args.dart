// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_integrations_alb.dart';
import 'aws_integrations_api_gateway.dart';
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
import 'aws_integrations_trusted_advisor.dart';
import 'aws_integrations_vpc.dart';
import 'aws_integrations_xray.dart';

/// {@template pulumi_cloud_aws_integrations_aws_integrations_args_doc}
/// The set of arguments for AwsIntegrations.
/// {@endtemplate}
/// {@macro pulumi_cloud_aws_integrations_aws_integrations_args_doc}
class AwsIntegrationsArgs {
  /// The New Relic account ID to operate on.  This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  final pulumi.Input<String>? accountId;
  /// ALB integration
  final pulumi.Input<AwsIntegrationsAlb>? alb;
  /// API Gateway integration
  final pulumi.Input<AwsIntegrationsApiGateway>? apiGateway;
  /// AutoScaling integration
  final pulumi.Input<AwsIntegrationsAutoScaling>? autoScaling;
  /// Aws Appsync integration
  final pulumi.Input<AwsIntegrationsAwsAppSync>? awsAppSync;
  /// Aws Athena integration
  final pulumi.Input<AwsIntegrationsAwsAthena>? awsAthena;
  /// Aws Auto Discovery Integration
  final pulumi.Input<AwsIntegrationsAwsAutoDiscovery>? awsAutoDiscovery;
  /// Aws Cognito integration
  final pulumi.Input<AwsIntegrationsAwsCognito>? awsCognito;
  /// Aws Connect integration
  final pulumi.Input<AwsIntegrationsAwsConnect>? awsConnect;
  /// Aws Direct Connect integration
  final pulumi.Input<AwsIntegrationsAwsDirectConnect>? awsDirectConnect;
  /// Aws Fsx integration
  final pulumi.Input<AwsIntegrationsAwsFsx>? awsFsx;
  /// Aws Glue integration
  final pulumi.Input<AwsIntegrationsAwsGlue>? awsGlue;
  /// Aws Kinesis Analytics integration
  final pulumi.Input<AwsIntegrationsAwsKinesisAnalytics>? awsKinesisAnalytics;
  /// Aws Media Convert integration
  final pulumi.Input<AwsIntegrationsAwsMediaConvert>? awsMediaConvert;
  /// Aws Media PackageVod integration
  final pulumi.Input<AwsIntegrationsAwsMediaPackageVod>? awsMediaPackageVod;
  /// Aws Mq integration
  final pulumi.Input<AwsIntegrationsAwsMq>? awsMq;
  /// Aws Msk integration
  final pulumi.Input<AwsIntegrationsAwsMsk>? awsMsk;
  /// Aws Neptune integration
  final pulumi.Input<AwsIntegrationsAwsNeptune>? awsNeptune;
  /// Aws Qldb integration
  final pulumi.Input<AwsIntegrationsAwsQldb>? awsQldb;
  /// Aws Route53resolver integration
  final pulumi.Input<AwsIntegrationsAwsRoute53resolver>? awsRoute53resolver;
  /// Aws states integration
  final pulumi.Input<AwsIntegrationsAwsStates>? awsStates;
  /// Aws Transit Gateway integration
  final pulumi.Input<AwsIntegrationsAwsTransitGateway>? awsTransitGateway;
  /// Aws Waf integration
  final pulumi.Input<AwsIntegrationsAwsWaf>? awsWaf;
  /// Aws Wafv2 integration
  final pulumi.Input<AwsIntegrationsAwsWafv2>? awsWafv2;
  /// Billing integration
  final pulumi.Input<AwsIntegrationsBilling>? billing;
  /// Cloudfront integration
  final pulumi.Input<AwsIntegrationsCloudfront>? cloudfront;
  /// CloudTrail integration
  final pulumi.Input<AwsIntegrationsCloudtrail>? cloudtrail;
  /// Doc DB integration
  final pulumi.Input<AwsIntegrationsDocDb>? docDb;
  /// Dynamo DB integration
  final pulumi.Input<AwsIntegrationsDynamodb>? dynamodb;
  /// EBS integration
  final pulumi.Input<AwsIntegrationsEbs>? ebs;
  /// Ec2 integration
  final pulumi.Input<AwsIntegrationsEc2>? ec2;
  /// Ecs integration
  final pulumi.Input<AwsIntegrationsEcs>? ecs;
  /// Efs integration
  final pulumi.Input<AwsIntegrationsEfs>? efs;
  /// Elasticache integration
  final pulumi.Input<AwsIntegrationsElasticache>? elasticache;
  /// Elastic Bean Stalk integration
  final pulumi.Input<AwsIntegrationsElasticbeanstalk>? elasticbeanstalk;
  /// Elastic Search integration
  final pulumi.Input<AwsIntegrationsElasticsearch>? elasticsearch;
  /// Elb integration
  final pulumi.Input<AwsIntegrationsElb>? elb;
  /// Emr integration
  final pulumi.Input<AwsIntegrationsEmr>? emr;
  /// Health integration
  final pulumi.Input<AwsIntegrationsHealth>? health;
  /// Iam integration
  final pulumi.Input<AwsIntegrationsIam>? iam;
  /// Iot integration
  final pulumi.Input<AwsIntegrationsIot>? iot;
  /// Kinesis integration
  final pulumi.Input<AwsIntegrationsKinesis>? kinesis;
  /// Kinesis Firehose integration
  final pulumi.Input<AwsIntegrationsKinesisFirehose>? kinesisFirehose;
  /// Lambda integration
  final pulumi.Input<AwsIntegrationsLambda>? lambda;
  /// The ID of the linked AWS account in New Relic.
  final pulumi.Input<String> linkedAccountId;
  /// Rds integration
  final pulumi.Input<AwsIntegrationsRds>? rds;
  /// Redshift integration
  final pulumi.Input<AwsIntegrationsRedshift>? redshift;
  /// Route53 integration
  final pulumi.Input<AwsIntegrationsRoute53>? route53;
  /// S3 integration
  final pulumi.Input<AwsIntegrationsS3>? s3;
  /// Security Hub integration
  final pulumi.Input<AwsIntegrationsSecurityHub>? securityHub;
  /// Ses integration
  final pulumi.Input<AwsIntegrationsSes>? ses;
  /// Sns integration
  final pulumi.Input<AwsIntegrationsSns>? sns;
  /// SQS integration
  final pulumi.Input<AwsIntegrationsSqs>? sqs;
  /// Trusted Advisor integration
  final pulumi.Input<AwsIntegrationsTrustedAdvisor>? trustedAdvisor;
  /// VPC integration
  final pulumi.Input<AwsIntegrationsVpc>? vpc;
  /// X-Ray integration
  final pulumi.Input<AwsIntegrationsXRay>? xRay;

  /// Creates a new [AwsIntegrationsArgs].
  /// [accountId] The New Relic account ID to operate on.  This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  /// [alb] ALB integration
  /// [apiGateway] API Gateway integration
  /// [autoScaling] AutoScaling integration
  /// [awsAppSync] Aws Appsync integration
  /// [awsAthena] Aws Athena integration
  /// [awsAutoDiscovery] Aws Auto Discovery Integration
  /// [awsCognito] Aws Cognito integration
  /// [awsConnect] Aws Connect integration
  /// [awsDirectConnect] Aws Direct Connect integration
  /// [awsFsx] Aws Fsx integration
  /// [awsGlue] Aws Glue integration
  /// [awsKinesisAnalytics] Aws Kinesis Analytics integration
  /// [awsMediaConvert] Aws Media Convert integration
  /// [awsMediaPackageVod] Aws Media PackageVod integration
  /// [awsMq] Aws Mq integration
  /// [awsMsk] Aws Msk integration
  /// [awsNeptune] Aws Neptune integration
  /// [awsQldb] Aws Qldb integration
  /// [awsRoute53resolver] Aws Route53resolver integration
  /// [awsStates] Aws states integration
  /// [awsTransitGateway] Aws Transit Gateway integration
  /// [awsWaf] Aws Waf integration
  /// [awsWafv2] Aws Wafv2 integration
  /// [billing] Billing integration
  /// [cloudfront] Cloudfront integration
  /// [cloudtrail] CloudTrail integration
  /// [docDb] Doc DB integration
  /// [dynamodb] Dynamo DB integration
  /// [ebs] EBS integration
  /// [ec2] Ec2 integration
  /// [ecs] Ecs integration
  /// [efs] Efs integration
  /// [elasticache] Elasticache integration
  /// [elasticbeanstalk] Elastic Bean Stalk integration
  /// [elasticsearch] Elastic Search integration
  /// [elb] Elb integration
  /// [emr] Emr integration
  /// [health] Health integration
  /// [iam] Iam integration
  /// [iot] Iot integration
  /// [kinesis] Kinesis integration
  /// [kinesisFirehose] Kinesis Firehose integration
  /// [lambda] Lambda integration
  /// [linkedAccountId] The ID of the linked AWS account in New Relic.
  /// [rds] Rds integration
  /// [redshift] Redshift integration
  /// [route53] Route53 integration
  /// [s3] S3 integration
  /// [securityHub] Security Hub integration
  /// [ses] Ses integration
  /// [sns] Sns integration
  /// [sqs] SQS integration
  /// [trustedAdvisor] Trusted Advisor integration
  /// [vpc] VPC integration
  /// [xRay] X-Ray integration
  AwsIntegrationsArgs({
    pulumi.Output<String>? accountId,
    pulumi.Output<AwsIntegrationsAlb>? alb,
    pulumi.Output<AwsIntegrationsApiGateway>? apiGateway,
    pulumi.Output<AwsIntegrationsAutoScaling>? autoScaling,
    pulumi.Output<AwsIntegrationsAwsAppSync>? awsAppSync,
    pulumi.Output<AwsIntegrationsAwsAthena>? awsAthena,
    pulumi.Output<AwsIntegrationsAwsAutoDiscovery>? awsAutoDiscovery,
    pulumi.Output<AwsIntegrationsAwsCognito>? awsCognito,
    pulumi.Output<AwsIntegrationsAwsConnect>? awsConnect,
    pulumi.Output<AwsIntegrationsAwsDirectConnect>? awsDirectConnect,
    pulumi.Output<AwsIntegrationsAwsFsx>? awsFsx,
    pulumi.Output<AwsIntegrationsAwsGlue>? awsGlue,
    pulumi.Output<AwsIntegrationsAwsKinesisAnalytics>? awsKinesisAnalytics,
    pulumi.Output<AwsIntegrationsAwsMediaConvert>? awsMediaConvert,
    pulumi.Output<AwsIntegrationsAwsMediaPackageVod>? awsMediaPackageVod,
    pulumi.Output<AwsIntegrationsAwsMq>? awsMq,
    pulumi.Output<AwsIntegrationsAwsMsk>? awsMsk,
    pulumi.Output<AwsIntegrationsAwsNeptune>? awsNeptune,
    pulumi.Output<AwsIntegrationsAwsQldb>? awsQldb,
    pulumi.Output<AwsIntegrationsAwsRoute53resolver>? awsRoute53resolver,
    pulumi.Output<AwsIntegrationsAwsStates>? awsStates,
    pulumi.Output<AwsIntegrationsAwsTransitGateway>? awsTransitGateway,
    pulumi.Output<AwsIntegrationsAwsWaf>? awsWaf,
    pulumi.Output<AwsIntegrationsAwsWafv2>? awsWafv2,
    pulumi.Output<AwsIntegrationsBilling>? billing,
    pulumi.Output<AwsIntegrationsCloudfront>? cloudfront,
    pulumi.Output<AwsIntegrationsCloudtrail>? cloudtrail,
    pulumi.Output<AwsIntegrationsDocDb>? docDb,
    pulumi.Output<AwsIntegrationsDynamodb>? dynamodb,
    pulumi.Output<AwsIntegrationsEbs>? ebs,
    pulumi.Output<AwsIntegrationsEc2>? ec2,
    pulumi.Output<AwsIntegrationsEcs>? ecs,
    pulumi.Output<AwsIntegrationsEfs>? efs,
    pulumi.Output<AwsIntegrationsElasticache>? elasticache,
    pulumi.Output<AwsIntegrationsElasticbeanstalk>? elasticbeanstalk,
    pulumi.Output<AwsIntegrationsElasticsearch>? elasticsearch,
    pulumi.Output<AwsIntegrationsElb>? elb,
    pulumi.Output<AwsIntegrationsEmr>? emr,
    pulumi.Output<AwsIntegrationsHealth>? health,
    pulumi.Output<AwsIntegrationsIam>? iam,
    pulumi.Output<AwsIntegrationsIot>? iot,
    pulumi.Output<AwsIntegrationsKinesis>? kinesis,
    pulumi.Output<AwsIntegrationsKinesisFirehose>? kinesisFirehose,
    pulumi.Output<AwsIntegrationsLambda>? lambda,
    required pulumi.Output<String> linkedAccountId,
    pulumi.Output<AwsIntegrationsRds>? rds,
    pulumi.Output<AwsIntegrationsRedshift>? redshift,
    pulumi.Output<AwsIntegrationsRoute53>? route53,
    pulumi.Output<AwsIntegrationsS3>? s3,
    pulumi.Output<AwsIntegrationsSecurityHub>? securityHub,
    pulumi.Output<AwsIntegrationsSes>? ses,
    pulumi.Output<AwsIntegrationsSns>? sns,
    pulumi.Output<AwsIntegrationsSqs>? sqs,
    pulumi.Output<AwsIntegrationsTrustedAdvisor>? trustedAdvisor,
    pulumi.Output<AwsIntegrationsVpc>? vpc,
    pulumi.Output<AwsIntegrationsXRay>? xRay,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      alb = pulumi.Input.asOptionalInput<AwsIntegrationsAlb>(alb),
      apiGateway = pulumi.Input.asOptionalInput<AwsIntegrationsApiGateway>(apiGateway),
      autoScaling = pulumi.Input.asOptionalInput<AwsIntegrationsAutoScaling>(autoScaling),
      awsAppSync = pulumi.Input.asOptionalInput<AwsIntegrationsAwsAppSync>(awsAppSync),
      awsAthena = pulumi.Input.asOptionalInput<AwsIntegrationsAwsAthena>(awsAthena),
      awsAutoDiscovery = pulumi.Input.asOptionalInput<AwsIntegrationsAwsAutoDiscovery>(awsAutoDiscovery),
      awsCognito = pulumi.Input.asOptionalInput<AwsIntegrationsAwsCognito>(awsCognito),
      awsConnect = pulumi.Input.asOptionalInput<AwsIntegrationsAwsConnect>(awsConnect),
      awsDirectConnect = pulumi.Input.asOptionalInput<AwsIntegrationsAwsDirectConnect>(awsDirectConnect),
      awsFsx = pulumi.Input.asOptionalInput<AwsIntegrationsAwsFsx>(awsFsx),
      awsGlue = pulumi.Input.asOptionalInput<AwsIntegrationsAwsGlue>(awsGlue),
      awsKinesisAnalytics = pulumi.Input.asOptionalInput<AwsIntegrationsAwsKinesisAnalytics>(awsKinesisAnalytics),
      awsMediaConvert = pulumi.Input.asOptionalInput<AwsIntegrationsAwsMediaConvert>(awsMediaConvert),
      awsMediaPackageVod = pulumi.Input.asOptionalInput<AwsIntegrationsAwsMediaPackageVod>(awsMediaPackageVod),
      awsMq = pulumi.Input.asOptionalInput<AwsIntegrationsAwsMq>(awsMq),
      awsMsk = pulumi.Input.asOptionalInput<AwsIntegrationsAwsMsk>(awsMsk),
      awsNeptune = pulumi.Input.asOptionalInput<AwsIntegrationsAwsNeptune>(awsNeptune),
      awsQldb = pulumi.Input.asOptionalInput<AwsIntegrationsAwsQldb>(awsQldb),
      awsRoute53resolver = pulumi.Input.asOptionalInput<AwsIntegrationsAwsRoute53resolver>(awsRoute53resolver),
      awsStates = pulumi.Input.asOptionalInput<AwsIntegrationsAwsStates>(awsStates),
      awsTransitGateway = pulumi.Input.asOptionalInput<AwsIntegrationsAwsTransitGateway>(awsTransitGateway),
      awsWaf = pulumi.Input.asOptionalInput<AwsIntegrationsAwsWaf>(awsWaf),
      awsWafv2 = pulumi.Input.asOptionalInput<AwsIntegrationsAwsWafv2>(awsWafv2),
      billing = pulumi.Input.asOptionalInput<AwsIntegrationsBilling>(billing),
      cloudfront = pulumi.Input.asOptionalInput<AwsIntegrationsCloudfront>(cloudfront),
      cloudtrail = pulumi.Input.asOptionalInput<AwsIntegrationsCloudtrail>(cloudtrail),
      docDb = pulumi.Input.asOptionalInput<AwsIntegrationsDocDb>(docDb),
      dynamodb = pulumi.Input.asOptionalInput<AwsIntegrationsDynamodb>(dynamodb),
      ebs = pulumi.Input.asOptionalInput<AwsIntegrationsEbs>(ebs),
      ec2 = pulumi.Input.asOptionalInput<AwsIntegrationsEc2>(ec2),
      ecs = pulumi.Input.asOptionalInput<AwsIntegrationsEcs>(ecs),
      efs = pulumi.Input.asOptionalInput<AwsIntegrationsEfs>(efs),
      elasticache = pulumi.Input.asOptionalInput<AwsIntegrationsElasticache>(elasticache),
      elasticbeanstalk = pulumi.Input.asOptionalInput<AwsIntegrationsElasticbeanstalk>(elasticbeanstalk),
      elasticsearch = pulumi.Input.asOptionalInput<AwsIntegrationsElasticsearch>(elasticsearch),
      elb = pulumi.Input.asOptionalInput<AwsIntegrationsElb>(elb),
      emr = pulumi.Input.asOptionalInput<AwsIntegrationsEmr>(emr),
      health = pulumi.Input.asOptionalInput<AwsIntegrationsHealth>(health),
      iam = pulumi.Input.asOptionalInput<AwsIntegrationsIam>(iam),
      iot = pulumi.Input.asOptionalInput<AwsIntegrationsIot>(iot),
      kinesis = pulumi.Input.asOptionalInput<AwsIntegrationsKinesis>(kinesis),
      kinesisFirehose = pulumi.Input.asOptionalInput<AwsIntegrationsKinesisFirehose>(kinesisFirehose),
      lambda = pulumi.Input.asOptionalInput<AwsIntegrationsLambda>(lambda),
      linkedAccountId = pulumi.Input.asInput<String>(linkedAccountId),
      rds = pulumi.Input.asOptionalInput<AwsIntegrationsRds>(rds),
      redshift = pulumi.Input.asOptionalInput<AwsIntegrationsRedshift>(redshift),
      route53 = pulumi.Input.asOptionalInput<AwsIntegrationsRoute53>(route53),
      s3 = pulumi.Input.asOptionalInput<AwsIntegrationsS3>(s3),
      securityHub = pulumi.Input.asOptionalInput<AwsIntegrationsSecurityHub>(securityHub),
      ses = pulumi.Input.asOptionalInput<AwsIntegrationsSes>(ses),
      sns = pulumi.Input.asOptionalInput<AwsIntegrationsSns>(sns),
      sqs = pulumi.Input.asOptionalInput<AwsIntegrationsSqs>(sqs),
      trustedAdvisor = pulumi.Input.asOptionalInput<AwsIntegrationsTrustedAdvisor>(trustedAdvisor),
      vpc = pulumi.Input.asOptionalInput<AwsIntegrationsVpc>(vpc),
      xRay = pulumi.Input.asOptionalInput<AwsIntegrationsXRay>(xRay);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'alb': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAlb, Map<String, dynamic>>(alb, (value) => value.toMap()),
      'apiGateway': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsApiGateway, Map<String, dynamic>>(apiGateway, (value) => value.toMap()),
      'autoScaling': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAutoScaling, Map<String, dynamic>>(autoScaling, (value) => value.toMap()),
      'awsAppSync': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsAppSync, Map<String, dynamic>>(awsAppSync, (value) => value.toMap()),
      'awsAthena': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsAthena, Map<String, dynamic>>(awsAthena, (value) => value.toMap()),
      'awsAutoDiscovery': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsAutoDiscovery, Map<String, dynamic>>(awsAutoDiscovery, (value) => value.toMap()),
      'awsCognito': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsCognito, Map<String, dynamic>>(awsCognito, (value) => value.toMap()),
      'awsConnect': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsConnect, Map<String, dynamic>>(awsConnect, (value) => value.toMap()),
      'awsDirectConnect': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsDirectConnect, Map<String, dynamic>>(awsDirectConnect, (value) => value.toMap()),
      'awsFsx': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsFsx, Map<String, dynamic>>(awsFsx, (value) => value.toMap()),
      'awsGlue': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsGlue, Map<String, dynamic>>(awsGlue, (value) => value.toMap()),
      'awsKinesisAnalytics': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsKinesisAnalytics, Map<String, dynamic>>(awsKinesisAnalytics, (value) => value.toMap()),
      'awsMediaConvert': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsMediaConvert, Map<String, dynamic>>(awsMediaConvert, (value) => value.toMap()),
      'awsMediaPackageVod': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsMediaPackageVod, Map<String, dynamic>>(awsMediaPackageVod, (value) => value.toMap()),
      'awsMq': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsMq, Map<String, dynamic>>(awsMq, (value) => value.toMap()),
      'awsMsk': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsMsk, Map<String, dynamic>>(awsMsk, (value) => value.toMap()),
      'awsNeptune': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsNeptune, Map<String, dynamic>>(awsNeptune, (value) => value.toMap()),
      'awsQldb': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsQldb, Map<String, dynamic>>(awsQldb, (value) => value.toMap()),
      'awsRoute53resolver': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsRoute53resolver, Map<String, dynamic>>(awsRoute53resolver, (value) => value.toMap()),
      'awsStates': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsStates, Map<String, dynamic>>(awsStates, (value) => value.toMap()),
      'awsTransitGateway': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsTransitGateway, Map<String, dynamic>>(awsTransitGateway, (value) => value.toMap()),
      'awsWaf': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsWaf, Map<String, dynamic>>(awsWaf, (value) => value.toMap()),
      'awsWafv2': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsAwsWafv2, Map<String, dynamic>>(awsWafv2, (value) => value.toMap()),
      'billing': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsBilling, Map<String, dynamic>>(billing, (value) => value.toMap()),
      'cloudfront': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsCloudfront, Map<String, dynamic>>(cloudfront, (value) => value.toMap()),
      'cloudtrail': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsCloudtrail, Map<String, dynamic>>(cloudtrail, (value) => value.toMap()),
      'docDb': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsDocDb, Map<String, dynamic>>(docDb, (value) => value.toMap()),
      'dynamodb': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsDynamodb, Map<String, dynamic>>(dynamodb, (value) => value.toMap()),
      'ebs': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsEbs, Map<String, dynamic>>(ebs, (value) => value.toMap()),
      'ec2': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsEc2, Map<String, dynamic>>(ec2, (value) => value.toMap()),
      'ecs': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsEcs, Map<String, dynamic>>(ecs, (value) => value.toMap()),
      'efs': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsEfs, Map<String, dynamic>>(efs, (value) => value.toMap()),
      'elasticache': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsElasticache, Map<String, dynamic>>(elasticache, (value) => value.toMap()),
      'elasticbeanstalk': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsElasticbeanstalk, Map<String, dynamic>>(elasticbeanstalk, (value) => value.toMap()),
      'elasticsearch': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsElasticsearch, Map<String, dynamic>>(elasticsearch, (value) => value.toMap()),
      'elb': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsElb, Map<String, dynamic>>(elb, (value) => value.toMap()),
      'emr': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsEmr, Map<String, dynamic>>(emr, (value) => value.toMap()),
      'health': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsHealth, Map<String, dynamic>>(health, (value) => value.toMap()),
      'iam': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsIam, Map<String, dynamic>>(iam, (value) => value.toMap()),
      'iot': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsIot, Map<String, dynamic>>(iot, (value) => value.toMap()),
      'kinesis': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsKinesis, Map<String, dynamic>>(kinesis, (value) => value.toMap()),
      'kinesisFirehose': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsKinesisFirehose, Map<String, dynamic>>(kinesisFirehose, (value) => value.toMap()),
      'lambda': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsLambda, Map<String, dynamic>>(lambda, (value) => value.toMap()),
      'linkedAccountId': linkedAccountId,
      'rds': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsRds, Map<String, dynamic>>(rds, (value) => value.toMap()),
      'redshift': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsRedshift, Map<String, dynamic>>(redshift, (value) => value.toMap()),
      'route53': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsRoute53, Map<String, dynamic>>(route53, (value) => value.toMap()),
      's3': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
      'securityHub': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsSecurityHub, Map<String, dynamic>>(securityHub, (value) => value.toMap()),
      'ses': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsSes, Map<String, dynamic>>(ses, (value) => value.toMap()),
      'sns': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsSns, Map<String, dynamic>>(sns, (value) => value.toMap()),
      'sqs': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsSqs, Map<String, dynamic>>(sqs, (value) => value.toMap()),
      'trustedAdvisor': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsTrustedAdvisor, Map<String, dynamic>>(trustedAdvisor, (value) => value.toMap()),
      'vpc': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsVpc, Map<String, dynamic>>(vpc, (value) => value.toMap()),
      'xRay': ?pulumi.Input.mapOptionalInputValue<AwsIntegrationsXRay, Map<String, dynamic>>(xRay, (value) => value.toMap()),
    };
  }

  factory AwsIntegrationsArgs.fromMap(Map<String, dynamic> map) {
    return AwsIntegrationsArgs(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      alb: map['alb'] == null ? null : pulumi.Output.create<AwsIntegrationsAlb>(AwsIntegrationsAlb.fromMap((map['alb'] as Map).cast<String, dynamic>())),
      apiGateway: map['apiGateway'] == null ? null : pulumi.Output.create<AwsIntegrationsApiGateway>(AwsIntegrationsApiGateway.fromMap((map['apiGateway'] as Map).cast<String, dynamic>())),
      autoScaling: map['autoScaling'] == null ? null : pulumi.Output.create<AwsIntegrationsAutoScaling>(AwsIntegrationsAutoScaling.fromMap((map['autoScaling'] as Map).cast<String, dynamic>())),
      awsAppSync: map['awsAppSync'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsAppSync>(AwsIntegrationsAwsAppSync.fromMap((map['awsAppSync'] as Map).cast<String, dynamic>())),
      awsAthena: map['awsAthena'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsAthena>(AwsIntegrationsAwsAthena.fromMap((map['awsAthena'] as Map).cast<String, dynamic>())),
      awsAutoDiscovery: map['awsAutoDiscovery'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsAutoDiscovery>(AwsIntegrationsAwsAutoDiscovery.fromMap((map['awsAutoDiscovery'] as Map).cast<String, dynamic>())),
      awsCognito: map['awsCognito'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsCognito>(AwsIntegrationsAwsCognito.fromMap((map['awsCognito'] as Map).cast<String, dynamic>())),
      awsConnect: map['awsConnect'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsConnect>(AwsIntegrationsAwsConnect.fromMap((map['awsConnect'] as Map).cast<String, dynamic>())),
      awsDirectConnect: map['awsDirectConnect'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsDirectConnect>(AwsIntegrationsAwsDirectConnect.fromMap((map['awsDirectConnect'] as Map).cast<String, dynamic>())),
      awsFsx: map['awsFsx'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsFsx>(AwsIntegrationsAwsFsx.fromMap((map['awsFsx'] as Map).cast<String, dynamic>())),
      awsGlue: map['awsGlue'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsGlue>(AwsIntegrationsAwsGlue.fromMap((map['awsGlue'] as Map).cast<String, dynamic>())),
      awsKinesisAnalytics: map['awsKinesisAnalytics'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsKinesisAnalytics>(AwsIntegrationsAwsKinesisAnalytics.fromMap((map['awsKinesisAnalytics'] as Map).cast<String, dynamic>())),
      awsMediaConvert: map['awsMediaConvert'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsMediaConvert>(AwsIntegrationsAwsMediaConvert.fromMap((map['awsMediaConvert'] as Map).cast<String, dynamic>())),
      awsMediaPackageVod: map['awsMediaPackageVod'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsMediaPackageVod>(AwsIntegrationsAwsMediaPackageVod.fromMap((map['awsMediaPackageVod'] as Map).cast<String, dynamic>())),
      awsMq: map['awsMq'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsMq>(AwsIntegrationsAwsMq.fromMap((map['awsMq'] as Map).cast<String, dynamic>())),
      awsMsk: map['awsMsk'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsMsk>(AwsIntegrationsAwsMsk.fromMap((map['awsMsk'] as Map).cast<String, dynamic>())),
      awsNeptune: map['awsNeptune'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsNeptune>(AwsIntegrationsAwsNeptune.fromMap((map['awsNeptune'] as Map).cast<String, dynamic>())),
      awsQldb: map['awsQldb'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsQldb>(AwsIntegrationsAwsQldb.fromMap((map['awsQldb'] as Map).cast<String, dynamic>())),
      awsRoute53resolver: map['awsRoute53resolver'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsRoute53resolver>(AwsIntegrationsAwsRoute53resolver.fromMap((map['awsRoute53resolver'] as Map).cast<String, dynamic>())),
      awsStates: map['awsStates'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsStates>(AwsIntegrationsAwsStates.fromMap((map['awsStates'] as Map).cast<String, dynamic>())),
      awsTransitGateway: map['awsTransitGateway'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsTransitGateway>(AwsIntegrationsAwsTransitGateway.fromMap((map['awsTransitGateway'] as Map).cast<String, dynamic>())),
      awsWaf: map['awsWaf'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsWaf>(AwsIntegrationsAwsWaf.fromMap((map['awsWaf'] as Map).cast<String, dynamic>())),
      awsWafv2: map['awsWafv2'] == null ? null : pulumi.Output.create<AwsIntegrationsAwsWafv2>(AwsIntegrationsAwsWafv2.fromMap((map['awsWafv2'] as Map).cast<String, dynamic>())),
      billing: map['billing'] == null ? null : pulumi.Output.create<AwsIntegrationsBilling>(AwsIntegrationsBilling.fromMap((map['billing'] as Map).cast<String, dynamic>())),
      cloudfront: map['cloudfront'] == null ? null : pulumi.Output.create<AwsIntegrationsCloudfront>(AwsIntegrationsCloudfront.fromMap((map['cloudfront'] as Map).cast<String, dynamic>())),
      cloudtrail: map['cloudtrail'] == null ? null : pulumi.Output.create<AwsIntegrationsCloudtrail>(AwsIntegrationsCloudtrail.fromMap((map['cloudtrail'] as Map).cast<String, dynamic>())),
      docDb: map['docDb'] == null ? null : pulumi.Output.create<AwsIntegrationsDocDb>(AwsIntegrationsDocDb.fromMap((map['docDb'] as Map).cast<String, dynamic>())),
      dynamodb: map['dynamodb'] == null ? null : pulumi.Output.create<AwsIntegrationsDynamodb>(AwsIntegrationsDynamodb.fromMap((map['dynamodb'] as Map).cast<String, dynamic>())),
      ebs: map['ebs'] == null ? null : pulumi.Output.create<AwsIntegrationsEbs>(AwsIntegrationsEbs.fromMap((map['ebs'] as Map).cast<String, dynamic>())),
      ec2: map['ec2'] == null ? null : pulumi.Output.create<AwsIntegrationsEc2>(AwsIntegrationsEc2.fromMap((map['ec2'] as Map).cast<String, dynamic>())),
      ecs: map['ecs'] == null ? null : pulumi.Output.create<AwsIntegrationsEcs>(AwsIntegrationsEcs.fromMap((map['ecs'] as Map).cast<String, dynamic>())),
      efs: map['efs'] == null ? null : pulumi.Output.create<AwsIntegrationsEfs>(AwsIntegrationsEfs.fromMap((map['efs'] as Map).cast<String, dynamic>())),
      elasticache: map['elasticache'] == null ? null : pulumi.Output.create<AwsIntegrationsElasticache>(AwsIntegrationsElasticache.fromMap((map['elasticache'] as Map).cast<String, dynamic>())),
      elasticbeanstalk: map['elasticbeanstalk'] == null ? null : pulumi.Output.create<AwsIntegrationsElasticbeanstalk>(AwsIntegrationsElasticbeanstalk.fromMap((map['elasticbeanstalk'] as Map).cast<String, dynamic>())),
      elasticsearch: map['elasticsearch'] == null ? null : pulumi.Output.create<AwsIntegrationsElasticsearch>(AwsIntegrationsElasticsearch.fromMap((map['elasticsearch'] as Map).cast<String, dynamic>())),
      elb: map['elb'] == null ? null : pulumi.Output.create<AwsIntegrationsElb>(AwsIntegrationsElb.fromMap((map['elb'] as Map).cast<String, dynamic>())),
      emr: map['emr'] == null ? null : pulumi.Output.create<AwsIntegrationsEmr>(AwsIntegrationsEmr.fromMap((map['emr'] as Map).cast<String, dynamic>())),
      health: map['health'] == null ? null : pulumi.Output.create<AwsIntegrationsHealth>(AwsIntegrationsHealth.fromMap((map['health'] as Map).cast<String, dynamic>())),
      iam: map['iam'] == null ? null : pulumi.Output.create<AwsIntegrationsIam>(AwsIntegrationsIam.fromMap((map['iam'] as Map).cast<String, dynamic>())),
      iot: map['iot'] == null ? null : pulumi.Output.create<AwsIntegrationsIot>(AwsIntegrationsIot.fromMap((map['iot'] as Map).cast<String, dynamic>())),
      kinesis: map['kinesis'] == null ? null : pulumi.Output.create<AwsIntegrationsKinesis>(AwsIntegrationsKinesis.fromMap((map['kinesis'] as Map).cast<String, dynamic>())),
      kinesisFirehose: map['kinesisFirehose'] == null ? null : pulumi.Output.create<AwsIntegrationsKinesisFirehose>(AwsIntegrationsKinesisFirehose.fromMap((map['kinesisFirehose'] as Map).cast<String, dynamic>())),
      lambda: map['lambda'] == null ? null : pulumi.Output.create<AwsIntegrationsLambda>(AwsIntegrationsLambda.fromMap((map['lambda'] as Map).cast<String, dynamic>())),
      linkedAccountId: pulumi.Output.create<String>(map['linkedAccountId'] as String),
      rds: map['rds'] == null ? null : pulumi.Output.create<AwsIntegrationsRds>(AwsIntegrationsRds.fromMap((map['rds'] as Map).cast<String, dynamic>())),
      redshift: map['redshift'] == null ? null : pulumi.Output.create<AwsIntegrationsRedshift>(AwsIntegrationsRedshift.fromMap((map['redshift'] as Map).cast<String, dynamic>())),
      route53: map['route53'] == null ? null : pulumi.Output.create<AwsIntegrationsRoute53>(AwsIntegrationsRoute53.fromMap((map['route53'] as Map).cast<String, dynamic>())),
      s3: map['s3'] == null ? null : pulumi.Output.create<AwsIntegrationsS3>(AwsIntegrationsS3.fromMap((map['s3'] as Map).cast<String, dynamic>())),
      securityHub: map['securityHub'] == null ? null : pulumi.Output.create<AwsIntegrationsSecurityHub>(AwsIntegrationsSecurityHub.fromMap((map['securityHub'] as Map).cast<String, dynamic>())),
      ses: map['ses'] == null ? null : pulumi.Output.create<AwsIntegrationsSes>(AwsIntegrationsSes.fromMap((map['ses'] as Map).cast<String, dynamic>())),
      sns: map['sns'] == null ? null : pulumi.Output.create<AwsIntegrationsSns>(AwsIntegrationsSns.fromMap((map['sns'] as Map).cast<String, dynamic>())),
      sqs: map['sqs'] == null ? null : pulumi.Output.create<AwsIntegrationsSqs>(AwsIntegrationsSqs.fromMap((map['sqs'] as Map).cast<String, dynamic>())),
      trustedAdvisor: map['trustedAdvisor'] == null ? null : pulumi.Output.create<AwsIntegrationsTrustedAdvisor>(AwsIntegrationsTrustedAdvisor.fromMap((map['trustedAdvisor'] as Map).cast<String, dynamic>())),
      vpc: map['vpc'] == null ? null : pulumi.Output.create<AwsIntegrationsVpc>(AwsIntegrationsVpc.fromMap((map['vpc'] as Map).cast<String, dynamic>())),
      xRay: map['xRay'] == null ? null : pulumi.Output.create<AwsIntegrationsXRay>(AwsIntegrationsXRay.fromMap((map['xRay'] as Map).cast<String, dynamic>())),
    );
  }
}

