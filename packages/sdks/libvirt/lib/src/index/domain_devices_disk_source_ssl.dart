// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskSourceSsl {
  /// Specifies the verification level of the SSL connections for the backing store.
  final pulumi.Input<String> verify;

  /// Creates a new [DomainDevicesDiskSourceSsl].
  /// [verify] Specifies the verification level of the SSL connections for the backing store.
  const DomainDevicesDiskSourceSsl({
    required this.verify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'verify': verify,
    };
  }

  factory DomainDevicesDiskSourceSsl.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceSsl(
      verify: pulumi.Input.fromValue(map['verify'] as String),
    );
  }
}

