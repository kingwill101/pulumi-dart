// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The service with name and endpoint names
class WsdlServiceResponse {
  /// List of the endpoints' qualified names
  final pulumi.Input<List<String>>? endpointQualifiedNames;
  /// The service's qualified name
  final pulumi.Input<String> qualifiedName;

  /// Creates a new [WsdlServiceResponse].
  /// [endpointQualifiedNames] List of the endpoints' qualified names
  /// [qualifiedName] The service's qualified name
  const WsdlServiceResponse({
    this.endpointQualifiedNames,
    required this.qualifiedName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointQualifiedNames': ?endpointQualifiedNames,
      'qualifiedName': qualifiedName,
    };
  }

  factory WsdlServiceResponse.fromMap(Map<String, dynamic> map) {
    return WsdlServiceResponse(
      endpointQualifiedNames: (() { final guardedValue = map['endpointQualifiedNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      qualifiedName: pulumi.Input.fromValue(map['qualifiedName'] as String),
    );
  }
}

