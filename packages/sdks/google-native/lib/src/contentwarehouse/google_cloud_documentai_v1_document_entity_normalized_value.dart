// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_date.dart';
import 'google_type_date_time.dart';
import 'google_type_money.dart';
import 'google_type_postal_address.dart';

/// Parsed and normalized entity value.
class GoogleCloudDocumentaiV1DocumentEntityNormalizedValue {
  /// Postal address. See also: https://github.com/googleapis/googleapis/blob/master/google/type/postal_address.proto
  final pulumi.Input<GoogleTypePostalAddress>? addressValue;
  /// Boolean value. Can be used for entities with binary values, or for checkboxes.
  final pulumi.Input<bool>? booleanValue;
  /// Date value. Includes year, month, day. See also: https://github.com/googleapis/googleapis/blob/master/google/type/date.proto
  final pulumi.Input<GoogleTypeDate>? dateValue;
  /// DateTime value. Includes date, time, and timezone. See also: https://github.com/googleapis/googleapis/blob/master/google/type/datetime.proto
  final pulumi.Input<GoogleTypeDateTime>? datetimeValue;
  /// Float value.
  final pulumi.Input<double>? floatValue;
  /// Integer value.
  final pulumi.Input<int>? integerValue;
  /// Money value. See also: https://github.com/googleapis/googleapis/blob/master/google/type/money.proto
  final pulumi.Input<GoogleTypeMoney>? moneyValue;
  /// Optional. An optional field to store a normalized string. For some entity types, one of respective `structured_value` fields may also be populated. Also not all the types of `structured_value` will be normalized. For example, some processors may not generate `float` or `integer` normalized text by default. Below are sample formats mapped to structured values. - Money/Currency type (`money_value`) is in the ISO 4217 text format. - Date type (`date_value`) is in the ISO 8601 text format. - Datetime type (`datetime_value`) is in the ISO 8601 text format.
  final pulumi.Input<String>? text;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentEntityNormalizedValue].
  /// [addressValue] Postal address. See also: https://github.com/googleapis/googleapis/blob/master/google/type/postal_address.proto
  /// [booleanValue] Boolean value. Can be used for entities with binary values, or for checkboxes.
  /// [dateValue] Date value. Includes year, month, day. See also: https://github.com/googleapis/googleapis/blob/master/google/type/date.proto
  /// [datetimeValue] DateTime value. Includes date, time, and timezone. See also: https://github.com/googleapis/googleapis/blob/master/google/type/datetime.proto
  /// [floatValue] Float value.
  /// [integerValue] Integer value.
  /// [moneyValue] Money value. See also: https://github.com/googleapis/googleapis/blob/master/google/type/money.proto
  /// [text] Optional. An optional field to store a normalized string. For some entity types, one of respective `structured_value` fields may also be populated. Also not all the types of `structured_value` will be normalized. For example, some processors may not generate `float` or `integer` normalized text by default. Below are sample formats mapped to structured values. - Money/Currency type (`money_value`) is in the ISO 4217 text format. - Date type (`date_value`) is in the ISO 8601 text format. - Datetime type (`datetime_value`) is in the ISO 8601 text format.
  GoogleCloudDocumentaiV1DocumentEntityNormalizedValue({
    this.addressValue,
    this.booleanValue,
    this.dateValue,
    this.datetimeValue,
    this.floatValue,
    this.integerValue,
    this.moneyValue,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressValue': ?pulumi.Input.mapOptionalInputValue<GoogleTypePostalAddress, Map<String, dynamic>>(addressValue, (value) => value.toMap()),
      'booleanValue': ?booleanValue,
      'dateValue': ?pulumi.Input.mapOptionalInputValue<GoogleTypeDate, Map<String, dynamic>>(dateValue, (value) => value.toMap()),
      'datetimeValue': ?pulumi.Input.mapOptionalInputValue<GoogleTypeDateTime, Map<String, dynamic>>(datetimeValue, (value) => value.toMap()),
      'floatValue': ?floatValue,
      'integerValue': ?integerValue,
      'moneyValue': ?pulumi.Input.mapOptionalInputValue<GoogleTypeMoney, Map<String, dynamic>>(moneyValue, (value) => value.toMap()),
      'text': ?text,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentEntityNormalizedValue.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentEntityNormalizedValue(
      addressValue: map['addressValue'] == null ? null : (GoogleTypePostalAddress.fromMap((map['addressValue'] as Map).cast<String, dynamic>())).input(),
      booleanValue: map['booleanValue'] == null ? null : (map['booleanValue'] as bool).input(),
      dateValue: map['dateValue'] == null ? null : (GoogleTypeDate.fromMap((map['dateValue'] as Map).cast<String, dynamic>())).input(),
      datetimeValue: map['datetimeValue'] == null ? null : (GoogleTypeDateTime.fromMap((map['datetimeValue'] as Map).cast<String, dynamic>())).input(),
      floatValue: map['floatValue'] == null ? null : (map['floatValue'] as double).input(),
      integerValue: map['integerValue'] == null ? null : (map['integerValue'] as int).input(),
      moneyValue: map['moneyValue'] == null ? null : (GoogleTypeMoney.fromMap((map['moneyValue'] as Map).cast<String, dynamic>())).input(),
      text: map['text'] == null ? null : (map['text'] as String).input(),
    );
  }
}

