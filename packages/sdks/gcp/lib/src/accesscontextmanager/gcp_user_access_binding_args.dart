// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcp_user_access_binding_scoped_access_setting.dart';
import 'gcp_user_access_binding_session_settings.dart';

/// {@template pulumi_accesscontextmanager_gcp_user_access_binding_gcp_user_access_binding_args_doc}
/// The set of arguments for GcpUserAccessBinding.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_gcp_user_access_binding_gcp_user_access_binding_args_doc}
class GcpUserAccessBindingArgs {
  /// Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  final pulumi.Input<String>? accessLevels;
  /// Required. Immutable. Google Group id whose members are subject to this binding's restrictions. See "id" in the G Suite Directory API's Groups resource. If a group's email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: "01d520gv4vjcrht"
  final pulumi.Input<String> groupKey;
  /// Required. ID of the parent organization.
  final pulumi.Input<String> organizationId;
  /// Optional. A list of scoped access settings that set this binding's restrictions on a subset of applications.
  /// Structure is documented below.
  final pulumi.Input<List<GcpUserAccessBindingScopedAccessSetting>>? scopedAccessSettings;
  /// Optional. The Google Cloud session length (GCSL) policy for the group key.
  /// Structure is documented below.
  final pulumi.Input<GcpUserAccessBindingSessionSettings>? sessionSettings;

  /// Creates a new [GcpUserAccessBindingArgs].
  /// [accessLevels] Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  /// [groupKey] Required. Immutable. Google Group id whose members are subject to this binding's restrictions. See "id" in the G Suite Directory API's Groups resource. If a group's email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: "01d520gv4vjcrht"
  /// [organizationId] Required. ID of the parent organization.
  /// [scopedAccessSettings] Optional. A list of scoped access settings that set this binding's restrictions on a subset of applications.
  /// [sessionSettings] Optional. The Google Cloud session length (GCSL) policy for the group key.
  GcpUserAccessBindingArgs({
    pulumi.Output<String>? accessLevels,
    required pulumi.Output<String> groupKey,
    required pulumi.Output<String> organizationId,
    pulumi.Output<List<GcpUserAccessBindingScopedAccessSetting>>? scopedAccessSettings,
    pulumi.Output<GcpUserAccessBindingSessionSettings>? sessionSettings,
  }) :
      accessLevels = pulumi.Input.asOptionalInput<String>(accessLevels),
      groupKey = pulumi.Input.asInput<String>(groupKey),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      scopedAccessSettings = pulumi.Input.asOptionalInput<List<GcpUserAccessBindingScopedAccessSetting>>(scopedAccessSettings),
      sessionSettings = pulumi.Input.asOptionalInput<GcpUserAccessBindingSessionSettings>(sessionSettings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevels': ?accessLevels,
      'groupKey': groupKey,
      'organizationId': organizationId,
      'scopedAccessSettings': ?pulumi.Input.mapOptionalInputValue<List<GcpUserAccessBindingScopedAccessSetting>, List<Map<String, dynamic>>>(scopedAccessSettings, (value) => pulumi.Input.encodeList<GcpUserAccessBindingScopedAccessSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sessionSettings': ?pulumi.Input.mapOptionalInputValue<GcpUserAccessBindingSessionSettings, Map<String, dynamic>>(sessionSettings, (value) => value.toMap()),
    };
  }

  factory GcpUserAccessBindingArgs.fromMap(Map<String, dynamic> map) {
    return GcpUserAccessBindingArgs(
      accessLevels: map['accessLevels'] == null ? null : pulumi.Output.create<String>(map['accessLevels'] as String),
      groupKey: pulumi.Output.create<String>(map['groupKey'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      scopedAccessSettings: map['scopedAccessSettings'] == null ? null : pulumi.Output.create<List<GcpUserAccessBindingScopedAccessSetting>>(pulumi.Input.decodeList<GcpUserAccessBindingScopedAccessSetting>(map['scopedAccessSettings'], (value) => GcpUserAccessBindingScopedAccessSetting.fromMap((value as Map).cast<String, dynamic>()))),
      sessionSettings: map['sessionSettings'] == null ? null : pulumi.Output.create<GcpUserAccessBindingSessionSettings>(GcpUserAccessBindingSessionSettings.fromMap((map['sessionSettings'] as Map).cast<String, dynamic>())),
    );
  }
}

