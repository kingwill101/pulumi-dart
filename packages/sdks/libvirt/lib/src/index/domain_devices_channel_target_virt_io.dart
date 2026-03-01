// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesChannelTargetVirtIo {
  /// This field configures the name of the VirtIO channel target.
  final String? name;
  /// This field sets the state of the VirtIO channel target, indicating if it is enabled or disabled.
  final String? state;

  /// Creates a new [DomainDevicesChannelTargetVirtIo].
  /// [name] This field configures the name of the VirtIO channel target.
  /// [state] This field sets the state of the VirtIO channel target, indicating if it is enabled or disabled.
  DomainDevicesChannelTargetVirtIo({
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'state': ?state,
    };
  }

  factory DomainDevicesChannelTargetVirtIo.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelTargetVirtIo(
      name: map['name'] == null ? null : map['name'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

