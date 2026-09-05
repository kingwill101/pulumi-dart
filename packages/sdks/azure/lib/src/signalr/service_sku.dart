// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceSku {
  /// Specifies the number of units associated with this SignalR service. Valid values are `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `20`, `30`, `40`, `50`, `60`, `70`, `80`, `90`, `100`, `200`, `300`, `400`, `500`, `600`, `700`, `800`, `900` and `1000`.
  ///
  /// &gt; **Note:** The valid capacity range for sku `Free_F1` is `1`, for sku `Premium_P2` is from `100` to `1000`, and from `1` to `100` for sku `Standard_S1` and `Premium_P1`.
  final pulumi.Input<int> capacity;
  /// Specifies which tier to use. Valid values are `Free_F1`, `Standard_S1`, `Premium_P1` and `Premium_P2`.
  final pulumi.Input<String> name;

  /// Creates a new [ServiceSku].
  /// [capacity] Specifies the number of units associated with this SignalR service. Valid values are `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `20`, `30`, `40`, `50`, `60`, `70`, `80`, `90`, `100`, `200`, `300`, `400`, `500`, `600`, `700`, `800`, `900` and `1000`.
  /// [name] Specifies which tier to use. Valid values are `Free_F1`, `Standard_S1`, `Premium_P1` and `Premium_P2`.
  const ServiceSku({
    required this.capacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'name': name,
    };
  }

  factory ServiceSku.fromMap(Map<String, dynamic> map) {
    return ServiceSku(
      capacity: pulumi.Input.fromValue((map['capacity'] as num).toInt()),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
