// ignore_for_file: unused_element, unnecessary_cast

import 'google_type_date_response.dart';
import 'google_type_date_time_response.dart';
import 'google_type_money_response.dart';
import 'google_type_postal_address_response.dart';

/// Parsed and normalized entity value.
class GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse {
  /// Postal address. See also: https://github.com/googleapis/googleapis/blob/master/google/type/postal_address.proto
  final GoogleTypePostalAddressResponse addressValue;
  /// Boolean value. Can be used for entities with binary values, or for checkboxes.
  final bool booleanValue;
  /// Date value. Includes year, month, day. See also: https://github.com/googleapis/googleapis/blob/master/google/type/date.proto
  final GoogleTypeDateResponse dateValue;
  /// DateTime value. Includes date, time, and timezone. See also: https://github.com/googleapis/googleapis/blob/master/google/type/datetime.proto
  final GoogleTypeDateTimeResponse datetimeValue;
  /// Float value.
  final double floatValue;
  /// Integer value.
  final int integerValue;
  /// Money value. See also: https://github.com/googleapis/googleapis/blob/master/google/type/money.proto
  final GoogleTypeMoneyResponse moneyValue;
  /// Optional. An optional field to store a normalized string. For some entity types, one of respective `structured_value` fields may also be populated. Also not all the types of `structured_value` will be normalized. For example, some processors may not generate `float` or `integer` normalized text by default. Below are sample formats mapped to structured values. - Money/Currency type (`money_value`) is in the ISO 4217 text format. - Date type (`date_value`) is in the ISO 8601 text format. - Datetime type (`datetime_value`) is in the ISO 8601 text format.
  final String text;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse].
  /// [addressValue] Postal address. See also: https://github.com/googleapis/googleapis/blob/master/google/type/postal_address.proto
  /// [booleanValue] Boolean value. Can be used for entities with binary values, or for checkboxes.
  /// [dateValue] Date value. Includes year, month, day. See also: https://github.com/googleapis/googleapis/blob/master/google/type/date.proto
  /// [datetimeValue] DateTime value. Includes date, time, and timezone. See also: https://github.com/googleapis/googleapis/blob/master/google/type/datetime.proto
  /// [floatValue] Float value.
  /// [integerValue] Integer value.
  /// [moneyValue] Money value. See also: https://github.com/googleapis/googleapis/blob/master/google/type/money.proto
  /// [text] Optional. An optional field to store a normalized string. For some entity types, one of respective `structured_value` fields may also be populated. Also not all the types of `structured_value` will be normalized. For example, some processors may not generate `float` or `integer` normalized text by default. Below are sample formats mapped to structured values. - Money/Currency type (`money_value`) is in the ISO 4217 text format. - Date type (`date_value`) is in the ISO 8601 text format. - Datetime type (`datetime_value`) is in the ISO 8601 text format.
  GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse({
    required this.addressValue,
    required this.booleanValue,
    required this.dateValue,
    required this.datetimeValue,
    required this.floatValue,
    required this.integerValue,
    required this.moneyValue,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressValue': addressValue.toMap(),
      'booleanValue': booleanValue,
      'dateValue': dateValue.toMap(),
      'datetimeValue': datetimeValue.toMap(),
      'floatValue': floatValue,
      'integerValue': integerValue,
      'moneyValue': moneyValue.toMap(),
      'text': text,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse(
      addressValue: GoogleTypePostalAddressResponse.fromMap((map['addressValue'] as Map).cast<String, dynamic>()),
      booleanValue: map['booleanValue'] as bool,
      dateValue: GoogleTypeDateResponse.fromMap((map['dateValue'] as Map).cast<String, dynamic>()),
      datetimeValue: GoogleTypeDateTimeResponse.fromMap((map['datetimeValue'] as Map).cast<String, dynamic>()),
      floatValue: map['floatValue'] as double,
      integerValue: map['integerValue'] as int,
      moneyValue: GoogleTypeMoneyResponse.fromMap((map['moneyValue'] as Map).cast<String, dynamic>()),
      text: map['text'] as String,
    );
  }
}

