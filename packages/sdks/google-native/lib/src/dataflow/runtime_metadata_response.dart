// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_metadata_response.dart';
import 'sdkinfo_response.dart';

/// RuntimeMetadata describing a runtime environment.
class RuntimeMetadataResponse {
  /// The parameters for the template.
  final pulumi.Input<List<ParameterMetadataResponse>> parameters;
  /// SDK Info for the template.
  final pulumi.Input<SDKInfoResponse> sdkInfo;

  /// Creates a new [RuntimeMetadataResponse].
  /// [parameters] The parameters for the template.
  /// [sdkInfo] SDK Info for the template.
  const RuntimeMetadataResponse({
    required this.parameters,
    required this.sdkInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': pulumi.Input.mapInputValue<List<ParameterMetadataResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ParameterMetadataResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sdkInfo': pulumi.Input.mapInputValue<SDKInfoResponse, Map<String, dynamic>>(sdkInfo, (value) => value.toMap()),
    };
  }

  factory RuntimeMetadataResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeMetadataResponse(
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeList<ParameterMetadataResponse>(map['parameters']!, (value) => ParameterMetadataResponse.fromMap((value as Map).cast<String, dynamic>()))),
      sdkInfo: pulumi.Input.fromValue(SDKInfoResponse.fromMap((map['sdkInfo']! as Map).cast<String, dynamic>())),
    );
  }
}
