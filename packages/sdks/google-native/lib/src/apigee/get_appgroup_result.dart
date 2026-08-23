// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute_response.dart';

/// Result data returned by getAppgroup.
class GetAppgroupResult {
  /// Internal identifier that cannot be edited
  final String appGroupId;
  /// A list of attributes
  final List<GoogleCloudApigeeV1AttributeResponse> attributes;
  /// channel identifier identifies the owner maintaing this grouping.
  final String channelId;
  /// A reference to the associated storefront/marketplace.
  final String channelUri;
  /// Created time as milliseconds since epoch.
  final String createdAt;
  /// app group name displayed in the UI
  final String displayName;
  /// Modified time as milliseconds since epoch.
  final String lastModifiedAt;
  /// Immutable. Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._\-$ %.
  final String name;
  /// Immutable. the org the app group is created
  final String organization;
  /// Valid values are `active` or `inactive`. Note that the status of the AppGroup should be updated via UpdateAppGroupRequest by setting the action as `active` or `inactive`.
  final String status;

  /// Creates a new [GetAppgroupResult].
  /// [appGroupId] Internal identifier that cannot be edited
  /// [attributes] A list of attributes
  /// [channelId] channel identifier identifies the owner maintaing this grouping.
  /// [channelUri] A reference to the associated storefront/marketplace.
  /// [createdAt] Created time as milliseconds since epoch.
  /// [displayName] app group name displayed in the UI
  /// [lastModifiedAt] Modified time as milliseconds since epoch.
  /// [name] Immutable. Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._\-$ %.
  /// [organization] Immutable. the org the app group is created
  /// [status] Valid values are `active` or `inactive`. Note that the status of the AppGroup should be updated via UpdateAppGroupRequest by setting the action as `active` or `inactive`.
  const GetAppgroupResult({
    required this.appGroupId,
    required this.attributes,
    required this.channelId,
    required this.channelUri,
    required this.createdAt,
    required this.displayName,
    required this.lastModifiedAt,
    required this.name,
    required this.organization,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appGroupId': appGroupId,
      'attributes': pulumi.Input.encodeList<GoogleCloudApigeeV1AttributeResponse, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'channelId': channelId,
      'channelUri': channelUri,
      'createdAt': createdAt,
      'displayName': displayName,
      'lastModifiedAt': lastModifiedAt,
      'name': name,
      'organization': organization,
      'status': status,
    };
  }

  factory GetAppgroupResult.fromMap(Map<String, dynamic> map) {
    return GetAppgroupResult(
      appGroupId: map['appGroupId'] as String,
      attributes: pulumi.Input.decodeList<GoogleCloudApigeeV1AttributeResponse>(map['attributes']!, (value) => GoogleCloudApigeeV1AttributeResponse.fromMap((value as Map).cast<String, dynamic>())),
      channelId: map['channelId'] as String,
      channelUri: map['channelUri'] as String,
      createdAt: map['createdAt'] as String,
      displayName: map['displayName'] as String,
      lastModifiedAt: map['lastModifiedAt'] as String,
      name: map['name'] as String,
      organization: map['organization'] as String,
      status: map['status'] as String,
    );
  }
}
