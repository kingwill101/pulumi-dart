// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget_config_access_settings.dart';
import 'widget_config_homepage_setting.dart';
import 'widget_config_ui_branding.dart';
import 'widget_config_ui_settings.dart';

/// {@template pulumi_discoveryengine_widget_config_widget_config_args_doc}
/// The set of arguments for WidgetConfig.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_widget_config_widget_config_args_doc}
class WidgetConfigArgs {
  /// Describes widget access settings.
  /// Structure is documented below.
  final pulumi.Input<WidgetConfigAccessSettings>? accessSettings;
  /// The collection ID.
  final pulumi.Input<String>? collectionId;
  /// The engine ID.
  final pulumi.Input<String> engineId;
  /// Describes the homepage setting of the widget. It includes all homepage related settings
  /// and configurations, such as shortcuts.
  /// Structure is documented below.
  final pulumi.Input<WidgetConfigHomepageSetting>? homepageSetting;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;
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
  /// The unique ID to use for the WidgetConfig. Currently only accepts "default_search_widget_config".
  final pulumi.Input<String>? widgetConfigId;

  /// Creates a new [WidgetConfigArgs].
  /// [accessSettings] Describes widget access settings.
  /// [collectionId] The collection ID.
  /// [engineId] The engine ID.
  /// [homepageSetting] Describes the homepage setting of the widget. It includes all homepage related settings
  /// [location] The geographic location where the data store should reside. The value can
  /// [project] The ID of the project in which the resource belongs.
  /// [uiBranding] Describes search widget UI branding settings, such as the widget title, logo,
  /// [uiSettings] Describes general widget (or web app) UI settings as seen in the cloud console UI configuration page.
  /// [widgetConfigId] The unique ID to use for the WidgetConfig. Currently only accepts "default_search_widget_config".
  WidgetConfigArgs({
    this.accessSettings,
    this.collectionId,
    required this.engineId,
    this.homepageSetting,
    required this.location,
    this.project,
    this.uiBranding,
    this.uiSettings,
    this.widgetConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessSettings': ?pulumi.Input.mapOptionalInputValue<WidgetConfigAccessSettings, Map<String, dynamic>>(accessSettings, (value) => value.toMap()),
      'collectionId': ?collectionId,
      'engineId': engineId,
      'homepageSetting': ?pulumi.Input.mapOptionalInputValue<WidgetConfigHomepageSetting, Map<String, dynamic>>(homepageSetting, (value) => value.toMap()),
      'location': location,
      'project': ?project,
      'uiBranding': ?pulumi.Input.mapOptionalInputValue<WidgetConfigUiBranding, Map<String, dynamic>>(uiBranding, (value) => value.toMap()),
      'uiSettings': ?pulumi.Input.mapOptionalInputValue<WidgetConfigUiSettings, Map<String, dynamic>>(uiSettings, (value) => value.toMap()),
      'widgetConfigId': ?widgetConfigId,
    };
  }

  factory WidgetConfigArgs.fromMap(Map<String, dynamic> map) {
    return WidgetConfigArgs(
      accessSettings: (() { final guardedValue = map['accessSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WidgetConfigAccessSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      collectionId: (() { final guardedValue = map['collectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineId: pulumi.Input.fromValue(map['engineId'] as String),
      homepageSetting: (() { final guardedValue = map['homepageSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WidgetConfigHomepageSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uiBranding: (() { final guardedValue = map['uiBranding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WidgetConfigUiBranding.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uiSettings: (() { final guardedValue = map['uiSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WidgetConfigUiSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      widgetConfigId: (() { final guardedValue = map['widgetConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

