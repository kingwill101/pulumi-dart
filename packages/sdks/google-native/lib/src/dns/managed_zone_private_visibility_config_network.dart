// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedZonePrivateVisibilityConfigNetwork {
  final pulumi.Input<String>? kind;

  /// The fully qualified URL of the VPC network to bind to. Format this URL like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final pulumi.Input<String>? networkUrl;

  /// Creates a new [ManagedZonePrivateVisibilityConfigNetwork].
  /// [kind] Optional.
  /// [networkUrl] The fully qualified URL of the VPC network to bind to. Format this URL like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  ManagedZonePrivateVisibilityConfigNetwork({this.kind, this.networkUrl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kind': ?kind, 'networkUrl': ?networkUrl};
  }

  factory ManagedZonePrivateVisibilityConfigNetwork.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedZonePrivateVisibilityConfigNetwork(
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkUrl: (() {
        final guardedValue = map['networkUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
