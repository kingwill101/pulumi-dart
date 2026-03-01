// ignore_for_file: unused_element, unnecessary_cast


class TopicIngestionDataSourceSettingsAwsKinesis {
  /// AWS role ARN to be used for Federated Identity authentication with
  /// Kinesis. Check the Pub/Sub docs for how to set up this role and the
  /// required permissions that need to be attached to it.
  final String awsRoleArn;
  /// The Kinesis consumer ARN to used for ingestion in
  /// Enhanced Fan-Out mode. The consumer must be already
  /// created and ready to be used.
  final String consumerArn;
  /// The GCP service account to be used for Federated Identity authentication
  /// with Kinesis (via a `AssumeRoleWithWebIdentity` call for the provided
  /// role). The `awsRoleArn` must be set up with `accounts.google.com:sub`
  /// equals to this service account number.
  final String gcpServiceAccount;
  /// The Kinesis stream ARN to ingest data from.
  final String streamArn;

  /// Creates a new [TopicIngestionDataSourceSettingsAwsKinesis].
  /// [awsRoleArn] AWS role ARN to be used for Federated Identity authentication with
  /// [consumerArn] The Kinesis consumer ARN to used for ingestion in
  /// [gcpServiceAccount] The GCP service account to be used for Federated Identity authentication
  /// [streamArn] The Kinesis stream ARN to ingest data from.
  TopicIngestionDataSourceSettingsAwsKinesis({
    required this.awsRoleArn,
    required this.consumerArn,
    required this.gcpServiceAccount,
    required this.streamArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRoleArn': awsRoleArn,
      'consumerArn': consumerArn,
      'gcpServiceAccount': gcpServiceAccount,
      'streamArn': streamArn,
    };
  }

  factory TopicIngestionDataSourceSettingsAwsKinesis.fromMap(Map<String, dynamic> map) {
    return TopicIngestionDataSourceSettingsAwsKinesis(
      awsRoleArn: map['awsRoleArn'] as String,
      consumerArn: map['consumerArn'] as String,
      gcpServiceAccount: map['gcpServiceAccount'] as String,
      streamArn: map['streamArn'] as String,
    );
  }
}

