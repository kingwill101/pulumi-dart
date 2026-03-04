// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_properties_response.dart';

/// Specifies the baseline os and target os for in-place upgrade tests.
class InplaceUpgradeOSInfoResponse {
  /// Specifies the baseline os for in-place upgrade tests.
  final pulumi.Input<OsPropertiesResponse>? baselineOS;

  /// Specifies the target os for in-place upgrade tests.
  final pulumi.Input<String>? targetOS;

  /// Creates a new [InplaceUpgradeOSInfoResponse].
  /// [baselineOS] Specifies the baseline os for in-place upgrade tests.
  /// [targetOS] Specifies the target os for in-place upgrade tests.
  InplaceUpgradeOSInfoResponse({this.baselineOS, this.targetOS});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineOS':
          ?pulumi.Input.mapOptionalInputValue<
            OsPropertiesResponse,
            Map<String, dynamic>
          >(baselineOS, (value) => value.toMap()),
      'targetOS': ?targetOS,
    };
  }

  factory InplaceUpgradeOSInfoResponse.fromMap(Map<String, dynamic> map) {
    return InplaceUpgradeOSInfoResponse(
      baselineOS: (() {
        final guardedValue = map['baselineOS'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OsPropertiesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      targetOS: (() {
        final guardedValue = map['targetOS'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
