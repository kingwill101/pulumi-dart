// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Layer holds metadata specific to a layer of a Docker image.
class LayerResponse {
  /// The recovered arguments to the Dockerfile directive.
  final pulumi.Input<String> arguments;
  /// The recovered Dockerfile directive used to construct this layer. See https://docs.docker.com/engine/reference/builder/ for more information.
  final pulumi.Input<String> directive;

  /// Creates a new [LayerResponse].
  /// [arguments] The recovered arguments to the Dockerfile directive.
  /// [directive] The recovered Dockerfile directive used to construct this layer. See https://docs.docker.com/engine/reference/builder/ for more information.
  LayerResponse({
    required this.arguments,
    required this.directive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': arguments,
      'directive': directive,
    };
  }

  factory LayerResponse.fromMap(Map<String, dynamic> map) {
    return LayerResponse(
      arguments: (map['arguments'] as String).input(),
      directive: (map['directive'] as String).input(),
    );
  }
}

