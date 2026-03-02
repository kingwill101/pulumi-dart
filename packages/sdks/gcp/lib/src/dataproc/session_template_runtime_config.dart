// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SessionTemplateRuntimeConfig {
  /// Optional custom container image for the job runtime environment. If not specified, a default container image will be used.
  final pulumi.Input<String>? containerImage;
  /// (Output)
  /// A mapping of property names to values, which are used to configure workload execution.
  final pulumi.Input<Map<String, String>>? effectiveProperties;
  /// A mapping of property names to values, which are used to configure workload execution.
  final pulumi.Input<Map<String, String>>? properties;
  /// Version of the session runtime.
  final pulumi.Input<String>? version;

  /// Creates a new [SessionTemplateRuntimeConfig].
  /// [containerImage] Optional custom container image for the job runtime environment. If not specified, a default container image will be used.
  /// [effectiveProperties] (Output)
  /// [properties] A mapping of property names to values, which are used to configure workload execution.
  /// [version] Version of the session runtime.
  SessionTemplateRuntimeConfig({
    this.containerImage,
    this.effectiveProperties,
    this.properties,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImage': ?containerImage,
      'effectiveProperties': ?effectiveProperties,
      'properties': ?properties,
      'version': ?version,
    };
  }

  factory SessionTemplateRuntimeConfig.fromMap(Map<String, dynamic> map) {
    return SessionTemplateRuntimeConfig(
      containerImage: map['containerImage'] == null ? null : (map['containerImage']! as String).input(),
      effectiveProperties: map['effectiveProperties'] == null ? null : ((map['effectiveProperties']! as Map).cast<String, String>()).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

