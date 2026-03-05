// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPoolV2Loadbalancer {
  final pulumi.Input<String> id;

  /// Creates a new [GetPoolV2Loadbalancer].
  /// [id] Required.
  GetPoolV2Loadbalancer({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetPoolV2Loadbalancer.fromMap(Map<String, dynamic> map) {
    return GetPoolV2Loadbalancer(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

