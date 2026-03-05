// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FloorsettingFilterConfigRaiSettingsRaiFilter {
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

  /// Creates a new [FloorsettingFilterConfigRaiSettingsRaiFilter].
  /// [confidenceLevel] Possible values:
  /// [filterType] Possible values:
  FloorsettingFilterConfigRaiSettingsRaiFilter({
    this.confidenceLevel,
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceLevel': ?confidenceLevel,
      'filterType': filterType,
    };
  }

  factory FloorsettingFilterConfigRaiSettingsRaiFilter.fromMap(Map<String, dynamic> map) {
    return FloorsettingFilterConfigRaiSettingsRaiFilter(
      confidenceLevel: (() { final guardedValue = map['confidenceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterType: pulumi.Input.fromValue(map['filterType'] as String),
    );
  }
}

