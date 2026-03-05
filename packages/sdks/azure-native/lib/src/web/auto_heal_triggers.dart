// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'requests_based_trigger.dart';
import 'slow_requests_based_trigger.dart';
import 'status_codes_based_trigger.dart';
import 'status_codes_range_based_trigger.dart';

/// Triggers for auto-heal.
class AutoHealTriggers {
  /// A rule based on private bytes.
  final pulumi.Input<int>? privateBytesInKB;
  /// A rule based on total requests.
  final pulumi.Input<RequestsBasedTrigger>? requests;
  /// A rule based on request execution time.
  final pulumi.Input<SlowRequestsBasedTrigger>? slowRequests;
  /// A rule based on multiple Slow Requests Rule with path
  final pulumi.Input<List<SlowRequestsBasedTrigger>>? slowRequestsWithPath;
  /// A rule based on status codes.
  final pulumi.Input<List<StatusCodesBasedTrigger>>? statusCodes;
  /// A rule based on status codes ranges.
  final pulumi.Input<List<StatusCodesRangeBasedTrigger>>? statusCodesRange;

  /// Creates a new [AutoHealTriggers].
  /// [privateBytesInKB] A rule based on private bytes.
  /// [requests] A rule based on total requests.
  /// [slowRequests] A rule based on request execution time.
  /// [slowRequestsWithPath] A rule based on multiple Slow Requests Rule with path
  /// [statusCodes] A rule based on status codes.
  /// [statusCodesRange] A rule based on status codes ranges.
  AutoHealTriggers({
    this.privateBytesInKB,
    this.requests,
    this.slowRequests,
    this.slowRequestsWithPath,
    this.statusCodes,
    this.statusCodesRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateBytesInKB': ?privateBytesInKB,
      'requests': ?pulumi.Input.mapOptionalInputValue<RequestsBasedTrigger, Map<String, dynamic>>(requests, (value) => value.toMap()),
      'slowRequests': ?pulumi.Input.mapOptionalInputValue<SlowRequestsBasedTrigger, Map<String, dynamic>>(slowRequests, (value) => value.toMap()),
      'slowRequestsWithPath': ?pulumi.Input.mapOptionalInputValue<List<SlowRequestsBasedTrigger>, List<Map<String, dynamic>>>(slowRequestsWithPath, (value) => pulumi.Input.encodeList<SlowRequestsBasedTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statusCodes': ?pulumi.Input.mapOptionalInputValue<List<StatusCodesBasedTrigger>, List<Map<String, dynamic>>>(statusCodes, (value) => pulumi.Input.encodeList<StatusCodesBasedTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statusCodesRange': ?pulumi.Input.mapOptionalInputValue<List<StatusCodesRangeBasedTrigger>, List<Map<String, dynamic>>>(statusCodesRange, (value) => pulumi.Input.encodeList<StatusCodesRangeBasedTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AutoHealTriggers.fromMap(Map<String, dynamic> map) {
    return AutoHealTriggers(
      privateBytesInKB: (() { final guardedValue = map['privateBytesInKB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RequestsBasedTrigger.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      slowRequests: (() { final guardedValue = map['slowRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlowRequestsBasedTrigger.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      slowRequestsWithPath: (() { final guardedValue = map['slowRequestsWithPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SlowRequestsBasedTrigger>(guardedValue, (value) => SlowRequestsBasedTrigger.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statusCodes: (() { final guardedValue = map['statusCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StatusCodesBasedTrigger>(guardedValue, (value) => StatusCodesBasedTrigger.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statusCodesRange: (() { final guardedValue = map['statusCodesRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StatusCodesRangeBasedTrigger>(guardedValue, (value) => StatusCodesRangeBasedTrigger.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

