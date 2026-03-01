// ignore_for_file: unused_element, unnecessary_cast


class AccountNetworkInjection {
  /// Specifies what features network injection applies to. The only possible value is `agent`.
  final String scenario;
  /// The ID of the subnet which the Agent Client is injected into.
  ///
  /// > **Note:** The agent subnet must use an address space in the 172.* or 192.* ranges.
  final String subnetId;

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
      scenario: map['scenario'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

