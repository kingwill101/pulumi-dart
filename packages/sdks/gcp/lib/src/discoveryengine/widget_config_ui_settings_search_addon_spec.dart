// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WidgetConfigUiSettingsSearchAddonSpec {
  /// If true, generative answer add-on is disabled. Generative answer
  /// add-on includes natural language to filters and simple answers.
  final pulumi.Input<bool?>? generativeAnswerAddOnDisabled;
  /// If true, disables event re-ranking and personalization to optimize KPIs
  /// & personalize results.
  final pulumi.Input<bool?>? kpiPersonalizationAddOnDisabled;
  /// If true, semantic add-on is disabled. Semantic add-on includes
  /// embeddings and jetstream.
  final pulumi.Input<bool?>? semanticAddOnDisabled;

  /// Creates a new [WidgetConfigUiSettingsSearchAddonSpec].
  /// [generativeAnswerAddOnDisabled] If true, generative answer add-on is disabled. Generative answer
  /// [kpiPersonalizationAddOnDisabled] If true, disables event re-ranking and personalization to optimize KPIs
  /// [semanticAddOnDisabled] If true, semantic add-on is disabled. Semantic add-on includes
  const WidgetConfigUiSettingsSearchAddonSpec({
    this.generativeAnswerAddOnDisabled,
    this.kpiPersonalizationAddOnDisabled,
    this.semanticAddOnDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generativeAnswerAddOnDisabled': ?generativeAnswerAddOnDisabled,
      'kpiPersonalizationAddOnDisabled': ?kpiPersonalizationAddOnDisabled,
      'semanticAddOnDisabled': ?semanticAddOnDisabled,
    };
  }

  factory WidgetConfigUiSettingsSearchAddonSpec.fromMap(Map<String, dynamic> map) {
    return WidgetConfigUiSettingsSearchAddonSpec(
      generativeAnswerAddOnDisabled: (() { final guardedValue = map['generativeAnswerAddOnDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kpiPersonalizationAddOnDisabled: (() { final guardedValue = map['kpiPersonalizationAddOnDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      semanticAddOnDisabled: (() { final guardedValue = map['semanticAddOnDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
