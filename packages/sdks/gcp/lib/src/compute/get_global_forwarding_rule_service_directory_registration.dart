// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGlobalForwardingRuleServiceDirectoryRegistration {
  /// Service Directory namespace to register the forwarding rule under.
  final pulumi.Input<String> namespace;

  /// [Optional] Service Directory region to register this global forwarding rule under.
  /// Default to "us-central1". Only used for PSC for Google APIs. All PSC for
  /// Google APIs Forwarding Rules on the same network should use the same Service
  /// Directory region.
  final pulumi.Input<String> serviceDirectoryRegion;

  /// Creates a new [GetGlobalForwardingRuleServiceDirectoryRegistration].
  /// [namespace] Service Directory namespace to register the forwarding rule under.
  /// [serviceDirectoryRegion] [Optional] Service Directory region to register this global forwarding rule under.
  GetGlobalForwardingRuleServiceDirectoryRegistration({
    required this.namespace,
    required this.serviceDirectoryRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': namespace,
      'serviceDirectoryRegion': serviceDirectoryRegion,
    };
  }

  factory GetGlobalForwardingRuleServiceDirectoryRegistration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGlobalForwardingRuleServiceDirectoryRegistration(
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      serviceDirectoryRegion: pulumi.Input.fromValue(
        map['serviceDirectoryRegion'] as String,
      ),
    );
  }
}
