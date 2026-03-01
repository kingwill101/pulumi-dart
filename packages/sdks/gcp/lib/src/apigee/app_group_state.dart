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
    pulumi.Output<String>? appGroupId,
    pulumi.Output<List<AppGroupAttribute>>? attributes,
    pulumi.Output<String>? channelId,
    pulumi.Output<String>? channelUri,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? lastModifiedAt,
    pulumi.Output<String>? name,
    pulumi.Output<String>? orgId,
    pulumi.Output<String>? organization,
    pulumi.Output<String>? status,
  }) :
      appGroupId = pulumi.Input.asOptionalInput<String>(appGroupId),
      attributes = pulumi.Input.asOptionalInput<List<AppGroupAttribute>>(attributes),
      channelId = pulumi.Input.asOptionalInput<String>(channelId),
      channelUri = pulumi.Input.asOptionalInput<String>(channelUri),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      lastModifiedAt = pulumi.Input.asOptionalInput<String>(lastModifiedAt),
      name = pulumi.Input.asOptionalInput<String>(name),
      orgId = pulumi.Input.asOptionalInput<String>(orgId),
      organization = pulumi.Input.asOptionalInput<String>(organization),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      appGroupId: map['appGroupId'] == null ? null : pulumi.Output.create<String>(map['appGroupId'] as String),
      attributes: map['attributes'] == null ? null : pulumi.Output.create<List<AppGroupAttribute>>(pulumi.Input.decodeList<AppGroupAttribute>(map['attributes'], (value) => AppGroupAttribute.fromMap((value as Map).cast<String, dynamic>()))),
      channelId: map['channelId'] == null ? null : pulumi.Output.create<String>(map['channelId'] as String),
      channelUri: map['channelUri'] == null ? null : pulumi.Output.create<String>(map['channelUri'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      lastModifiedAt: map['lastModifiedAt'] == null ? null : pulumi.Output.create<String>(map['lastModifiedAt'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
      organization: map['organization'] == null ? null : pulumi.Output.create<String>(map['organization'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

