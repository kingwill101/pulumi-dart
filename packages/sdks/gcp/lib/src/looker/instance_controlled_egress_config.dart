// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceControlledEgressConfig {
  /// List of fully qualified domain names to be added to the allowlist for
  /// outbound traffic.
  final pulumi.Input<List<String>>? egressFqdns;
  /// Whether the Looker Marketplace is enabled.
  final pulumi.Input<bool>? marketplaceEnabled;

  /// Creates a new [InstanceControlledEgressConfig].
  /// [egressFqdns] List of fully qualified domain names to be added to the allowlist for
  /// [marketplaceEnabled] Whether the Looker Marketplace is enabled.
  InstanceControlledEgressConfig({
    this.egressFqdns,
    this.marketplaceEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressFqdns': ?egressFqdns,
      'marketplaceEnabled': ?marketplaceEnabled,
    };
  }

  factory InstanceControlledEgressConfig.fromMap(Map<String, dynamic> map) {
    return InstanceControlledEgressConfig(
      egressFqdns: (() { final guardedValue = map['egressFqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      marketplaceEnabled: (() { final guardedValue = map['marketplaceEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

