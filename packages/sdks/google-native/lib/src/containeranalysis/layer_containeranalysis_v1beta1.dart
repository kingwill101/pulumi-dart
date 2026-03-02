// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'layer_directive_containeranalysis_v1beta1.dart';

/// Layer holds metadata specific to a layer of a Docker image.
class LayerContaineranalysisV1beta1 {
  /// The recovered arguments to the Dockerfile directive.
  final pulumi.Input<String>? arguments;
  /// The recovered Dockerfile directive used to construct this layer.
  final pulumi.Input<LayerDirectiveContaineranalysisV1beta1> directive;

  /// Creates a new [LayerContaineranalysisV1beta1].
  /// [arguments] The recovered arguments to the Dockerfile directive.
  /// [directive] The recovered Dockerfile directive used to construct this layer.
  LayerContaineranalysisV1beta1({
    this.arguments,
    required this.directive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'directive': pulumi.Input.mapInputValue<LayerDirectiveContaineranalysisV1beta1, String>(directive, (value) => value.value),
    };
  }

  factory LayerContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return LayerContaineranalysisV1beta1(
      arguments: map['arguments'] == null ? null : (map['arguments']! as String).input(),
      directive: (LayerDirectiveContaineranalysisV1beta1.fromValue(map['directive'] as String)).input(),
    );
  }
}

