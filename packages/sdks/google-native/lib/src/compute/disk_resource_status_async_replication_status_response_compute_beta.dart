// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiskResourceStatusAsyncReplicationStatusResponseComputeBeta {
  final pulumi.Input<String> state;

  /// Creates a new [DiskResourceStatusAsyncReplicationStatusResponseComputeBeta].
  /// [state] Required.
  DiskResourceStatusAsyncReplicationStatusResponseComputeBeta({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': state};
  }

  factory DiskResourceStatusAsyncReplicationStatusResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return DiskResourceStatusAsyncReplicationStatusResponseComputeBeta(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
