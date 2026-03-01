// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getChannelConnection.
class GetChannelConnectionResult {
  /// Input only. Activation token for the channel. The token will be used during the creation of ChannelConnection to bind the channel with the provider project. This field will not be stored in the provider resource.
  final String activationToken;
  /// The name of the connected subscriber Channel. This is a weak reference to avoid cross project and cross accounts references. This must be in `projects/{project}/location/{location}/channels/{channel_id}` format.
  final String channel;
  /// The creation time.
  final String createTime;
  /// The name of the connection.
  final String name;
  /// Server assigned ID of the resource. The server guarantees uniqueness and immutability until deleted.
  final String uid;
  /// The last-modified time.
  final String updateTime;

  /// Creates a new [GetChannelConnectionResult].
  /// [activationToken] Input only. Activation token for the channel. The token will be used during the creation of ChannelConnection to bind the channel with the provider project. This field will not be stored in the provider resource.
  /// [channel] The name of the connected subscriber Channel. This is a weak reference to avoid cross project and cross accounts references. This must be in `projects/{project}/location/{location}/channels/{channel_id}` format.
  /// [createTime] The creation time.
  /// [name] The name of the connection.
  /// [uid] Server assigned ID of the resource. The server guarantees uniqueness and immutability until deleted.
  /// [updateTime] The last-modified time.
  GetChannelConnectionResult({
    required this.activationToken,
    required this.channel,
    required this.createTime,
    required this.name,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationToken': activationToken,
      'channel': channel,
      'createTime': createTime,
      'name': name,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetChannelConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetChannelConnectionResult(
      activationToken: map['activationToken'] as String,
      channel: map['channel'] as String,
      createTime: map['createTime'] as String,
      name: map['name'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

