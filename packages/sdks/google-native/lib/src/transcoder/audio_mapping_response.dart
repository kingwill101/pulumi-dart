// ignore_for_file: unused_element, unnecessary_cast


/// The mapping for the JobConfig.edit_list atoms with audio EditAtom.inputs.
class AudioMappingResponse {
  /// The EditAtom.key that references the atom with audio inputs in the JobConfig.edit_list.
  final String atomKey;
  /// Audio volume control in dB. Negative values decrease volume, positive values increase. The default is 0.
  final double gainDb;
  /// The zero-based index of the channel in the input audio stream.
  final int inputChannel;
  /// The Input.key that identifies the input file.
  final String inputKey;
  /// The zero-based index of the track in the input file.
  final int inputTrack;
  /// The zero-based index of the channel in the output audio stream.
  final int outputChannel;

  /// Creates a new [AudioMappingResponse].
  /// [atomKey] The EditAtom.key that references the atom with audio inputs in the JobConfig.edit_list.
  /// [gainDb] Audio volume control in dB. Negative values decrease volume, positive values increase. The default is 0.
  /// [inputChannel] The zero-based index of the channel in the input audio stream.
  /// [inputKey] The Input.key that identifies the input file.
  /// [inputTrack] The zero-based index of the track in the input file.
  /// [outputChannel] The zero-based index of the channel in the output audio stream.
  AudioMappingResponse({
    required this.atomKey,
    required this.gainDb,
    required this.inputChannel,
    required this.inputKey,
    required this.inputTrack,
    required this.outputChannel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'atomKey': atomKey,
      'gainDb': gainDb,
      'inputChannel': inputChannel,
      'inputKey': inputKey,
      'inputTrack': inputTrack,
      'outputChannel': outputChannel,
    };
  }

  factory AudioMappingResponse.fromMap(Map<String, dynamic> map) {
    return AudioMappingResponse(
      atomKey: map['atomKey'] as String,
      gainDb: map['gainDb'] as double,
      inputChannel: map['inputChannel'] as int,
      inputKey: map['inputKey'] as String,
      inputTrack: map['inputTrack'] as int,
      outputChannel: map['outputChannel'] as int,
    );
  }
}

