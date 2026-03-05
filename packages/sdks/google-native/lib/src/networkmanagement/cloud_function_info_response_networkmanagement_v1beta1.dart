// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For display only. Metadata associated with a Cloud Function.
class CloudFunctionInfoResponseNetworkmanagementV1beta1 {
  /// Name of a Cloud Function.
  final pulumi.Input<String> displayName;
  /// Location in which the Cloud Function is deployed.
  final pulumi.Input<String> location;
  /// URI of a Cloud Function.
  final pulumi.Input<String> uri;
  /// Latest successfully deployed version id of the Cloud Function.
  final pulumi.Input<String> versionId;

  /// Creates a new [CloudFunctionInfoResponseNetworkmanagementV1beta1].
  /// [displayName] Name of a Cloud Function.
  /// [location] Location in which the Cloud Function is deployed.
  /// [uri] URI of a Cloud Function.
  /// [versionId] Latest successfully deployed version id of the Cloud Function.
  CloudFunctionInfoResponseNetworkmanagementV1beta1({
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

  factory CloudFunctionInfoResponseNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return CloudFunctionInfoResponseNetworkmanagementV1beta1(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
    );
  }
}

