// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobConfigElementaryStreamAudioStream {
  /// Audio bitrate in bits per second.
  final pulumi.Input<int> bitrateBps;
  /// Number of audio channels. The default is `2`.
  final pulumi.Input<int>? channelCount;
  /// A list of channel names specifying layout of the audio channels. The default is ["fl", "fr"].
  final pulumi.Input<List<String>>? channelLayouts;
  /// The codec for this audio stream. The default is `aac`.
  final pulumi.Input<String>? codec;
  /// The audio sample rate in Hertz. The default is `48000`.
  final pulumi.Input<int>? sampleRateHertz;

  /// Creates a new [JobConfigElementaryStreamAudioStream].
  /// [bitrateBps] Audio bitrate in bits per second.
  /// [channelCount] Number of audio channels. The default is `2`.
  /// [channelLayouts] A list of channel names specifying layout of the audio channels. The default is ["fl", "fr"].
  /// [codec] The codec for this audio stream. The default is `aac`.
  /// [sampleRateHertz] The audio sample rate in Hertz. The default is `48000`.
  const JobConfigElementaryStreamAudioStream({
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

  factory JobConfigElementaryStreamAudioStream.fromMap(Map<String, dynamic> map) {
    return JobConfigElementaryStreamAudioStream(
      bitrateBps: pulumi.Input.fromValue(map['bitrateBps'] as int),
      channelCount: (() { final guardedValue = map['channelCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      channelLayouts: (() { final guardedValue = map['channelLayouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      codec: (() { final guardedValue = map['codec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sampleRateHertz: (() { final guardedValue = map['sampleRateHertz']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

