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
    this.accountId,
    this.alb,
    this.apiGateway,
    this.autoScaling,
    this.awsAppSync,
    this.awsAthena,
    this.awsAutoDiscovery,
    this.awsCognito,
    this.awsConnect,
    this.awsDirectConnect,
    this.awsFsx,
    this.awsGlue,
    this.awsKinesisAnalytics,
    this.awsMediaConvert,
    this.awsMediaPackageVod,
    this.awsMq,
    this.awsMsk,
    this.awsNeptune,
    this.awsQldb,
    this.awsRoute53resolver,
    this.awsStates,
    this.awsTransitGateway,
    this.awsWaf,
    this.awsWafv2,
    this.billing,
    this.cloudfront,
    this.cloudtrail,
    this.docDb,
    this.dynamodb,
    this.ebs,
    this.ec2,
    this.ecs,
    this.efs,
    this.elasticache,
    this.elasticbeanstalk,
    this.elasticsearch,
    this.elb,
    this.emr,
    this.health,
    this.iam,
    this.iot,
    this.kinesis,
    this.kinesisFirehose,
    this.lambda,
    required this.linkedAccountId,
    this.rds,
    this.redshift,
    this.route53,
    this.s3,
    this.securityHub,
    this.ses,
    this.sns,
    this.sqs,
    this.trustedAdvisor,
    this.vpc,
    this.xRay,
  });

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
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alb: (() { final guardedValue = map['alb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAlb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apiGateway: (() { final guardedValue = map['apiGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsApiGateway.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoScaling: (() { final guardedValue = map['autoScaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAutoScaling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsAppSync: (() { final guardedValue = map['awsAppSync']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsAppSync.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsAthena: (() { final guardedValue = map['awsAthena']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsAthena.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsAutoDiscovery: (() { final guardedValue = map['awsAutoDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsAutoDiscovery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsCognito: (() { final guardedValue = map['awsCognito']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsCognito.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsConnect: (() { final guardedValue = map['awsConnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsConnect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsDirectConnect: (() { final guardedValue = map['awsDirectConnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsDirectConnect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsFsx: (() { final guardedValue = map['awsFsx']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsFsx.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsGlue: (() { final guardedValue = map['awsGlue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsGlue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsKinesisAnalytics: (() { final guardedValue = map['awsKinesisAnalytics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsKinesisAnalytics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsMediaConvert: (() { final guardedValue = map['awsMediaConvert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsMediaConvert.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsMediaPackageVod: (() { final guardedValue = map['awsMediaPackageVod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsMediaPackageVod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsMq: (() { final guardedValue = map['awsMq']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsMq.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsMsk: (() { final guardedValue = map['awsMsk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsMsk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsNeptune: (() { final guardedValue = map['awsNeptune']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsNeptune.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsQldb: (() { final guardedValue = map['awsQldb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsQldb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsRoute53resolver: (() { final guardedValue = map['awsRoute53resolver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsRoute53resolver.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsStates: (() { final guardedValue = map['awsStates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsStates.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsTransitGateway: (() { final guardedValue = map['awsTransitGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsTransitGateway.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsWaf: (() { final guardedValue = map['awsWaf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsWaf.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsWafv2: (() { final guardedValue = map['awsWafv2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsAwsWafv2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      billing: (() { final guardedValue = map['billing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsBilling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudfront: (() { final guardedValue = map['cloudfront']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsCloudfront.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudtrail: (() { final guardedValue = map['cloudtrail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsCloudtrail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      docDb: (() { final guardedValue = map['docDb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsDocDb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dynamodb: (() { final guardedValue = map['dynamodb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsDynamodb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ebs: (() { final guardedValue = map['ebs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsEbs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ec2: (() { final guardedValue = map['ec2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsEc2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ecs: (() { final guardedValue = map['ecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsEcs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      efs: (() { final guardedValue = map['efs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsEfs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      elasticache: (() { final guardedValue = map['elasticache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsElasticache.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      elasticbeanstalk: (() { final guardedValue = map['elasticbeanstalk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsElasticbeanstalk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      elasticsearch: (() { final guardedValue = map['elasticsearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsElasticsearch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      elb: (() { final guardedValue = map['elb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsElb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emr: (() { final guardedValue = map['emr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsEmr.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      health: (() { final guardedValue = map['health']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsHealth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iam: (() { final guardedValue = map['iam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsIam.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iot: (() { final guardedValue = map['iot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsIot.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kinesis: (() { final guardedValue = map['kinesis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsKinesis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kinesisFirehose: (() { final guardedValue = map['kinesisFirehose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsKinesisFirehose.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lambda: (() { final guardedValue = map['lambda']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsLambda.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedAccountId: pulumi.Input.fromValue(map['linkedAccountId'] as String),
      rds: (() { final guardedValue = map['rds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsRds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redshift: (() { final guardedValue = map['redshift']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsRedshift.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      route53: (() { final guardedValue = map['route53']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsRoute53.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityHub: (() { final guardedValue = map['securityHub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsSecurityHub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ses: (() { final guardedValue = map['ses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsSes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sns: (() { final guardedValue = map['sns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsSns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqs: (() { final guardedValue = map['sqs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsSqs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trustedAdvisor: (() { final guardedValue = map['trustedAdvisor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsTrustedAdvisor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpc: (() { final guardedValue = map['vpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsVpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      xRay: (() { final guardedValue = map['xRay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsIntegrationsXRay.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

