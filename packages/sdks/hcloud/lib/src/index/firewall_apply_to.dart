// ignore_for_file: unused_element, unnecessary_cast


class FirewallApplyTo {
  /// Label Selector to select servers the firewall should be applied to (only one
  /// of `server` and `label_selector`can be applied in one block)
  final String? labelSelector;
  /// ID of the server you want to apply the firewall to (only one of `server`
  /// and `label_selector`can be applied in one block)
  final int? server;

  /// Creates a new [FirewallApplyTo].
  /// [labelSelector] Label Selector to select servers the firewall should be applied to (only one
  /// [server] ID of the server you want to apply the firewall to (only one of `server`
  FirewallApplyTo({
    this.labelSelector,
    this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelSelector': ?labelSelector,
      'server': ?server,
    };
  }

  factory FirewallApplyTo.fromMap(Map<String, dynamic> map) {
    return FirewallApplyTo(
      labelSelector: map['labelSelector'] == null ? null : map['labelSelector'] as String,
      server: map['server'] == null ? null : map['server'] as int,
    );
  }
}

