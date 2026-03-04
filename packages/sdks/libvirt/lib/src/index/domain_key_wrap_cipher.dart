// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainKeyWrapCipher {
  /// Sets the name of the cipher used for key wrapping in the domain.
  final pulumi.Input<String> name;

  /// Configures the state of the cipher used for key wrapping in the domain.
  final pulumi.Input<String> state;

  /// Creates a new [DomainKeyWrapCipher].
  /// [name] Sets the name of the cipher used for key wrapping in the domain.
  /// [state] Configures the state of the cipher used for key wrapping in the domain.
  DomainKeyWrapCipher({required this.name, required this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'state': state};
  }

  factory DomainKeyWrapCipher.fromMap(Map<String, dynamic> map) {
    return DomainKeyWrapCipher(
      name: pulumi.Input.fromValue(map['name'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
