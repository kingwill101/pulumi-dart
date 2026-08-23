// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainQemuCapabilitiesAdd {
  /// Configures the name of the domain, which should be unique within the host environment.
  final pulumi.Input<String> name;

  /// Creates a new [DomainQemuCapabilitiesAdd].
  /// [name] Configures the name of the domain, which should be unique within the host environment.
  const DomainQemuCapabilitiesAdd({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainQemuCapabilitiesAdd.fromMap(Map<String, dynamic> map) {
    return DomainQemuCapabilitiesAdd(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
