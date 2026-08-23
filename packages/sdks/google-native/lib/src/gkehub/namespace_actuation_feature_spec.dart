// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_actuation_feature_spec_actuation_mode.dart';

/// An empty spec for actuation feature. This is required since Feature proto requires a spec.
class NamespaceActuationFeatureSpec {
  /// actuation_mode controls the behavior of the controller
  final pulumi.Input<NamespaceActuationFeatureSpecActuationMode>? actuationMode;

  /// Creates a new [NamespaceActuationFeatureSpec].
  /// [actuationMode] actuation_mode controls the behavior of the controller
  const NamespaceActuationFeatureSpec({
    this.actuationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actuationMode': ?pulumi.Input.mapOptionalInputValue<NamespaceActuationFeatureSpecActuationMode, String>(actuationMode, (value) => value.wireValue),
    };
  }

  factory NamespaceActuationFeatureSpec.fromMap(Map<String, dynamic> map) {
    return NamespaceActuationFeatureSpec(
      actuationMode: (() { final guardedValue = map['actuationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NamespaceActuationFeatureSpecActuationMode.fromValue(guardedValue as String)); })(),
    );
  }
}
