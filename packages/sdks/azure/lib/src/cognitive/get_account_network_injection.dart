// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountNetworkInjection {
  /// The feature that network injection is applied to.
  final pulumi.Input<String> scenario;
  /// The ID of the subnet which is able to access this Cognitive Services Account.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetAccountNetworkInjection].
  /// [scenario] The feature that network injection is applied to.
  /// [subnetId] The ID of the subnet which is able to access this Cognitive Services Account.
  GetAccountNetworkInjection({
    required this.scenario,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scenario': scenario,
      'subnetId': subnetId,
    };
  }

  factory GetAccountNetworkInjection.fromMap(Map<String, dynamic> map) {
    return GetAccountNetworkInjection(
      scenario: (map['scenario'] as String).input(),
      subnetId: (map['subnetId'] as String).input(),
    );
  }
}

