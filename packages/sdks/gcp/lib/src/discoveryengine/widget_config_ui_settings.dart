// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget_config_ui_settings_data_store_ui_config.dart';
import 'widget_config_ui_settings_generative_answer_config.dart';

class WidgetConfigUiSettings {
  /// Per data store configuration.
  /// Structure is documented below.
  final pulumi.Input<List<WidgetConfigUiSettingsDataStoreUiConfig>>? dataStoreUiConfigs;
  /// The default ordering for search results if specified.
  /// Used to set SearchRequest#orderBy on applicable requests.
  final pulumi.Input<String>? defaultSearchRequestOrderBy;
  /// If set to true, the widget will not collect user events.
  final pulumi.Input<bool>? disableUserEventsCollection;
  /// Whether or not to enable autocomplete.
  final pulumi.Input<bool>? enableAutocomplete;
  /// If set to true, the widget will enable the create agent button.
  final pulumi.Input<bool>? enableCreateAgentButton;
  /// If set to true, the widget will enable people search.
  final pulumi.Input<bool>? enablePeopleSearch;
  /// Turn on or off collecting the search result quality feedback from end users.
  final pulumi.Input<bool>? enableQualityFeedback;
  /// Whether to enable safe search.
  final pulumi.Input<bool>? enableSafeSearch;
  /// Whether to enable search-as-you-type behavior for the search widget.
  final pulumi.Input<bool>? enableSearchAsYouType;
  /// If set to true, the widget will enable visual content summary on applicable
  /// search requests. Only used by healthcare search.
  final pulumi.Input<bool>? enableVisualContentSummary;
  /// Describes generative answer configuration.
  /// Structure is documented below.
  final pulumi.Input<WidgetConfigUiSettingsGenerativeAnswerConfig>? generativeAnswerConfig;
  /// Describes widget (or web app) interaction type
  /// Possible values are: `SEARCH_ONLY`, `SEARCH_WITH_ANSWER`, `SEARCH_WITH_FOLLOW_UPS`.
  final pulumi.Input<String>? interactionType;
  /// Controls whether result extract is display and how (snippet or extractive answer).
  /// Default to no result if unspecified.
  /// Possible values are: `SNIPPET`, `EXTRACTIVE_ANSWER`.
  final pulumi.Input<String>? resultDescriptionType;

  /// Creates a new [WidgetConfigUiSettings].
  /// [dataStoreUiConfigs] Per data store configuration.
  /// [defaultSearchRequestOrderBy] The default ordering for search results if specified.
  /// [disableUserEventsCollection] If set to true, the widget will not collect user events.
  /// [enableAutocomplete] Whether or not to enable autocomplete.
  /// [enableCreateAgentButton] If set to true, the widget will enable the create agent button.
  /// [enablePeopleSearch] If set to true, the widget will enable people search.
  /// [enableQualityFeedback] Turn on or off collecting the search result quality feedback from end users.
  /// [enableSafeSearch] Whether to enable safe search.
  /// [enableSearchAsYouType] Whether to enable search-as-you-type behavior for the search widget.
  /// [enableVisualContentSummary] If set to true, the widget will enable visual content summary on applicable
  /// [generativeAnswerConfig] Describes generative answer configuration.
  /// [interactionType] Describes widget (or web app) interaction type
  /// [resultDescriptionType] Controls whether result extract is display and how (snippet or extractive answer).
  WidgetConfigUiSettings({
    this.dataStoreUiConfigs,
    this.defaultSearchRequestOrderBy,
    this.disableUserEventsCollection,
    this.enableAutocomplete,
    this.enableCreateAgentButton,
    this.enablePeopleSearch,
    this.enableQualityFeedback,
    this.enableSafeSearch,
    this.enableSearchAsYouType,
    this.enableVisualContentSummary,
    this.generativeAnswerConfig,
    this.interactionType,
    this.resultDescriptionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreUiConfigs': ?pulumi.Input.mapOptionalInputValue<List<WidgetConfigUiSettingsDataStoreUiConfig>, List<Map<String, dynamic>>>(dataStoreUiConfigs, (value) => pulumi.Input.encodeList<WidgetConfigUiSettingsDataStoreUiConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultSearchRequestOrderBy': ?defaultSearchRequestOrderBy,
      'disableUserEventsCollection': ?disableUserEventsCollection,
      'enableAutocomplete': ?enableAutocomplete,
      'enableCreateAgentButton': ?enableCreateAgentButton,
      'enablePeopleSearch': ?enablePeopleSearch,
      'enableQualityFeedback': ?enableQualityFeedback,
      'enableSafeSearch': ?enableSafeSearch,
      'enableSearchAsYouType': ?enableSearchAsYouType,
      'enableVisualContentSummary': ?enableVisualContentSummary,
      'generativeAnswerConfig': ?pulumi.Input.mapOptionalInputValue<WidgetConfigUiSettingsGenerativeAnswerConfig, Map<String, dynamic>>(generativeAnswerConfig, (value) => value.toMap()),
      'interactionType': ?interactionType,
      'resultDescriptionType': ?resultDescriptionType,
    };
  }

  factory WidgetConfigUiSettings.fromMap(Map<String, dynamic> map) {
    return WidgetConfigUiSettings(
      dataStoreUiConfigs: (() { final guardedValue = map['dataStoreUiConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WidgetConfigUiSettingsDataStoreUiConfig>(guardedValue, (value) => WidgetConfigUiSettingsDataStoreUiConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultSearchRequestOrderBy: (() { final guardedValue = map['defaultSearchRequestOrderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableUserEventsCollection: (() { final guardedValue = map['disableUserEventsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableAutocomplete: (() { final guardedValue = map['enableAutocomplete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableCreateAgentButton: (() { final guardedValue = map['enableCreateAgentButton']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePeopleSearch: (() { final guardedValue = map['enablePeopleSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableQualityFeedback: (() { final guardedValue = map['enableQualityFeedback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSafeSearch: (() { final guardedValue = map['enableSafeSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSearchAsYouType: (() { final guardedValue = map['enableSearchAsYouType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableVisualContentSummary: (() { final guardedValue = map['enableVisualContentSummary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      generativeAnswerConfig: (() { final guardedValue = map['generativeAnswerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WidgetConfigUiSettingsGenerativeAnswerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interactionType: (() { final guardedValue = map['interactionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resultDescriptionType: (() { final guardedValue = map['resultDescriptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

