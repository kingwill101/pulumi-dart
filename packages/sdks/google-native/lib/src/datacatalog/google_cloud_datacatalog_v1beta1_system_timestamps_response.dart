// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Timestamps about this resource according to a particular system.
class GoogleCloudDatacatalogV1beta1SystemTimestampsResponse {
  /// The creation time of the resource within the given system.
  final pulumi.Input<String> createTime;
  /// The expiration time of the resource within the given system. Currently only apllicable to BigQuery resources.
  final pulumi.Input<String> expireTime;
  /// The last-modified time of the resource within the given system.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GoogleCloudDatacatalogV1beta1SystemTimestampsResponse].
  /// [createTime] The creation time of the resource within the given system.
  /// [expireTime] The expiration time of the resource within the given system. Currently only apllicable to BigQuery resources.
  /// [updateTime] The last-modified time of the resource within the given system.
  const GoogleCloudDatacatalogV1beta1SystemTimestampsResponse({
    required this.createTime,
    required this.expireTime,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'expireTime': expireTime,
      'updateTime': updateTime,
    };
  }

  factory GoogleCloudDatacatalogV1beta1SystemTimestampsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1beta1SystemTimestampsResponse(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}

