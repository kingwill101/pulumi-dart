// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> bundle;
  /// The set of namespaces to be exempted from the bundle.
  final pulumi.Input<List<String>>? exemptedNamespaces;

  /// Creates a new [FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle].
  /// [bundle] The identifier for this object. Format specified above.
  /// [exemptedNamespaces] The set of namespaces to be exempted from the bundle.
  const FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle({
    required this.bundle,
    this.exemptedNamespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundle': bundle,
      'exemptedNamespaces': ?exemptedNamespaces,
    };
  }

  factory FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle.fromMap(Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle(
      bundle: pulumi.Input.fromValue(map['bundle'] as String),
      exemptedNamespaces: (() { final guardedValue = map['exemptedNamespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

