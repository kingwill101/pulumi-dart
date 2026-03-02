// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_type_extension_options_resource_creation_begin_response.dart';

/// The extension options.
class ResourceTypeRegistrationPropertiesExtensionOptionsResponse {
  /// Resource creation begin.
  final pulumi.Input<ResourceTypeExtensionOptionsResourceCreationBeginResponse>? resourceCreationBegin;

  /// Creates a new [ResourceTypeRegistrationPropertiesExtensionOptionsResponse].
  /// [resourceCreationBegin] Resource creation begin.
  ResourceTypeRegistrationPropertiesExtensionOptionsResponse({
    this.resourceCreationBegin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceCreationBegin': ?pulumi.Input.mapOptionalInputValue<ResourceTypeExtensionOptionsResourceCreationBeginResponse, Map<String, dynamic>>(resourceCreationBegin, (value) => value.toMap()),
    };
  }

  factory ResourceTypeRegistrationPropertiesExtensionOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesExtensionOptionsResponse(
      resourceCreationBegin: map['resourceCreationBegin'] == null ? null : (ResourceTypeExtensionOptionsResourceCreationBeginResponse.fromMap((map['resourceCreationBegin'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

