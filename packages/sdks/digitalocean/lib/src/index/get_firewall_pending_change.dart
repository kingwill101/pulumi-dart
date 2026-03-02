// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallPendingChange {
  final pulumi.Input<int>? dropletId;
  final pulumi.Input<bool>? removing;
  /// A status string indicating the current state of the Firewall.
  /// This can be "waiting", "succeeded", or "failed".
  final pulumi.Input<String>? status;

  /// Creates a new [GetFirewallPendingChange].
  /// [dropletId] Optional.
  /// [removing] Optional.
  /// [status] A status string indicating the current state of the Firewall.
  GetFirewallPendingChange({
    this.dropletId,
    this.removing,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': ?dropletId,
      'removing': ?removing,
      'status': ?status,
    };
  }

  factory GetFirewallPendingChange.fromMap(Map<String, dynamic> map) {
    return GetFirewallPendingChange(
      dropletId: map['dropletId'] == null ? null : (map['dropletId'] as int).input(),
      removing: map['removing'] == null ? null : (map['removing'] as bool).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

