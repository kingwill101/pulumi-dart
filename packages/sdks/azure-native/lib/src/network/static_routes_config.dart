// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for static routes on this HubVnetConnectionConfiguration for static routes on this HubVnetConnection.
class StaticRoutesConfig {
  /// Parameter determining whether NVA in spoke vnet is bypassed for traffic with destination in spoke.
  final String? vnetLocalRouteOverrideCriteria;

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
      vnetLocalRouteOverrideCriteria: map['vnetLocalRouteOverrideCriteria'] == null ? null : map['vnetLocalRouteOverrideCriteria'] as String,
    );
  }
}

