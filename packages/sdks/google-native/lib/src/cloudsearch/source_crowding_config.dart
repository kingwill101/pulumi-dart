// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Set search results crowding limits. Crowding is a situation in which multiple results from the same source or host "crowd out" other results, diminishing the quality of search for users. To foster better search quality and source diversity in search results, you can set a condition to reduce repetitive results by source.
class SourceCrowdingConfig {
  /// Maximum number of results allowed from a datasource in a result page as long as results from other sources are not exhausted. Value specified must not be negative. A default value is used if this value is equal to 0. To disable crowding, set the value greater than 100.
  final pulumi.Input<int>? numResults;
  /// Maximum number of suggestions allowed from a source. No limits will be set on results if this value is less than or equal to 0.
  final pulumi.Input<int>? numSuggestions;

  /// Creates a new [SourceCrowdingConfig].
  /// [numResults] Maximum number of results allowed from a datasource in a result page as long as results from other sources are not exhausted. Value specified must not be negative. A default value is used if this value is equal to 0. To disable crowding, set the value greater than 100.
  /// [numSuggestions] Maximum number of suggestions allowed from a source. No limits will be set on results if this value is less than or equal to 0.
  const SourceCrowdingConfig({
    this.numResults,
    this.numSuggestions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numResults': ?numResults,
      'numSuggestions': ?numSuggestions,
    };
  }

  factory SourceCrowdingConfig.fromMap(Map<String, dynamic> map) {
    return SourceCrowdingConfig(
      numResults: (() { final guardedValue = map['numResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      numSuggestions: (() { final guardedValue = map['numSuggestions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
