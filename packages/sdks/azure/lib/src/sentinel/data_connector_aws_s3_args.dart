// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_data_connector_aws_s3_data_connector_aws_s3_args_doc}
/// The set of arguments for DataConnectorAwsS3.
/// {@endtemplate}
/// {@macro pulumi_sentinel_data_connector_aws_s3_data_connector_aws_s3_args_doc}
class DataConnectorAwsS3Args {
  /// The ARN of the AWS role, which is connected to this AWS CloudTrail Data Connector. See the [Azure document](https://docs.microsoft.com/azure/sentinel/connect-aws?tabs=s3#create-an-aws-assumed-role-and-grant-access-to-the-aws-sentinel-account) for details.
  final pulumi.Input<String> awsRoleArn;
  /// The name of the Log Analytics table that will store the ingested data.
  final pulumi.Input<String> destinationTable;
  /// The ID of the Log Analytics Workspace that this AWS S3 Data Connector resides in. Changing this forces a new AWS S3 Data Connector to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this AWS S3 Data Connector. Changing this forces a new AWS S3 Data Connector to be created.
  final pulumi.Input<String>? name;
  /// Specifies a list of AWS SQS urls for the AWS S3 Data Connector.
  final pulumi.Input<List<String>> sqsUrls;

  /// Creates a new [DataConnectorAwsS3Args].
  /// [awsRoleArn] The ARN of the AWS role, which is connected to this AWS CloudTrail Data Connector. See the [Azure document](https://docs.microsoft.com/azure/sentinel/connect-aws?tabs=s3#create-an-aws-assumed-role-and-grant-access-to-the-aws-sentinel-account) for details.
  /// [destinationTable] The name of the Log Analytics table that will store the ingested data.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace that this AWS S3 Data Connector resides in. Changing this forces a new AWS S3 Data Connector to be created.
  /// [name] The name which should be used for this AWS S3 Data Connector. Changing this forces a new AWS S3 Data Connector to be created.
  /// [sqsUrls] Specifies a list of AWS SQS urls for the AWS S3 Data Connector.
  DataConnectorAwsS3Args({
    required this.awsRoleArn,
    required this.destinationTable,
    required this.logAnalyticsWorkspaceId,
    this.name,
    required this.sqsUrls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRoleArn': awsRoleArn,
      'destinationTable': destinationTable,
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': ?name,
      'sqsUrls': sqsUrls,
    };
  }

  factory DataConnectorAwsS3Args.fromMap(Map<String, dynamic> map) {
    return DataConnectorAwsS3Args(
      awsRoleArn: (map['awsRoleArn'] as String).input(),
      destinationTable: (map['destinationTable'] as String).input(),
      logAnalyticsWorkspaceId: (map['logAnalyticsWorkspaceId'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      sqsUrls: ((map['sqsUrls'] as List).cast<String>()).input(),
    );
  }
}

