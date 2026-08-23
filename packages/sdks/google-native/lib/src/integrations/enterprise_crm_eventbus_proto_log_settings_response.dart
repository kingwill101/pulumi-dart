// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_logging_gws_field_limits_response.dart';
import 'enterprise_crm_logging_gws_sanitize_options_response.dart';

/// The LogSettings define the logging attributes for an event property. These attributes are used to map the property to the parameter in the log proto. Also used to define scrubbing/truncation behavior and PII information.
class EnterpriseCrmEventbusProtoLogSettingsResponse {
  /// The name of corresponding logging field of the event property. If omitted, assumes the same name as the event property key.
  final pulumi.Input<String> logFieldName;
  /// Contains the scrubbing options, such as whether to scrub, obfuscate, etc.
  final pulumi.Input<EnterpriseCrmLoggingGwsSanitizeOptionsResponse> sanitizeOptions;
  final pulumi.Input<String> seedPeriod;
  final pulumi.Input<String> seedScope;
  /// Contains the field limits for shortening, such as max string length and max array length.
  final pulumi.Input<EnterpriseCrmLoggingGwsFieldLimitsResponse> shorteningLimits;

  /// Creates a new [EnterpriseCrmEventbusProtoLogSettingsResponse].
  /// [logFieldName] The name of corresponding logging field of the event property. If omitted, assumes the same name as the event property key.
  /// [sanitizeOptions] Contains the scrubbing options, such as whether to scrub, obfuscate, etc.
  /// [seedPeriod] Required.
  /// [seedScope] Required.
  /// [shorteningLimits] Contains the field limits for shortening, such as max string length and max array length.
  const EnterpriseCrmEventbusProtoLogSettingsResponse({
    required this.logFieldName,
    required this.sanitizeOptions,
    required this.seedPeriod,
    required this.seedScope,
    required this.shorteningLimits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logFieldName': logFieldName,
      'sanitizeOptions': pulumi.Input.mapInputValue<EnterpriseCrmLoggingGwsSanitizeOptionsResponse, Map<String, dynamic>>(sanitizeOptions, (value) => value.toMap()),
      'seedPeriod': seedPeriod,
      'seedScope': seedScope,
      'shorteningLimits': pulumi.Input.mapInputValue<EnterpriseCrmLoggingGwsFieldLimitsResponse, Map<String, dynamic>>(shorteningLimits, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmEventbusProtoLogSettingsResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoLogSettingsResponse(
      logFieldName: pulumi.Input.fromValue(map['logFieldName'] as String),
      sanitizeOptions: pulumi.Input.fromValue(EnterpriseCrmLoggingGwsSanitizeOptionsResponse.fromMap((map['sanitizeOptions']! as Map).cast<String, dynamic>())),
      seedPeriod: pulumi.Input.fromValue(map['seedPeriod'] as String),
      seedScope: pulumi.Input.fromValue(map['seedScope'] as String),
      shorteningLimits: pulumi.Input.fromValue(EnterpriseCrmLoggingGwsFieldLimitsResponse.fromMap((map['shorteningLimits']! as Map).cast<String, dynamic>())),
    );
  }
}
