// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_resources_attribute_patch.dart';

/// NamedResourcesInstance represents one individual hardware instance that can be selected based on its attributes.
class NamedResourcesInstancePatch {
  /// Attributes defines the attributes of this resource instance. The name of each attribute must be unique.
  final pulumi.Input<List<NamedResourcesAttributePatch>>? attributes;

  /// Name is unique identifier among all resource instances managed by the driver on the node. It must be a DNS subdomain.
  final pulumi.Input<String>? name;

  /// Creates a new [NamedResourcesInstancePatch].
  /// [attributes] Attributes defines the attributes of this resource instance. The name of each attribute must be unique.
  /// [name] Name is unique identifier among all resource instances managed by the driver on the node. It must be a DNS subdomain.
  NamedResourcesInstancePatch({this.attributes, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes':
          ?pulumi.Input.mapOptionalInputValue<
            List<NamedResourcesAttributePatch>,
            List<Map<String, dynamic>>
          >(
            attributes,
            (value) =>
                pulumi.Input.encodeList<
                  NamedResourcesAttributePatch,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
    };
  }

  factory NamedResourcesInstancePatch.fromMap(Map<String, dynamic> map) {
    return NamedResourcesInstancePatch(
      attributes: (() {
        final guardedValue = map['attributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NamedResourcesAttributePatch>(
            guardedValue,
            (value) => NamedResourcesAttributePatch.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
