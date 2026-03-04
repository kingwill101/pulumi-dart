// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Partner's specific Properties
class PartnerProperties {
  /// The region of the instance
  final pulumi.Input<String> region;

  /// The subdomain of the instance
  final pulumi.Input<String> subdomain;

  /// Creates a new [PartnerProperties].
  /// [region] The region of the instance
  /// [subdomain] The subdomain of the instance
  PartnerProperties({required this.region, required this.subdomain});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'region': region, 'subdomain': subdomain};
  }

  factory PartnerProperties.fromMap(Map<String, dynamic> map) {
    return PartnerProperties(
      region: pulumi.Input.fromValue(map['region'] as String),
      subdomain: pulumi.Input.fromValue(map['subdomain'] as String),
    );
  }
}
