// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendServiceDynamicForwardingIpPortSelection {
  /// A boolean flag enabling IP:PORT based dynamic forwarding.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetBackendServiceDynamicForwardingIpPortSelection].
  /// [enabled] A boolean flag enabling IP:PORT based dynamic forwarding.
  const GetBackendServiceDynamicForwardingIpPortSelection({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetBackendServiceDynamicForwardingIpPortSelection.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceDynamicForwardingIpPortSelection(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
