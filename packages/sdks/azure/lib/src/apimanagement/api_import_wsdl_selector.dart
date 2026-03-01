// ignore_for_file: unused_element, unnecessary_cast


class ApiImportWsdlSelector {
  /// The name of endpoint (port) to import from WSDL.
  final String endpointName;
  /// The name of service to import from WSDL.
  final String serviceName;

  /// Creates a new [ApiImportWsdlSelector].
  /// [endpointName] The name of endpoint (port) to import from WSDL.
  /// [serviceName] The name of service to import from WSDL.
  ApiImportWsdlSelector({
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
      endpointName: map['endpointName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

