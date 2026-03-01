// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataConnectorAwsS3 resources.
class DataConnectorAwsS3State {
  /// The ARN of the AWS role, which is connected to this AWS CloudTrail Data Connector. See the [Azure document](https://docs.microsoft.com/azure/sentinel/connect-aws?tabs=s3#create-an-aws-assumed-role-and-grant-access-to-the-aws-sentinel-account) for details.
  final pulumi.Input<String>? awsRoleArn;
  /// The name of the Log Analytics table that will store the ingested data.
  final pulumi.Input<String>? destinationTable;
  /// The ID of the Log Analytics Workspace that this AWS S3 Data Connector resides in. Changing this forces a new AWS S3 Data Connector to be created.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  /// The name which should be used for this AWS S3 Data Connector. Changing this forces a new AWS S3 Data Connector to be created.
  final pulumi.Input<String>? name;
  /// Specifies a list of AWS SQS urls for the AWS S3 Data Connector.
  final pulumi.Input<List<String>>? sqsUrls;

  /// Creates a new [DataConnectorAwsS3State].
  /// [awsRoleArn] The ARN of the AWS role, which is connected to this AWS CloudTrail Data Connector. See the [Azure document](https://docs.microsoft.com/azure/sentinel/connect-aws?tabs=s3#create-an-aws-assumed-role-and-grant-access-to-the-aws-sentinel-account) for details.
  /// [destinationTable] The name of the Log Analytics table that will store the ingested data.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace that this AWS S3 Data Connector resides in. Changing this forces a new AWS S3 Data Connector to be created.
  /// [name] The name which should be used for this AWS S3 Data Connector. Changing this forces a new AWS S3 Data Connector to be created.
  /// [sqsUrls] Specifies a list of AWS SQS urls for the AWS S3 Data Connector.
  DataConnectorAwsS3State({
    pulumi.Output<String>? awsRoleArn,
    pulumi.Output<String>? destinationTable,
    pulumi.Output<String>? logAnalyticsWorkspaceId,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? sqsUrls,
  }) :
      awsRoleArn = pulumi.Input.asOptionalInput<String>(awsRoleArn),
      destinationTable = pulumi.Input.asOptionalInput<String>(destinationTable),
      logAnalyticsWorkspaceId = pulumi.Input.asOptionalInput<String>(logAnalyticsWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      sqsUrls = pulumi.Input.asOptionalInput<List<String>>(sqsUrls);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRoleArn': ?awsRoleArn,
      'destinationTable': ?destinationTable,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'name': ?name,
      'sqsUrls': ?sqsUrls,
    };
  }

  factory DataConnectorAwsS3State.fromMap(Map<String, dynamic> map) {
    return DataConnectorAwsS3State(
      awsRoleArn: map['awsRoleArn'] == null ? null : pulumi.Output.create<String>(map['awsRoleArn'] as String),
      destinationTable: map['destinationTable'] == null ? null : pulumi.Output.create<String>(map['destinationTable'] as String),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['logAnalyticsWorkspaceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      sqsUrls: map['sqsUrls'] == null ? null : pulumi.Output.create<List<String>>((map['sqsUrls'] as List).cast<String>()),
    );
  }
}

