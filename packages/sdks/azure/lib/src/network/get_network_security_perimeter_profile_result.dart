// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkSecurityPerimeterProfile.
class GetNetworkSecurityPerimeterProfileResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? networkSecurityPerimeterId;

  /// Creates a new [GetNetworkSecurityPerimeterProfileResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [networkSecurityPerimeterId] Optional.
  const GetNetworkSecurityPerimeterProfileResult({
    this.id,
    this.name,
    this.networkSecurityPerimeterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'networkSecurityPerimeterId': ?networkSecurityPerimeterId,
    };
  }

  factory GetNetworkSecurityPerimeterProfileResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityPerimeterProfileResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkSecurityPerimeterId: (() { final guardedValue = map['networkSecurityPerimeterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
