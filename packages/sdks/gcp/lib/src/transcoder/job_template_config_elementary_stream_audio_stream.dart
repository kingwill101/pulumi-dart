// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateConfigElementaryStreamAudioStream {
  /// Audio bitrate in bits per second.
  final pulumi.Input<int> bitrateBps;
  /// Number of audio channels. The default is `2`.
  final pulumi.Input<int>? channelCount;
  /// A list of channel names specifying layout of the audio channels.  The default is ["fl", "fr"].
  final pulumi.Input<List<String>>? channelLayouts;
  /// The codec for this audio stream. The default is `aac`.
  final pulumi.Input<String>? codec;
  /// The audio sample rate in Hertz. The default is `48000`.
  final pulumi.Input<int>? sampleRateHertz;

  /// Creates a new [JobTemplateConfigElementaryStreamAudioStream].
  /// [bitrateBps] Audio bitrate in bits per second.
  /// [channelCount] Number of audio channels. The default is `2`.
  /// [channelLayouts] A list of channel names specifying layout of the audio channels.  The default is ["fl", "fr"].
  /// [codec] The codec for this audio stream. The default is `aac`.
  /// [sampleRateHertz] The audio sample rate in Hertz. The default is `48000`.
  JobTemplateConfigElementaryStreamAudioStream({
    required this.bitrateBps,
    this.channelCount,
    this.channelLayouts,
    this.codec,
    this.sampleRateHertz,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitrateBps': bitrateBps,
      'channelCount': ?channelCount,
      'channelLayouts': ?channelLayouts,
      'codec': ?codec,
      'sampleRateHertz': ?sampleRateHertz,
    };
  }

  factory JobTemplateConfigElementaryStreamAudioStream.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigElementaryStreamAudioStream(
      bitrateBps: (map['bitrateBps'] as int).input(),
      channelCount: map['channelCount'] == null ? null : (map['channelCount'] as int).input(),
      channelLayouts: map['channelLayouts'] == null ? null : ((map['channelLayouts'] as List).cast<String>()).input(),
      codec: map['codec'] == null ? null : (map['codec'] as String).input(),
      sampleRateHertz: map['sampleRateHertz'] == null ? null : (map['sampleRateHertz'] as int).input(),
    );
  }
}

