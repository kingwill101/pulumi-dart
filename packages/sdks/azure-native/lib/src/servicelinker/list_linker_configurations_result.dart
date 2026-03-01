// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_configuration_response.dart';

/// Result data returned by listLinkerConfigurations.
class ListLinkerConfigurationsResult {
  /// The configuration properties for source resource.
  final List<SourceConfigurationResponse>? configurations;

  /// Creates a new [ListLinkerConfigurationsResult].
  /// [configurations] The configuration properties for source resource.
  ListLinkerConfigurationsResult({
    this.configurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurations': ?configurations == null ? null : pulumi.Input.encodeList<SourceConfigurationResponse, Map<String, dynamic>>(configurations!, (value) => value.toMap()),
    };
  }

  factory ListLinkerConfigurationsResult.fromMap(Map<String, dynamic> map) {
    return ListLinkerConfigurationsResult(
      configurations: map['configurations'] == null ? null : pulumi.Input.decodeList<SourceConfigurationResponse>(map['configurations'], (value) => SourceConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

