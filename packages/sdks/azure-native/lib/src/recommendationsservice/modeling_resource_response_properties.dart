// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'modeling_input_data_response.dart';

/// Modeling resource properties.
class ModelingResourceResponseProperties {
  /// Modeling features controls the set of supported scenarios\models being computed. This can only be set at Modeling creation.
  final pulumi.Input<String>? features;
  /// Modeling frequency controls the modeling compute frequency.
  final pulumi.Input<String>? frequency;
  /// The configuration to raw CDM data to be used as Modeling resource input.
  final pulumi.Input<ModelingInputDataResponse>? inputData;
  /// The resource provisioning state.
  final pulumi.Input<String> provisioningState;
  /// Modeling size controls the maximum supported input data size.
  final pulumi.Input<String>? size;

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
      'inputData': ?pulumi.Input.mapOptionalInputValue<ModelingInputDataResponse, Map<String, dynamic>>(inputData, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'size': ?size,
    };
  }

  factory ModelingResourceResponseProperties.fromMap(Map<String, dynamic> map) {
    return ModelingResourceResponseProperties(
      features: map['features'] == null ? null : (map['features'] as String).input(),
      frequency: map['frequency'] == null ? null : (map['frequency'] as String).input(),
      inputData: map['inputData'] == null ? null : (ModelingInputDataResponse.fromMap((map['inputData'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      size: map['size'] == null ? null : (map['size'] as String).input(),
    );
  }
}

