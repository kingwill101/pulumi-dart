// ignore_for_file: unused_element, unnecessary_cast


class GetFirewallsFirewallApplyTo {
  final String labelSelector;
  final int server;

  /// Creates a new [GetFirewallsFirewallApplyTo].
  /// [labelSelector] Required.
  /// [server] Required.
  GetFirewallsFirewallApplyTo({
    required this.labelSelector,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelSelector': labelSelector,
      'server': server,
    };
  }

  factory GetFirewallsFirewallApplyTo.fromMap(Map<String, dynamic> map) {
    return GetFirewallsFirewallApplyTo(
      labelSelector: map['labelSelector'] as String,
      server: map['server'] as int,
    );
  }
}

