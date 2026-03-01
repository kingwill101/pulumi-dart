// ignore_for_file: unused_element, unnecessary_cast


/// For display only. Metadata associated with a Cloud Run revision.
class CloudRunRevisionInfoResponseNetworkmanagementV1beta1 {
  /// Name of a Cloud Run revision.
  final String displayName;
  /// Location in which this revision is deployed.
  final String location;
  /// ID of Cloud Run Service this revision belongs to.
  final String serviceName;
  /// URI of Cloud Run service this revision belongs to.
  final String serviceUri;
  /// URI of a Cloud Run revision.
  final String uri;

  /// Creates a new [CloudRunRevisionInfoResponseNetworkmanagementV1beta1].
  /// [displayName] Name of a Cloud Run revision.
  /// [location] Location in which this revision is deployed.
  /// [serviceName] ID of Cloud Run Service this revision belongs to.
  /// [serviceUri] URI of Cloud Run service this revision belongs to.
  /// [uri] URI of a Cloud Run revision.
  CloudRunRevisionInfoResponseNetworkmanagementV1beta1({
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
      displayName: map['displayName'] as String,
      location: map['location'] as String,
      serviceName: map['serviceName'] as String,
      serviceUri: map['serviceUri'] as String,
      uri: map['uri'] as String,
    );
  }
}

