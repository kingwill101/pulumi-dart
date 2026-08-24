// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDeviceCustomProfileServiceModeV2 {
  /// The mode to run the WARP client under.
  final pulumi.Input<String?>? mode;
  /// The port number when used with proxy mode.
  final pulumi.Input<double?>? port;

  /// Creates a new [ZeroTrustDeviceCustomProfileServiceModeV2].
  /// [mode] The mode to run the WARP client under.
  /// [port] The port number when used with proxy mode.
  const ZeroTrustDeviceCustomProfileServiceModeV2({
    this.mode,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'port': ?port,
    };
  }

  factory ZeroTrustDeviceCustomProfileServiceModeV2.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceCustomProfileServiceModeV2(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
