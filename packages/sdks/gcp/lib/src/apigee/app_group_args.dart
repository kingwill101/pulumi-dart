// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_group_attribute.dart';

/// {@template pulumi_apigee_app_group_app_group_args_doc}
/// The set of arguments for AppGroup.
/// {@endtemplate}
/// {@macro pulumi_apigee_app_group_app_group_args_doc}
class AppGroupArgs {
  /// A list of attributes
  /// Structure is documented below.
  final pulumi.Input<List<AppGroupAttribute>>? attributes;
  /// Channel identifier identifies the owner maintaining this grouping.
  final pulumi.Input<String>? channelId;
  /// A reference to the associated storefront/marketplace.
  final pulumi.Input<String>? channelUri;
  /// App group name displayed in the UI
  final pulumi.Input<String>? displayName;
  /// Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._-$ %.
  final pulumi.Input<String>? name;
  /// The Apigee Organization associated with the Apigee app group,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;
  /// Valid values are active or inactive. Note that the status of the AppGroup should be updated via UpdateAppGroupRequest by setting the action as active or inactive.
  /// Possible values are: `active`, `inactive`.
  final pulumi.Input<String>? status;

  /// Creates a new [AppGroupArgs].
  /// [attributes] A list of attributes
  /// [channelId] Channel identifier identifies the owner maintaining this grouping.
  /// [channelUri] A reference to the associated storefront/marketplace.
  /// [displayName] App group name displayed in the UI
  /// [name] Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._-$ %.
  /// [orgId] The Apigee Organization associated with the Apigee app group,
  /// [status] Valid values are active or inactive. Note that the status of the AppGroup should be updated via UpdateAppGroupRequest by setting the action as active or inactive.
  AppGroupArgs({
    pulumi.Output<List<AppGroupAttribute>>? attributes,
    pulumi.Output<String>? channelId,
    pulumi.Output<String>? channelUri,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> orgId,
    pulumi.Output<String>? status,
  }) :
      attributes = pulumi.Input.asOptionalInput<List<AppGroupAttribute>>(attributes),
      channelId = pulumi.Input.asOptionalInput<String>(channelId),
      channelUri = pulumi.Input.asOptionalInput<String>(channelUri),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name),
      orgId = pulumi.Input.asInput<String>(orgId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<AppGroupAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<AppGroupAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'channelId': ?channelId,
      'channelUri': ?channelUri,
      'displayName': ?displayName,
      'name': ?name,
      'orgId': orgId,
      'status': ?status,
    };
  }

  factory AppGroupArgs.fromMap(Map<String, dynamic> map) {
    return AppGroupArgs(
      attributes: map['attributes'] == null ? null : pulumi.Output.create<List<AppGroupAttribute>>(pulumi.Input.decodeList<AppGroupAttribute>(map['attributes'], (value) => AppGroupAttribute.fromMap((value as Map).cast<String, dynamic>()))),
      channelId: map['channelId'] == null ? null : pulumi.Output.create<String>(map['channelId'] as String),
      channelUri: map['channelUri'] == null ? null : pulumi.Output.create<String>(map['channelUri'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      orgId: pulumi.Output.create<String>(map['orgId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

