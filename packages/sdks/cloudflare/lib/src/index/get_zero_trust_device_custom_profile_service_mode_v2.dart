// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDeviceCustomProfileServiceModeV2 {
  /// The mode to run the WARP client under.
  final pulumi.Input<String> mode;
  /// The port number when used with proxy mode.
  final pulumi.Input<double> port;

  /// Creates a new [GetZeroTrustDeviceCustomProfileServiceModeV2].
  /// [mode] The mode to run the WARP client under.
  /// [port] The port number when used with proxy mode.
  const GetZeroTrustDeviceCustomProfileServiceModeV2({
    required this.mode,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'port': port,
    };
  }

  factory GetZeroTrustDeviceCustomProfileServiceModeV2.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceCustomProfileServiceModeV2(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toDouble()),
    );
  }
}
