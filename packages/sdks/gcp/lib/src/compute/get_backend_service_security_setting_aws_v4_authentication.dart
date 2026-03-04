// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendServiceSecuritySettingAwsV4Authentication {
  /// The access key used for s3 bucket authentication.
  /// Required for updating or creating a backend that uses AWS v4 signature authentication, but will not be returned as part of the configuration when queried with a REST API GET request.
  final pulumi.Input<String> accessKey;

  /// The identifier of an access key used for s3 bucket authentication.
  final pulumi.Input<String> accessKeyId;

  /// The optional version identifier for the access key. You can use this to keep track of different iterations of your access key.
  final pulumi.Input<String> accessKeyVersion;

  /// The name of the cloud region of your origin. This is a free-form field with the name of the region your cloud uses to host your origin.
  /// For example, "us-east-1" for AWS or "us-ashburn-1" for OCI.
  final pulumi.Input<String> originRegion;

  /// Creates a new [GetBackendServiceSecuritySettingAwsV4Authentication].
  /// [accessKey] The access key used for s3 bucket authentication.
  /// [accessKeyId] The identifier of an access key used for s3 bucket authentication.
  /// [accessKeyVersion] The optional version identifier for the access key. You can use this to keep track of different iterations of your access key.
  /// [originRegion] The name of the cloud region of your origin. This is a free-form field with the name of the region your cloud uses to host your origin.
  GetBackendServiceSecuritySettingAwsV4Authentication({
    required this.accessKey,
    required this.accessKeyId,
    required this.accessKeyVersion,
    required this.originRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': accessKey,
      'accessKeyId': accessKeyId,
      'accessKeyVersion': accessKeyVersion,
      'originRegion': originRegion,
    };
  }

  factory GetBackendServiceSecuritySettingAwsV4Authentication.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBackendServiceSecuritySettingAwsV4Authentication(
      accessKey: pulumi.Input.fromValue(map['accessKey'] as String),
      accessKeyId: pulumi.Input.fromValue(map['accessKeyId'] as String),
      accessKeyVersion: pulumi.Input.fromValue(
        map['accessKeyVersion'] as String,
      ),
      originRegion: pulumi.Input.fromValue(map['originRegion'] as String),
    );
  }
}
