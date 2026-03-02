// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'requests_based_trigger_response.dart';
import 'slow_requests_based_trigger_response.dart';
import 'status_codes_based_trigger_response.dart';
import 'status_codes_range_based_trigger_response.dart';

/// Triggers for auto-heal.
class AutoHealTriggersResponse {
  /// A rule based on private bytes.
  final pulumi.Input<int>? privateBytesInKB;
  /// A rule based on total requests.
  final pulumi.Input<RequestsBasedTriggerResponse>? requests;
  /// A rule based on request execution time.
  final pulumi.Input<SlowRequestsBasedTriggerResponse>? slowRequests;
  /// A rule based on multiple Slow Requests Rule with path
  final pulumi.Input<List<SlowRequestsBasedTriggerResponse>>? slowRequestsWithPath;
  /// A rule based on status codes.
  final pulumi.Input<List<StatusCodesBasedTriggerResponse>>? statusCodes;
  /// A rule based on status codes ranges.
  final pulumi.Input<List<StatusCodesRangeBasedTriggerResponse>>? statusCodesRange;

  /// Creates a new [AutoHealTriggersResponse].
  /// [privateBytesInKB] A rule based on private bytes.
  /// [requests] A rule based on total requests.
  /// [slowRequests] A rule based on request execution time.
  /// [slowRequestsWithPath] A rule based on multiple Slow Requests Rule with path
  /// [statusCodes] A rule based on status codes.
  /// [statusCodesRange] A rule based on status codes ranges.
  AutoHealTriggersResponse({
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
      'requests': ?pulumi.Input.mapOptionalInputValue<RequestsBasedTriggerResponse, Map<String, dynamic>>(requests, (value) => value.toMap()),
      'slowRequests': ?pulumi.Input.mapOptionalInputValue<SlowRequestsBasedTriggerResponse, Map<String, dynamic>>(slowRequests, (value) => value.toMap()),
      'slowRequestsWithPath': ?pulumi.Input.mapOptionalInputValue<List<SlowRequestsBasedTriggerResponse>, List<Map<String, dynamic>>>(slowRequestsWithPath, (value) => pulumi.Input.encodeList<SlowRequestsBasedTriggerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statusCodes': ?pulumi.Input.mapOptionalInputValue<List<StatusCodesBasedTriggerResponse>, List<Map<String, dynamic>>>(statusCodes, (value) => pulumi.Input.encodeList<StatusCodesBasedTriggerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statusCodesRange': ?pulumi.Input.mapOptionalInputValue<List<StatusCodesRangeBasedTriggerResponse>, List<Map<String, dynamic>>>(statusCodesRange, (value) => pulumi.Input.encodeList<StatusCodesRangeBasedTriggerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AutoHealTriggersResponse.fromMap(Map<String, dynamic> map) {
    return AutoHealTriggersResponse(
      privateBytesInKB: map['privateBytesInKB'] == null ? null : (map['privateBytesInKB']! as int).input(),
      requests: map['requests'] == null ? null : (RequestsBasedTriggerResponse.fromMap((map['requests']! as Map).cast<String, dynamic>())).input(),
      slowRequests: map['slowRequests'] == null ? null : (SlowRequestsBasedTriggerResponse.fromMap((map['slowRequests']! as Map).cast<String, dynamic>())).input(),
      slowRequestsWithPath: map['slowRequestsWithPath'] == null ? null : (pulumi.Input.decodeList<SlowRequestsBasedTriggerResponse>(map['slowRequestsWithPath']!, (value) => SlowRequestsBasedTriggerResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statusCodes: map['statusCodes'] == null ? null : (pulumi.Input.decodeList<StatusCodesBasedTriggerResponse>(map['statusCodes']!, (value) => StatusCodesBasedTriggerResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statusCodesRange: map['statusCodesRange'] == null ? null : (pulumi.Input.decodeList<StatusCodesRangeBasedTriggerResponse>(map['statusCodesRange']!, (value) => StatusCodesRangeBasedTriggerResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

