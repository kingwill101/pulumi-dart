// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundle {
  /// The name of the bundle.
  final pulumi.Input<String> bundleName;
  /// The set of namespaces to be exempted from the bundle.
  final pulumi.Input<List<String>>? exemptedNamespaces;

  /// Creates a new [FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundle].
  /// [bundleName] The name of the bundle.
  /// [exemptedNamespaces] The set of namespaces to be exempted from the bundle.
  FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundle({
    required this.bundleName,
    this.exemptedNamespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleName': bundleName,
      'exemptedNamespaces': ?exemptedNamespaces,
    };
  }

  factory FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundle.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundle(
      bundleName: pulumi.Input.fromValue(map['bundleName'] as String),
      exemptedNamespaces: (() { final guardedValue = map['exemptedNamespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

