// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GlobalForwardingRuleServiceDirectoryRegistrations {
  /// Service Directory namespace to register the forwarding rule under.
  final pulumi.Input<String?>? namespace;
  /// [Optional] Service Directory region to register this global forwarding rule under.
  /// Default to "us-central1". Only used for PSC for Google APIs. All PSC for
  /// Google APIs Forwarding Rules on the same network should use the same Service
  /// Directory region.
  final pulumi.Input<String?>? serviceDirectoryRegion;

  /// Creates a new [GlobalForwardingRuleServiceDirectoryRegistrations].
  /// [namespace] Service Directory namespace to register the forwarding rule under.
  /// [serviceDirectoryRegion] [Optional] Service Directory region to register this global forwarding rule under.
  const GlobalForwardingRuleServiceDirectoryRegistrations({
    this.namespace,
    this.serviceDirectoryRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
      'serviceDirectoryRegion': ?serviceDirectoryRegion,
    };
  }

  factory GlobalForwardingRuleServiceDirectoryRegistrations.fromMap(Map<String, dynamic> map) {
    return GlobalForwardingRuleServiceDirectoryRegistrations(
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDirectoryRegion: (() { final guardedValue = map['serviceDirectoryRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
