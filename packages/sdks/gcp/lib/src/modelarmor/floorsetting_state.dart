// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'floorsetting_ai_platform_floor_setting.dart';
import 'floorsetting_filter_config.dart';
import 'floorsetting_floor_setting_metadata.dart';
import 'floorsetting_google_mcp_server_floor_setting.dart';

/// Input properties used for looking up and filtering Floorsetting resources.
class FloorsettingState {
  /// AI Platform floor setting.
  /// Structure is documented below.
  final pulumi.Input<FloorsettingAiPlatformFloorSetting>? aiPlatformFloorSetting;
  /// [Output only] Create timestamp
  final pulumi.Input<String>? createTime;
  /// Floor Settings enforcement status.
  final pulumi.Input<bool>? enableFloorSettingEnforcement;
  /// Filters configuration.
  /// Structure is documented below.
  final pulumi.Input<FloorsettingFilterConfig>? filterConfig;
  /// Metadata to enable multi language detection via floor setting.
  /// Structure is documented below.
  final pulumi.Input<FloorsettingFloorSettingMetadata>? floorSettingMetadata;
  /// Google MCP Server floor setting.
  /// Structure is documented below.
  final pulumi.Input<FloorsettingGoogleMcpServerFloorSetting>? googleMcpServerFloorSetting;
  /// List of integrated services for which the floor setting is applicable.
  final pulumi.Input<List<String>>? integratedServices;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name.
  final pulumi.Input<String>? name;
  /// Will be any one of these:
  /// * `projects/{project}`
  /// * `folders/{folder}`
  /// * `organizations/{organizationId}`
  final pulumi.Input<String>? parent;
  /// [Output only] Update timestamp
  final pulumi.Input<String>? updateTime;

  /// Creates a new [FloorsettingState].
  /// [aiPlatformFloorSetting] AI Platform floor setting.
  /// [createTime] [Output only] Create timestamp
  /// [enableFloorSettingEnforcement] Floor Settings enforcement status.
  /// [filterConfig] Filters configuration.
  /// [floorSettingMetadata] Metadata to enable multi language detection via floor setting.
  /// [googleMcpServerFloorSetting] Google MCP Server floor setting.
  /// [integratedServices] List of integrated services for which the floor setting is applicable.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The resource name.
  /// [parent] Will be any one of these:
  /// [updateTime] [Output only] Update timestamp
  const FloorsettingState({
    this.aiPlatformFloorSetting,
    this.createTime,
    this.enableFloorSettingEnforcement,
    this.filterConfig,
    this.floorSettingMetadata,
    this.googleMcpServerFloorSetting,
    this.integratedServices,
    this.location,
    this.name,
    this.parent,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiPlatformFloorSetting': ?pulumi.Input.mapOptionalInputValue<FloorsettingAiPlatformFloorSetting, Map<String, dynamic>>(aiPlatformFloorSetting, (value) => value.toMap()),
      'createTime': ?createTime,
      'enableFloorSettingEnforcement': ?enableFloorSettingEnforcement,
      'filterConfig': ?pulumi.Input.mapOptionalInputValue<FloorsettingFilterConfig, Map<String, dynamic>>(filterConfig, (value) => value.toMap()),
      'floorSettingMetadata': ?pulumi.Input.mapOptionalInputValue<FloorsettingFloorSettingMetadata, Map<String, dynamic>>(floorSettingMetadata, (value) => value.toMap()),
      'googleMcpServerFloorSetting': ?pulumi.Input.mapOptionalInputValue<FloorsettingGoogleMcpServerFloorSetting, Map<String, dynamic>>(googleMcpServerFloorSetting, (value) => value.toMap()),
      'integratedServices': ?integratedServices,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'updateTime': ?updateTime,
    };
  }

  factory FloorsettingState.fromMap(Map<String, dynamic> map) {
    return FloorsettingState(
      aiPlatformFloorSetting: (() { final guardedValue = map['aiPlatformFloorSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FloorsettingAiPlatformFloorSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableFloorSettingEnforcement: (() { final guardedValue = map['enableFloorSettingEnforcement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filterConfig: (() { final guardedValue = map['filterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FloorsettingFilterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      floorSettingMetadata: (() { final guardedValue = map['floorSettingMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FloorsettingFloorSettingMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleMcpServerFloorSetting: (() { final guardedValue = map['googleMcpServerFloorSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FloorsettingGoogleMcpServerFloorSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      integratedServices: (() { final guardedValue = map['integratedServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
