// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelFacebookPage {
  /// The Facebook Page Access Token for the Facebook Channel.
  final pulumi.Input<String> accessToken;
  /// The Facebook Page ID for the Facebook Channel.
  final pulumi.Input<String> id;

  /// Creates a new [ChannelFacebookPage].
  /// [accessToken] The Facebook Page Access Token for the Facebook Channel.
  /// [id] The Facebook Page ID for the Facebook Channel.
  ChannelFacebookPage({
    required this.accessToken,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
      'id': id,
    };
  }

  factory ChannelFacebookPage.fromMap(Map<String, dynamic> map) {
    return ChannelFacebookPage(
      accessToken: pulumi.Input.fromValue(map['accessToken'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

