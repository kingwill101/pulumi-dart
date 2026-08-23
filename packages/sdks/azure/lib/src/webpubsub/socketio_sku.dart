// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SocketioSku {
  /// The number of units associated with this Web PubSub Service. Defaults to `1`. Possible values are `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `20`, `30`, `40`, `50`, `60`, `70`, `80`, `90`, `100`, `200`, `300`, `400`, `500`, `600`, `700`, `800`, `900` and `1000`.
  ///
  /// &gt; **Note:** The valid range depends on which `sku` is used. For `Free_F1` only `1` is supported, for `Standard_S1` and `Premium_P1` `1` through `100` are supported, and for `Premium_P2` the minimum capacity is `100`.
  final pulumi.Input<int>? capacity;
  /// The SKU to use for this Web PubSub Service. Possible values are `Free_F1`, `Standard_S1`, `Premium_P1`, and `Premium_P2`.
  final pulumi.Input<String> name;

  /// Creates a new [SocketioSku].
  /// [capacity] The number of units associated with this Web PubSub Service. Defaults to `1`. Possible values are `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `20`, `30`, `40`, `50`, `60`, `70`, `80`, `90`, `100`, `200`, `300`, `400`, `500`, `600`, `700`, `800`, `900` and `1000`.
  /// [name] The SKU to use for this Web PubSub Service. Possible values are `Free_F1`, `Standard_S1`, `Premium_P1`, and `Premium_P2`.
  const SocketioSku({
    this.capacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
    };
  }

  factory SocketioSku.fromMap(Map<String, dynamic> map) {
    return SocketioSku(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
