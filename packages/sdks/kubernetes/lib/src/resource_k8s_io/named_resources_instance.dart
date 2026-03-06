// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_resources_attribute.dart';

/// NamedResourcesInstance represents one individual hardware instance that can be selected based on its attributes.
class NamedResourcesInstance {
  /// Attributes defines the attributes of this resource instance. The name of each attribute must be unique.
  final pulumi.Input<List<NamedResourcesAttribute>>? attributes;
  /// Name is unique identifier among all resource instances managed by the driver on the node. It must be a DNS subdomain.
  final pulumi.Input<String> name;

  /// Creates a new [NamedResourcesInstance].
  /// [attributes] Attributes defines the attributes of this resource instance. The name of each attribute must be unique.
  /// [name] Name is unique identifier among all resource instances managed by the driver on the node. It must be a DNS subdomain.
  const NamedResourcesInstance({
    this.attributes,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<NamedResourcesAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<NamedResourcesAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory NamedResourcesInstance.fromMap(Map<String, dynamic> map) {
    return NamedResourcesInstance(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamedResourcesAttribute>(guardedValue, (value) => NamedResourcesAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

