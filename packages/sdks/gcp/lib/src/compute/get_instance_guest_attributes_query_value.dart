// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceGuestAttributesQueryValue {
  /// Key of the guest_attribute.
  final pulumi.Input<String> key;
  /// Namespace of the guest_attribute.
  final pulumi.Input<String> namespace;
  /// Value of the guest_attribute.
  final pulumi.Input<String> value;

  /// Creates a new [GetInstanceGuestAttributesQueryValue].
  /// [key] Key of the guest_attribute.
  /// [namespace] Namespace of the guest_attribute.
  /// [value] Value of the guest_attribute.
  GetInstanceGuestAttributesQueryValue({
    required this.key,
    required this.namespace,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'namespace': namespace,
      'value': value,
    };
  }

  factory GetInstanceGuestAttributesQueryValue.fromMap(Map<String, dynamic> map) {
    return GetInstanceGuestAttributesQueryValue(
      key: (map['key'] as String).input(),
      namespace: (map['namespace'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

