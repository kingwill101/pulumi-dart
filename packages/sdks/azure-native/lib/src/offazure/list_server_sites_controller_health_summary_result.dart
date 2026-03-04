// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_health_summary_response.dart';

/// Result data returned by listServerSitesControllerHealthSummary.
class ListServerSitesControllerHealthSummaryResult {
  /// Gets the value of next link.
  final String nextLink;

  /// Gets the list of SiteHealthSummary.
  final List<SiteHealthSummaryResponse> value;

  /// Creates a new [ListServerSitesControllerHealthSummaryResult].
  /// [nextLink] Gets the value of next link.
  /// [value] Gets the list of SiteHealthSummary.
  ListServerSitesControllerHealthSummaryResult({
    required this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value':
          pulumi.Input.encodeList<
            SiteHealthSummaryResponse,
            Map<String, dynamic>
          >(value, (value) => value.toMap()),
    };
  }

  factory ListServerSitesControllerHealthSummaryResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListServerSitesControllerHealthSummaryResult(
      nextLink: map['nextLink'] as String,
      value: pulumi.Input.decodeList<SiteHealthSummaryResponse>(
        map['value']!,
        (value) => SiteHealthSummaryResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
