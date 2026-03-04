// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SQuotaPreferenceQuotaConfig {
  /// The annotations map for clients to store small amounts of arbitrary data. Do not put PII or other sensitive information here. See https://google.aip.dev/128#annotations.
  /// An object containing a list of "key: value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final pulumi.Input<Map<String, String>>? annotations;

  /// (Output)
  /// Granted quota value.
  final pulumi.Input<String>? grantedValue;

  /// The preferred value. Must be greater than or equal to -1. If set to -1, it means the value is "unlimited".
  final pulumi.Input<String> preferredValue;

  /// (Output)
  /// The origin of the quota preference request.
  final pulumi.Input<String>? requestOrigin;

  /// (Output)
  /// Optional details about the state of this quota preference.
  final pulumi.Input<String>? stateDetail;

  /// (Output)
  /// The trace id that the Google Cloud uses to provision the requested quota. This trace id may be used by the client to contact Cloud support to track the state of a quota preference request. The trace id is only produced for increase requests and is unique for each request. The quota decrease requests do not have a trace id.
  final pulumi.Input<String>? traceId;

  /// Creates a new [SQuotaPreferenceQuotaConfig].
  /// [annotations] The annotations map for clients to store small amounts of arbitrary data. Do not put PII or other sensitive information here. See https://google.aip.dev/128#annotations.
  /// [grantedValue] (Output)
  /// [preferredValue] The preferred value. Must be greater than or equal to -1. If set to -1, it means the value is "unlimited".
  /// [requestOrigin] (Output)
  /// [stateDetail] (Output)
  /// [traceId] (Output)
  SQuotaPreferenceQuotaConfig({
    this.annotations,
    this.grantedValue,
    required this.preferredValue,
    this.requestOrigin,
    this.stateDetail,
    this.traceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'grantedValue': ?grantedValue,
      'preferredValue': preferredValue,
      'requestOrigin': ?requestOrigin,
      'stateDetail': ?stateDetail,
      'traceId': ?traceId,
    };
  }

  factory SQuotaPreferenceQuotaConfig.fromMap(Map<String, dynamic> map) {
    return SQuotaPreferenceQuotaConfig(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      grantedValue: (() {
        final guardedValue = map['grantedValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preferredValue: pulumi.Input.fromValue(map['preferredValue'] as String),
      requestOrigin: (() {
        final guardedValue = map['requestOrigin'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stateDetail: (() {
        final guardedValue = map['stateDetail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      traceId: (() {
        final guardedValue = map['traceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
