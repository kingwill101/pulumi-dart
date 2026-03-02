// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget_config_ui_settings_data_store_ui_config_facet_field.dart';
import 'widget_config_ui_settings_data_store_ui_config_fields_ui_components_map.dart';

class WidgetConfigUiSettingsDataStoreUiConfig {
  /// Structure is documented below.
  final pulumi.Input<List<WidgetConfigUiSettingsDataStoreUiConfigFacetField>>? facetFields;
  /// 'The key is the UI component. Currently supported `title`, `thumbnail`,
  /// `url`, `custom1`, `custom2`, `custom3`. The value is the name of
  /// the field along with its device visibility. The 3 custom fields are optional
  /// and can be added or removed.
  /// `title`, `thumbnail`, `url` are required UI components that cannot be removed.
  /// Structure is documented below.
  final pulumi.Input<List<WidgetConfigUiSettingsDataStoreUiConfigFieldsUiComponentsMap>>? fieldsUiComponentsMaps;
  /// The name of the data store. It should be data store resource name. Format:
  /// `projects/{project}/locations/{location}/collections/{collectionId}/dataStores/{dataStoreId}`.
  /// For APIs under `WidgetService`, such as [WidgetService.LookUpWidgetConfig][],
  /// the project number and location part is erased in this field.
  final pulumi.Input<String>? name;

  /// Creates a new [WidgetConfigUiSettingsDataStoreUiConfig].
  /// [facetFields] Structure is documented below.
  /// [fieldsUiComponentsMaps] 'The key is the UI component. Currently supported `title`, `thumbnail`,
  /// [name] The name of the data store. It should be data store resource name. Format:
  WidgetConfigUiSettingsDataStoreUiConfig({
    this.facetFields,
    this.fieldsUiComponentsMaps,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'facetFields': ?pulumi.Input.mapOptionalInputValue<List<WidgetConfigUiSettingsDataStoreUiConfigFacetField>, List<Map<String, dynamic>>>(facetFields, (value) => pulumi.Input.encodeList<WidgetConfigUiSettingsDataStoreUiConfigFacetField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fieldsUiComponentsMaps': ?pulumi.Input.mapOptionalInputValue<List<WidgetConfigUiSettingsDataStoreUiConfigFieldsUiComponentsMap>, List<Map<String, dynamic>>>(fieldsUiComponentsMaps, (value) => pulumi.Input.encodeList<WidgetConfigUiSettingsDataStoreUiConfigFieldsUiComponentsMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory WidgetConfigUiSettingsDataStoreUiConfig.fromMap(Map<String, dynamic> map) {
    return WidgetConfigUiSettingsDataStoreUiConfig(
      facetFields: map['facetFields'] == null ? null : (pulumi.Input.decodeList<WidgetConfigUiSettingsDataStoreUiConfigFacetField>(map['facetFields']!, (value) => WidgetConfigUiSettingsDataStoreUiConfigFacetField.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fieldsUiComponentsMaps: map['fieldsUiComponentsMaps'] == null ? null : (pulumi.Input.decodeList<WidgetConfigUiSettingsDataStoreUiConfigFieldsUiComponentsMap>(map['fieldsUiComponentsMaps']!, (value) => WidgetConfigUiSettingsDataStoreUiConfigFieldsUiComponentsMap.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

