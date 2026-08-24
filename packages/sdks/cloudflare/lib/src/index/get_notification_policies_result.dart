// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_notification_policies_result_filters.dart';
import 'get_notification_policies_result_mechanisms.dart';

class GetNotificationPoliciesResult {
  /// Optional specification of how often to re-alert from the same incident, not support on all alert types.
  final pulumi.Input<String> alertInterval;
  /// Refers to which event will trigger a Notification dispatch. You can use the endpoint to get available alert types which then will give you a list of possible values.
  /// Available values: "abuse*report*alert", "access*custom*certificate*expiration*type", "advanced*ddos*attack*l4*alert", "advanced*ddos*attack*l7*alert", "advanced*http*alert*error", "bgp*hijack*notification", "billing*usage*alert", "block*notification*block*removed", "block*notification*new*block", "block*notification*review*rejected", "bot*traffic*basic*alert", "brand*protection*alert", "brand*protection*digest", "clickhouse*alert*fw*anomaly", "clickhouse*alert*fw*ent*anomaly", "cloudforce*one*request*notification", "cni*maintenance*notification", "custom*analytics", "custom*bot*detection*alert", "custom*ssl*certificate*event*type", "dedicated*ssl*certificate*event*type", "device*connectivity*anomaly*alert", "dos*attack*l4", "dos*attack*l7", "expiring*service*token*alert", "failing*logpush*job*disabled*alert", "fbm*auto*advertisement", "fbm*dosd*attack", "fbm*volumetric*attack", "health*check*status*notification", "hostname*aop*custom*certificate*expiration*type", "http*alert*edge*error", "http*alert*origin*error", "image*notification", "image*resizing*notification", "incident*alert", "load*balancing*health*alert", "load*balancing*pool*enablement*alert", "logo*match*alert", "magic*tunnel*health*check*event", "magic*wan*tunnel*health", "maintenance*event*notification", "mtls*certificate*store*certificate*expiration*type", "pages*event*alert", "radar*notification", "real*origin*monitoring", "scriptmonitor*alert*new*code*change*detections", "scriptmonitor*alert*new*hosts", "scriptmonitor*alert*new*malicious*hosts", "scriptmonitor*alert*new*malicious*scripts", "scriptmonitor*alert*new*malicious*url", "scriptmonitor*alert*new*max*length*resource*url", "scriptmonitor*alert*new*resources", "secondary*dns*all*primaries*failing", "secondary*dns*primaries*failing", "secondary*dns*warning", "secondary*dns*zone*successfully*updated", "secondary*dns*zone*validation*warning", "security*insights*alert", "sentinel*alert", "stream*live*notifications", "synthetic*test*latency*alert", "synthetic*test*low*availability*alert", "traffic*anomalies*alert", "tunnel*health*event", "tunnel*update*event", "universal*ssl*event*type", "web*analytics*metrics*update", "zone*aop*custom*certificate*expiration*type".
  final pulumi.Input<String> alertType;
  final pulumi.Input<String> created;
  /// Optional description for the Notification policy.
  final pulumi.Input<String> description;
  /// Whether or not the Notification policy is enabled.
  final pulumi.Input<bool> enabled;
  /// Optional filters that allow you to be alerted only on a subset of events for that alert type based on some criteria. This is only available for select alert types. See alert type documentation for more details.
  final pulumi.Input<GetNotificationPoliciesResultFilters> filters;
  /// The unique identifier of a notification policy
  final pulumi.Input<String> id;
  /// List of IDs that will be used when dispatching a notification. IDs for email type will be the email address.
  final pulumi.Input<GetNotificationPoliciesResultMechanisms> mechanisms;
  final pulumi.Input<String> modified;
  /// Name of the policy.
  final pulumi.Input<String> name;

  /// Creates a new [GetNotificationPoliciesResult].
  /// [alertInterval] Optional specification of how often to re-alert from the same incident, not support on all alert types.
  /// [alertType] Refers to which event will trigger a Notification dispatch. You can use the endpoint to get available alert types which then will give you a list of possible values.
  /// [created] Required.
  /// [description] Optional description for the Notification policy.
  /// [enabled] Whether or not the Notification policy is enabled.
  /// [filters] Optional filters that allow you to be alerted only on a subset of events for that alert type based on some criteria. This is only available for select alert types. See alert type documentation for more details.
  /// [id] The unique identifier of a notification policy
  /// [mechanisms] List of IDs that will be used when dispatching a notification. IDs for email type will be the email address.
  /// [modified] Required.
  /// [name] Name of the policy.
  const GetNotificationPoliciesResult({
    required this.alertInterval,
    required this.alertType,
    required this.created,
    required this.description,
    required this.enabled,
    required this.filters,
    required this.id,
    required this.mechanisms,
    required this.modified,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertInterval': alertInterval,
      'alertType': alertType,
      'created': created,
      'description': description,
      'enabled': enabled,
      'filters': pulumi.Input.mapInputValue<GetNotificationPoliciesResultFilters, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'id': id,
      'mechanisms': pulumi.Input.mapInputValue<GetNotificationPoliciesResultMechanisms, Map<String, dynamic>>(mechanisms, (value) => value.toMap()),
      'modified': modified,
      'name': name,
    };
  }

  factory GetNotificationPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationPoliciesResult(
      alertInterval: pulumi.Input.fromValue(map['alertInterval'] as String),
      alertType: pulumi.Input.fromValue(map['alertType'] as String),
      created: pulumi.Input.fromValue(map['created'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      filters: pulumi.Input.fromValue(GetNotificationPoliciesResultFilters.fromMap((map['filters']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      mechanisms: pulumi.Input.fromValue(GetNotificationPoliciesResultMechanisms.fromMap((map['mechanisms']! as Map).cast<String, dynamic>())),
      modified: pulumi.Input.fromValue(map['modified'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
