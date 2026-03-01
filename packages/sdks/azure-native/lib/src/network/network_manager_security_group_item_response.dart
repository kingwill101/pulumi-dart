// ignore_for_file: unused_element, unnecessary_cast


/// Network manager security group item.
class NetworkManagerSecurityGroupItemResponse {
  /// Network manager group Id.
  final String networkGroupId;

  /// Creates a new [NetworkManagerSecurityGroupItemResponse].
  /// [networkGroupId] Network manager group Id.
  NetworkManagerSecurityGroupItemResponse({
    required this.networkGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkGroupId': networkGroupId,
    };
  }

  factory NetworkManagerSecurityGroupItemResponse.fromMap(Map<String, dynamic> map) {
    return NetworkManagerSecurityGroupItemResponse(
      networkGroupId: map['networkGroupId'] as String,
    );
  }
}

