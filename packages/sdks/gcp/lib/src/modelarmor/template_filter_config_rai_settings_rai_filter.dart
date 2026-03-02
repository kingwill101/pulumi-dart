// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TemplateFilterConfigRaiSettingsRaiFilter {
  /// Possible values:
  /// LOW_AND_ABOVE
  /// MEDIUM_AND_ABOVE
  /// HIGH
  final pulumi.Input<String>? confidenceLevel;
  /// Possible values:
  /// SEXUALLY_EXPLICIT
  /// HATE_SPEECH
  /// HARASSMENT
  /// DANGEROUS
  final pulumi.Input<String> filterType;

  /// Creates a new [TemplateFilterConfigRaiSettingsRaiFilter].
  /// [confidenceLevel] Possible values:
  /// [filterType] Possible values:
  TemplateFilterConfigRaiSettingsRaiFilter({
    this.confidenceLevel,
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceLevel': ?confidenceLevel,
      'filterType': filterType,
    };
  }

  factory TemplateFilterConfigRaiSettingsRaiFilter.fromMap(Map<String, dynamic> map) {
    return TemplateFilterConfigRaiSettingsRaiFilter(
      confidenceLevel: map['confidenceLevel'] == null ? null : (map['confidenceLevel']! as String).input(),
      filterType: (map['filterType'] as String).input(),
    );
  }
}

