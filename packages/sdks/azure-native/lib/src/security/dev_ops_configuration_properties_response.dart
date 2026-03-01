// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_response.dart';
import 'dev_ops_capability_response.dart';

/// DevOps Configuration properties.
class DevOpsConfigurationPropertiesResponse {
  /// Authorization payload.
  final AuthorizationResponse? authorization;
  /// AutoDiscovery states.
  final String? autoDiscovery;
  /// List of capabilities assigned to the DevOps configuration during the discovery process.
  final List<DevOpsCapabilityResponse> capabilities;
  /// The provisioning state of the resource.
  ///
  /// Pending - Provisioning pending.
  /// Failed - Provisioning failed.
  /// Succeeded - Successful provisioning.
  /// Canceled - Provisioning canceled.
  /// PendingDeletion - Deletion pending.
  /// DeletionSuccess - Deletion successful.
  /// DeletionFailure - Deletion failure.
  final String? provisioningState;
  /// Gets or sets resource status message.
  final String provisioningStatusMessage;
  /// Gets or sets time when resource was last checked.
  final String provisioningStatusUpdateTimeUtc;
  /// List of top-level inventory to select when AutoDiscovery is disabled.
  /// This field is ignored when AutoDiscovery is enabled.
  final List<String>? topLevelInventoryList;

  /// Creates a new [DevOpsConfigurationPropertiesResponse].
  /// [authorization] Authorization payload.
  /// [autoDiscovery] AutoDiscovery states.
  /// [capabilities] List of capabilities assigned to the DevOps configuration during the discovery process.
  /// [provisioningState] The provisioning state of the resource.
  /// [provisioningStatusMessage] Gets or sets resource status message.
  /// [provisioningStatusUpdateTimeUtc] Gets or sets time when resource was last checked.
  /// [topLevelInventoryList] List of top-level inventory to select when AutoDiscovery is disabled.
  DevOpsConfigurationPropertiesResponse({
    this.authorization,
    this.autoDiscovery,
    required this.capabilities,
    this.provisioningState,
    required this.provisioningStatusMessage,
    required this.provisioningStatusUpdateTimeUtc,
    this.topLevelInventoryList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': ?authorization == null ? null : authorization!.toMap(),
      'autoDiscovery': ?autoDiscovery,
      'capabilities': pulumi.Input.encodeList<DevOpsCapabilityResponse, Map<String, dynamic>>(capabilities, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'provisioningStatusMessage': provisioningStatusMessage,
      'provisioningStatusUpdateTimeUtc': provisioningStatusUpdateTimeUtc,
      'topLevelInventoryList': ?topLevelInventoryList,
    };
  }

  factory DevOpsConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DevOpsConfigurationPropertiesResponse(
      authorization: map['authorization'] == null ? null : AuthorizationResponse.fromMap((map['authorization'] as Map).cast<String, dynamic>()),
      autoDiscovery: map['autoDiscovery'] == null ? null : map['autoDiscovery'] as String,
      capabilities: pulumi.Input.decodeList<DevOpsCapabilityResponse>(map['capabilities'], (value) => DevOpsCapabilityResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      provisioningStatusMessage: map['provisioningStatusMessage'] as String,
      provisioningStatusUpdateTimeUtc: map['provisioningStatusUpdateTimeUtc'] as String,
      topLevelInventoryList: map['topLevelInventoryList'] == null ? null : (map['topLevelInventoryList'] as List).cast<String>(),
    );
  }
}

