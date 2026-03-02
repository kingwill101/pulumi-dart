// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServicePrincipalProfile represents a service principal profile.
class ServicePrincipalProfile {
  /// The client ID used for the cluster.
  final pulumi.Input<String>? clientId;
  /// The client secret used for the cluster.
  final pulumi.Input<String>? clientSecret;

  /// Creates a new [ServicePrincipalProfile].
  /// [clientId] The client ID used for the cluster.
  /// [clientSecret] The client secret used for the cluster.
  ServicePrincipalProfile({
    this.clientId,
    this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
    };
  }

  factory ServicePrincipalProfile.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalProfile(
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret'] as String).input(),
    );
  }
}

