// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The canary region configuration.
class CustomRolloutSpecificationCanaryResponse {
  final pulumi.Input<List<String>>? regions;

  /// Creates a new [CustomRolloutSpecificationCanaryResponse].
  /// [regions] Optional.
  CustomRolloutSpecificationCanaryResponse({this.regions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'regions': ?regions};
  }

  factory CustomRolloutSpecificationCanaryResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CustomRolloutSpecificationCanaryResponse(
      regions: (() {
        final guardedValue = map['regions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
