// ignore_for_file: unused_element, unnecessary_cast


class NetworkVirtualPortParamsAny {
  /// Sets the instance ID for the virtual port parameter.
  final String? instanceId;
  /// Defines the interface ID for the virtual port parameter.
  final String? interfaceId;
  /// Configures the manager ID associated with the virtual port parameter.
  final double? managerId;
  /// Specifies the profile ID for the virtual port parameter.
  final String? profileId;
  /// Sets the type ID for the virtual port parameter.
  final double? typeId;
  /// Indicates the version of the type ID for the virtual port parameter.
  final double? typeIdVersion;

  /// Creates a new [NetworkVirtualPortParamsAny].
  /// [instanceId] Sets the instance ID for the virtual port parameter.
  /// [interfaceId] Defines the interface ID for the virtual port parameter.
  /// [managerId] Configures the manager ID associated with the virtual port parameter.
  /// [profileId] Specifies the profile ID for the virtual port parameter.
  /// [typeId] Sets the type ID for the virtual port parameter.
  /// [typeIdVersion] Indicates the version of the type ID for the virtual port parameter.
  NetworkVirtualPortParamsAny({
    this.instanceId,
    this.interfaceId,
    this.managerId,
    this.profileId,
    this.typeId,
    this.typeIdVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'interfaceId': ?interfaceId,
      'managerId': ?managerId,
      'profileId': ?profileId,
      'typeId': ?typeId,
      'typeIdVersion': ?typeIdVersion,
    };
  }

  factory NetworkVirtualPortParamsAny.fromMap(Map<String, dynamic> map) {
    return NetworkVirtualPortParamsAny(
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      interfaceId: map['interfaceId'] == null ? null : map['interfaceId'] as String,
      managerId: map['managerId'] == null ? null : map['managerId'] as double,
      profileId: map['profileId'] == null ? null : map['profileId'] as String,
      typeId: map['typeId'] == null ? null : map['typeId'] as double,
      typeIdVersion: map['typeIdVersion'] == null ? null : map['typeIdVersion'] as double,
    );
  }
}

