// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bwdif_config.dart';
import 'yadif_config.dart';

/// Deinterlace configuration for input video.
class Deinterlace {
  /// Specifies the Bob Weaver Deinterlacing Filter Configuration.
  final pulumi.Input<BwdifConfig>? bwdif;

  /// Specifies the Yet Another Deinterlacing Filter Configuration.
  final pulumi.Input<YadifConfig>? yadif;

  /// Creates a new [Deinterlace].
  /// [bwdif] Specifies the Bob Weaver Deinterlacing Filter Configuration.
  /// [yadif] Specifies the Yet Another Deinterlacing Filter Configuration.
  Deinterlace({this.bwdif, this.yadif});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bwdif':
          ?pulumi.Input.mapOptionalInputValue<
            BwdifConfig,
            Map<String, dynamic>
          >(bwdif, (value) => value.toMap()),
      'yadif':
          ?pulumi.Input.mapOptionalInputValue<
            YadifConfig,
            Map<String, dynamic>
          >(yadif, (value) => value.toMap()),
    };
  }

  factory Deinterlace.fromMap(Map<String, dynamic> map) {
    return Deinterlace(
      bwdif: (() {
        final guardedValue = map['bwdif'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BwdifConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      yadif: (() {
        final guardedValue = map['yadif'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          YadifConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
