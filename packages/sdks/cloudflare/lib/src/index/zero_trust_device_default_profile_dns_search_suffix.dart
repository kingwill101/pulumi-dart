// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDeviceDefaultProfileDnsSearchSuffix {
  /// A description of the DNS search suffix.
  final pulumi.Input<String?>? description;
  /// The DNS search suffix to append when resolving short hostnames.
  final pulumi.Input<String> suffix;

  /// Creates a new [ZeroTrustDeviceDefaultProfileDnsSearchSuffix].
  /// [description] A description of the DNS search suffix.
  /// [suffix] The DNS search suffix to append when resolving short hostnames.
  const ZeroTrustDeviceDefaultProfileDnsSearchSuffix({
    this.description,
    required this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'suffix': suffix,
    };
  }

  factory ZeroTrustDeviceDefaultProfileDnsSearchSuffix.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceDefaultProfileDnsSearchSuffix(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suffix: pulumi.Input.fromValue(map['suffix'] as String),
    );
  }
}
