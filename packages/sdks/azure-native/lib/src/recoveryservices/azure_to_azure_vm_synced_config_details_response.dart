// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'input_endpoint_response.dart';

/// Azure to Azure VM synced configuration details.
class AzureToAzureVmSyncedConfigDetailsResponse {
  /// The Azure VM input endpoints.
  final pulumi.Input<List<InputEndpointResponse>>? inputEndpoints;
  /// The Azure VM tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AzureToAzureVmSyncedConfigDetailsResponse].
  /// [inputEndpoints] The Azure VM input endpoints.
  /// [tags] The Azure VM tags.
  AzureToAzureVmSyncedConfigDetailsResponse({
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
      inputEndpoints: map['inputEndpoints'] == null ? null : (pulumi.Input.decodeList<InputEndpointResponse>(map['inputEndpoints'], (value) => InputEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

