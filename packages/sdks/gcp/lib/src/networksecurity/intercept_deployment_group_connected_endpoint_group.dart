// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterceptDeploymentGroupConnectedEndpointGroup {
  /// (Output)
  /// The connected endpoint group's resource name, for example:
  /// `projects/123456789/locations/global/interceptEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String>? name;

  /// Creates a new [InterceptDeploymentGroupConnectedEndpointGroup].
  /// [name] (Output)
  InterceptDeploymentGroupConnectedEndpointGroup({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory InterceptDeploymentGroupConnectedEndpointGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return InterceptDeploymentGroupConnectedEndpointGroup(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
