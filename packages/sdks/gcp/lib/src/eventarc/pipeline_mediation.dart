// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_mediation_transformation.dart';

class PipelineMediation {
  /// Transformation defines the way to transform an incoming message.
  /// Structure is documented below.
  final PipelineMediationTransformation? transformation;

  /// Creates a new [PipelineMediation].
  /// [transformation] Transformation defines the way to transform an incoming message.
  PipelineMediation({
    this.transformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transformation': ?transformation == null ? null : transformation!.toMap(),
    };
  }

  factory PipelineMediation.fromMap(Map<String, dynamic> map) {
    return PipelineMediation(
      transformation: map['transformation'] == null ? null : PipelineMediationTransformation.fromMap((map['transformation'] as Map).cast<String, dynamic>()),
    );
  }
}

