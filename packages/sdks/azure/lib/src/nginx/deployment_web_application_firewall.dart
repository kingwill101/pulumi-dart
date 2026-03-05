// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_web_application_firewall_status.dart';

class DeploymentWebApplicationFirewall {
  /// Whether WAF is enabled/disabled for this NGINX Deployment.
  final pulumi.Input<bool> activationStateEnabled;
  /// A `status` block as defined below.
  final pulumi.Input<List<DeploymentWebApplicationFirewallStatus>>? statuses;

  /// Creates a new [DeploymentWebApplicationFirewall].
  /// [activationStateEnabled] Whether WAF is enabled/disabled for this NGINX Deployment.
  /// [statuses] A `status` block as defined below.
  DeploymentWebApplicationFirewall({
    required this.activationStateEnabled,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationStateEnabled': activationStateEnabled,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<DeploymentWebApplicationFirewallStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<DeploymentWebApplicationFirewallStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeploymentWebApplicationFirewall.fromMap(Map<String, dynamic> map) {
    return DeploymentWebApplicationFirewall(
      activationStateEnabled: pulumi.Input.fromValue(map['activationStateEnabled'] as bool),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentWebApplicationFirewallStatus>(guardedValue, (value) => DeploymentWebApplicationFirewallStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

