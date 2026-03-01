// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the node access related settings for the bare metal admin cluster.
class BareMetalAdminNodeAccessConfigResponse {
  /// LoginUser is the user name used to access node machines. It defaults to "root" if not set.
  final String loginUser;

  /// Creates a new [BareMetalAdminNodeAccessConfigResponse].
  /// [loginUser] LoginUser is the user name used to access node machines. It defaults to "root" if not set.
  BareMetalAdminNodeAccessConfigResponse({
    required this.loginUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginUser': loginUser,
    };
  }

  factory BareMetalAdminNodeAccessConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminNodeAccessConfigResponse(
      loginUser: map['loginUser'] as String,
    );
  }
}

