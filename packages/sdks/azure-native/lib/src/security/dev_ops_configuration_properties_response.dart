// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_response.dart';
import 'dev_ops_capability_response.dart';

/// DevOps Configuration properties.
class DevOpsConfigurationPropertiesResponse {
  /// Authorization payload.
  final pulumi.Input<AuthorizationResponse>? authorization;

  /// AutoDiscovery states.
  final pulumi.Input<String>? autoDiscovery;

  /// List of capabilities assigned to the DevOps configuration during the discovery process.
  final pulumi.Input<List<DevOpsCapabilityResponse>> capabilities;

  /// The provisioning state of the resource.
  ///
  /// Pending - Provisioning pending.
  /// Failed - Provisioning failed.
  /// Succeeded - Successful provisioning.
  /// Canceled - Provisioning canceled.
  /// PendingDeletion - Deletion pending.
  /// DeletionSuccess - Deletion successful.
  /// DeletionFailure - Deletion failure.
  final pulumi.Input<String>? provisioningState;

  /// Gets or sets resource status message.
  final pulumi.Input<String> provisioningStatusMessage;

  /// Gets or sets time when resource was last checked.
  final pulumi.Input<String> provisioningStatusUpdateTimeUtc;

  /// List of top-level inventory to select when AutoDiscovery is disabled.
  /// This field is ignored when AutoDiscovery is enabled.
  final pulumi.Input<List<String>>? topLevelInventoryList;

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
      'authorization':
          ?pulumi.Input.mapOptionalInputValue<
            AuthorizationResponse,
            Map<String, dynamic>
          >(authorization, (value) => value.toMap()),
      'autoDiscovery': ?autoDiscovery,
      'capabilities':
          pulumi.Input.mapInputValue<
            List<DevOpsCapabilityResponse>,
            List<Map<String, dynamic>>
          >(
            capabilities,
            (value) =>
                pulumi.Input.encodeList<
                  DevOpsCapabilityResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'provisioningState': ?provisioningState,
      'provisioningStatusMessage': provisioningStatusMessage,
      'provisioningStatusUpdateTimeUtc': provisioningStatusUpdateTimeUtc,
      'topLevelInventoryList': ?topLevelInventoryList,
    };
  }

  factory DevOpsConfigurationPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DevOpsConfigurationPropertiesResponse(
      authorization: (() {
        final guardedValue = map['authorization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AuthorizationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      autoDiscovery: (() {
        final guardedValue = map['autoDiscovery'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      capabilities: pulumi.Input.fromValue(
        pulumi.Input.decodeList<DevOpsCapabilityResponse>(
          map['capabilities']!,
          (value) => DevOpsCapabilityResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      provisioningState: (() {
        final guardedValue = map['provisioningState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningStatusMessage: pulumi.Input.fromValue(
        map['provisioningStatusMessage'] as String,
      ),
      provisioningStatusUpdateTimeUtc: pulumi.Input.fromValue(
        map['provisioningStatusUpdateTimeUtc'] as String,
      ),
      topLevelInventoryList: (() {
        final guardedValue = map['topLevelInventoryList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
