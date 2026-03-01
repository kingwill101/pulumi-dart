// ignore_for_file: unused_element, unnecessary_cast


class GetBackendAddressPoolBackendIpConfiguration {
  /// The ID of the Backend Address Pool.
  final String id;

  /// Creates a new [GetBackendAddressPoolBackendIpConfiguration].
  /// [id] The ID of the Backend Address Pool.
  GetBackendAddressPoolBackendIpConfiguration({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetBackendAddressPoolBackendIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetBackendAddressPoolBackendIpConfiguration(
      id: map['id'] as String,
    );
  }
}

