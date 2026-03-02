// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Static Site Linked Backend ARM resource.
class StaticSiteLinkedBackendResponse {
  /// The resource id of the backend linked to the static site
  final pulumi.Input<String>? backendResourceId;
  /// The date and time on which the backend was linked to the static site.
  final pulumi.Input<String> createdOn;
  /// The provisioning state of the linking process.
  final pulumi.Input<String> provisioningState;
  /// The region of the backend linked to the static site
  final pulumi.Input<String>? region;

  /// Creates a new [StaticSiteLinkedBackendResponse].
  /// [backendResourceId] The resource id of the backend linked to the static site
  /// [createdOn] The date and time on which the backend was linked to the static site.
  /// [provisioningState] The provisioning state of the linking process.
  /// [region] The region of the backend linked to the static site
  StaticSiteLinkedBackendResponse({
    this.backendResourceId,
    required this.createdOn,
    required this.provisioningState,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendResourceId': ?backendResourceId,
      'createdOn': createdOn,
      'provisioningState': provisioningState,
      'region': ?region,
    };
  }

  factory StaticSiteLinkedBackendResponse.fromMap(Map<String, dynamic> map) {
    return StaticSiteLinkedBackendResponse(
      backendResourceId: map['backendResourceId'] == null ? null : (map['backendResourceId']! as String).input(),
      createdOn: (map['createdOn'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

