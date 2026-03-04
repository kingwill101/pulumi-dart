// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcp_user_access_binding_scoped_access_setting.dart';
import 'gcp_user_access_binding_session_settings.dart';

/// Input properties used for looking up and filtering GcpUserAccessBinding resources.
class GcpUserAccessBindingState {
  /// Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  final pulumi.Input<String>? accessLevels;

  /// Required. Immutable. Google Group id whose members are subject to this binding's restrictions. See "id" in the G Suite Directory API's Groups resource. If a group's email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: "01d520gv4vjcrht"
  final pulumi.Input<String>? groupKey;

  /// Immutable. Assigned by the server during creation. The last segment has an arbitrary length and has only URI unreserved characters (as defined by RFC 3986 Section 2.3). Should not be specified by the client during creation. Example: "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
  final pulumi.Input<String>? name;

  /// Required. ID of the parent organization.
  final pulumi.Input<String>? organizationId;

  /// Optional. A list of scoped access settings that set this binding's restrictions on a subset of applications.
  /// Structure is documented below.
  final pulumi.Input<List<GcpUserAccessBindingScopedAccessSetting>>?
  scopedAccessSettings;

  /// Optional. The Google Cloud session length (GCSL) policy for the group key.
  /// Structure is documented below.
  final pulumi.Input<GcpUserAccessBindingSessionSettings>? sessionSettings;

  /// Creates a new [GcpUserAccessBindingState].
  /// [accessLevels] Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  /// [groupKey] Required. Immutable. Google Group id whose members are subject to this binding's restrictions. See "id" in the G Suite Directory API's Groups resource. If a group's email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: "01d520gv4vjcrht"
  /// [name] Immutable. Assigned by the server during creation. The last segment has an arbitrary length and has only URI unreserved characters (as defined by RFC 3986 Section 2.3). Should not be specified by the client during creation. Example: "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
  /// [organizationId] Required. ID of the parent organization.
  /// [scopedAccessSettings] Optional. A list of scoped access settings that set this binding's restrictions on a subset of applications.
  /// [sessionSettings] Optional. The Google Cloud session length (GCSL) policy for the group key.
  GcpUserAccessBindingState({
    this.accessLevels,
    this.groupKey,
    this.name,
    this.organizationId,
    this.scopedAccessSettings,
    this.sessionSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevels': ?accessLevels,
      'groupKey': ?groupKey,
      'name': ?name,
      'organizationId': ?organizationId,
      'scopedAccessSettings':
          ?pulumi.Input.mapOptionalInputValue<
            List<GcpUserAccessBindingScopedAccessSetting>,
            List<Map<String, dynamic>>
          >(
            scopedAccessSettings,
            (value) =>
                pulumi.Input.encodeList<
                  GcpUserAccessBindingScopedAccessSetting,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sessionSettings':
          ?pulumi.Input.mapOptionalInputValue<
            GcpUserAccessBindingSessionSettings,
            Map<String, dynamic>
          >(sessionSettings, (value) => value.toMap()),
    };
  }

  factory GcpUserAccessBindingState.fromMap(Map<String, dynamic> map) {
    return GcpUserAccessBindingState(
      accessLevels: (() {
        final guardedValue = map['accessLevels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupKey: (() {
        final guardedValue = map['groupKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      organizationId: (() {
        final guardedValue = map['organizationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scopedAccessSettings: (() {
        final guardedValue = map['scopedAccessSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GcpUserAccessBindingScopedAccessSetting>(
            guardedValue,
            (value) => GcpUserAccessBindingScopedAccessSetting.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      sessionSettings: (() {
        final guardedValue = map['sessionSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GcpUserAccessBindingSessionSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
