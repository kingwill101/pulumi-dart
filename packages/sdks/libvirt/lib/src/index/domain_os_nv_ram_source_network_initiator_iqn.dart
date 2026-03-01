// ignore_for_file: unused_element, unnecessary_cast


class DomainOsNvRamSourceNetworkInitiatorIqn {
  /// Sets a name attribute for the iSCSI initiator's IQN for identification purposes.
  final String? name;

  /// Creates a new [DomainOsNvRamSourceNetworkInitiatorIqn].
  /// [name] Sets a name attribute for the iSCSI initiator's IQN for identification purposes.
  DomainOsNvRamSourceNetworkInitiatorIqn({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DomainOsNvRamSourceNetworkInitiatorIqn.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceNetworkInitiatorIqn(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

