// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorSourceNetworkInitiatorIqn {
  /// Sets a name attribute for the iSCSI initiator's IQN for identification purposes.
  final String? name;

  /// Creates a new [DomainDevicesDiskMirrorSourceNetworkInitiatorIqn].
  /// [name] Sets a name attribute for the iSCSI initiator's IQN for identification purposes.
  DomainDevicesDiskMirrorSourceNetworkInitiatorIqn({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DomainDevicesDiskMirrorSourceNetworkInitiatorIqn.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceNetworkInitiatorIqn(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

