// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification for an App Service Environment to use for this resource.
class HostingEnvironmentProfileResponse {
  /// Resource ID of the App Service Environment.
  final pulumi.Input<String?>? id;
  /// Name of the App Service Environment.
  final pulumi.Input<String> name;
  /// Resource type of the App Service Environment.
  final pulumi.Input<String> type;

  /// Creates a new [HostingEnvironmentProfileResponse].
  /// [id] Resource ID of the App Service Environment.
  /// [name] Name of the App Service Environment.
  /// [type] Resource type of the App Service Environment.
  const HostingEnvironmentProfileResponse({
    this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': name,
      'type': type,
    };
  }

  factory HostingEnvironmentProfileResponse.fromMap(Map<String, dynamic> map) {
    return HostingEnvironmentProfileResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
