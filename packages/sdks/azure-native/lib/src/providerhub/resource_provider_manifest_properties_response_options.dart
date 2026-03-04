// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Response options.
class ResourceProviderManifestPropertiesResponseOptions {
  final pulumi.Input<String>? serviceClientOptionsType;

  /// Creates a new [ResourceProviderManifestPropertiesResponseOptions].
  /// [serviceClientOptionsType] Optional.
  ResourceProviderManifestPropertiesResponseOptions({
    this.serviceClientOptionsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceClientOptionsType': ?serviceClientOptionsType,
    };
  }

  factory ResourceProviderManifestPropertiesResponseOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceProviderManifestPropertiesResponseOptions(
      serviceClientOptionsType: (() {
        final guardedValue = map['serviceClientOptionsType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
