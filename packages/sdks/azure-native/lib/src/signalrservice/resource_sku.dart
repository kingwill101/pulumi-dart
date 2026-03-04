// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The billing information of the resource.
class ResourceSku {
  /// Optional, integer. The unit count of the resource.
  /// 1 for Free_F1/Standard_S1/Premium_P1, 100 for Premium_P2 by default.
  ///
  /// If present, following values are allowed:
  /// Free_F1: 1;
  /// Standard_S1: 1,2,3,4,5,6,7,8,9,10,20,30,40,50,60,70,80,90,100;
  /// Premium_P1:  1,2,3,4,5,6,7,8,9,10,20,30,40,50,60,70,80,90,100;
  /// Premium_P2:  100,200,300,400,500,600,700,800,900,1000;
  final pulumi.Input<int>? capacity;

  /// The name of the SKU. Required.
  ///
  /// Allowed values: Standard_S1, Free_F1, Premium_P1, Premium_P2
  final pulumi.Input<String> name;

  /// Optional tier of this particular SKU. 'Standard' or 'Free'.
  ///
  /// `Basic` is deprecated, use `Standard` instead.
  final pulumi.Input<String>? tier;

  /// Creates a new [ResourceSku].
  /// [capacity] Optional, integer. The unit count of the resource.
  /// [name] The name of the SKU. Required.
  /// [tier] Optional tier of this particular SKU. 'Standard' or 'Free'.
  ResourceSku({this.capacity, required this.name, this.tier});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
      'tier': ?tier,
    };
  }

  factory ResourceSku.fromMap(Map<String, dynamic> map) {
    return ResourceSku(
      capacity: (() {
        final guardedValue = map['capacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: (() {
        final guardedValue = map['tier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
