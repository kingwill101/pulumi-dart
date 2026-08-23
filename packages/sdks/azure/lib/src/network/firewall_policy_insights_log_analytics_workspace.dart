// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyInsightsLogAnalyticsWorkspace {
  /// The location of the Firewalls, that when matches this Log Analytics Workspace will be used to consume their logs.
  final pulumi.Input<String> firewallLocation;
  /// The ID of the Log Analytics Workspace that the Firewalls associated with this Firewall Policy will send their logs to when their locations match the `firewallLocation`.
  final pulumi.Input<String> id;

  /// Creates a new [FirewallPolicyInsightsLogAnalyticsWorkspace].
  /// [firewallLocation] The location of the Firewalls, that when matches this Log Analytics Workspace will be used to consume their logs.
  /// [id] The ID of the Log Analytics Workspace that the Firewalls associated with this Firewall Policy will send their logs to when their locations match the `firewallLocation`.
  const FirewallPolicyInsightsLogAnalyticsWorkspace({
    required this.firewallLocation,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallLocation': firewallLocation,
      'id': id,
    };
  }

  factory FirewallPolicyInsightsLogAnalyticsWorkspace.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyInsightsLogAnalyticsWorkspace(
      firewallLocation: pulumi.Input.fromValue(map['firewallLocation'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
