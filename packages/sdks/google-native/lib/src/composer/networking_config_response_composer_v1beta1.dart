// ignore_for_file: unused_element, unnecessary_cast


/// Configuration options for networking connections in the Composer 2 environment.
class NetworkingConfigResponseComposerV1beta1 {
  /// Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
  final String connectionType;

  /// Creates a new [NetworkingConfigResponseComposerV1beta1].
  /// [connectionType] Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
  NetworkingConfigResponseComposerV1beta1({
    required this.connectionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': connectionType,
    };
  }

  factory NetworkingConfigResponseComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return NetworkingConfigResponseComposerV1beta1(
      connectionType: map['connectionType'] as String,
    );
  }
}

