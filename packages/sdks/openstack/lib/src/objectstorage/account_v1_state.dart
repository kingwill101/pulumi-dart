// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountV1 resources.
class AccountV1State {
  /// The number of bytes used by the account.
  final pulumi.Input<int>? bytesUsed;
  /// The number of containers in the account.
  final pulumi.Input<int>? containerCount;
  /// A map of headers returned for the account.
  final pulumi.Input<Map<String, String>>? headers;
  /// A map of custom key/value pairs to associate with the
  /// account metadata. Changing the `Quota-Bytes` key value is allowed to be
  /// updated only by the cloud administrator.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The number of objects in the account.
  final pulumi.Input<int>? objectCount;
  /// The project ID of the corresponding account. If
  /// omitted, the token's project ID is used. Changing this creates a new account.
  final pulumi.Input<String>? projectId;
  /// The number of bytes allowed for the account.
  final pulumi.Input<int>? quotaBytes;
  /// The region in which to create the account. If omitted,
  /// the `region` argument of the provider is used. Changing this creates a new
  /// account.
  final pulumi.Input<String>? region;

  /// Creates a new [AccountV1State].
  /// [bytesUsed] The number of bytes used by the account.
  /// [containerCount] The number of containers in the account.
  /// [headers] A map of headers returned for the account.
  /// [metadata] A map of custom key/value pairs to associate with the
  /// [objectCount] The number of objects in the account.
  /// [projectId] The project ID of the corresponding account. If
  /// [quotaBytes] The number of bytes allowed for the account.
  /// [region] The region in which to create the account. If omitted,
  AccountV1State({
    this.bytesUsed,
    this.containerCount,
    this.headers,
    this.metadata,
    this.objectCount,
    this.projectId,
    this.quotaBytes,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bytesUsed': ?bytesUsed,
      'containerCount': ?containerCount,
      'headers': ?headers,
      'metadata': ?metadata,
      'objectCount': ?objectCount,
      'projectId': ?projectId,
      'quotaBytes': ?quotaBytes,
      'region': ?region,
    };
  }

  factory AccountV1State.fromMap(Map<String, dynamic> map) {
    return AccountV1State(
      bytesUsed: map['bytesUsed'] == null ? null : (map['bytesUsed'] as int).input(),
      containerCount: map['containerCount'] == null ? null : (map['containerCount'] as int).input(),
      headers: map['headers'] == null ? null : ((map['headers'] as Map).cast<String, String>()).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      objectCount: map['objectCount'] == null ? null : (map['objectCount'] as int).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      quotaBytes: map['quotaBytes'] == null ? null : (map['quotaBytes'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

