// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of a NotificationHub GcmCredential.
class GcmCredentialResponse {
  /// Gets or sets the GCM endpoint.
  final pulumi.Input<String>? gcmEndpoint;
  /// Gets or sets the Google API key.
  final pulumi.Input<String> googleApiKey;

  /// Creates a new [GcmCredentialResponse].
  /// [gcmEndpoint] Gets or sets the GCM endpoint.
  /// [googleApiKey] Gets or sets the Google API key.
  GcmCredentialResponse({
    this.gcmEndpoint,
    required this.googleApiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcmEndpoint': ?gcmEndpoint,
      'googleApiKey': googleApiKey,
    };
  }

  factory GcmCredentialResponse.fromMap(Map<String, dynamic> map) {
    return GcmCredentialResponse(
      gcmEndpoint: map['gcmEndpoint'] == null ? null : (map['gcmEndpoint']! as String).input(),
      googleApiKey: (map['googleApiKey'] as String).input(),
    );
  }
}

