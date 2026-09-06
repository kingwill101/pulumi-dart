// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_health_summary_response.dart';

/// Result data returned by listSitesControllerHealthSummary.
class ListSitesControllerHealthSummaryResult {
  /// Gets the value of next link.
  final String? nextLink;
  /// Gets the list of SiteHealthSummary.
  final List<SiteHealthSummaryResponse>? value;

  /// Creates a new [ListSitesControllerHealthSummaryResult].
  /// [nextLink] Gets the value of next link.
  /// [value] Gets the list of SiteHealthSummary.
  const ListSitesControllerHealthSummaryResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<SiteHealthSummaryResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListSitesControllerHealthSummaryResult.fromMap(Map<String, dynamic> map) {
    return ListSitesControllerHealthSummaryResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SiteHealthSummaryResponse>(guardedValue, (value) => SiteHealthSummaryResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
