// ignore_for_file: unused_element, unnecessary_cast


class NetworkVlanTag {
  /// Sets the identifier for the VLAN tag within the port group.
  final double? id;
  /// Indicates whether the VLAN tag operates in native mode for the port group.
  final String? nativeMode;

  /// Creates a new [NetworkVlanTag].
  /// [id] Sets the identifier for the VLAN tag within the port group.
  /// [nativeMode] Indicates whether the VLAN tag operates in native mode for the port group.
  NetworkVlanTag({
    this.id,
    this.nativeMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'nativeMode': ?nativeMode,
    };
  }

  factory NetworkVlanTag.fromMap(Map<String, dynamic> map) {
    return NetworkVlanTag(
      id: map['id'] == null ? null : map['id'] as double,
      nativeMode: map['nativeMode'] == null ? null : map['nativeMode'] as String,
    );
  }
}

