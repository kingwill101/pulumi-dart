// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget_config_access_settings.dart';
import 'widget_config_homepage_setting.dart';
import 'widget_config_ui_branding.dart';
import 'widget_config_ui_settings.dart';

/// Input properties used for looking up and filtering WidgetConfig resources.
class WidgetConfigState {
  /// Describes widget access settings.
  /// Structure is documented below.
  final pulumi.Input<WidgetConfigAccessSettings>? accessSettings;
  /// The collection ID.
  final pulumi.Input<String>? collectionId;
  /// Output only. Unique obfuscated identifier of a WidgetConfig.
  final pulumi.Input<String>? configId;
  /// The engine ID.
  final pulumi.Input<String>? engineId;
  /// Describes the homepage setting of the widget. It includes all homepage related settings
  /// and configurations, such as shortcuts.
  /// Structure is documented below.
  final pulumi.Input<WidgetConfigHomepageSetting>? homepageSetting;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String>? location;
  /// The full resource name of the widget config. Format:
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}/widgetConfigs/{widget_config_id}`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Describes search widget UI branding settings, such as the widget title, logo,
  /// favicons, and colors.
  /// Structure is documented below.
  final pulumi.Input<WidgetConfigUiBranding>? uiBranding;
  /// Describes general widget (or web app) UI settings as seen in the cloud console UI configuration page.
  /// Structure is documented below.
  final pulumi.Input<WidgetConfigUiSettings>? uiSettings;
  /// The unique ID to use for the WidgetConfig. Currently only accepts "defaultSearchWidgetConfig".
  final pulumi.Input<String>? widgetConfigId;

  /// Creates a new [WidgetConfigState].
  /// [accessSettings] Describes widget access settings.
  /// [collectionId] The collection ID.
  /// [configId] Output only. Unique obfuscated identifier of a WidgetConfig.
  /// [engineId] The engine ID.
  /// [homepageSetting] Describes the homepage setting of the widget. It includes all homepage related settings
  /// [location] The geographic location where the data store should reside. The value can
  /// [name] The full resource name of the widget config. Format:
  /// [project] The ID of the project in which the resource belongs.
  /// [uiBranding] Describes search widget UI branding settings, such as the widget title, logo,
  /// [uiSettings] Describes general widget (or web app) UI settings as seen in the cloud console UI configuration page.
  /// [widgetConfigId] The unique ID to use for the WidgetConfig. Currently only accepts "defaultSearchWidgetConfig".
  const WidgetConfigState({
    this.accessSettings,
    this.collectionId,
    this.configId,
    this.engineId,
    this.homepageSetting,
    this.location,
    this.name,
    this.project,
    this.uiBranding,
    this.uiSettings,
    this.widgetConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessSettings': ?pulumi.Input.mapOptionalInputValue<WidgetConfigAccessSettings, Map<String, dynamic>>(accessSettings, (value) => value.toMap()),
      'collectionId': ?collectionId,
      'configId': ?configId,
      'engineId': ?engineId,
      'homepageSetting': ?pulumi.Input.mapOptionalInputValue<WidgetConfigHomepageSetting, Map<String, dynamic>>(homepageSetting, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'uiBranding': ?pulumi.Input.mapOptionalInputValue<WidgetConfigUiBranding, Map<String, dynamic>>(uiBranding, (value) => value.toMap()),
      'uiSettings': ?pulumi.Input.mapOptionalInputValue<WidgetConfigUiSettings, Map<String, dynamic>>(uiSettings, (value) => value.toMap()),
      'widgetConfigId': ?widgetConfigId,
    };
  }

  factory WidgetConfigState.fromMap(Map<String, dynamic> map) {
    return WidgetConfigState(
      accessSettings: (() { final guardedValue = map['accessSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WidgetConfigAccessSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      collectionId: (() { final guardedValue = map['collectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configId: (() { final guardedValue = map['configId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineId: (() { final guardedValue = map['engineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      homepageSetting: (() { final guardedValue = map['homepageSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WidgetConfigHomepageSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uiBranding: (() { final guardedValue = map['uiBranding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WidgetConfigUiBranding.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uiSettings: (() { final guardedValue = map['uiSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WidgetConfigUiSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      widgetConfigId: (() { final guardedValue = map['widgetConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
