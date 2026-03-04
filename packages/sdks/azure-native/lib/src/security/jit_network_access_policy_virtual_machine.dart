// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jit_network_access_port_rule.dart';

class JitNetworkAccessPolicyVirtualMachine {
  /// Resource ID of the virtual machine that is linked to this policy
  final pulumi.Input<String> id;

  /// Port configurations for the virtual machine
  final pulumi.Input<List<JitNetworkAccessPortRule>> ports;

  /// Public IP address of the Azure Firewall that is linked to this policy, if applicable
  final pulumi.Input<String>? publicIpAddress;

  /// Creates a new [JitNetworkAccessPolicyVirtualMachine].
  /// [id] Resource ID of the virtual machine that is linked to this policy
  /// [ports] Port configurations for the virtual machine
  /// [publicIpAddress] Public IP address of the Azure Firewall that is linked to this policy, if applicable
  JitNetworkAccessPolicyVirtualMachine({
    required this.id,
    required this.ports,
    this.publicIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ports':
          pulumi.Input.mapInputValue<
            List<JitNetworkAccessPortRule>,
            List<Map<String, dynamic>>
          >(
            ports,
            (value) =>
                pulumi.Input.encodeList<
                  JitNetworkAccessPortRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'publicIpAddress': ?publicIpAddress,
    };
  }

  factory JitNetworkAccessPolicyVirtualMachine.fromMap(
    Map<String, dynamic> map,
  ) {
    return JitNetworkAccessPolicyVirtualMachine(
      id: pulumi.Input.fromValue(map['id'] as String),
      ports: pulumi.Input.fromValue(
        pulumi.Input.decodeList<JitNetworkAccessPortRule>(
          map['ports']!,
          (value) => JitNetworkAccessPortRule.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      publicIpAddress: (() {
        final guardedValue = map['publicIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
