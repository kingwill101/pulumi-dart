// ignore_for_file: unused_element, unnecessary_cast


/// Audio preprocessing configuration.
class AudioResponse {
  /// Enable boosting high frequency components. The default is `false`. **Note:** This field is not supported.
  final bool highBoost;
  /// Enable boosting low frequency components. The default is `false`. **Note:** This field is not supported.
  final bool lowBoost;
  /// Specify audio loudness normalization in loudness units relative to full scale (LUFS). Enter a value between -24 and 0 (the default), where: * -24 is the Advanced Television Systems Committee (ATSC A/85) standard * -23 is the EU R128 broadcast standard * -19 is the prior standard for online mono audio * -18 is the ReplayGain standard * -16 is the prior standard for stereo audio * -14 is the new online audio standard recommended by Spotify, as well as Amazon Echo * 0 disables normalization
  final double lufs;

  /// Creates a new [AudioResponse].
  /// [highBoost] Enable boosting high frequency components. The default is `false`. **Note:** This field is not supported.
  /// [lowBoost] Enable boosting low frequency components. The default is `false`. **Note:** This field is not supported.
  /// [lufs] Specify audio loudness normalization in loudness units relative to full scale (LUFS). Enter a value between -24 and 0 (the default), where: * -24 is the Advanced Television Systems Committee (ATSC A/85) standard * -23 is the EU R128 broadcast standard * -19 is the prior standard for online mono audio * -18 is the ReplayGain standard * -16 is the prior standard for stereo audio * -14 is the new online audio standard recommended by Spotify, as well as Amazon Echo * 0 disables normalization
  AudioResponse({
    required this.highBoost,
    required this.lowBoost,
    required this.lufs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'highBoost': highBoost,
      'lowBoost': lowBoost,
      'lufs': lufs,
    };
  }

  factory AudioResponse.fromMap(Map<String, dynamic> map) {
    return AudioResponse(
      highBoost: map['highBoost'] as bool,
      lowBoost: map['lowBoost'] as bool,
      lufs: map['lufs'] as double,
    );
  }
}

