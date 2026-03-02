// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'layer_directive.dart';

/// Layer holds metadata specific to a layer of a Docker image.
class LayerContaineranalysisV1alpha1 {
  /// The recovered arguments to the Dockerfile directive.
  final pulumi.Input<String>? arguments;
  /// The recovered Dockerfile directive used to construct this layer.
  final pulumi.Input<LayerDirective>? directive;

  /// Creates a new [LayerContaineranalysisV1alpha1].
  /// [arguments] The recovered arguments to the Dockerfile directive.
  /// [directive] The recovered Dockerfile directive used to construct this layer.
  LayerContaineranalysisV1alpha1({
    this.arguments,
    this.directive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'directive': ?pulumi.Input.mapOptionalInputValue<LayerDirective, String>(directive, (value) => value.value),
    };
  }

  factory LayerContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return LayerContaineranalysisV1alpha1(
      arguments: map['arguments'] == null ? null : (map['arguments'] as String).input(),
      directive: map['directive'] == null ? null : (LayerDirective.fromValue(map['directive'] as String)).input(),
    );
  }
}

