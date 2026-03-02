// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkForwardDriver {
  /// Specifies the model of the forwarding driver.
  final pulumi.Input<String>? model;
  /// Sets the name of the forwarding driver.
  final pulumi.Input<String>? name;

  /// Creates a new [NetworkForwardDriver].
  /// [model] Specifies the model of the forwarding driver.
  /// [name] Sets the name of the forwarding driver.
  NetworkForwardDriver({
    this.model,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'model': ?model,
      'name': ?name,
    };
  }

  factory NetworkForwardDriver.fromMap(Map<String, dynamic> map) {
    return NetworkForwardDriver(
      model: map['model'] == null ? null : (map['model']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

