// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_deployment_web_application_firewall_status.dart';

class GetDeploymentWebApplicationFirewall {
  /// Whether WAF is enabled/disabled for this NGINX Deployment.
  final bool activationStateEnabled;
  /// A `status` block as defined below.
  final List<GetDeploymentWebApplicationFirewallStatus> statuses;

  /// Creates a new [GetDeploymentWebApplicationFirewall].
  /// [activationStateEnabled] Whether WAF is enabled/disabled for this NGINX Deployment.
  /// [statuses] A `status` block as defined below.
  GetDeploymentWebApplicationFirewall({
    required this.activationStateEnabled,
    required this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationStateEnabled': activationStateEnabled,
      'statuses': pulumi.Input.encodeList<GetDeploymentWebApplicationFirewallStatus, Map<String, dynamic>>(statuses, (value) => value.toMap()),
    };
  }

  factory GetDeploymentWebApplicationFirewall.fromMap(Map<String, dynamic> map) {
    return GetDeploymentWebApplicationFirewall(
      activationStateEnabled: map['activationStateEnabled'] as bool,
      statuses: pulumi.Input.decodeList<GetDeploymentWebApplicationFirewallStatus>(map['statuses'], (value) => GetDeploymentWebApplicationFirewallStatus.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

