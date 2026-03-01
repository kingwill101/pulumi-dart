// ignore_for_file: unused_element, unnecessary_cast

import 'modeling_input_data_response.dart';

/// Modeling resource properties.
class ModelingResourceResponseProperties {
  /// Modeling features controls the set of supported scenarios\models being computed. This can only be set at Modeling creation.
  final String? features;
  /// Modeling frequency controls the modeling compute frequency.
  final String? frequency;
  /// The configuration to raw CDM data to be used as Modeling resource input.
  final ModelingInputDataResponse? inputData;
  /// The resource provisioning state.
  final String provisioningState;
  /// Modeling size controls the maximum supported input data size.
  final String? size;

  /// Creates a new [ModelingResourceResponseProperties].
  /// [features] Modeling features controls the set of supported scenarios\models being computed. This can only be set at Modeling creation.
  /// [frequency] Modeling frequency controls the modeling compute frequency.
  /// [inputData] The configuration to raw CDM data to be used as Modeling resource input.
  /// [provisioningState] The resource provisioning state.
  /// [size] Modeling size controls the maximum supported input data size.
  ModelingResourceResponseProperties({
    this.features,
    this.frequency,
    this.inputData,
    required this.provisioningState,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'features': ?features,
      'frequency': ?frequency,
      'inputData': ?inputData == null ? null : inputData!.toMap(),
      'provisioningState': provisioningState,
      'size': ?size,
    };
  }

  factory ModelingResourceResponseProperties.fromMap(Map<String, dynamic> map) {
    return ModelingResourceResponseProperties(
      features: map['features'] == null ? null : map['features'] as String,
      frequency: map['frequency'] == null ? null : map['frequency'] as String,
      inputData: map['inputData'] == null ? null : ModelingInputDataResponse.fromMap((map['inputData'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      size: map['size'] == null ? null : map['size'] as String,
    );
  }
}

