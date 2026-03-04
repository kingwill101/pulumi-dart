// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MirroringDeploymentGroupConnectedEndpointGroup {
  /// (Output)
  /// The connected endpoint group's resource name, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String>? name;

  /// Creates a new [MirroringDeploymentGroupConnectedEndpointGroup].
  /// [name] (Output)
  MirroringDeploymentGroupConnectedEndpointGroup({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory MirroringDeploymentGroupConnectedEndpointGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return MirroringDeploymentGroupConnectedEndpointGroup(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
