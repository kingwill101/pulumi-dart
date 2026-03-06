// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an arg name-&gt;value pair. Only a subset of customized flags are supported. For the exact format, refer to the [API server documentation](https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/).
class BareMetalApiServerArgument {
  /// The argument name as it appears on the API Server command line, make sure to remove the leading dashes.
  final pulumi.Input<String> argument;
  /// The value of the arg as it will be passed to the API Server command line.
  final pulumi.Input<String> value;

  /// Creates a new [BareMetalApiServerArgument].
  /// [argument] The argument name as it appears on the API Server command line, make sure to remove the leading dashes.
  /// [value] The value of the arg as it will be passed to the API Server command line.
  const BareMetalApiServerArgument({
    required this.argument,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argument': argument,
      'value': value,
    };
  }

  factory BareMetalApiServerArgument.fromMap(Map<String, dynamic> map) {
    return BareMetalApiServerArgument(
      argument: pulumi.Input.fromValue(map['argument'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

