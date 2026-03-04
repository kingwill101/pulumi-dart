// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_value_response.dart';

/// A value of a field, including its frequency.
class GooglePrivacyDlpV2ValueFrequencyResponse {
  /// How many times the value is contained in the field.
  final pulumi.Input<String> count;

  /// A value contained in the field in question.
  final pulumi.Input<GooglePrivacyDlpV2ValueResponse> value;

  /// Creates a new [GooglePrivacyDlpV2ValueFrequencyResponse].
  /// [count] How many times the value is contained in the field.
  /// [value] A value contained in the field in question.
  GooglePrivacyDlpV2ValueFrequencyResponse({
    required this.count,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'value':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2ValueResponse,
            Map<String, dynamic>
          >(value, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2ValueFrequencyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2ValueFrequencyResponse(
      count: pulumi.Input.fromValue(map['count'] as String),
      value: pulumi.Input.fromValue(
        GooglePrivacyDlpV2ValueResponse.fromMap(
          (map['value']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
