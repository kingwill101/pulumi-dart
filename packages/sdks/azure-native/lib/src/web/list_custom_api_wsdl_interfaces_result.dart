// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wsdl_service_response.dart';

/// Result data returned by listCustomApiWsdlInterfaces.
class ListCustomApiWsdlInterfacesResult {
  /// Collection of WSDL interfaces
  final List<WsdlServiceResponse>? value;

  /// Creates a new [ListCustomApiWsdlInterfacesResult].
  /// [value] Collection of WSDL interfaces
  ListCustomApiWsdlInterfacesResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value == null ? null : pulumi.Input.encodeList<WsdlServiceResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListCustomApiWsdlInterfacesResult.fromMap(Map<String, dynamic> map) {
    return ListCustomApiWsdlInterfacesResult(
      value: map['value'] == null ? null : pulumi.Input.decodeList<WsdlServiceResponse>(map['value']!, (value) => WsdlServiceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

