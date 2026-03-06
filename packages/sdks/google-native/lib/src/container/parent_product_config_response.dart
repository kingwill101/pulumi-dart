// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ParentProductConfig is the configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of a GKE cluster and take the ownership of the cluster.
class ParentProductConfigResponse {
  /// Labels contain the configuration of the parent product.
  final pulumi.Input<Map<String, String>> labels;
  /// Name of the parent product associated with the cluster.
  final pulumi.Input<String> productName;

  /// Creates a new [ParentProductConfigResponse].
  /// [labels] Labels contain the configuration of the parent product.
  /// [productName] Name of the parent product associated with the cluster.
  const ParentProductConfigResponse({
    required this.labels,
    required this.productName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': labels,
      'productName': productName,
    };
  }

  factory ParentProductConfigResponse.fromMap(Map<String, dynamic> map) {
    return ParentProductConfigResponse(
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      productName: pulumi.Input.fromValue(map['productName'] as String),
    );
  }
}

