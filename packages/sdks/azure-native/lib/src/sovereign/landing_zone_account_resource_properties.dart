// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of landing zone account resource type.
class LandingZoneAccountResourceProperties {
  /// The storage account that will host the generated infrastructure as code (IaC) for a landing zone deployment.
  final pulumi.Input<String> storageAccount;

  /// Creates a new [LandingZoneAccountResourceProperties].
  /// [storageAccount] The storage account that will host the generated infrastructure as code (IaC) for a landing zone deployment.
  const LandingZoneAccountResourceProperties({
    required this.storageAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccount': storageAccount,
    };
  }

  factory LandingZoneAccountResourceProperties.fromMap(Map<String, dynamic> map) {
    return LandingZoneAccountResourceProperties(
      storageAccount: pulumi.Input.fromValue(map['storageAccount'] as String),
    );
  }
}
