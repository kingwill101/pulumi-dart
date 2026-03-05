// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudDevToolPortalSso {
  /// Specifies the public identifier for the application.
  final pulumi.Input<String>? clientId;
  /// Specifies the secret known only to the application and the authorization server.
  final pulumi.Input<String>? clientSecret;
  /// Specifies the URI of a JSON file with generic OIDC provider configuration.
  final pulumi.Input<String>? metadataUrl;
  /// Specifies a list of specific actions applications can be allowed to do on a user's behalf.
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [SpringCloudDevToolPortalSso].
  /// [clientId] Specifies the public identifier for the application.
  /// [clientSecret] Specifies the secret known only to the application and the authorization server.
  /// [metadataUrl] Specifies the URI of a JSON file with generic OIDC provider configuration.
  /// [scopes] Specifies a list of specific actions applications can be allowed to do on a user's behalf.
  SpringCloudDevToolPortalSso({
    this.clientId,
    this.clientSecret,
    this.metadataUrl,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'metadataUrl': ?metadataUrl,
      'scopes': ?scopes,
    };
  }

  factory SpringCloudDevToolPortalSso.fromMap(Map<String, dynamic> map) {
    return SpringCloudDevToolPortalSso(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataUrl: (() { final guardedValue = map['metadataUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

