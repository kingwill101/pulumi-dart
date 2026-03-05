// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The API backend service
class ApiResourceBackendService {
  /// The service URL
  final pulumi.Input<String>? serviceUrl;

  /// Creates a new [ApiResourceBackendService].
  /// [serviceUrl] The service URL
  ApiResourceBackendService({
    this.serviceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceUrl': ?serviceUrl,
    };
  }

  factory ApiResourceBackendService.fromMap(Map<String, dynamic> map) {
    return ApiResourceBackendService(
      serviceUrl: (() { final guardedValue = map['serviceUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

