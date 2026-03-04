// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceNetworkSettingsNetworkSettings {
  /// The ingress settings for version or service.
  /// Default value is `INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED`.
  /// Possible values are: `INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED`, `INGRESS_TRAFFIC_ALLOWED_ALL`, `INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY`, `INGRESS_TRAFFIC_ALLOWED_INTERNAL_AND_LB`.
  final pulumi.Input<String>? ingressTrafficAllowed;

  /// Creates a new [ServiceNetworkSettingsNetworkSettings].
  /// [ingressTrafficAllowed] The ingress settings for version or service.
  ServiceNetworkSettingsNetworkSettings({this.ingressTrafficAllowed});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ingressTrafficAllowed': ?ingressTrafficAllowed};
  }

  factory ServiceNetworkSettingsNetworkSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceNetworkSettingsNetworkSettings(
      ingressTrafficAllowed: (() {
        final guardedValue = map['ingressTrafficAllowed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
