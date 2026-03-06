// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/typed_local_object_reference.dart';

/// IngressClassSpec provides information about the class of an Ingress.
class IngressClassSpecNetworkingK8sIoV1beta1 {
  /// Controller refers to the name of the controller that should handle this class. This allows for different "flavors" that are controlled by the same controller. For example, you may have different Parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. "acme.io/ingress-controller". This field is immutable.
  final pulumi.Input<String>? controller;
  /// Parameters is a link to a custom resource containing additional configuration for the controller. This is optional if the controller does not require extra parameters.
  final pulumi.Input<TypedLocalObjectReference>? parameters;

  /// Creates a new [IngressClassSpecNetworkingK8sIoV1beta1].
  /// [controller] Controller refers to the name of the controller that should handle this class. This allows for different "flavors" that are controlled by the same controller. For example, you may have different Parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. "acme.io/ingress-controller". This field is immutable.
  /// [parameters] Parameters is a link to a custom resource containing additional configuration for the controller. This is optional if the controller does not require extra parameters.
  const IngressClassSpecNetworkingK8sIoV1beta1({
    this.controller,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controller': ?controller,
      'parameters': ?pulumi.Input.mapOptionalInputValue<TypedLocalObjectReference, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory IngressClassSpecNetworkingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return IngressClassSpecNetworkingK8sIoV1beta1(
      controller: (() { final guardedValue = map['controller']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TypedLocalObjectReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

