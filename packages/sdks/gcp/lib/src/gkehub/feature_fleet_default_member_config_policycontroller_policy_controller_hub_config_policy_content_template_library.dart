// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary {
  /// Configures the manner in which the template library is installed on the cluster.
  /// Possible values are: `INSTALLATION_UNSPECIFIED`, `NOT_INSTALLED`, `ALL`.
  final pulumi.Input<String>? installation;

  /// Creates a new [FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary].
  /// [installation] Configures the manner in which the template library is installed on the cluster.
  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary({
    this.installation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'installation': ?installation};
  }

  factory FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary.fromMap(
    Map<String, dynamic> map,
  ) {
    return FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary(
      installation: (() {
        final guardedValue = map['installation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
