// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_proofpoint_on_demand_settings_authentication.dart';

class FeedDetailsProofpointOnDemandSettings {
  /// HTTP header based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsProofpointOnDemandSettingsAuthentication>? authentication;
  /// Cluster ID.
  final pulumi.Input<String>? clusterId;

  /// Creates a new [FeedDetailsProofpointOnDemandSettings].
  /// [authentication] HTTP header based authentication.
  /// [clusterId] Cluster ID.
  const FeedDetailsProofpointOnDemandSettings({
    this.authentication,
    this.clusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsProofpointOnDemandSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'clusterId': ?clusterId,
    };
  }

  factory FeedDetailsProofpointOnDemandSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsProofpointOnDemandSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsProofpointOnDemandSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
