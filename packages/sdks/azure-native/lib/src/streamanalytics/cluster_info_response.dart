// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties associated with a Stream Analytics cluster.
class ClusterInfoResponse {
  /// The resource id of cluster.
  final pulumi.Input<String>? id;

  /// Creates a new [ClusterInfoResponse].
  /// [id] The resource id of cluster.
  ClusterInfoResponse({this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id};
  }

  factory ClusterInfoResponse.fromMap(Map<String, dynamic> map) {
    return ClusterInfoResponse(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
