// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesChannelTargetGuestFwd {
  /// This field specifies the address to which the guest forwarding will connect.
  final String? address;
  /// This field sets the port number for the guest forwarding connection.
  final String? port;

  /// Creates a new [DomainDevicesChannelTargetGuestFwd].
  /// [address] This field specifies the address to which the guest forwarding will connect.
  /// [port] This field sets the port number for the guest forwarding connection.
  DomainDevicesChannelTargetGuestFwd({
    this.address,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'port': ?port,
    };
  }

  factory DomainDevicesChannelTargetGuestFwd.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelTargetGuestFwd(
      address: map['address'] == null ? null : map['address'] as String,
      port: map['port'] == null ? null : map['port'] as String,
    );
  }
}

