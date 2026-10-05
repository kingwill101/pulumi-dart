// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute_response.dart';

/// Result data returned by getAppgroup.
class GetAppgroupResult {
  /// Internal identifier that cannot be edited
  final String? appGroupId;
  /// A list of attributes
  final List<GoogleCloudApigeeV1AttributeResponse>? attributes;
  /// channel identifier identifies the owner maintaing this grouping.
  final String? channelId;
  /// A reference to the associated storefront/marketplace.
  final String? channelUri;
  /// Created time as milliseconds since epoch.
  final String? createdAt;
  /// app group name displayed in the UI
  final String? displayName;
  /// Modified time as milliseconds since epoch.
  final String? lastModifiedAt;
  /// Immutable. Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._\-$ %.
  final String? name;
  /// Immutable. the org the app group is created
  final String? organization;
  /// Valid values are `active` or `inactive`. Note that the status of the AppGroup should be updated via UpdateAppGroupRequest by setting the action as `active` or `inactive`.
  final String? status;

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
    this.appGroupId,
    this.attributes,
    this.channelId,
    this.channelUri,
    this.createdAt,
    this.displayName,
    this.lastModifiedAt,
    this.name,
    this.organization,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appGroupId': ?appGroupId,
      'attributes': ?(() { final guardedValue = attributes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudApigeeV1AttributeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'channelId': ?channelId,
      'channelUri': ?channelUri,
      'createdAt': ?createdAt,
      'displayName': ?displayName,
      'lastModifiedAt': ?lastModifiedAt,
      'name': ?name,
      'organization': ?organization,
      'status': ?status,
    };
  }

  factory GetAppgroupResult.fromMap(Map<String, dynamic> map) {
    return GetAppgroupResult(
      appGroupId: (() { final guardedValue = map['appGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudApigeeV1AttributeResponse>(guardedValue, (value) => GoogleCloudApigeeV1AttributeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      channelId: (() { final guardedValue = map['channelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      channelUri: (() { final guardedValue = map['channelUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedAt: (() { final guardedValue = map['lastModifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
