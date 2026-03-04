// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainMetadata {
  /// Contains XML formatted metadata specific to the domain, enabling custom data storage within the domain.
  final pulumi.Input<String> xml;

  /// Creates a new [DomainMetadata].
  /// [xml] Contains XML formatted metadata specific to the domain, enabling custom data storage within the domain.
  DomainMetadata({required this.xml});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'xml': xml};
  }

  factory DomainMetadata.fromMap(Map<String, dynamic> map) {
    return DomainMetadata(xml: pulumi.Input.fromValue(map['xml'] as String));
  }
}
