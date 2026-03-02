// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorBackingStoreSourceSsl {
  /// Specifies the verification level of the SSL connections for the backing store.
  final pulumi.Input<String> verify;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceSsl].
  /// [verify] Specifies the verification level of the SSL connections for the backing store.
  DomainDevicesDiskMirrorBackingStoreSourceSsl({
    required this.verify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'verify': verify,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceSsl.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceSsl(
      verify: (map['verify'] as String).input(),
    );
  }
}

