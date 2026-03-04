// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudBuildPackBindingLaunch {
  /// Specifies a map of non-sensitive properties for launchProperties.
  final pulumi.Input<Map<String, String>>? properties;

  /// Specifies a map of sensitive properties for launchProperties.
  final pulumi.Input<Map<String, String>>? secrets;

  /// Creates a new [SpringCloudBuildPackBindingLaunch].
  /// [properties] Specifies a map of non-sensitive properties for launchProperties.
  /// [secrets] Specifies a map of sensitive properties for launchProperties.
  SpringCloudBuildPackBindingLaunch({this.properties, this.secrets});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'properties': ?properties, 'secrets': ?secrets};
  }

  factory SpringCloudBuildPackBindingLaunch.fromMap(Map<String, dynamic> map) {
    return SpringCloudBuildPackBindingLaunch(
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      secrets: (() {
        final guardedValue = map['secrets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
