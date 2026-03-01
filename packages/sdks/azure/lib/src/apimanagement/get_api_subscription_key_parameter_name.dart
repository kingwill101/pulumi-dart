// ignore_for_file: unused_element, unnecessary_cast


class GetApiSubscriptionKeyParameterName {
  /// The name of the HTTP Header which should be used for the Subscription Key.
  final String header;
  /// The name of the QueryString parameter which should be used for the Subscription Key.
  final String query;

  /// Creates a new [GetApiSubscriptionKeyParameterName].
  /// [header] The name of the HTTP Header which should be used for the Subscription Key.
  /// [query] The name of the QueryString parameter which should be used for the Subscription Key.
  GetApiSubscriptionKeyParameterName({
    required this.header,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': header,
      'query': query,
    };
  }

  factory GetApiSubscriptionKeyParameterName.fromMap(Map<String, dynamic> map) {
    return GetApiSubscriptionKeyParameterName(
      header: map['header'] as String,
      query: map['query'] as String,
    );
  }
}

