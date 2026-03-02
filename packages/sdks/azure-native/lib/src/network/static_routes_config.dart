// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for static routes on this HubVnetConnectionConfiguration for static routes on this HubVnetConnection.
class StaticRoutesConfig {
  /// Parameter determining whether NVA in spoke vnet is bypassed for traffic with destination in spoke.
  final pulumi.Input<String>? vnetLocalRouteOverrideCriteria;

  /// Creates a new [StaticRoutesConfig].
  /// [vnetLocalRouteOverrideCriteria] Parameter determining whether NVA in spoke vnet is bypassed for traffic with destination in spoke.
  StaticRoutesConfig({
    this.vnetLocalRouteOverrideCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vnetLocalRouteOverrideCriteria': ?vnetLocalRouteOverrideCriteria,
    };
  }

  factory StaticRoutesConfig.fromMap(Map<String, dynamic> map) {
    return StaticRoutesConfig(
      vnetLocalRouteOverrideCriteria: map['vnetLocalRouteOverrideCriteria'] == null ? null : (map['vnetLocalRouteOverrideCriteria'] as String).input(),
    );
  }
}

