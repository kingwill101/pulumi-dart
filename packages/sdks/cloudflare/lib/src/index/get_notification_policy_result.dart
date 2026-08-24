// ignore_for_file: unused_element, unnecessary_cast

import 'get_notification_policy_filters.dart';
import 'get_notification_policy_mechanisms.dart';

/// Result data returned by getNotificationPolicy.
class GetNotificationPolicyResult {
  /// The account id
  final String? accountId;
  /// Optional specification of how often to re-alert from the same incident, not support on all alert types.
  final String? alertInterval;
  /// Refers to which event will trigger a Notification dispatch. You can use the endpoint to get available alert types which then will give you a list of possible values.
  /// Available values: "abuse*report*alert", "access*custom*certificate*expiration*type", "advanced*ddos*attack*l4*alert", "advanced*ddos*attack*l7*alert", "advanced*http*alert*error", "bgp*hijack*notification", "billing*usage*alert", "block*notification*block*removed", "block*notification*new*block", "block*notification*review*rejected", "bot*traffic*basic*alert", "brand*protection*alert", "brand*protection*digest", "clickhouse*alert*fw*anomaly", "clickhouse*alert*fw*ent*anomaly", "cloudforce*one*request*notification", "cni*maintenance*notification", "custom*analytics", "custom*bot*detection*alert", "custom*ssl*certificate*event*type", "dedicated*ssl*certificate*event*type", "device*connectivity*anomaly*alert", "dos*attack*l4", "dos*attack*l7", "expiring*service*token*alert", "failing*logpush*job*disabled*alert", "fbm*auto*advertisement", "fbm*dosd*attack", "fbm*volumetric*attack", "health*check*status*notification", "hostname*aop*custom*certificate*expiration*type", "http*alert*edge*error", "http*alert*origin*error", "image*notification", "image*resizing*notification", "incident*alert", "load*balancing*health*alert", "load*balancing*pool*enablement*alert", "logo*match*alert", "magic*tunnel*health*check*event", "magic*wan*tunnel*health", "maintenance*event*notification", "mtls*certificate*store*certificate*expiration*type", "pages*event*alert", "radar*notification", "real*origin*monitoring", "scriptmonitor*alert*new*code*change*detections", "scriptmonitor*alert*new*hosts", "scriptmonitor*alert*new*malicious*hosts", "scriptmonitor*alert*new*malicious*scripts", "scriptmonitor*alert*new*malicious*url", "scriptmonitor*alert*new*max*length*resource*url", "scriptmonitor*alert*new*resources", "secondary*dns*all*primaries*failing", "secondary*dns*primaries*failing", "secondary*dns*warning", "secondary*dns*zone*successfully*updated", "secondary*dns*zone*validation*warning", "security*insights*alert", "sentinel*alert", "stream*live*notifications", "synthetic*test*latency*alert", "synthetic*test*low*availability*alert", "traffic*anomalies*alert", "tunnel*health*event", "tunnel*update*event", "universal*ssl*event*type", "web*analytics*metrics*update", "zone*aop*custom*certificate*expiration*type".
  final String? alertType;
  final String? created;
  /// Optional description for the Notification policy.
  final String? description;
  /// Whether or not the Notification policy is enabled.
  final bool? enabled;
  /// Optional filters that allow you to be alerted only on a subset of events for that alert type based on some criteria. This is only available for select alert types. See alert type documentation for more details.
  final GetNotificationPolicyFilters? filters;
  /// The unique identifier of a notification policy
  final String? id;
  /// List of IDs that will be used when dispatching a notification. IDs for email type will be the email address.
  final GetNotificationPolicyMechanisms? mechanisms;
  final String? modified;
  /// Name of the policy.
  final String? name;
  /// The unique identifier of a notification policy
  final String? policyId;

  /// Creates a new [GetNotificationPolicyResult].
  /// [accountId] The account id
  /// [alertInterval] Optional specification of how often to re-alert from the same incident, not support on all alert types.
  /// [alertType] Refers to which event will trigger a Notification dispatch. You can use the endpoint to get available alert types which then will give you a list of possible values.
  /// [created] Optional.
  /// [description] Optional description for the Notification policy.
  /// [enabled] Whether or not the Notification policy is enabled.
  /// [filters] Optional filters that allow you to be alerted only on a subset of events for that alert type based on some criteria. This is only available for select alert types. See alert type documentation for more details.
  /// [id] The unique identifier of a notification policy
  /// [mechanisms] List of IDs that will be used when dispatching a notification. IDs for email type will be the email address.
  /// [modified] Optional.
  /// [name] Name of the policy.
  /// [policyId] The unique identifier of a notification policy
  const GetNotificationPolicyResult({
    this.accountId,
    this.alertInterval,
    this.alertType,
    this.created,
    this.description,
    this.enabled,
    this.filters,
    this.id,
    this.mechanisms,
    this.modified,
    this.name,
    this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'alertInterval': ?alertInterval,
      'alertType': ?alertType,
      'created': ?created,
      'description': ?description,
      'enabled': ?enabled,
      'filters': ?filters?.toMap(),
      'id': ?id,
      'mechanisms': ?mechanisms?.toMap(),
      'modified': ?modified,
      'name': ?name,
      'policyId': ?policyId,
    };
  }

  factory GetNotificationPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationPolicyResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      alertInterval: (() { final guardedValue = map['alertInterval']; if (guardedValue == null) return null; return guardedValue as String; })(),
      alertType: (() { final guardedValue = map['alertType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return GetNotificationPolicyFilters.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mechanisms: (() { final guardedValue = map['mechanisms']; if (guardedValue == null) return null; return GetNotificationPolicyMechanisms.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
