// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceSsl {
  /// Specifies the verification level of the SSL connections for the backing store.
  final pulumi.Input<String> verify;

  /// Creates a new [DomainOsNvRamSourceSsl].
  /// [verify] Specifies the verification level of the SSL connections for the backing store.
  const DomainOsNvRamSourceSsl({
    required this.verify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'verify': verify,
    };
  }

  factory DomainOsNvRamSourceSsl.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceSsl(
      verify: pulumi.Input.fromValue(map['verify'] as String),
    );
  }
}

