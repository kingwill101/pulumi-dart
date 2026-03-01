// ignore_for_file: unused_element, unnecessary_cast

import 'ingress_class_parameters_reference.dart';

/// IngressClassSpec provides information about the class of an Ingress.
class IngressClassSpec {
  /// controller refers to the name of the controller that should handle this class. This allows for different "flavors" that are controlled by the same controller. For example, you may have different parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. "acme.io/ingress-controller". This field is immutable.
  final String? controller;
  /// parameters is a link to a custom resource containing additional configuration for the controller. This is optional if the controller does not require extra parameters.
  final IngressClassParametersReference? parameters;

  /// Creates a new [IngressClassSpec].
  /// [controller] controller refers to the name of the controller that should handle this class. This allows for different "flavors" that are controlled by the same controller. For example, you may have different parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. "acme.io/ingress-controller". This field is immutable.
  /// [parameters] parameters is a link to a custom resource containing additional configuration for the controller. This is optional if the controller does not require extra parameters.
  IngressClassSpec({
    this.controller,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controller': ?controller,
      'parameters': ?parameters == null ? null : parameters!.toMap(),
    };
  }

  factory IngressClassSpec.fromMap(Map<String, dynamic> map) {
    return IngressClassSpec(
      controller: map['controller'] == null ? null : map['controller'] as String,
      parameters: map['parameters'] == null ? null : IngressClassParametersReference.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

