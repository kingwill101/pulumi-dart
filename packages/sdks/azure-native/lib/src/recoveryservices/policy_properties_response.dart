// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Protection profile custom data details.
class PolicyPropertiesResponse {
  /// The FriendlyName.
  final pulumi.Input<String?>? friendlyName;
  /// The ReplicationChannelSetting.
  final pulumi.Input<dynamic>? providerSpecificDetails;

  /// Creates a new [PolicyPropertiesResponse].
  /// [friendlyName] The FriendlyName.
  /// [providerSpecificDetails] The ReplicationChannelSetting.
  const PolicyPropertiesResponse({
    this.friendlyName,
    this.providerSpecificDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'friendlyName': ?friendlyName,
      'providerSpecificDetails': ?providerSpecificDetails,
    };
  }

  factory PolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PolicyPropertiesResponse(
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerSpecificDetails: (() { final guardedValue = map['providerSpecificDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
