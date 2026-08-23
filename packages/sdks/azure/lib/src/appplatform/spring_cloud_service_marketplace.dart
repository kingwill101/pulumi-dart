// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudServiceMarketplace {
  /// Specifies the plan ID of the 3rd Party Artifact that is being procured.
  final pulumi.Input<String> plan;
  /// Specifies the 3rd Party artifact that is being procured.
  final pulumi.Input<String> product;
  /// Specifies the publisher ID of the 3rd Party Artifact that is being procured.
  final pulumi.Input<String> publisher;

  /// Creates a new [SpringCloudServiceMarketplace].
  /// [plan] Specifies the plan ID of the 3rd Party Artifact that is being procured.
  /// [product] Specifies the 3rd Party artifact that is being procured.
  /// [publisher] Specifies the publisher ID of the 3rd Party Artifact that is being procured.
  const SpringCloudServiceMarketplace({
    required this.plan,
    required this.product,
    required this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plan': plan,
      'product': product,
      'publisher': publisher,
    };
  }

  factory SpringCloudServiceMarketplace.fromMap(Map<String, dynamic> map) {
    return SpringCloudServiceMarketplace(
      plan: pulumi.Input.fromValue(map['plan'] as String),
      product: pulumi.Input.fromValue(map['product'] as String),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
    );
  }
}
