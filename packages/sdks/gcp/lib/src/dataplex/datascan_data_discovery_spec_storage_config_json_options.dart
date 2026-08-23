// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanDataDiscoverySpecStorageConfigJsonOptions {
  /// The character encoding of the data. The default is UTF-8.
  final pulumi.Input<String>? encoding;
  /// Whether to disable the inference of data types for JSON data. If true, all columns are registered as their primitive types (strings, number, or boolean).
  final pulumi.Input<bool>? typeInferenceDisabled;

  /// Creates a new [DatascanDataDiscoverySpecStorageConfigJsonOptions].
  /// [encoding] The character encoding of the data. The default is UTF-8.
  /// [typeInferenceDisabled] Whether to disable the inference of data types for JSON data. If true, all columns are registered as their primitive types (strings, number, or boolean).
  const DatascanDataDiscoverySpecStorageConfigJsonOptions({
    this.encoding,
    this.typeInferenceDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': ?encoding,
      'typeInferenceDisabled': ?typeInferenceDisabled,
    };
  }

  factory DatascanDataDiscoverySpecStorageConfigJsonOptions.fromMap(Map<String, dynamic> map) {
    return DatascanDataDiscoverySpecStorageConfigJsonOptions(
      encoding: (() { final guardedValue = map['encoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeInferenceDisabled: (() { final guardedValue = map['typeInferenceDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
