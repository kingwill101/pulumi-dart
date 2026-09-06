// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'input_endpoint_response.dart';

/// Azure to Azure VM synced configuration details.
class AzureToAzureVmSyncedConfigDetailsResponse {
  /// The Azure VM input endpoints.
  final pulumi.Input<List<InputEndpointResponse>?>? inputEndpoints;
  /// The Azure VM tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AzureToAzureVmSyncedConfigDetailsResponse].
  /// [inputEndpoints] The Azure VM input endpoints.
  /// [tags] The Azure VM tags.
  const AzureToAzureVmSyncedConfigDetailsResponse({
    this.inputEndpoints,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputEndpoints': ?pulumi.Input.mapOptionalInputValue<List<InputEndpointResponse>, List<Map<String, dynamic>>>(inputEndpoints, (value) => pulumi.Input.encodeList<InputEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory AzureToAzureVmSyncedConfigDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AzureToAzureVmSyncedConfigDetailsResponse(
      inputEndpoints: (() { final guardedValue = map['inputEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InputEndpointResponse>(guardedValue, (value) => InputEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
