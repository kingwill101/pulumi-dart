// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterApiServerProfile {
  /// The IP Address the Ingress Profile is associated with.
  final pulumi.Input<String>? ipAddress;
  /// The URL the API Server Profile is associated with.
  final pulumi.Input<String>? url;
  /// Cluster API server visibility. Supported values are `Public` and `Private`. Changing this forces a new resource to be created.
  final pulumi.Input<String> visibility;

  /// Creates a new [ClusterApiServerProfile].
  /// [ipAddress] The IP Address the Ingress Profile is associated with.
  /// [url] The URL the API Server Profile is associated with.
  /// [visibility] Cluster API server visibility. Supported values are `Public` and `Private`. Changing this forces a new resource to be created.
  const ClusterApiServerProfile({
    this.ipAddress,
    this.url,
    required this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'url': ?url,
      'visibility': visibility,
    };
  }

  factory ClusterApiServerProfile.fromMap(Map<String, dynamic> map) {
    return ClusterApiServerProfile(
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      visibility: pulumi.Input.fromValue(map['visibility'] as String),
    );
  }
}
