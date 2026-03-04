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
      'attributes':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppGroupAttribute>,
            List<Map<String, dynamic>>
          >(
            attributes,
            (value) =>
                pulumi.Input.encodeList<
                  AppGroupAttribute,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      appGroupId: (() {
        final guardedValue = map['appGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      attributes: (() {
        final guardedValue = map['attributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AppGroupAttribute>(
            guardedValue,
            (value) => AppGroupAttribute.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      channelId: (() {
        final guardedValue = map['channelId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      channelUri: (() {
        final guardedValue = map['channelUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdAt: (() {
        final guardedValue = map['createdAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastModifiedAt: (() {
        final guardedValue = map['lastModifiedAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orgId: (() {
        final guardedValue = map['orgId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      organization: (() {
        final guardedValue = map['organization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
