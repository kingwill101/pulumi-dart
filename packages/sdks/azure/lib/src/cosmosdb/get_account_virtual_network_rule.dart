// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountVirtualNetworkRule {
  /// The ID of the virtual network subnet.
  final pulumi.Input<String> id;

  /// Creates a new [GetAccountVirtualNetworkRule].
  /// [id] The ID of the virtual network subnet.
  const GetAccountVirtualNetworkRule({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetAccountVirtualNetworkRule.fromMap(Map<String, dynamic> map) {
    return GetAccountVirtualNetworkRule(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

