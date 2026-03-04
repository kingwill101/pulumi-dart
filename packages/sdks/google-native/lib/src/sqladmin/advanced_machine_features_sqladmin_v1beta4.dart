// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeaturesSqladminV1beta4 {
  /// The number of threads per physical core.
  final pulumi.Input<int>? threadsPerCore;

  /// Creates a new [AdvancedMachineFeaturesSqladminV1beta4].
  /// [threadsPerCore] The number of threads per physical core.
  AdvancedMachineFeaturesSqladminV1beta4({this.threadsPerCore});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'threadsPerCore': ?threadsPerCore};
  }

  factory AdvancedMachineFeaturesSqladminV1beta4.fromMap(
    Map<String, dynamic> map,
  ) {
    return AdvancedMachineFeaturesSqladminV1beta4(
      threadsPerCore: (() {
        final guardedValue = map['threadsPerCore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
