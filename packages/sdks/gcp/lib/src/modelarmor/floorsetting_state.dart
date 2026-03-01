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
  FloorsettingState({
    pulumi.Output<FloorsettingAiPlatformFloorSetting>? aiPlatformFloorSetting,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? enableFloorSettingEnforcement,
    pulumi.Output<FloorsettingFilterConfig>? filterConfig,
    pulumi.Output<FloorsettingFloorSettingMetadata>? floorSettingMetadata,
    pulumi.Output<FloorsettingGoogleMcpServerFloorSetting>? googleMcpServerFloorSetting,
    pulumi.Output<List<String>>? integratedServices,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? updateTime,
  }) :
      aiPlatformFloorSetting = pulumi.Input.asOptionalInput<FloorsettingAiPlatformFloorSetting>(aiPlatformFloorSetting),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      enableFloorSettingEnforcement = pulumi.Input.asOptionalInput<bool>(enableFloorSettingEnforcement),
      filterConfig = pulumi.Input.asOptionalInput<FloorsettingFilterConfig>(filterConfig),
      floorSettingMetadata = pulumi.Input.asOptionalInput<FloorsettingFloorSettingMetadata>(floorSettingMetadata),
      googleMcpServerFloorSetting = pulumi.Input.asOptionalInput<FloorsettingGoogleMcpServerFloorSetting>(googleMcpServerFloorSetting),
      integratedServices = pulumi.Input.asOptionalInput<List<String>>(integratedServices),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      aiPlatformFloorSetting: map['aiPlatformFloorSetting'] == null ? null : pulumi.Output.create<FloorsettingAiPlatformFloorSetting>(FloorsettingAiPlatformFloorSetting.fromMap((map['aiPlatformFloorSetting'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      enableFloorSettingEnforcement: map['enableFloorSettingEnforcement'] == null ? null : pulumi.Output.create<bool>(map['enableFloorSettingEnforcement'] as bool),
      filterConfig: map['filterConfig'] == null ? null : pulumi.Output.create<FloorsettingFilterConfig>(FloorsettingFilterConfig.fromMap((map['filterConfig'] as Map).cast<String, dynamic>())),
      floorSettingMetadata: map['floorSettingMetadata'] == null ? null : pulumi.Output.create<FloorsettingFloorSettingMetadata>(FloorsettingFloorSettingMetadata.fromMap((map['floorSettingMetadata'] as Map).cast<String, dynamic>())),
      googleMcpServerFloorSetting: map['googleMcpServerFloorSetting'] == null ? null : pulumi.Output.create<FloorsettingGoogleMcpServerFloorSetting>(FloorsettingGoogleMcpServerFloorSetting.fromMap((map['googleMcpServerFloorSetting'] as Map).cast<String, dynamic>())),
      integratedServices: map['integratedServices'] == null ? null : pulumi.Output.create<List<String>>((map['integratedServices'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

