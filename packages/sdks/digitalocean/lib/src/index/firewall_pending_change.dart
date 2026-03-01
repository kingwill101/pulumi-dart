// ignore_for_file: unused_element, unnecessary_cast


class FirewallPendingChange {
  final int? dropletId;
  final bool? removing;
  /// A status string indicating the current state of the Firewall.
  /// This can be "waiting", "succeeded", or "failed".
  final String? status;

  /// Creates a new [FirewallPendingChange].
  /// [dropletId] Optional.
  /// [removing] Optional.
  /// [status] A status string indicating the current state of the Firewall.
  FirewallPendingChange({
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

  factory FirewallPendingChange.fromMap(Map<String, dynamic> map) {
    return FirewallPendingChange(
      dropletId: map['dropletId'] == null ? null : map['dropletId'] as int,
      removing: map['removing'] == null ? null : map['removing'] as bool,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

