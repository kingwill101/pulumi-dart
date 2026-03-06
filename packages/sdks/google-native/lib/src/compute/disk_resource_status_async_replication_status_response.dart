// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiskResourceStatusAsyncReplicationStatusResponse {
  final pulumi.Input<String> state;

  /// Creates a new [DiskResourceStatusAsyncReplicationStatusResponse].
  /// [state] Required.
  const DiskResourceStatusAsyncReplicationStatusResponse({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory DiskResourceStatusAsyncReplicationStatusResponse.fromMap(Map<String, dynamic> map) {
    return DiskResourceStatusAsyncReplicationStatusResponse(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

