// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_type_extension_options_resource_creation_begin.dart';

/// The extension options.
class ResourceTypeRegistrationPropertiesExtensionOptions {
  /// Resource creation begin.
  final pulumi.Input<ResourceTypeExtensionOptionsResourceCreationBegin?>? resourceCreationBegin;

  /// Creates a new [ResourceTypeRegistrationPropertiesExtensionOptions].
  /// [resourceCreationBegin] Resource creation begin.
  const ResourceTypeRegistrationPropertiesExtensionOptions({
    this.resourceCreationBegin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceCreationBegin': ?pulumi.Input.mapOptionalInputValue<ResourceTypeExtensionOptionsResourceCreationBegin, Map<String, dynamic>>(resourceCreationBegin, (value) => value.toMap()),
    };
  }

  factory ResourceTypeRegistrationPropertiesExtensionOptions.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesExtensionOptions(
      resourceCreationBegin: (() { final guardedValue = map['resourceCreationBegin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeExtensionOptionsResourceCreationBegin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
