// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_log_settings_seed_period.dart';
import 'enterprise_crm_eventbus_proto_log_settings_seed_scope.dart';
import 'enterprise_crm_logging_gws_field_limits.dart';
import 'enterprise_crm_logging_gws_sanitize_options.dart';

/// The LogSettings define the logging attributes for an event property. These attributes are used to map the property to the parameter in the log proto. Also used to define scrubbing/truncation behavior and PII information.
class EnterpriseCrmEventbusProtoLogSettings {
  /// The name of corresponding logging field of the event property. If omitted, assumes the same name as the event property key.
  final pulumi.Input<String>? logFieldName;
  /// Contains the scrubbing options, such as whether to scrub, obfuscate, etc.
  final pulumi.Input<EnterpriseCrmLoggingGwsSanitizeOptions>? sanitizeOptions;
  final pulumi.Input<EnterpriseCrmEventbusProtoLogSettingsSeedPeriod>? seedPeriod;
  final pulumi.Input<EnterpriseCrmEventbusProtoLogSettingsSeedScope>? seedScope;
  /// Contains the field limits for shortening, such as max string length and max array length.
  final pulumi.Input<EnterpriseCrmLoggingGwsFieldLimits>? shorteningLimits;

  /// Creates a new [EnterpriseCrmEventbusProtoLogSettings].
  /// [logFieldName] The name of corresponding logging field of the event property. If omitted, assumes the same name as the event property key.
  /// [sanitizeOptions] Contains the scrubbing options, such as whether to scrub, obfuscate, etc.
  /// [seedPeriod] Optional.
  /// [seedScope] Optional.
  /// [shorteningLimits] Contains the field limits for shortening, such as max string length and max array length.
  EnterpriseCrmEventbusProtoLogSettings({
    this.logFieldName,
    this.sanitizeOptions,
    this.seedPeriod,
    this.seedScope,
    this.shorteningLimits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logFieldName': ?logFieldName,
      'sanitizeOptions': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmLoggingGwsSanitizeOptions, Map<String, dynamic>>(sanitizeOptions, (value) => value.toMap()),
      'seedPeriod': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoLogSettingsSeedPeriod, String>(seedPeriod, (value) => value.wireValue),
      'seedScope': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoLogSettingsSeedScope, String>(seedScope, (value) => value.wireValue),
      'shorteningLimits': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmLoggingGwsFieldLimits, Map<String, dynamic>>(shorteningLimits, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmEventbusProtoLogSettings.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoLogSettings(
      logFieldName: (() { final guardedValue = map['logFieldName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sanitizeOptions: (() { final guardedValue = map['sanitizeOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmLoggingGwsSanitizeOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      seedPeriod: (() { final guardedValue = map['seedPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoLogSettingsSeedPeriod.fromValue(guardedValue as String)); })(),
      seedScope: (() { final guardedValue = map['seedScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoLogSettingsSeedScope.fromValue(guardedValue as String)); })(),
      shorteningLimits: (() { final guardedValue = map['shorteningLimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmLoggingGwsFieldLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

