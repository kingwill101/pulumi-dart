// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The API backend service
class ApiResourceBackendServiceResponse {
  /// The service URL
  final pulumi.Input<String>? serviceUrl;

  /// Creates a new [ApiResourceBackendServiceResponse].
  /// [serviceUrl] The service URL
  ApiResourceBackendServiceResponse({
    this.serviceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceUrl': ?serviceUrl,
    };
  }

  factory ApiResourceBackendServiceResponse.fromMap(Map<String, dynamic> map) {
    return ApiResourceBackendServiceResponse(
      serviceUrl: map['serviceUrl'] == null ? null : (map['serviceUrl'] as String).input(),
    );
  }
}

