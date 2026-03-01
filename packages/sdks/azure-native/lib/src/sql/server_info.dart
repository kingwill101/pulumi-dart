// ignore_for_file: unused_element, unnecessary_cast


/// Server info for the server trust group.
class ServerInfo {
  /// Server Id.
  final String serverId;

  /// Creates a new [ServerInfo].
  /// [serverId] Server Id.
  ServerInfo({
    required this.serverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverId': serverId,
    };
  }

  factory ServerInfo.fromMap(Map<String, dynamic> map) {
    return ServerInfo(
      serverId: map['serverId'] as String,
    );
  }
}

