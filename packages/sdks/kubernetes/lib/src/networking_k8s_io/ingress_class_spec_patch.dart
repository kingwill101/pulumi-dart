// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_class_parameters_reference_patch.dart';

/// IngressClassSpec provides information about the class of an Ingress.
class IngressClassSpecPatch {
  /// controller refers to the name of the controller that should handle this class. This allows for different "flavors" that are controlled by the same controller. For example, you may have different parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. "acme.io/ingress-controller". This field is immutable.
  final pulumi.Input<String>? controller;

  /// parameters is a link to a custom resource containing additional configuration for the controller. This is optional if the controller does not require extra parameters.
  final pulumi.Input<IngressClassParametersReferencePatch>? parameters;

  /// Creates a new [IngressClassSpecPatch].
  /// [controller] controller refers to the name of the controller that should handle this class. This allows for different "flavors" that are controlled by the same controller. For example, you may have different parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. "acme.io/ingress-controller". This field is immutable.
  /// [parameters] parameters is a link to a custom resource containing additional configuration for the controller. This is optional if the controller does not require extra parameters.
  IngressClassSpecPatch({this.controller, this.parameters});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controller': ?controller,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            IngressClassParametersReferencePatch,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
    };
  }

  factory IngressClassSpecPatch.fromMap(Map<String, dynamic> map) {
    return IngressClassSpecPatch(
      controller: (() {
        final guardedValue = map['controller'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IngressClassParametersReferencePatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
