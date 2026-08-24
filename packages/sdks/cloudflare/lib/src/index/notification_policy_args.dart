// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_policy_filters.dart';
import 'notification_policy_mechanisms.dart';

/// {@template pulumi_index_notification_policy_notification_policy_args_doc}
/// The set of arguments for NotificationPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_notification_policy_notification_policy_args_doc}
class NotificationPolicyArgs {
  /// The account id
  final pulumi.Input<String> accountId;
  /// Optional specification of how often to re-alert from the same incident, not support on all alert types.
  final pulumi.Input<String?>? alertInterval;
  /// Refers to which event will trigger a Notification dispatch. You can use the endpoint to get available alert types which then will give you a list of possible values.
  /// Available values: "abuse*report*alert", "access*custom*certificate*expiration*type", "advanced*ddos*attack*l4*alert", "advanced*ddos*attack*l7*alert", "advanced*http*alert*error", "bgp*hijack*notification", "billing*usage*alert", "block*notification*block*removed", "block*notification*new*block", "block*notification*review*rejected", "bot*traffic*basic*alert", "brand*protection*alert", "brand*protection*digest", "clickhouse*alert*fw*anomaly", "clickhouse*alert*fw*ent*anomaly", "cloudforce*one*request*notification", "cni*maintenance*notification", "custom*analytics", "custom*bot*detection*alert", "custom*ssl*certificate*event*type", "dedicated*ssl*certificate*event*type", "device*connectivity*anomaly*alert", "dos*attack*l4", "dos*attack*l7", "expiring*service*token*alert", "failing*logpush*job*disabled*alert", "fbm*auto*advertisement", "fbm*dosd*attack", "fbm*volumetric*attack", "health*check*status*notification", "hostname*aop*custom*certificate*expiration*type", "http*alert*edge*error", "http*alert*origin*error", "image*notification", "image*resizing*notification", "incident*alert", "load*balancing*health*alert", "load*balancing*pool*enablement*alert", "logo*match*alert", "magic*tunnel*health*check*event", "magic*wan*tunnel*health", "maintenance*event*notification", "mtls*certificate*store*certificate*expiration*type", "pages*event*alert", "radar*notification", "real*origin*monitoring", "scriptmonitor*alert*new*code*change*detections", "scriptmonitor*alert*new*hosts", "scriptmonitor*alert*new*malicious*hosts", "scriptmonitor*alert*new*malicious*scripts", "scriptmonitor*alert*new*malicious*url", "scriptmonitor*alert*new*max*length*resource*url", "scriptmonitor*alert*new*resources", "secondary*dns*all*primaries*failing", "secondary*dns*primaries*failing", "secondary*dns*warning", "secondary*dns*zone*successfully*updated", "secondary*dns*zone*validation*warning", "security*insights*alert", "sentinel*alert", "stream*live*notifications", "synthetic*test*latency*alert", "synthetic*test*low*availability*alert", "traffic*anomalies*alert", "tunnel*health*event", "tunnel*update*event", "universal*ssl*event*type", "web*analytics*metrics*update", "zone*aop*custom*certificate*expiration*type".
  final pulumi.Input<String> alertType;
  /// Optional description for the Notification policy.
  final pulumi.Input<String?>? description;
  /// Whether or not the Notification policy is enabled.
  final pulumi.Input<bool?>? enabled;
  /// Optional filters that allow you to be alerted only on a subset of events for that alert type based on some criteria. This is only available for select alert types. See alert type documentation for more details.
  final pulumi.Input<NotificationPolicyFilters?>? filters;
  /// List of IDs that will be used when dispatching a notification. IDs for email type will be the email address.
  final pulumi.Input<NotificationPolicyMechanisms> mechanisms;
  /// Name of the policy.
  final pulumi.Input<String> name;

  /// Creates a new [NotificationPolicyArgs].
  /// [accountId] The account id
  /// [alertInterval] Optional specification of how often to re-alert from the same incident, not support on all alert types.
  /// [alertType] Refers to which event will trigger a Notification dispatch. You can use the endpoint to get available alert types which then will give you a list of possible values.
  /// [description] Optional description for the Notification policy.
  /// [enabled] Whether or not the Notification policy is enabled.
  /// [filters] Optional filters that allow you to be alerted only on a subset of events for that alert type based on some criteria. This is only available for select alert types. See alert type documentation for more details.
  /// [mechanisms] List of IDs that will be used when dispatching a notification. IDs for email type will be the email address.
  /// [name] Name of the policy.
  const NotificationPolicyArgs({
    required this.accountId,
    this.alertInterval,
    required this.alertType,
    this.description,
    this.enabled,
    this.filters,
    required this.mechanisms,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'alertInterval': ?alertInterval,
      'alertType': alertType,
      'description': ?description,
      'enabled': ?enabled,
      'filters': ?pulumi.Input.mapOptionalInputValue<NotificationPolicyFilters, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'mechanisms': pulumi.Input.mapInputValue<NotificationPolicyMechanisms, Map<String, dynamic>>(mechanisms, (value) => value.toMap()),
      'name': name,
    };
  }

  factory NotificationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return NotificationPolicyArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      alertInterval: (() { final guardedValue = map['alertInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alertType: pulumi.Input.fromValue(map['alertType'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotificationPolicyFilters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mechanisms: pulumi.Input.fromValue(NotificationPolicyMechanisms.fromMap((map['mechanisms']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
