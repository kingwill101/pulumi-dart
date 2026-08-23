// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listSaasSubscriptionLevelAccessToken.
class ListSaasSubscriptionLevelAccessTokenResult {
  /// The Publisher Offer Base Uri
  final String? publisherOfferBaseUri;
  /// The generated token
  final String? token;

  /// Creates a new [ListSaasSubscriptionLevelAccessTokenResult].
  /// [publisherOfferBaseUri] The Publisher Offer Base Uri
  /// [token] The generated token
  const ListSaasSubscriptionLevelAccessTokenResult({
    this.publisherOfferBaseUri,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publisherOfferBaseUri': ?publisherOfferBaseUri,
      'token': ?token,
    };
  }

  factory ListSaasSubscriptionLevelAccessTokenResult.fromMap(Map<String, dynamic> map) {
    return ListSaasSubscriptionLevelAccessTokenResult(
      publisherOfferBaseUri: (() { final guardedValue = map['publisherOfferBaseUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
