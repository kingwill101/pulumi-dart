// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties that are associated with a SKU.
class SkuResponse {
  /// The name of the SKU. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? name;

  /// Creates a new [SkuResponse].
  /// [name] The name of the SKU. Required on PUT (CreateOrReplace) requests.
  SkuResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

