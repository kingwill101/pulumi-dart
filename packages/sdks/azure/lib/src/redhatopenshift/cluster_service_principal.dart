// ignore_for_file: unused_element, unnecessary_cast


class ClusterServicePrincipal {
  /// The Client ID for the Service Principal.
  final String clientId;
  /// The Client Secret for the Service Principal.
  ///
  /// > **Note:** Currently a service principal cannot be associated with more than one ARO clusters on the Azure subscription.
  final String clientSecret;

  /// Creates a new [ClusterServicePrincipal].
  /// [clientId] The Client ID for the Service Principal.
  /// [clientSecret] The Client Secret for the Service Principal.
  ClusterServicePrincipal({
    required this.clientId,
    required this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': clientSecret,
    };
  }

  factory ClusterServicePrincipal.fromMap(Map<String, dynamic> map) {
    return ClusterServicePrincipal(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
    );
  }
}

