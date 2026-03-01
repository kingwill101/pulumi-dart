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
  /// The unique ID to use for the WidgetConfig. Currently only accepts "default_search_widget_config".
  final pulumi.Input<String>? widgetConfigId;

  /// Creates a new [WidgetConfigState].
  /// [accessSettings] Describes widget access settings.
  /// [collectionId] The collection ID.
  /// [engineId] The engine ID.
  /// [homepageSetting] Describes the homepage setting of the widget. It includes all homepage related settings
  /// [location] The geographic location where the data store should reside. The value can
  /// [name] The full resource name of the widget config. Format:
  /// [project] The ID of the project in which the resource belongs.
  /// [uiBranding] Describes search widget UI branding settings, such as the widget title, logo,
  /// [uiSettings] Describes general widget (or web app) UI settings as seen in the cloud console UI configuration page.
  /// [widgetConfigId] The unique ID to use for the WidgetConfig. Currently only accepts "default_search_widget_config".
  WidgetConfigState({
    pulumi.Output<WidgetConfigAccessSettings>? accessSettings,
    pulumi.Output<String>? collectionId,
    pulumi.Output<String>? engineId,
    pulumi.Output<WidgetConfigHomepageSetting>? homepageSetting,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<WidgetConfigUiBranding>? uiBranding,
    pulumi.Output<WidgetConfigUiSettings>? uiSettings,
    pulumi.Output<String>? widgetConfigId,
  }) :
      accessSettings = pulumi.Input.asOptionalInput<WidgetConfigAccessSettings>(accessSettings),
      collectionId = pulumi.Input.asOptionalInput<String>(collectionId),
      engineId = pulumi.Input.asOptionalInput<String>(engineId),
      homepageSetting = pulumi.Input.asOptionalInput<WidgetConfigHomepageSetting>(homepageSetting),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      uiBranding = pulumi.Input.asOptionalInput<WidgetConfigUiBranding>(uiBranding),
      uiSettings = pulumi.Input.asOptionalInput<WidgetConfigUiSettings>(uiSettings),
      widgetConfigId = pulumi.Input.asOptionalInput<String>(widgetConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessSettings': ?pulumi.Input.mapOptionalInputValue<WidgetConfigAccessSettings, Map<String, dynamic>>(accessSettings, (value) => value.toMap()),
      'collectionId': ?collectionId,
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
      accessSettings: map['accessSettings'] == null ? null : pulumi.Output.create<WidgetConfigAccessSettings>(WidgetConfigAccessSettings.fromMap((map['accessSettings'] as Map).cast<String, dynamic>())),
      collectionId: map['collectionId'] == null ? null : pulumi.Output.create<String>(map['collectionId'] as String),
      engineId: map['engineId'] == null ? null : pulumi.Output.create<String>(map['engineId'] as String),
      homepageSetting: map['homepageSetting'] == null ? null : pulumi.Output.create<WidgetConfigHomepageSetting>(WidgetConfigHomepageSetting.fromMap((map['homepageSetting'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      uiBranding: map['uiBranding'] == null ? null : pulumi.Output.create<WidgetConfigUiBranding>(WidgetConfigUiBranding.fromMap((map['uiBranding'] as Map).cast<String, dynamic>())),
      uiSettings: map['uiSettings'] == null ? null : pulumi.Output.create<WidgetConfigUiSettings>(WidgetConfigUiSettings.fromMap((map['uiSettings'] as Map).cast<String, dynamic>())),
      widgetConfigId: map['widgetConfigId'] == null ? null : pulumi.Output.create<String>(map['widgetConfigId'] as String),
    );
  }
}

