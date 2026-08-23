// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_apolicy_details_response.dart';

/// Protection profile custom data details.
class PolicyPropertiesResponse {
  /// The FriendlyName.
  final pulumi.Input<String>? friendlyName;
  /// The ReplicationChannelSetting.
  final pulumi.Input<A2APolicyDetailsResponse>? providerSpecificDetails;

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
      'providerSpecificDetails': ?pulumi.Input.mapOptionalInputValue<A2APolicyDetailsResponse, Map<String, dynamic>>(providerSpecificDetails, (value) => value.toMap()),
    };
  }

  factory PolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PolicyPropertiesResponse(
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerSpecificDetails: (() { final guardedValue = map['providerSpecificDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(A2APolicyDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
