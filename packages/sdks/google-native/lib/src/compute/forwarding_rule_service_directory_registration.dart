// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the auto-registration of the Forwarding Rule to Service Directory. The region and project of the Service Directory resource generated from this registration will be the same as this Forwarding Rule.
class ForwardingRuleServiceDirectoryRegistration {
  /// Service Directory namespace to register the forwarding rule under.
  final pulumi.Input<String>? namespace;
  /// Service Directory service to register the forwarding rule under.
  final pulumi.Input<String>? service;
  /// [Optional] Service Directory region to register this global forwarding rule under. Default to "us-central1". Only used for PSC for Google APIs. All PSC for Google APIs Forwarding Rules on the same network should use the same Service Directory region.
  final pulumi.Input<String>? serviceDirectoryRegion;

  /// Creates a new [ForwardingRuleServiceDirectoryRegistration].
  /// [namespace] Service Directory namespace to register the forwarding rule under.
  /// [service] Service Directory service to register the forwarding rule under.
  /// [serviceDirectoryRegion] [Optional] Service Directory region to register this global forwarding rule under. Default to "us-central1". Only used for PSC for Google APIs. All PSC for Google APIs Forwarding Rules on the same network should use the same Service Directory region.
  const ForwardingRuleServiceDirectoryRegistration({
    this.namespace,
    this.service,
    this.serviceDirectoryRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
      'service': ?service,
      'serviceDirectoryRegion': ?serviceDirectoryRegion,
    };
  }

  factory ForwardingRuleServiceDirectoryRegistration.fromMap(Map<String, dynamic> map) {
    return ForwardingRuleServiceDirectoryRegistration(
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDirectoryRegion: (() { final guardedValue = map['serviceDirectoryRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

