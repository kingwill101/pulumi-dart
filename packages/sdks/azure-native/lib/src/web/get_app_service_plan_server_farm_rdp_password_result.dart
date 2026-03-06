// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAppServicePlanServerFarmRdpPassword.
class GetAppServicePlanServerFarmRdpPasswordResult {
  /// The RDP password for the server farm.
  final String? rdpPassword;
  /// The RDP password expiry date.
  final String? rdpPasswordExpiry;

  /// Creates a new [GetAppServicePlanServerFarmRdpPasswordResult].
  /// [rdpPassword] The RDP password for the server farm.
  /// [rdpPasswordExpiry] The RDP password expiry date.
  const GetAppServicePlanServerFarmRdpPasswordResult({
    this.rdpPassword,
    this.rdpPasswordExpiry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rdpPassword': ?rdpPassword,
      'rdpPasswordExpiry': ?rdpPasswordExpiry,
    };
  }

  factory GetAppServicePlanServerFarmRdpPasswordResult.fromMap(Map<String, dynamic> map) {
    return GetAppServicePlanServerFarmRdpPasswordResult(
      rdpPassword: (() { final guardedValue = map['rdpPassword']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rdpPasswordExpiry: (() { final guardedValue = map['rdpPasswordExpiry']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

