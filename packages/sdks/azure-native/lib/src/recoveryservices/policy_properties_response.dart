// ignore_for_file: unused_element, unnecessary_cast

import 'a2_apolicy_details_response.dart';

/// Protection profile custom data details.
class PolicyPropertiesResponse {
  /// The FriendlyName.
  final String? friendlyName;
  /// The ReplicationChannelSetting.
  final A2APolicyDetailsResponse? providerSpecificDetails;

  /// Creates a new [PolicyPropertiesResponse].
  /// [friendlyName] The FriendlyName.
  /// [providerSpecificDetails] The ReplicationChannelSetting.
  PolicyPropertiesResponse({
    this.friendlyName,
    this.providerSpecificDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'friendlyName': ?friendlyName,
      'providerSpecificDetails': ?providerSpecificDetails == null ? null : providerSpecificDetails!.toMap(),
    };
  }

  factory PolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PolicyPropertiesResponse(
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      providerSpecificDetails: map['providerSpecificDetails'] == null ? null : A2APolicyDetailsResponse.fromMap((map['providerSpecificDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

