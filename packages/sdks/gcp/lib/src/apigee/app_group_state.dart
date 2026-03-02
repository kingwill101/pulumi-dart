// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_group_attribute.dart';

/// Input properties used for looking up and filtering AppGroup resources.
class AppGroupState {
  /// Internal identifier that cannot be edited
  final pulumi.Input<String>? appGroupId;
  /// A list of attributes
  /// Structure is documented below.
  final pulumi.Input<List<AppGroupAttribute>>? attributes;
  /// Channel identifier identifies the owner maintaining this grouping.
  final pulumi.Input<String>? channelId;
  /// A reference to the associated storefront/marketplace.
  final pulumi.Input<String>? channelUri;
  /// Created time as milliseconds since epoch.
  final pulumi.Input<String>? createdAt;
  /// App group name displayed in the UI
  final pulumi.Input<String>? displayName;
  /// Modified time as milliseconds since epoch.
  final pulumi.Input<String>? lastModifiedAt;
  /// Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._-$ %.
  final pulumi.Input<String>? name;
  /// The Apigee Organization associated with the Apigee app group,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String>? orgId;
  /// App group name displayed in the UI
  final pulumi.Input<String>? organization;
  /// Valid values are active or inactive. Note that the status of the AppGroup should be updated via UpdateAppGroupRequest by setting the action as active or inactive.
  /// Possible values are: `active`, `inactive`.
  final pulumi.Input<String>? status;

  /// Creates a new [AppGroupState].
  /// [appGroupId] Internal identifier that cannot be edited
  /// [attributes] A list of attributes
  /// [channelId] Channel identifier identifies the owner maintaining this grouping.
  /// [channelUri] A reference to the associated storefront/marketplace.
  /// [createdAt] Created time as milliseconds since epoch.
  /// [displayName] App group name displayed in the UI
  /// [lastModifiedAt] Modified time as milliseconds since epoch.
  /// [name] Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._-$ %.
  /// [orgId] The Apigee Organization associated with the Apigee app group,
  /// [organization] App group name displayed in the UI
  /// [status] Valid values are active or inactive. Note that the status of the AppGroup should be updated via UpdateAppGroupRequest by setting the action as active or inactive.
  AppGroupState({
    this.appGroupId,
    this.attributes,
    this.channelId,
    this.channelUri,
    this.createdAt,
    this.displayName,
    this.lastModifiedAt,
    this.name,
    this.orgId,
    this.organization,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appGroupId': ?appGroupId,
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<AppGroupAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<AppGroupAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'channelId': ?channelId,
      'channelUri': ?channelUri,
      'createdAt': ?createdAt,
      'displayName': ?displayName,
      'lastModifiedAt': ?lastModifiedAt,
      'name': ?name,
      'orgId': ?orgId,
      'organization': ?organization,
      'status': ?status,
    };
  }

  factory AppGroupState.fromMap(Map<String, dynamic> map) {
    return AppGroupState(
      appGroupId: map['appGroupId'] == null ? null : (map['appGroupId']! as String).input(),
      attributes: map['attributes'] == null ? null : (pulumi.Input.decodeList<AppGroupAttribute>(map['attributes']!, (value) => AppGroupAttribute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      channelId: map['channelId'] == null ? null : (map['channelId']! as String).input(),
      channelUri: map['channelUri'] == null ? null : (map['channelUri']! as String).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      lastModifiedAt: map['lastModifiedAt'] == null ? null : (map['lastModifiedAt']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      orgId: map['orgId'] == null ? null : (map['orgId']! as String).input(),
      organization: map['organization'] == null ? null : (map['organization']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

