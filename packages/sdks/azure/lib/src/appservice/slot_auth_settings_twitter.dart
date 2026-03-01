// ignore_for_file: unused_element, unnecessary_cast


class SlotAuthSettingsTwitter {
  /// The consumer key of the Twitter app used for login
  final String consumerKey;
  /// The consumer secret of the Twitter app used for login.
  final String consumerSecret;

  /// Creates a new [SlotAuthSettingsTwitter].
  /// [consumerKey] The consumer key of the Twitter app used for login
  /// [consumerSecret] The consumer secret of the Twitter app used for login.
  SlotAuthSettingsTwitter({
    required this.consumerKey,
    required this.consumerSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerKey': consumerKey,
      'consumerSecret': consumerSecret,
    };
  }

  factory SlotAuthSettingsTwitter.fromMap(Map<String, dynamic> map) {
    return SlotAuthSettingsTwitter(
      consumerKey: map['consumerKey'] as String,
      consumerSecret: map['consumerSecret'] as String,
    );
  }
}

