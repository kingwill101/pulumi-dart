// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Shielded Instance options.
class ShieldedInstanceConfigResponse {
  /// Defines whether the instance has Secure Boot enabled.
  final pulumi.Input<bool> enableSecureBoot;

  /// Creates a new [ShieldedInstanceConfigResponse].
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled.
  ShieldedInstanceConfigResponse({
    required this.enableSecureBoot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableSecureBoot': enableSecureBoot,
    };
  }

  factory ShieldedInstanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceConfigResponse(
      enableSecureBoot: (map['enableSecureBoot'] as bool).input(),
    );
  }
}

