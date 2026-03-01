// ignore_for_file: unused_element, unnecessary_cast

import 'modeling_input_data.dart';

/// Modeling resource properties.
class ModelingResourceProperties {
  /// Modeling features controls the set of supported scenarios\models being computed. This can only be set at Modeling creation.
  final String? features;
  /// Modeling frequency controls the modeling compute frequency.
  final String? frequency;
  /// The configuration to raw CDM data to be used as Modeling resource input.
  final ModelingInputData? inputData;
  /// Modeling size controls the maximum supported input data size.
  final String? size;

  /// Creates a new [ModelingResourceProperties].
  /// [features] Modeling features controls the set of supported scenarios\models being computed. This can only be set at Modeling creation.
  /// [frequency] Modeling frequency controls the modeling compute frequency.
  /// [inputData] The configuration to raw CDM data to be used as Modeling resource input.
  /// [size] Modeling size controls the maximum supported input data size.
  ModelingResourceProperties({
    this.features,
    this.frequency,
    this.inputData,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'features': ?features,
      'frequency': ?frequency,
      'inputData': ?inputData == null ? null : inputData!.toMap(),
      'size': ?size,
    };
  }

  factory ModelingResourceProperties.fromMap(Map<String, dynamic> map) {
    return ModelingResourceProperties(
      features: map['features'] == null ? null : map['features'] as String,
      frequency: map['frequency'] == null ? null : map['frequency'] as String,
      inputData: map['inputData'] == null ? null : ModelingInputData.fromMap((map['inputData'] as Map).cast<String, dynamic>()),
      size: map['size'] == null ? null : map['size'] as String,
    );
  }
}

