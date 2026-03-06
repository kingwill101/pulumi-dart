// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_mediation_transformation.dart';

class PipelineMediation {
  /// Transformation defines the way to transform an incoming message.
  /// Structure is documented below.
  final pulumi.Input<PipelineMediationTransformation>? transformation;

  /// Creates a new [PipelineMediation].
  /// [transformation] Transformation defines the way to transform an incoming message.
  const PipelineMediation({
    this.transformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transformation': ?pulumi.Input.mapOptionalInputValue<PipelineMediationTransformation, Map<String, dynamic>>(transformation, (value) => value.toMap()),
    };
  }

  factory PipelineMediation.fromMap(Map<String, dynamic> map) {
    return PipelineMediation(
      transformation: (() { final guardedValue = map['transformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineMediationTransformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

