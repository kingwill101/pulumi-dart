// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'text_mapping_response.dart';

/// Encoding of a text stream. For example, closed captions or subtitles.
class TextStreamResponse {
  /// The codec for this text stream. The default is `webvtt`. Supported text codecs: - `srt` - `ttml` - `cea608` - `cea708` - `webvtt`
  final pulumi.Input<String> codec;
  /// The name for this particular text stream that will be added to the HLS/DASH manifest. Not supported in MP4 files.
  final pulumi.Input<String> displayName;
  /// The BCP-47 language code, such as `en-US` or `sr-Latn`. For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier. Not supported in MP4 files.
  final pulumi.Input<String> languageCode;
  /// The mapping for the JobConfig.edit_list atoms with text EditAtom.inputs.
  final pulumi.Input<List<TextMappingResponse>> mapping;

  /// Creates a new [TextStreamResponse].
  /// [codec] The codec for this text stream. The default is `webvtt`. Supported text codecs: - `srt` - `ttml` - `cea608` - `cea708` - `webvtt`
  /// [displayName] The name for this particular text stream that will be added to the HLS/DASH manifest. Not supported in MP4 files.
  /// [languageCode] The BCP-47 language code, such as `en-US` or `sr-Latn`. For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier. Not supported in MP4 files.
  /// [mapping] The mapping for the JobConfig.edit_list atoms with text EditAtom.inputs.
  const TextStreamResponse({
    required this.codec,
    required this.displayName,
    required this.languageCode,
    required this.mapping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codec': codec,
      'displayName': displayName,
      'languageCode': languageCode,
      'mapping': pulumi.Input.mapInputValue<List<TextMappingResponse>, List<Map<String, dynamic>>>(mapping, (value) => pulumi.Input.encodeList<TextMappingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TextStreamResponse.fromMap(Map<String, dynamic> map) {
    return TextStreamResponse(
      codec: pulumi.Input.fromValue(map['codec'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      languageCode: pulumi.Input.fromValue(map['languageCode'] as String),
      mapping: pulumi.Input.fromValue(pulumi.Input.decodeList<TextMappingResponse>(map['mapping']!, (value) => TextMappingResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
