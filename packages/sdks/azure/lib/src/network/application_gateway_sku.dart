// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewaySku {
  /// The Capacity of the SKU to use for this Application Gateway. When using a V1 SKU this value must be between `1` and `32`, and `1` to `125` for a V2 SKU. When using a `Basic` SKU this property must be between `1` and `2`. This property is optional if `autoscale_configuration` is set.
  final pulumi.Input<int>? capacity;
  /// The Name of the SKU to use for this Application Gateway. Possible values are `Basic`, `Standard_Small`, `Standard_Medium`, `Standard_Large`, `Standard_v2`, `WAF_Large`, `WAF_Medium` and `WAF_v2`.
  ///
  /// &gt; **Note:** `Standard_Small`, `Standard_Medium`, `Standard_Large`, `WAF_Medium`, and `WAF_Large` values are deprecated. `name` can no longer be created with or updated to these values. Refer to &lt;https://aka.ms/V1retirement&gt;.
  final pulumi.Input<String> name;
  /// The Tier of the SKU to use for this Application Gateway. Possible values are `Basic`, `Standard`, `Standard_v2`, `WAF`, and `WAF_v2`.
  ///
  /// &gt; **Note:** `Standard` and `WAF` values are deprecated. `tier` can no longer be created with or updated to these values. Refer to &lt;https://aka.ms/V1retirement&gt;.
  final pulumi.Input<String> tier;

  /// Creates a new [ApplicationGatewaySku].
  /// [capacity] The Capacity of the SKU to use for this Application Gateway. When using a V1 SKU this value must be between `1` and `32`, and `1` to `125` for a V2 SKU. When using a `Basic` SKU this property must be between `1` and `2`. This property is optional if `autoscale_configuration` is set.
  /// [name] The Name of the SKU to use for this Application Gateway. Possible values are `Basic`, `Standard_Small`, `Standard_Medium`, `Standard_Large`, `Standard_v2`, `WAF_Large`, `WAF_Medium` and `WAF_v2`.
  /// [tier] The Tier of the SKU to use for this Application Gateway. Possible values are `Basic`, `Standard`, `Standard_v2`, `WAF`, and `WAF_v2`.
  ApplicationGatewaySku({
    this.capacity,
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
      'tier': tier,
    };
  }

  factory ApplicationGatewaySku.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewaySku(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}

