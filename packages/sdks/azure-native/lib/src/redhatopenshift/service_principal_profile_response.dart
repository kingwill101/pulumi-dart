// ignore_for_file: unused_element, unnecessary_cast


/// ServicePrincipalProfile represents a service principal profile.
class ServicePrincipalProfileResponse {
  /// The client ID used for the cluster.
  final String? clientId;
  /// The client secret used for the cluster.
  final String? clientSecret;

  /// Creates a new [ServicePrincipalProfileResponse].
  /// [clientId] The client ID used for the cluster.
  /// [clientSecret] The client secret used for the cluster.
  ServicePrincipalProfileResponse({
    this.clientId,
    this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
    };
  }

  factory ServicePrincipalProfileResponse.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalProfileResponse(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
    );
  }
}

