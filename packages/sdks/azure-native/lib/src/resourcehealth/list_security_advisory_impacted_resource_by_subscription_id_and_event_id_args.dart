// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcehealth_list_security_advisory_impacted_resource_by_subscription_id_and_event_id_args_doc}
/// Arguments for listSecurityAdvisoryImpactedResourceBySubscriptionIdAndEventId.
/// {@endtemplate}
/// {@macro pulumi_resourcehealth_list_security_advisory_impacted_resource_by_subscription_id_and_event_id_args_doc}
class ListSecurityAdvisoryImpactedResourceBySubscriptionIdAndEventIdArgs {
  /// Event Id which uniquely identifies ServiceHealth event.
  final pulumi.Input<String> eventTrackingId;
  /// The filter to apply on the operation. For more information please see https://docs.microsoft.com/en-us/rest/api/apimanagement/apis?redirectedfrom=MSDN
  final pulumi.Input<String>? filter;

  /// Creates a new [ListSecurityAdvisoryImpactedResourceBySubscriptionIdAndEventIdArgs].
  /// [eventTrackingId] Event Id which uniquely identifies ServiceHealth event.
  /// [filter] The filter to apply on the operation. For more information please see https://docs.microsoft.com/en-us/rest/api/apimanagement/apis?redirectedfrom=MSDN
  ListSecurityAdvisoryImpactedResourceBySubscriptionIdAndEventIdArgs({
    required this.eventTrackingId,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTrackingId': eventTrackingId,
      'filter': ?filter,
    };
  }

  factory ListSecurityAdvisoryImpactedResourceBySubscriptionIdAndEventIdArgs.fromMap(Map<String, dynamic> map) {
    return ListSecurityAdvisoryImpactedResourceBySubscriptionIdAndEventIdArgs(
      eventTrackingId: pulumi.Input.fromValue(map['eventTrackingId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

