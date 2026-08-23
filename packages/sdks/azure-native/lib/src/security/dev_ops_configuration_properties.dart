// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization.dart';

/// DevOps Configuration properties.
class DevOpsConfigurationProperties {
  /// Authorization payload.
  final pulumi.Input<Authorization>? authorization;
  /// AutoDiscovery states.
  final pulumi.Input<String>? autoDiscovery;
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
  /// List of top-level inventory to select when AutoDiscovery is disabled.
  /// This field is ignored when AutoDiscovery is enabled.
  final pulumi.Input<List<String>>? topLevelInventoryList;

  /// Creates a new [DevOpsConfigurationProperties].
  /// [authorization] Authorization payload.
  /// [autoDiscovery] AutoDiscovery states.
  /// [provisioningState] The provisioning state of the resource.
  /// [topLevelInventoryList] List of top-level inventory to select when AutoDiscovery is disabled.
  const DevOpsConfigurationProperties({
    this.authorization,
    this.autoDiscovery,
    this.provisioningState,
    this.topLevelInventoryList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': ?pulumi.Input.mapOptionalInputValue<Authorization, Map<String, dynamic>>(authorization, (value) => value.toMap()),
      'autoDiscovery': ?autoDiscovery,
      'provisioningState': ?provisioningState,
      'topLevelInventoryList': ?topLevelInventoryList,
    };
  }

  factory DevOpsConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return DevOpsConfigurationProperties(
      authorization: (() { final guardedValue = map['authorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Authorization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoDiscovery: (() { final guardedValue = map['autoDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topLevelInventoryList: (() { final guardedValue = map['topLevelInventoryList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
