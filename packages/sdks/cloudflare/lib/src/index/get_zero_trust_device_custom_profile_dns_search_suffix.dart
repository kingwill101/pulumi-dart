// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDeviceCustomProfileDnsSearchSuffix {
  /// A description of the DNS search suffix.
  final pulumi.Input<String> description;
  /// The DNS search suffix to append when resolving short hostnames.
  final pulumi.Input<String> suffix;

  /// Creates a new [GetZeroTrustDeviceCustomProfileDnsSearchSuffix].
  /// [description] A description of the DNS search suffix.
  /// [suffix] The DNS search suffix to append when resolving short hostnames.
  const GetZeroTrustDeviceCustomProfileDnsSearchSuffix({
    required this.description,
    required this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'suffix': suffix,
    };
  }

  factory GetZeroTrustDeviceCustomProfileDnsSearchSuffix.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceCustomProfileDnsSearchSuffix(
      description: pulumi.Input.fromValue(map['description'] as String),
      suffix: pulumi.Input.fromValue(map['suffix'] as String),
    );
  }
}
