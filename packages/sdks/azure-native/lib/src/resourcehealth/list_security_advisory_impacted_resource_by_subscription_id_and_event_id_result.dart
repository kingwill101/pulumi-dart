// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_impacted_resource_response.dart';

/// Result data returned by listSecurityAdvisoryImpactedResourceBySubscriptionIdAndEventId.
class ListSecurityAdvisoryImpactedResourceBySubscriptionIdAndEventIdResult {
  /// The URI to fetch the next page of events. Call ListNext() with this URI to fetch the next page of impacted resource.
  final String? nextLink;

  /// The list of eventImpactedResources.
  final List<EventImpactedResourceResponse> value;

  /// Creates a new [ListSecurityAdvisoryImpactedResourceBySubscriptionIdAndEventIdResult].
  /// [nextLink] The URI to fetch the next page of events. Call ListNext() with this URI to fetch the next page of impacted resource.
  /// [value] The list of eventImpactedResources.
  ListSecurityAdvisoryImpactedResourceBySubscriptionIdAndEventIdResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value':
          pulumi.Input.encodeList<
            EventImpactedResourceResponse,
            Map<String, dynamic>
          >(value, (value) => value.toMap()),
    };
  }

  factory ListSecurityAdvisoryImpactedResourceBySubscriptionIdAndEventIdResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListSecurityAdvisoryImpactedResourceBySubscriptionIdAndEventIdResult(
      nextLink: (() {
        final guardedValue = map['nextLink'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      value: pulumi.Input.decodeList<EventImpactedResourceResponse>(
        map['value']!,
        (value) => EventImpactedResourceResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
