// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainQemuCapabilitiesDel {
  /// Configures the name of the domain, which should be unique within the host environment.
  final pulumi.Input<String> name;

  /// Creates a new [DomainQemuCapabilitiesDel].
  /// [name] Configures the name of the domain, which should be unique within the host environment.
  const DomainQemuCapabilitiesDel({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainQemuCapabilitiesDel.fromMap(Map<String, dynamic> map) {
    return DomainQemuCapabilitiesDel(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
