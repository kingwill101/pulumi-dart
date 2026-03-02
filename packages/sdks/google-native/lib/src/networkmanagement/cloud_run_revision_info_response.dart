// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For display only. Metadata associated with a Cloud Run revision.
class CloudRunRevisionInfoResponse {
  /// Name of a Cloud Run revision.
  final pulumi.Input<String> displayName;
  /// Location in which this revision is deployed.
  final pulumi.Input<String> location;
  /// URI of Cloud Run service this revision belongs to.
  final pulumi.Input<String> serviceUri;
  /// URI of a Cloud Run revision.
  final pulumi.Input<String> uri;

  /// Creates a new [CloudRunRevisionInfoResponse].
  /// [displayName] Name of a Cloud Run revision.
  /// [location] Location in which this revision is deployed.
  /// [serviceUri] URI of Cloud Run service this revision belongs to.
  /// [uri] URI of a Cloud Run revision.
  CloudRunRevisionInfoResponse({
    required this.displayName,
    required this.location,
    required this.serviceUri,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'location': location,
      'serviceUri': serviceUri,
      'uri': uri,
    };
  }

  factory CloudRunRevisionInfoResponse.fromMap(Map<String, dynamic> map) {
    return CloudRunRevisionInfoResponse(
      displayName: (map['displayName'] as String).input(),
      location: (map['location'] as String).input(),
      serviceUri: (map['serviceUri'] as String).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

