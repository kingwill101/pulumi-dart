// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ParentProductConfig is the configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of a GKE cluster and take the ownership of the cluster.
class ParentProductConfig {
  /// Labels contain the configuration of the parent product.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the parent product associated with the cluster.
  final pulumi.Input<String>? productName;

  /// Creates a new [ParentProductConfig].
  /// [labels] Labels contain the configuration of the parent product.
  /// [productName] Name of the parent product associated with the cluster.
  ParentProductConfig({
    this.labels,
    this.productName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'productName': ?productName,
    };
  }

  factory ParentProductConfig.fromMap(Map<String, dynamic> map) {
    return ParentProductConfig(
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      productName: (() { final guardedValue = map['productName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

