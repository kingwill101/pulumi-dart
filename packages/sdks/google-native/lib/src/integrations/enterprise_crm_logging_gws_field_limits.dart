// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_logging_gws_field_limits_log_action.dart';
import 'enterprise_crm_logging_gws_field_limits_log_type_item.dart';
import 'enterprise_crm_logging_gws_field_limits_shortener_type.dart';

/// Describes string and array limits when writing to logs. When a limit is exceeded the *shortener_type* describes how to shorten the field. next_id: 6
class EnterpriseCrmLoggingGwsFieldLimits {
  final pulumi.Input<EnterpriseCrmLoggingGwsFieldLimitsLogAction>? logAction;

  /// To which type(s) of logs the limits apply.
  final pulumi.Input<List<EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem>>?
  logType;

  /// maximum array size. If the array exceds this size, the field (list) is truncated.
  final pulumi.Input<int>? maxArraySize;

  /// maximum string length. If the field exceeds this amount the field is shortened.
  final pulumi.Input<int>? maxStringLength;
  final pulumi.Input<EnterpriseCrmLoggingGwsFieldLimitsShortenerType>?
  shortenerType;

  /// Creates a new [EnterpriseCrmLoggingGwsFieldLimits].
  /// [logAction] Optional.
  /// [logType] To which type(s) of logs the limits apply.
  /// [maxArraySize] maximum array size. If the array exceds this size, the field (list) is truncated.
  /// [maxStringLength] maximum string length. If the field exceeds this amount the field is shortened.
  /// [shortenerType] Optional.
  EnterpriseCrmLoggingGwsFieldLimits({
    this.logAction,
    this.logType,
    this.maxArraySize,
    this.maxStringLength,
    this.shortenerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAction':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmLoggingGwsFieldLimitsLogAction,
            String
          >(logAction, (value) => value.wireValue),
      'logType':
          ?pulumi.Input.mapOptionalInputValue<
            List<EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem>,
            List<String>
          >(
            logType,
            (value) =>
                pulumi.Input.encodeList<
                  EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem,
                  String
                >(value, (value) => value.wireValue),
          ),
      'maxArraySize': ?maxArraySize,
      'maxStringLength': ?maxStringLength,
      'shortenerType':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmLoggingGwsFieldLimitsShortenerType,
            String
          >(shortenerType, (value) => value.wireValue),
    };
  }

  factory EnterpriseCrmLoggingGwsFieldLimits.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmLoggingGwsFieldLimits(
      logAction: (() {
        final guardedValue = map['logAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmLoggingGwsFieldLimitsLogAction.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      logType: (() {
        final guardedValue = map['logType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem>(
            guardedValue,
            (value) => EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem.fromValue(
              value as String,
            ),
          ),
        );
      })(),
      maxArraySize: (() {
        final guardedValue = map['maxArraySize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxStringLength: (() {
        final guardedValue = map['maxStringLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      shortenerType: (() {
        final guardedValue = map['shortenerType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmLoggingGwsFieldLimitsShortenerType.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
