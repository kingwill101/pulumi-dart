// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the auto-registration of the Forwarding Rule to Service Directory. The region and project of the Service Directory resource generated from this registration will be the same as this Forwarding Rule.
class ForwardingRuleServiceDirectoryRegistrationResponseComputeBeta {
  /// Service Directory namespace to register the forwarding rule under.
  final pulumi.Input<String> namespace;
  /// Service Directory service to register the forwarding rule under.
  final pulumi.Input<String> service;
  /// [Optional] Service Directory region to register this global forwarding rule under. Default to "us-central1". Only used for PSC for Google APIs. All PSC for Google APIs Forwarding Rules on the same network should use the same Service Directory region.
  final pulumi.Input<String> serviceDirectoryRegion;

  /// Creates a new [ForwardingRuleServiceDirectoryRegistrationResponseComputeBeta].
  /// [namespace] Service Directory namespace to register the forwarding rule under.
  /// [service] Service Directory service to register the forwarding rule under.
  /// [serviceDirectoryRegion] [Optional] Service Directory region to register this global forwarding rule under. Default to "us-central1". Only used for PSC for Google APIs. All PSC for Google APIs Forwarding Rules on the same network should use the same Service Directory region.
  ForwardingRuleServiceDirectoryRegistrationResponseComputeBeta({
    required this.namespace,
    required this.service,
    required this.serviceDirectoryRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': namespace,
      'service': service,
      'serviceDirectoryRegion': serviceDirectoryRegion,
    };
  }

  factory ForwardingRuleServiceDirectoryRegistrationResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ForwardingRuleServiceDirectoryRegistrationResponseComputeBeta(
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
      serviceDirectoryRegion: pulumi.Input.fromValue(map['serviceDirectoryRegion'] as String),
    );
  }
}

