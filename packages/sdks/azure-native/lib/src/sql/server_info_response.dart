// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Server info for the server trust group.
class ServerInfoResponse {
  /// Server Id.
  final pulumi.Input<String> serverId;

  /// Creates a new [ServerInfoResponse].
  /// [serverId] Server Id.
  const ServerInfoResponse({
    required this.serverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverId': serverId,
    };
  }

  factory ServerInfoResponse.fromMap(Map<String, dynamic> map) {
    return ServerInfoResponse(
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
    );
  }
}

