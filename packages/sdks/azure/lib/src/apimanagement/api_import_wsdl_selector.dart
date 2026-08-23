// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiImportWsdlSelector {
  /// The name of endpoint (port) to import from WSDL.
  final pulumi.Input<String> endpointName;
  /// The name of service to import from WSDL.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ApiImportWsdlSelector].
  /// [endpointName] The name of endpoint (port) to import from WSDL.
  /// [serviceName] The name of service to import from WSDL.
  const ApiImportWsdlSelector({
    required this.endpointName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'serviceName': serviceName,
    };
  }

  factory ApiImportWsdlSelector.fromMap(Map<String, dynamic> map) {
    return ApiImportWsdlSelector(
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
