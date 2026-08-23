// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The template deployment options.
class ResourceProviderManifestPropertiesTemplateDeploymentOptions {
  /// The preflight options.
  final pulumi.Input<List<String>>? preflightOptions;
  /// Whether preflight is supported.
  final pulumi.Input<bool>? preflightSupported;

  /// Creates a new [ResourceProviderManifestPropertiesTemplateDeploymentOptions].
  /// [preflightOptions] The preflight options.
  /// [preflightSupported] Whether preflight is supported.
  const ResourceProviderManifestPropertiesTemplateDeploymentOptions({
    this.preflightOptions,
    this.preflightSupported,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preflightOptions': ?preflightOptions,
      'preflightSupported': ?preflightSupported,
    };
  }

  factory ResourceProviderManifestPropertiesTemplateDeploymentOptions.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesTemplateDeploymentOptions(
      preflightOptions: (() { final guardedValue = map['preflightOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      preflightSupported: (() { final guardedValue = map['preflightSupported']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
