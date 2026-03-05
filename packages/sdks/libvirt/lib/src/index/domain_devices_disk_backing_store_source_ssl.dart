// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskBackingStoreSourceSsl {
  /// Specifies the verification level of the SSL connections for the backing store.
  final pulumi.Input<String> verify;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceSsl].
  /// [verify] Specifies the verification level of the SSL connections for the backing store.
  DomainDevicesDiskBackingStoreSourceSsl({
    required this.verify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'verify': verify,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceSsl.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceSsl(
      verify: pulumi.Input.fromValue(map['verify'] as String),
    );
  }
}

