// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle {
  final pulumi.Input<String> bundle;
  /// The set of namespaces to be exempted from the bundle.
  final pulumi.Input<List<String>> exemptedNamespaces;

  /// Creates a new [GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle].
  /// [bundle] Required.
  /// [exemptedNamespaces] The set of namespaces to be exempted from the bundle.
  GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle({
    required this.bundle,
    required this.exemptedNamespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundle': bundle,
      'exemptedNamespaces': exemptedNamespaces,
    };
  }

  factory GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle.fromMap(Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle(
      bundle: pulumi.Input.fromValue(map['bundle'] as String),
      exemptedNamespaces: pulumi.Input.fromValue((map['exemptedNamespaces'] as List).cast<String>()),
    );
  }
}

