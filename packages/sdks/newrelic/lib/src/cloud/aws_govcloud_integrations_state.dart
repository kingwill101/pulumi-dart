// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_govcloud_integrations_alb.dart';
import 'aws_govcloud_integrations_api_gateway.dart';
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

/// Input properties used for looking up and filtering AwsGovcloudIntegrations resources.
class AwsGovcloudIntegrationsState {
  /// The New Relic account ID to operate on. This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  final pulumi.Input<String>? accountId;
  /// Application load balancer AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsAlb>? alb;
  /// Api Gateway AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsApiGateway>? apiGateway;
  /// Autoscaling AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsAutoScaling>? autoScaling;
  /// Aws Direct Connect AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsAwsDirectConnect>? awsDirectConnect;
  /// Aws States AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsAwsStates>? awsStates;
  /// Cloudtrail AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsCloudtrail>? cloudtrail;
  /// Dynamo DB AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsDynamoDb>? dynamoDb;
  /// Elastic Beanstalk AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsEbs>? ebs;
  /// EC2 AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsEc2>? ec2;
  /// Elastic search AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsElasticSearch>? elasticSearch;
  /// Elb AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsElb>? elb;
  /// Emr AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsEmr>? emr;
  /// IAM AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsIam>? iam;
  /// Lambda AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsLambda>? lambda;
  /// The access key of the AwsGovCloud.
  final pulumi.Input<String>? linkedAccountId;
  /// RDS AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsRds>? rds;
  /// Redshift AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsRedShift>? redShift;
  /// Route53 AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsRoute53>? route53;
  /// The s3 integration
  final pulumi.Input<AwsGovcloudIntegrationsS3>? s3;
  /// SNS AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsSns>? sns;
  /// SQS AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsSqs>? sqs;

  /// Creates a new [AwsGovcloudIntegrationsState].
  /// [accountId] The New Relic account ID to operate on. This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  /// [alb] Application load balancer AwsGovCloud integration.See Integration blocks below for details.
  /// [apiGateway] Api Gateway AwsGovCloud integration.See Integration blocks below for details.
  /// [autoScaling] Autoscaling AwsGovCloud integration.See Integration blocks below for details.
  /// [awsDirectConnect] Aws Direct Connect AwsGovCloud integration.See Integration blocks below for details.
  /// [awsStates] Aws States AwsGovCloud integration.See Integration blocks below for details.
  /// [cloudtrail] Cloudtrail AwsGovCloud integration.See Integration blocks below for details.
  /// [dynamoDb] Dynamo DB AwsGovCloud integration.See Integration blocks below for details.
  /// [ebs] Elastic Beanstalk AwsGovCloud integration.See Integration blocks below for details.
  /// [ec2] EC2 AwsGovCloud integration.See Integration blocks below for details.
  /// [elasticSearch] Elastic search AwsGovCloud integration.See Integration blocks below for details.
  /// [elb] Elb AwsGovCloud integration.See Integration blocks below for details.
  /// [emr] Emr AwsGovCloud integration.See Integration blocks below for details.
  /// [iam] IAM AwsGovCloud integration.See Integration blocks below for details.
  /// [lambda] Lambda AwsGovCloud integration.See Integration blocks below for details.
  /// [linkedAccountId] The access key of the AwsGovCloud.
  /// [rds] RDS AwsGovCloud integration.See Integration blocks below for details.
  /// [redShift] Redshift AwsGovCloud integration.See Integration blocks below for details.
  /// [route53] Route53 AwsGovCloud integration.See Integration blocks below for details.
  /// [s3] The s3 integration
  /// [sns] SNS AwsGovCloud integration.See Integration blocks below for details.
  /// [sqs] SQS AwsGovCloud integration.See Integration blocks below for details.
  const AwsGovcloudIntegrationsState({
    this.accountId,
    this.alb,
    this.apiGateway,
    this.autoScaling,
    this.awsDirectConnect,
    this.awsStates,
    this.cloudtrail,
    this.dynamoDb,
    this.ebs,
    this.ec2,
    this.elasticSearch,
    this.elb,
    this.emr,
    this.iam,
    this.lambda,
    this.linkedAccountId,
    this.rds,
    this.redShift,
    this.route53,
    this.s3,
    this.sns,
    this.sqs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'alb': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsAlb, Map<String, dynamic>>(alb, (value) => value.toMap()),
      'apiGateway': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsApiGateway, Map<String, dynamic>>(apiGateway, (value) => value.toMap()),
      'autoScaling': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsAutoScaling, Map<String, dynamic>>(autoScaling, (value) => value.toMap()),
      'awsDirectConnect': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsAwsDirectConnect, Map<String, dynamic>>(awsDirectConnect, (value) => value.toMap()),
      'awsStates': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsAwsStates, Map<String, dynamic>>(awsStates, (value) => value.toMap()),
      'cloudtrail': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsCloudtrail, Map<String, dynamic>>(cloudtrail, (value) => value.toMap()),
      'dynamoDb': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsDynamoDb, Map<String, dynamic>>(dynamoDb, (value) => value.toMap()),
      'ebs': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsEbs, Map<String, dynamic>>(ebs, (value) => value.toMap()),
      'ec2': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsEc2, Map<String, dynamic>>(ec2, (value) => value.toMap()),
      'elasticSearch': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsElasticSearch, Map<String, dynamic>>(elasticSearch, (value) => value.toMap()),
      'elb': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsElb, Map<String, dynamic>>(elb, (value) => value.toMap()),
      'emr': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsEmr, Map<String, dynamic>>(emr, (value) => value.toMap()),
      'iam': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsIam, Map<String, dynamic>>(iam, (value) => value.toMap()),
      'lambda': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsLambda, Map<String, dynamic>>(lambda, (value) => value.toMap()),
      'linkedAccountId': ?linkedAccountId,
      'rds': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsRds, Map<String, dynamic>>(rds, (value) => value.toMap()),
      'redShift': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsRedShift, Map<String, dynamic>>(redShift, (value) => value.toMap()),
      'route53': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsRoute53, Map<String, dynamic>>(route53, (value) => value.toMap()),
      's3': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
      'sns': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsSns, Map<String, dynamic>>(sns, (value) => value.toMap()),
      'sqs': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsSqs, Map<String, dynamic>>(sqs, (value) => value.toMap()),
    };
  }

  factory AwsGovcloudIntegrationsState.fromMap(Map<String, dynamic> map) {
    return AwsGovcloudIntegrationsState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alb: (() { final guardedValue = map['alb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsAlb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apiGateway: (() { final guardedValue = map['apiGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsApiGateway.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoScaling: (() { final guardedValue = map['autoScaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsAutoScaling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsDirectConnect: (() { final guardedValue = map['awsDirectConnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsAwsDirectConnect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsStates: (() { final guardedValue = map['awsStates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsAwsStates.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudtrail: (() { final guardedValue = map['cloudtrail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsCloudtrail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dynamoDb: (() { final guardedValue = map['dynamoDb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsDynamoDb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ebs: (() { final guardedValue = map['ebs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsEbs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ec2: (() { final guardedValue = map['ec2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsEc2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      elasticSearch: (() { final guardedValue = map['elasticSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsElasticSearch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      elb: (() { final guardedValue = map['elb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsElb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emr: (() { final guardedValue = map['emr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsEmr.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iam: (() { final guardedValue = map['iam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsIam.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lambda: (() { final guardedValue = map['lambda']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsLambda.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedAccountId: (() { final guardedValue = map['linkedAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rds: (() { final guardedValue = map['rds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsRds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redShift: (() { final guardedValue = map['redShift']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsRedShift.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      route53: (() { final guardedValue = map['route53']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsRoute53.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sns: (() { final guardedValue = map['sns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsSns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqs: (() { final guardedValue = map['sqs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsGovcloudIntegrationsSqs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

