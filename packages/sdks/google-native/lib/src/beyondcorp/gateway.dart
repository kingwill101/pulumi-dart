// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_type.dart';

/// Gateway represents a user facing component that serves as an entrance to enable connectivity.
class Gateway {
  /// The type of hosting used by the gateway.
  final pulumi.Input<GatewayType> type;

  /// Creates a new [Gateway].
  /// [type] The type of hosting used by the gateway.
  Gateway({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': pulumi.Input.mapInputValue<GatewayType, String>(type, (value) => value.value),
    };
  }

  factory Gateway.fromMap(Map<String, dynamic> map) {
    return Gateway(
      type: (GatewayType.fromValue(map['type'] as String)).input(),
    );
  }
}

