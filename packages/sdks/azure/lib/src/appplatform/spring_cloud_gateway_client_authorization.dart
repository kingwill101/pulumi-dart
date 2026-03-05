// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudGatewayClientAuthorization {
  /// Specifies the Spring Cloud Certificate IDs of the Spring Cloud Gateway.
  final pulumi.Input<List<String>>? certificateIds;
  /// Specifies whether the client certificate verification is enabled.
  final pulumi.Input<bool>? verificationEnabled;

  /// Creates a new [SpringCloudGatewayClientAuthorization].
  /// [certificateIds] Specifies the Spring Cloud Certificate IDs of the Spring Cloud Gateway.
  /// [verificationEnabled] Specifies whether the client certificate verification is enabled.
  SpringCloudGatewayClientAuthorization({
    this.certificateIds,
    this.verificationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateIds': ?certificateIds,
      'verificationEnabled': ?verificationEnabled,
    };
  }

  factory SpringCloudGatewayClientAuthorization.fromMap(Map<String, dynamic> map) {
    return SpringCloudGatewayClientAuthorization(
      certificateIds: (() { final guardedValue = map['certificateIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      verificationEnabled: (() { final guardedValue = map['verificationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

