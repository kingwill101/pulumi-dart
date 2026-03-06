// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For display only. Metadata associated with a Cloud Run revision.
class CloudRunRevisionInfoResponseNetworkmanagementV1beta1 {
  /// Name of a Cloud Run revision.
  final pulumi.Input<String> displayName;
  /// Location in which this revision is deployed.
  final pulumi.Input<String> location;
  /// ID of Cloud Run Service this revision belongs to.
  final pulumi.Input<String> serviceName;
  /// URI of Cloud Run service this revision belongs to.
  final pulumi.Input<String> serviceUri;
  /// URI of a Cloud Run revision.
  final pulumi.Input<String> uri;

  /// Creates a new [CloudRunRevisionInfoResponseNetworkmanagementV1beta1].
  /// [displayName] Name of a Cloud Run revision.
  /// [location] Location in which this revision is deployed.
  /// [serviceName] ID of Cloud Run Service this revision belongs to.
  /// [serviceUri] URI of Cloud Run service this revision belongs to.
  /// [uri] URI of a Cloud Run revision.
  const CloudRunRevisionInfoResponseNetworkmanagementV1beta1({
    required this.displayName,
    required this.location,
    required this.serviceName,
    required this.serviceUri,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'location': location,
      'serviceName': serviceName,
      'serviceUri': serviceUri,
      'uri': uri,
    };
  }

  factory CloudRunRevisionInfoResponseNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return CloudRunRevisionInfoResponseNetworkmanagementV1beta1(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      serviceUri: pulumi.Input.fromValue(map['serviceUri'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

