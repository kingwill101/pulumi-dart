// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Layer holds metadata specific to a layer of a Docker image.
class Layer {
  /// The recovered arguments to the Dockerfile directive.
  final pulumi.Input<String>? arguments;

  /// The recovered Dockerfile directive used to construct this layer. See https://docs.docker.com/engine/reference/builder/ for more information.
  final pulumi.Input<String> directive;

  /// Creates a new [Layer].
  /// [arguments] The recovered arguments to the Dockerfile directive.
  /// [directive] The recovered Dockerfile directive used to construct this layer. See https://docs.docker.com/engine/reference/builder/ for more information.
  Layer({this.arguments, required this.directive});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arguments': ?arguments, 'directive': directive};
  }

  factory Layer.fromMap(Map<String, dynamic> map) {
    return Layer(
      arguments: (() {
        final guardedValue = map['arguments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      directive: pulumi.Input.fromValue(map['directive'] as String),
    );
  }
}
