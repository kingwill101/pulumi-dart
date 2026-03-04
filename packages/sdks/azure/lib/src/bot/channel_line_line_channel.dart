// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelLineLineChannel {
  /// The access token which is used to call the Line Channel API.
  final pulumi.Input<String> accessToken;

  /// The secret which is used to access the Line Channel.
  final pulumi.Input<String> secret;

  /// Creates a new [ChannelLineLineChannel].
  /// [accessToken] The access token which is used to call the Line Channel API.
  /// [secret] The secret which is used to access the Line Channel.
  ChannelLineLineChannel({required this.accessToken, required this.secret});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'accessToken': accessToken, 'secret': secret};
  }

  factory ChannelLineLineChannel.fromMap(Map<String, dynamic> map) {
    return ChannelLineLineChannel(
      accessToken: pulumi.Input.fromValue(map['accessToken'] as String),
      secret: pulumi.Input.fromValue(map['secret'] as String),
    );
  }
}
