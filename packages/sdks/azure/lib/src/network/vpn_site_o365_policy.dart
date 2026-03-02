// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_site_o365_policy_traffic_category.dart';

class VpnSiteO365Policy {
  /// A `traffic_category` block as defined above.
  final pulumi.Input<VpnSiteO365PolicyTrafficCategory>? trafficCategory;

  /// Creates a new [VpnSiteO365Policy].
  /// [trafficCategory] A `traffic_category` block as defined above.
  VpnSiteO365Policy({
    this.trafficCategory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trafficCategory': ?pulumi.Input.mapOptionalInputValue<VpnSiteO365PolicyTrafficCategory, Map<String, dynamic>>(trafficCategory, (value) => value.toMap()),
    };
  }

  factory VpnSiteO365Policy.fromMap(Map<String, dynamic> map) {
    return VpnSiteO365Policy(
      trafficCategory: map['trafficCategory'] == null ? null : (VpnSiteO365PolicyTrafficCategory.fromMap((map['trafficCategory'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

