// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute.dart';

/// {@template pulumi_apigee_v1_appgroup_args_doc}
/// The set of arguments for Appgroup.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_appgroup_args_doc}
class AppgroupArgs {
  /// A list of attributes
  final pulumi.Input<List<GoogleCloudApigeeV1Attribute>>? attributes;
  /// channel identifier identifies the owner maintaing this grouping.
  final pulumi.Input<String>? channelId;
  /// A reference to the associated storefront/marketplace.
  final pulumi.Input<String>? channelUri;
  /// app group name displayed in the UI
  final pulumi.Input<String>? displayName;
  /// Immutable. Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._\-$ %.
  final pulumi.Input<String>? name;
  /// Immutable. the org the app group is created
  final pulumi.Input<String>? organization;
  final pulumi.Input<String> organizationId;

  /// Creates a new [AppgroupArgs].
  /// [attributes] A list of attributes
  /// [channelId] channel identifier identifies the owner maintaing this grouping.
  /// [channelUri] A reference to the associated storefront/marketplace.
  /// [displayName] app group name displayed in the UI
  /// [name] Immutable. Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._\-$ %.
  /// [organization] Immutable. the org the app group is created
  /// [organizationId] Required.
  AppgroupArgs({
    this.attributes,
    this.channelId,
    this.channelUri,
    this.displayName,
    this.name,
    this.organization,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudApigeeV1Attribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1Attribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'channelId': ?channelId,
      'channelUri': ?channelUri,
      'displayName': ?displayName,
      'name': ?name,
      'organization': ?organization,
      'organizationId': organizationId,
    };
  }

  factory AppgroupArgs.fromMap(Map<String, dynamic> map) {
    return AppgroupArgs(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudApigeeV1Attribute>(guardedValue, (value) => GoogleCloudApigeeV1Attribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      channelId: (() { final guardedValue = map['channelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      channelUri: (() { final guardedValue = map['channelUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}

