// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audio_mapping_response.dart';

/// Audio stream resource.
class AudioStreamResponse {
  /// Audio bitrate in bits per second. Must be between 1 and 10,000,000.
  final pulumi.Input<int> bitrateBps;
  /// Number of audio channels. Must be between 1 and 6. The default is 2.
  final pulumi.Input<int> channelCount;
  /// A list of channel names specifying layout of the audio channels. This only affects the metadata embedded in the container headers, if supported by the specified format. The default is `["fl", "fr"]`. Supported channel names: - `fl` - Front left channel - `fr` - Front right channel - `sl` - Side left channel - `sr` - Side right channel - `fc` - Front center channel - `lfe` - Low frequency
  final pulumi.Input<List<String>> channelLayout;
  /// The codec for this audio stream. The default is `aac`. Supported audio codecs: - `aac` - `aac-he` - `aac-he-v2` - `mp3` - `ac3` - `eac3`
  final pulumi.Input<String> codec;
  /// The name for this particular audio stream that will be added to the HLS/DASH manifest. Not supported in MP4 files.
  final pulumi.Input<String> displayName;
  /// The BCP-47 language code, such as `en-US` or `sr-Latn`. For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier. Not supported in MP4 files.
  final pulumi.Input<String> languageCode;
  /// The mapping for the JobConfig.edit_list atoms with audio EditAtom.inputs.
  final pulumi.Input<List<AudioMappingResponse>> mapping;
  /// The audio sample rate in Hertz. The default is 48000 Hertz.
  final pulumi.Input<int> sampleRateHertz;

  /// Creates a new [AudioStreamResponse].
  /// [bitrateBps] Audio bitrate in bits per second. Must be between 1 and 10,000,000.
  /// [channelCount] Number of audio channels. Must be between 1 and 6. The default is 2.
  /// [channelLayout] A list of channel names specifying layout of the audio channels. This only affects the metadata embedded in the container headers, if supported by the specified format. The default is `["fl", "fr"]`. Supported channel names: - `fl` - Front left channel - `fr` - Front right channel - `sl` - Side left channel - `sr` - Side right channel - `fc` - Front center channel - `lfe` - Low frequency
  /// [codec] The codec for this audio stream. The default is `aac`. Supported audio codecs: - `aac` - `aac-he` - `aac-he-v2` - `mp3` - `ac3` - `eac3`
  /// [displayName] The name for this particular audio stream that will be added to the HLS/DASH manifest. Not supported in MP4 files.
  /// [languageCode] The BCP-47 language code, such as `en-US` or `sr-Latn`. For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier. Not supported in MP4 files.
  /// [mapping] The mapping for the JobConfig.edit_list atoms with audio EditAtom.inputs.
  /// [sampleRateHertz] The audio sample rate in Hertz. The default is 48000 Hertz.
  AudioStreamResponse({
    required this.bitrateBps,
    required this.channelCount,
    required this.channelLayout,
    required this.codec,
    required this.displayName,
    required this.languageCode,
    required this.mapping,
    required this.sampleRateHertz,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitrateBps': bitrateBps,
      'channelCount': channelCount,
      'channelLayout': channelLayout,
      'codec': codec,
      'displayName': displayName,
      'languageCode': languageCode,
      'mapping': pulumi.Input.mapInputValue<List<AudioMappingResponse>, List<Map<String, dynamic>>>(mapping, (value) => pulumi.Input.encodeList<AudioMappingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sampleRateHertz': sampleRateHertz,
    };
  }

  factory AudioStreamResponse.fromMap(Map<String, dynamic> map) {
    return AudioStreamResponse(
      bitrateBps: (map['bitrateBps'] as int).input(),
      channelCount: (map['channelCount'] as int).input(),
      channelLayout: ((map['channelLayout'] as List).cast<String>()).input(),
      codec: (map['codec'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      languageCode: (map['languageCode'] as String).input(),
      mapping: (pulumi.Input.decodeList<AudioMappingResponse>(map['mapping'], (value) => AudioMappingResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sampleRateHertz: (map['sampleRateHertz'] as int).input(),
    );
  }
}

