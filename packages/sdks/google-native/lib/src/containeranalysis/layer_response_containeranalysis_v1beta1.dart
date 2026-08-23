// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Layer holds metadata specific to a layer of a Docker image.
class LayerResponseContaineranalysisV1beta1 {
  /// The recovered arguments to the Dockerfile directive.
  final pulumi.Input<String> arguments;
  /// The recovered Dockerfile directive used to construct this layer.
  final pulumi.Input<String> directive;

  /// Creates a new [LayerResponseContaineranalysisV1beta1].
  /// [arguments] The recovered arguments to the Dockerfile directive.
  /// [directive] The recovered Dockerfile directive used to construct this layer.
  const LayerResponseContaineranalysisV1beta1({
    required this.arguments,
    required this.directive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': arguments,
      'directive': directive,
    };
  }

  factory LayerResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return LayerResponseContaineranalysisV1beta1(
      arguments: pulumi.Input.fromValue(map['arguments'] as String),
      directive: pulumi.Input.fromValue(map['directive'] as String),
    );
  }
}
