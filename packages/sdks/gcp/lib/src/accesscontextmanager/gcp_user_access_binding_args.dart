// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcp_user_access_binding_principal.dart';
import 'gcp_user_access_binding_scoped_access_setting.dart';
import 'gcp_user_access_binding_session_settings.dart';

/// {@template pulumi_accesscontextmanager_gcp_user_access_binding_gcp_user_access_binding_args_doc}
/// The set of arguments for GcpUserAccessBinding.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_gcp_user_access_binding_gcp_user_access_binding_args_doc}
class GcpUserAccessBindingArgs {
  /// Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  final pulumi.Input<String?>? accessLevels;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Optional. Dry run access level that will be evaluated but will not be enforced. The
  /// access denial based on dry run policy will be logged. Only one access
  /// level is supported, not multiple. This list must have exactly one element.
  /// Example: "accessPolicies/9522/accessLevels/device_trusted"
  final pulumi.Input<String?>? dryRunAccessLevels;
  /// Immutable. Google Group id whose members are subject to this binding's restrictions.
  /// See "id" in the Google Workspace Directory API's Group Resource (https://developers.google.com/admin-sdk/directory/v1/reference/groups#resource).
  /// If a group's email address/alias is changed, this resource will continue to point at the changed group.
  /// This field does not accept group email addresses or aliases.
  /// Example: "01d520gv4vjcrht"
  final pulumi.Input<String?>? groupKey;
  /// Required. ID of the parent organization.
  final pulumi.Input<String> organizationId;
  /// Optional. Immutable. The principal that is subject to the access policies in this policy binding.
  /// Structure is documented below.
  final pulumi.Input<GcpUserAccessBindingPrincipal?>? principal;
  /// Optional. A list of scoped access settings that set this binding's restrictions on a subset of applications.
  /// Structure is documented below.
  final pulumi.Input<List<GcpUserAccessBindingScopedAccessSetting>?>? scopedAccessSettings;
  /// Optional. The Google Cloud session length (GCSL) policy for the group key.
  /// Structure is documented below.
  final pulumi.Input<GcpUserAccessBindingSessionSettings?>? sessionSettings;

  /// Creates a new [GcpUserAccessBindingArgs].
  /// [accessLevels] Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [dryRunAccessLevels] Optional. Dry run access level that will be evaluated but will not be enforced. The
  /// [groupKey] Immutable. Google Group id whose members are subject to this binding's restrictions.
  /// [organizationId] Required. ID of the parent organization.
  /// [principal] Optional. Immutable. The principal that is subject to the access policies in this policy binding.
  /// [scopedAccessSettings] Optional. A list of scoped access settings that set this binding's restrictions on a subset of applications.
  /// [sessionSettings] Optional. The Google Cloud session length (GCSL) policy for the group key.
  const GcpUserAccessBindingArgs({
    this.accessLevels,
    this.deletionPolicy,
    this.dryRunAccessLevels,
    this.groupKey,
    required this.organizationId,
    this.principal,
    this.scopedAccessSettings,
    this.sessionSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevels': ?accessLevels,
      'deletionPolicy': ?deletionPolicy,
      'dryRunAccessLevels': ?dryRunAccessLevels,
      'groupKey': ?groupKey,
      'organizationId': organizationId,
      'principal': ?pulumi.Input.mapOptionalInputValue<GcpUserAccessBindingPrincipal, Map<String, dynamic>>(principal, (value) => value.toMap()),
      'scopedAccessSettings': ?pulumi.Input.mapOptionalInputValue<List<GcpUserAccessBindingScopedAccessSetting>, List<Map<String, dynamic>>>(scopedAccessSettings, (value) => pulumi.Input.encodeList<GcpUserAccessBindingScopedAccessSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sessionSettings': ?pulumi.Input.mapOptionalInputValue<GcpUserAccessBindingSessionSettings, Map<String, dynamic>>(sessionSettings, (value) => value.toMap()),
    };
  }

  factory GcpUserAccessBindingArgs.fromMap(Map<String, dynamic> map) {
    return GcpUserAccessBindingArgs(
      accessLevels: (() { final guardedValue = map['accessLevels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRunAccessLevels: (() { final guardedValue = map['dryRunAccessLevels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupKey: (() { final guardedValue = map['groupKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpUserAccessBindingPrincipal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scopedAccessSettings: (() { final guardedValue = map['scopedAccessSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GcpUserAccessBindingScopedAccessSetting>(guardedValue, (value) => GcpUserAccessBindingScopedAccessSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sessionSettings: (() { final guardedValue = map['sessionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpUserAccessBindingSessionSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
