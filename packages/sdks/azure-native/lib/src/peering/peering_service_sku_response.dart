// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU that defines the type of the peering service.
class PeeringServiceSkuResponse {
  /// The name of the peering service SKU.
  final pulumi.Input<String>? name;

  /// Creates a new [PeeringServiceSkuResponse].
  /// [name] The name of the peering service SKU.
  PeeringServiceSkuResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory PeeringServiceSkuResponse.fromMap(Map<String, dynamic> map) {
    return PeeringServiceSkuResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

