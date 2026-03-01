// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listSaasResourceAccessToken.
class ListSaasResourceAccessTokenResult {
  /// The Publisher Offer Base Uri
  final String? publisherOfferBaseUri;
  /// The generated token
  final String? token;

  /// Creates a new [ListSaasResourceAccessTokenResult].
  /// [publisherOfferBaseUri] The Publisher Offer Base Uri
  /// [token] The generated token
  ListSaasResourceAccessTokenResult({
    this.publisherOfferBaseUri,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publisherOfferBaseUri': ?publisherOfferBaseUri,
      'token': ?token,
    };
  }

  factory ListSaasResourceAccessTokenResult.fromMap(Map<String, dynamic> map) {
    return ListSaasResourceAccessTokenResult(
      publisherOfferBaseUri: map['publisherOfferBaseUri'] == null ? null : map['publisherOfferBaseUri'] as String,
      token: map['token'] == null ? null : map['token'] as String,
    );
  }
}

