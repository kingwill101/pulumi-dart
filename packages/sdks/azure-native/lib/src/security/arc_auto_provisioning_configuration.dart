// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for servers Arc auto provisioning for a given environment
class ArcAutoProvisioningConfiguration {
  /// Optional Arc private link scope resource id to link the Arc agent
  final pulumi.Input<String>? privateLinkScope;
  /// Optional HTTP proxy endpoint to use for the Arc agent
  final pulumi.Input<String>? proxy;

  /// Creates a new [ArcAutoProvisioningConfiguration].
  /// [privateLinkScope] Optional Arc private link scope resource id to link the Arc agent
  /// [proxy] Optional HTTP proxy endpoint to use for the Arc agent
  ArcAutoProvisioningConfiguration({
    this.privateLinkScope,
    this.proxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLinkScope': ?privateLinkScope,
      'proxy': ?proxy,
    };
  }

  factory ArcAutoProvisioningConfiguration.fromMap(Map<String, dynamic> map) {
    return ArcAutoProvisioningConfiguration(
      privateLinkScope: map['privateLinkScope'] == null ? null : (map['privateLinkScope']! as String).input(),
      proxy: map['proxy'] == null ? null : (map['proxy']! as String).input(),
    );
  }
}

