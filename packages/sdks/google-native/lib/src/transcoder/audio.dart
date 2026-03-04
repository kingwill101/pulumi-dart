// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Audio preprocessing configuration.
class Audio {
  /// Enable boosting high frequency components. The default is `false`. **Note:** This field is not supported.
  final pulumi.Input<bool>? highBoost;

  /// Enable boosting low frequency components. The default is `false`. **Note:** This field is not supported.
  final pulumi.Input<bool>? lowBoost;

  /// Specify audio loudness normalization in loudness units relative to full scale (LUFS). Enter a value between -24 and 0 (the default), where: * -24 is the Advanced Television Systems Committee (ATSC A/85) standard * -23 is the EU R128 broadcast standard * -19 is the prior standard for online mono audio * -18 is the ReplayGain standard * -16 is the prior standard for stereo audio * -14 is the new online audio standard recommended by Spotify, as well as Amazon Echo * 0 disables normalization
  final pulumi.Input<double>? lufs;

  /// Creates a new [Audio].
  /// [highBoost] Enable boosting high frequency components. The default is `false`. **Note:** This field is not supported.
  /// [lowBoost] Enable boosting low frequency components. The default is `false`. **Note:** This field is not supported.
  /// [lufs] Specify audio loudness normalization in loudness units relative to full scale (LUFS). Enter a value between -24 and 0 (the default), where: * -24 is the Advanced Television Systems Committee (ATSC A/85) standard * -23 is the EU R128 broadcast standard * -19 is the prior standard for online mono audio * -18 is the ReplayGain standard * -16 is the prior standard for stereo audio * -14 is the new online audio standard recommended by Spotify, as well as Amazon Echo * 0 disables normalization
  Audio({this.highBoost, this.lowBoost, this.lufs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'highBoost': ?highBoost,
      'lowBoost': ?lowBoost,
      'lufs': ?lufs,
    };
  }

  factory Audio.fromMap(Map<String, dynamic> map) {
    return Audio(
      highBoost: (() {
        final guardedValue = map['highBoost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      lowBoost: (() {
        final guardedValue = map['lowBoost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      lufs: (() {
        final guardedValue = map['lufs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
