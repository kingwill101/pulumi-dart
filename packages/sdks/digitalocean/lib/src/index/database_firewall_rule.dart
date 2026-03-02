// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseFirewallRule {
  /// The date and time when the firewall rule was created.
  final pulumi.Input<String>? createdAt;
  /// The type of resource that the firewall rule allows to access the database cluster. The possible values are: `droplet`, `k8s`, `ip_addr`, `tag`, or `app`.
  final pulumi.Input<String> type;
  /// A unique identifier for the firewall rule.
  final pulumi.Input<String>? uuid;
  /// The ID of the specific resource, the name of a tag applied to a group of resources, or the IP address that the firewall rule allows to access the database cluster.
  final pulumi.Input<String> value;

  /// Creates a new [DatabaseFirewallRule].
  /// [createdAt] The date and time when the firewall rule was created.
  /// [type] The type of resource that the firewall rule allows to access the database cluster. The possible values are: `droplet`, `k8s`, `ip_addr`, `tag`, or `app`.
  /// [uuid] A unique identifier for the firewall rule.
  /// [value] The ID of the specific resource, the name of a tag applied to a group of resources, or the IP address that the firewall rule allows to access the database cluster.
  DatabaseFirewallRule({
    this.createdAt,
    required this.type,
    this.uuid,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'type': type,
      'uuid': ?uuid,
      'value': value,
    };
  }

  factory DatabaseFirewallRule.fromMap(Map<String, dynamic> map) {
    return DatabaseFirewallRule(
      createdAt: map['createdAt'] == null ? null : (map['createdAt']! as String).input(),
      type: (map['type'] as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid']! as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

