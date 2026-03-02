// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The mapping for the JobConfig.edit_list atoms with text EditAtom.inputs.
class TextMappingResponse {
  /// The EditAtom.key that references atom with text inputs in the JobConfig.edit_list.
  final pulumi.Input<String> atomKey;
  /// The Input.key that identifies the input file.
  final pulumi.Input<String> inputKey;
  /// The zero-based index of the track in the input file.
  final pulumi.Input<int> inputTrack;

  /// Creates a new [TextMappingResponse].
  /// [atomKey] The EditAtom.key that references atom with text inputs in the JobConfig.edit_list.
  /// [inputKey] The Input.key that identifies the input file.
  /// [inputTrack] The zero-based index of the track in the input file.
  TextMappingResponse({
    required this.atomKey,
    required this.inputKey,
    required this.inputTrack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'atomKey': atomKey,
      'inputKey': inputKey,
      'inputTrack': inputTrack,
    };
  }

  factory TextMappingResponse.fromMap(Map<String, dynamic> map) {
    return TextMappingResponse(
      atomKey: (map['atomKey'] as String).input(),
      inputKey: (map['inputKey'] as String).input(),
      inputTrack: (map['inputTrack'] as int).input(),
    );
  }
}

