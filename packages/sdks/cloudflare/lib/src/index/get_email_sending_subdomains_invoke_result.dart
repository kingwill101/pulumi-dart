// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_sending_subdomains_result.dart';

/// Result data returned by getEmailSendingSubdomains.
class GetEmailSendingSubdomainsInvokeResult {
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetEmailSendingSubdomainsResult>? results;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetEmailSendingSubdomainsInvokeResult].
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [zoneId] Identifier.
  const GetEmailSendingSubdomainsInvokeResult({
    this.maxItems,
    this.results,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEmailSendingSubdomainsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetEmailSendingSubdomainsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetEmailSendingSubdomainsInvokeResult(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEmailSendingSubdomainsResult>(guardedValue, (value) => GetEmailSendingSubdomainsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
