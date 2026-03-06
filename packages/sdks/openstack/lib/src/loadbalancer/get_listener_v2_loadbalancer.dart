// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerV2Loadbalancer {
  final pulumi.Input<String> id;

  /// Creates a new [GetListenerV2Loadbalancer].
  /// [id] Required.
  const GetListenerV2Loadbalancer({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetListenerV2Loadbalancer.fromMap(Map<String, dynamic> map) {
    return GetListenerV2Loadbalancer(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

