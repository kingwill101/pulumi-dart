// ignore_for_file: unused_element, unnecessary_cast


class ChannelFacebookPage {
  /// The Facebook Page Access Token for the Facebook Channel.
  final String accessToken;
  /// The Facebook Page ID for the Facebook Channel.
  final String id;

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
      accessToken: map['accessToken'] as String,
      id: map['id'] as String,
    );
  }
}

