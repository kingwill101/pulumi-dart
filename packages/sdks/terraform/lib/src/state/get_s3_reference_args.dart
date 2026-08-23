// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_state_get_s3_reference_args_doc}
/// Arguments for getS3Reference.
/// {@endtemplate}
/// {@macro pulumi_state_get_s3_reference_args_doc}
class GetS3ReferenceArgs {
  /// AWS access key.
  final pulumi.Input<String>? accessKey;
  /// The duration, in seconds, of the assume role session.
  final pulumi.Input<int>? assumeRoleDurationSeconds;
  /// IAM Policy JSON describing further restricting permissions for the IAM Role being assumed.
  final pulumi.Input<String>? assumeRolePolicy;
  /// Amazon Resource Names (ARNs) of IAM Policies describing further restricting permissions for the IAM Role being assumed.
  final pulumi.Input<List<String>>? assumeRolePolicyArns;
  /// Assume role session tags.
  final pulumi.Input<Map<String, String>>? assumeRoleTags;
  /// Assume role session tag keys to pass to any subsequent sessions.
  final pulumi.Input<List<String>>? assumeRoleTransitiveTagKeys;
  /// The name of the S3 bucket.
  final pulumi.Input<String> bucket;
  /// Whether to enable server side encryption of the state file.
  final pulumi.Input<bool>? encrypt;
  /// A custom endpoint for the S3 API.
  final pulumi.Input<String>? endpoint;
  /// The external ID to use when assuming the role.
  final pulumi.Input<String>? externalId;
  /// Force s3 to use path-style addressing instead of virtual hosted-bucket addressing. Required by most S3-compatible stores.
  final pulumi.Input<bool>? forcePathStyle;
  /// A custom endpoint for the IAM API.
  final pulumi.Input<String>? iamEndpoint;
  /// The path to the state file inside the bucket. When using a non-default workspace, the state path is /workspace_key_prefix/workspace_name/key.
  final pulumi.Input<String> key;
  /// The ARN of a KMS Key to use for encrypting the state.
  final pulumi.Input<String>? kmsKeyId;
  /// The maximum number of times an AWS API request is retried on retryable failure.
  final pulumi.Input<int>? maxRetries;
  /// AWS profile name as set in the shared credentials file.
  final pulumi.Input<String>? profile;
  /// AWS region of the S3 bucket. Falls back to the AWS_REGION or AWS_DEFAULT_REGION environment variables when unset.
  final pulumi.Input<String>? region;
  /// The ARN of an IAM Role to be assumed in order to read the state.
  final pulumi.Input<String>? roleArn;
  /// AWS secret key.
  final pulumi.Input<String>? secretKey;
  /// The session name to use when assuming the role.
  final pulumi.Input<String>? sessionName;
  /// Path to a shared credentials file.
  final pulumi.Input<String>? sharedCredentialsFile;
  /// Skip the credentials validation via the STS API.
  final pulumi.Input<bool>? skipCredentialsValidation;
  /// Skip the AWS Metadata API check.
  final pulumi.Input<bool>? skipMetadataApiCheck;
  /// Skip static validation of region name.
  final pulumi.Input<bool>? skipRegionValidation;
  /// The base64-encoded encryption key to use for server-side encryption with customer-provided keys (SSE-C).
  final pulumi.Input<String>? sseCustomerKey;
  /// A custom endpoint for the STS API.
  final pulumi.Input<String>? stsEndpoint;
  /// AWS session token.
  final pulumi.Input<String>? token;
  /// The Terraform workspace to read state from.
  final pulumi.Input<String>? workspace;
  /// The prefix applied to the non-default state path inside the bucket.
  final pulumi.Input<String>? workspaceKeyPrefix;

  /// Creates a new [GetS3ReferenceArgs].
  /// [accessKey] AWS access key.
  /// [assumeRoleDurationSeconds] The duration, in seconds, of the assume role session.
  /// [assumeRolePolicy] IAM Policy JSON describing further restricting permissions for the IAM Role being assumed.
  /// [assumeRolePolicyArns] Amazon Resource Names (ARNs) of IAM Policies describing further restricting permissions for the IAM Role being assumed.
  /// [assumeRoleTags] Assume role session tags.
  /// [assumeRoleTransitiveTagKeys] Assume role session tag keys to pass to any subsequent sessions.
  /// [bucket] The name of the S3 bucket.
  /// [encrypt] Whether to enable server side encryption of the state file.
  /// [endpoint] A custom endpoint for the S3 API.
  /// [externalId] The external ID to use when assuming the role.
  /// [forcePathStyle] Force s3 to use path-style addressing instead of virtual hosted-bucket addressing. Required by most S3-compatible stores.
  /// [iamEndpoint] A custom endpoint for the IAM API.
  /// [key] The path to the state file inside the bucket. When using a non-default workspace, the state path is /workspace_key_prefix/workspace_name/key.
  /// [kmsKeyId] The ARN of a KMS Key to use for encrypting the state.
  /// [maxRetries] The maximum number of times an AWS API request is retried on retryable failure.
  /// [profile] AWS profile name as set in the shared credentials file.
  /// [region] AWS region of the S3 bucket. Falls back to the AWS_REGION or AWS_DEFAULT_REGION environment variables when unset.
  /// [roleArn] The ARN of an IAM Role to be assumed in order to read the state.
  /// [secretKey] AWS secret key.
  /// [sessionName] The session name to use when assuming the role.
  /// [sharedCredentialsFile] Path to a shared credentials file.
  /// [skipCredentialsValidation] Skip the credentials validation via the STS API.
  /// [skipMetadataApiCheck] Skip the AWS Metadata API check.
  /// [skipRegionValidation] Skip static validation of region name.
  /// [sseCustomerKey] The base64-encoded encryption key to use for server-side encryption with customer-provided keys (SSE-C).
  /// [stsEndpoint] A custom endpoint for the STS API.
  /// [token] AWS session token.
  /// [workspace] The Terraform workspace to read state from.
  /// [workspaceKeyPrefix] The prefix applied to the non-default state path inside the bucket.
  const GetS3ReferenceArgs({
    this.accessKey,
    this.assumeRoleDurationSeconds,
    this.assumeRolePolicy,
    this.assumeRolePolicyArns,
    this.assumeRoleTags,
    this.assumeRoleTransitiveTagKeys,
    required this.bucket,
    this.encrypt,
    this.endpoint,
    this.externalId,
    this.forcePathStyle,
    this.iamEndpoint,
    required this.key,
    this.kmsKeyId,
    this.maxRetries,
    this.profile,
    this.region,
    this.roleArn,
    this.secretKey,
    this.sessionName,
    this.sharedCredentialsFile,
    this.skipCredentialsValidation,
    this.skipMetadataApiCheck,
    this.skipRegionValidation,
    this.sseCustomerKey,
    this.stsEndpoint,
    this.token,
    this.workspace,
    this.workspaceKeyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'assumeRoleDurationSeconds': ?assumeRoleDurationSeconds,
      'assumeRolePolicy': ?assumeRolePolicy,
      'assumeRolePolicyArns': ?assumeRolePolicyArns,
      'assumeRoleTags': ?assumeRoleTags,
      'assumeRoleTransitiveTagKeys': ?assumeRoleTransitiveTagKeys,
      'bucket': bucket,
      'encrypt': ?encrypt,
      'endpoint': ?endpoint,
      'externalId': ?externalId,
      'forcePathStyle': ?forcePathStyle,
      'iamEndpoint': ?iamEndpoint,
      'key': key,
      'kmsKeyId': ?kmsKeyId,
      'maxRetries': ?maxRetries,
      'profile': ?profile,
      'region': ?region,
      'roleArn': ?roleArn,
      'secretKey': ?secretKey,
      'sessionName': ?sessionName,
      'sharedCredentialsFile': ?sharedCredentialsFile,
      'skipCredentialsValidation': ?skipCredentialsValidation,
      'skipMetadataApiCheck': ?skipMetadataApiCheck,
      'skipRegionValidation': ?skipRegionValidation,
      'sseCustomerKey': ?sseCustomerKey,
      'stsEndpoint': ?stsEndpoint,
      'token': ?token,
      'workspace': ?workspace,
      'workspaceKeyPrefix': ?workspaceKeyPrefix,
    };
  }

  factory GetS3ReferenceArgs.fromMap(Map<String, dynamic> map) {
    return GetS3ReferenceArgs(
      accessKey: (() { final guardedValue = map['accessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      assumeRoleDurationSeconds: (() { final guardedValue = map['assumeRoleDurationSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      assumeRolePolicy: (() { final guardedValue = map['assumeRolePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      assumeRolePolicyArns: (() { final guardedValue = map['assumeRolePolicyArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      assumeRoleTags: (() { final guardedValue = map['assumeRoleTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      assumeRoleTransitiveTagKeys: (() { final guardedValue = map['assumeRoleTransitiveTagKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      encrypt: (() { final guardedValue = map['encrypt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forcePathStyle: (() { final guardedValue = map['forcePathStyle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      iamEndpoint: (() { final guardedValue = map['iamEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretKey: (() { final guardedValue = map['secretKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionName: (() { final guardedValue = map['sessionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedCredentialsFile: (() { final guardedValue = map['sharedCredentialsFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipCredentialsValidation: (() { final guardedValue = map['skipCredentialsValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      skipMetadataApiCheck: (() { final guardedValue = map['skipMetadataApiCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      skipRegionValidation: (() { final guardedValue = map['skipRegionValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sseCustomerKey: (() { final guardedValue = map['sseCustomerKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stsEndpoint: (() { final guardedValue = map['stsEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspace: (() { final guardedValue = map['workspace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceKeyPrefix: (() { final guardedValue = map['workspaceKeyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
