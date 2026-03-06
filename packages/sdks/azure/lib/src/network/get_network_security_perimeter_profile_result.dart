// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkSecurityPerimeterProfile.
class GetNetworkSecurityPerimeterProfileResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String networkSecurityPerimeterId;

  /// Creates a new [GetNetworkSecurityPerimeterProfileResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [networkSecurityPerimeterId] Required.
  const GetNetworkSecurityPerimeterProfileResult({
    required this.id,
    required this.name,
    required this.networkSecurityPerimeterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'networkSecurityPerimeterId': networkSecurityPerimeterId,
    };
  }

  factory GetNetworkSecurityPerimeterProfileResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityPerimeterProfileResult(
      id: map['id'] as String,
      name: map['name'] as String,
      networkSecurityPerimeterId: map['networkSecurityPerimeterId'] as String,
    );
  }
}

