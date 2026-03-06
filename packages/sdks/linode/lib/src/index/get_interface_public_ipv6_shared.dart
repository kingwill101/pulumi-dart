// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInterfacePublicIpv6Shared {
  /// The IPv6 range.
  final pulumi.Input<String> range;
  /// The route target for this IPv6 range.
  final pulumi.Input<String> routeTarget;

  /// Creates a new [GetInterfacePublicIpv6Shared].
  /// [range] The IPv6 range.
  /// [routeTarget] The route target for this IPv6 range.
  const GetInterfacePublicIpv6Shared({
    required this.range,
    required this.routeTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': range,
      'routeTarget': routeTarget,
    };
  }

  factory GetInterfacePublicIpv6Shared.fromMap(Map<String, dynamic> map) {
    return GetInterfacePublicIpv6Shared(
      range: pulumi.Input.fromValue(map['range'] as String),
      routeTarget: pulumi.Input.fromValue(map['routeTarget'] as String),
    );
  }
}

