// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_settings_endpoint_control_policy.dart';

/// Input properties used for looking up and filtering SecuritySettings resources.
class SecuritySettingsState {
  /// Output only. Timestamp when the security settings were created.
  final pulumi.Input<String>? createTime;
  /// Optional. Endpoint control related settings.
  /// Structure is documented below.
  final pulumi.Input<SecuritySettingsEndpointControlPolicy>? endpointControlPolicy;
  /// Output only. Etag of the resource.
  final pulumi.Input<String>? etag;
  /// The location of the security settings.
  final pulumi.Input<String>? location;
  /// Identifier. The unique identifier of the security settings.
  /// Format: projects/{project}/locations/{location}/securitySettings
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Output only. Timestamp when the security settings were last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [SecuritySettingsState].
  /// [createTime] Output only. Timestamp when the security settings were created.
  /// [endpointControlPolicy] Optional. Endpoint control related settings.
  /// [etag] Output only. Etag of the resource.
  /// [location] The location of the security settings.
  /// [name] Identifier. The unique identifier of the security settings.
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] Output only. Timestamp when the security settings were last updated.
  const SecuritySettingsState({
    this.createTime,
    this.endpointControlPolicy,
    this.etag,
    this.location,
    this.name,
    this.project,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'endpointControlPolicy': ?pulumi.Input.mapOptionalInputValue<SecuritySettingsEndpointControlPolicy, Map<String, dynamic>>(endpointControlPolicy, (value) => value.toMap()),
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory SecuritySettingsState.fromMap(Map<String, dynamic> map) {
    return SecuritySettingsState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointControlPolicy: (() { final guardedValue = map['endpointControlPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecuritySettingsEndpointControlPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
