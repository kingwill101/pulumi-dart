// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountNetworkInjection {
  /// Specifies what features network injection applies to. The only possible value is `agent`.
  final pulumi.Input<String> scenario;
  /// The ID of the subnet which the Agent Client is injected into.
  ///
  /// &gt; **Note:** The agent subnet must use an address space in the 172.* or 192.* ranges.
  final pulumi.Input<String> subnetId;

  /// Creates a new [AccountNetworkInjection].
  /// [scenario] Specifies what features network injection applies to. The only possible value is `agent`.
  /// [subnetId] The ID of the subnet which the Agent Client is injected into.
  AccountNetworkInjection({
    required this.scenario,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scenario': scenario,
      'subnetId': subnetId,
    };
  }

  factory AccountNetworkInjection.fromMap(Map<String, dynamic> map) {
    return AccountNetworkInjection(
      scenario: pulumi.Input.fromValue(map['scenario'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

