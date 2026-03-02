// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification for an App Service Environment to use for this resource.
class HostingEnvironmentProfileResponse {
  /// Resource ID of the App Service Environment.
  final pulumi.Input<String>? id;
  /// Name of the App Service Environment.
  final pulumi.Input<String> name;
  /// Resource type of the App Service Environment.
  final pulumi.Input<String> type;

  /// Creates a new [HostingEnvironmentProfileResponse].
  /// [id] Resource ID of the App Service Environment.
  /// [name] Name of the App Service Environment.
  /// [type] Resource type of the App Service Environment.
  HostingEnvironmentProfileResponse({
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
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

