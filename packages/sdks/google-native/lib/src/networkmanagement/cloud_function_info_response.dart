// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For display only. Metadata associated with a Cloud Function.
class CloudFunctionInfoResponse {
  /// Name of a Cloud Function.
  final pulumi.Input<String> displayName;
  /// Location in which the Cloud Function is deployed.
  final pulumi.Input<String> location;
  /// URI of a Cloud Function.
  final pulumi.Input<String> uri;
  /// Latest successfully deployed version id of the Cloud Function.
  final pulumi.Input<String> versionId;

  /// Creates a new [CloudFunctionInfoResponse].
  /// [displayName] Name of a Cloud Function.
  /// [location] Location in which the Cloud Function is deployed.
  /// [uri] URI of a Cloud Function.
  /// [versionId] Latest successfully deployed version id of the Cloud Function.
  CloudFunctionInfoResponse({
    required this.displayName,
    required this.location,
    required this.uri,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'location': location,
      'uri': uri,
      'versionId': versionId,
    };
  }

  factory CloudFunctionInfoResponse.fromMap(Map<String, dynamic> map) {
    return CloudFunctionInfoResponse(
      displayName: (map['displayName'] as String).input(),
      location: (map['location'] as String).input(),
      uri: (map['uri'] as String).input(),
      versionId: (map['versionId'] as String).input(),
    );
  }
}

