// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification for an App Service Environment to use for this resource.
class HostingEnvironmentProfile {
  /// Resource ID of the App Service Environment.
  final pulumi.Input<String>? id;

  /// Creates a new [HostingEnvironmentProfile].
  /// [id] Resource ID of the App Service Environment.
  const HostingEnvironmentProfile({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory HostingEnvironmentProfile.fromMap(Map<String, dynamic> map) {
    return HostingEnvironmentProfile(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

