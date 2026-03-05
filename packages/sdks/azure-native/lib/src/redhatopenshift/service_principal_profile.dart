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
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

