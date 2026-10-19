// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_error_detail.dart';

class PreventionContentPolicyError {
  /// (Output)
  /// A list of messages that carry the error details.
  final pulumi.Input<List<PreventionContentPolicyErrorDetail>?>? details;
  /// (Output)
  /// Additional information about the error.
  final pulumi.Input<String?>? extraInfo;
  /// (Output)
  /// The times the error occurred. List includes the oldest timestamp and the last 9 timestamps.
  final pulumi.Input<List<String>?>? timestamps;

  /// Creates a new [PreventionContentPolicyError].
  /// [details] (Output)
  /// [extraInfo] (Output)
  /// [timestamps] (Output)
  const PreventionContentPolicyError({
    this.details,
    this.extraInfo,
    this.timestamps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?pulumi.Input.mapOptionalInputValue<List<PreventionContentPolicyErrorDetail>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<PreventionContentPolicyErrorDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extraInfo': ?extraInfo,
      'timestamps': ?timestamps,
    };
  }

  factory PreventionContentPolicyError.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyError(
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionContentPolicyErrorDetail>(guardedValue, (value) => PreventionContentPolicyErrorDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      extraInfo: (() { final guardedValue = map['extraInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timestamps: (() { final guardedValue = map['timestamps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
