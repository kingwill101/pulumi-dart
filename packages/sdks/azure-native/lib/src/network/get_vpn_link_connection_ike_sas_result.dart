// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVpnLinkConnectionIkeSas.
class GetVpnLinkConnectionIkeSasResult {
  final String? value;

  /// Creates a new [GetVpnLinkConnectionIkeSasResult].
  /// [value] Optional.
  GetVpnLinkConnectionIkeSasResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GetVpnLinkConnectionIkeSasResult.fromMap(Map<String, dynamic> map) {
    return GetVpnLinkConnectionIkeSasResult(
      value: map['value'] == null ? null : map['value']! as String,
    );
  }
}

