// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains the configurations necessary to generate a signature for access to private storage buckets that support Signature Version 4 for authentication. The service name for generating the authentication header will always default to 's3'.
class AWSV4Signature {
  /// The access key used for s3 bucket authentication. Required for updating or creating a backend that uses AWS v4 signature authentication, but will not be returned as part of the configuration when queried with a REST API GET request. @InputOnly
  final pulumi.Input<String>? accessKey;
  /// The identifier of an access key used for s3 bucket authentication.
  final pulumi.Input<String>? accessKeyId;
  /// The optional version identifier for the access key. You can use this to keep track of different iterations of your access key.
  final pulumi.Input<String>? accessKeyVersion;
  /// The name of the cloud region of your origin. This is a free-form field with the name of the region your cloud uses to host your origin. For example, "us-east-1" for AWS or "us-ashburn-1" for OCI.
  final pulumi.Input<String>? originRegion;

  /// Creates a new [AWSV4Signature].
  /// [accessKey] The access key used for s3 bucket authentication. Required for updating or creating a backend that uses AWS v4 signature authentication, but will not be returned as part of the configuration when queried with a REST API GET request. @InputOnly
  /// [accessKeyId] The identifier of an access key used for s3 bucket authentication.
  /// [accessKeyVersion] The optional version identifier for the access key. You can use this to keep track of different iterations of your access key.
  /// [originRegion] The name of the cloud region of your origin. This is a free-form field with the name of the region your cloud uses to host your origin. For example, "us-east-1" for AWS or "us-ashburn-1" for OCI.
  AWSV4Signature({
    this.accessKey,
    this.accessKeyId,
    this.accessKeyVersion,
    this.originRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'accessKeyId': ?accessKeyId,
      'accessKeyVersion': ?accessKeyVersion,
      'originRegion': ?originRegion,
    };
  }

  factory AWSV4Signature.fromMap(Map<String, dynamic> map) {
    return AWSV4Signature(
      accessKey: (() { final guardedValue = map['accessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessKeyId: (() { final guardedValue = map['accessKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessKeyVersion: (() { final guardedValue = map['accessKeyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originRegion: (() { final guardedValue = map['originRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

