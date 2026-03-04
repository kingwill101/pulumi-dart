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
      bytesUsed: (() {
        final guardedValue = map['bytesUsed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      containerCount: (() {
        final guardedValue = map['containerCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      headers: (() {
        final guardedValue = map['headers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      objectCount: (() {
        final guardedValue = map['objectCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      quotaBytes: (() {
        final guardedValue = map['quotaBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
