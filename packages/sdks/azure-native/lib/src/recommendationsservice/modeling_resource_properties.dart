// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'modeling_input_data.dart';

/// Modeling resource properties.
class ModelingResourceProperties {
  /// Modeling features controls the set of supported scenarios\models being computed. This can only be set at Modeling creation.
  final pulumi.Input<String>? features;
  /// Modeling frequency controls the modeling compute frequency.
  final pulumi.Input<String>? frequency;
  /// The configuration to raw CDM data to be used as Modeling resource input.
  final pulumi.Input<ModelingInputData>? inputData;
  /// Modeling size controls the maximum supported input data size.
  final pulumi.Input<String>? size;

  /// Creates a new [ModelingResourceProperties].
  /// [features] Modeling features controls the set of supported scenarios\models being computed. This can only be set at Modeling creation.
  /// [frequency] Modeling frequency controls the modeling compute frequency.
  /// [inputData] The configuration to raw CDM data to be used as Modeling resource input.
  /// [size] Modeling size controls the maximum supported input data size.
  const ModelingResourceProperties({
    this.features,
    this.frequency,
    this.inputData,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'features': ?features,
      'frequency': ?frequency,
      'inputData': ?pulumi.Input.mapOptionalInputValue<ModelingInputData, Map<String, dynamic>>(inputData, (value) => value.toMap()),
      'size': ?size,
    };
  }

  factory ModelingResourceProperties.fromMap(Map<String, dynamic> map) {
    return ModelingResourceProperties(
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputData: (() { final guardedValue = map['inputData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ModelingInputData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

