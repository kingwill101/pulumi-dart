// ignore_for_file: unused_element, unnecessary_cast


class GetFirewallApplyTo {
  /// (string) Label Selector to select servers the firewall is applied to. Empty if a server is directly
  /// referenced
  final String labelSelector;
  /// (int) ID of a server where the firewall is applied to. `0` if applied to a label_selector
  final int server;

  /// Creates a new [GetFirewallApplyTo].
  /// [labelSelector] (string) Label Selector to select servers the firewall is applied to. Empty if a server is directly
  /// [server] (int) ID of a server where the firewall is applied to. `0` if applied to a label_selector
  GetFirewallApplyTo({
    required this.labelSelector,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelSelector': labelSelector,
      'server': server,
    };
  }

  factory GetFirewallApplyTo.fromMap(Map<String, dynamic> map) {
    return GetFirewallApplyTo(
      labelSelector: map['labelSelector'] as String,
      server: map['server'] as int,
    );
  }
}

