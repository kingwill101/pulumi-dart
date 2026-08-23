// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_date_response.dart';
import 'google_type_date_time_response.dart';
import 'google_type_money_response.dart';
import 'google_type_postal_address_response.dart';

/// Parsed and normalized entity value.
class GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse {
  /// Postal address. See also: https://github.com/googleapis/googleapis/blob/master/google/type/postal_address.proto
  final pulumi.Input<GoogleTypePostalAddressResponse> addressValue;
  /// Boolean value. Can be used for entities with binary values, or for checkboxes.
  final pulumi.Input<bool> booleanValue;
  /// Date value. Includes year, month, day. See also: https://github.com/googleapis/googleapis/blob/master/google/type/date.proto
  final pulumi.Input<GoogleTypeDateResponse> dateValue;
  /// DateTime value. Includes date, time, and timezone. See also: https://github.com/googleapis/googleapis/blob/master/google/type/datetime.proto
  final pulumi.Input<GoogleTypeDateTimeResponse> datetimeValue;
  /// Float value.
  final pulumi.Input<double> floatValue;
  /// Integer value.
  final pulumi.Input<int> integerValue;
  /// Money value. See also: https://github.com/googleapis/googleapis/blob/master/google/type/money.proto
  final pulumi.Input<GoogleTypeMoneyResponse> moneyValue;
  /// Optional. An optional field to store a normalized string. For some entity types, one of respective `structured_value` fields may also be populated. Also not all the types of `structured_value` will be normalized. For example, some processors may not generate `float` or `integer` normalized text by default. Below are sample formats mapped to structured values. - Money/Currency type (`money_value`) is in the ISO 4217 text format. - Date type (`date_value`) is in the ISO 8601 text format. - Datetime type (`datetime_value`) is in the ISO 8601 text format.
  final pulumi.Input<String> text;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse].
  /// [addressValue] Postal address. See also: https://github.com/googleapis/googleapis/blob/master/google/type/postal_address.proto
  /// [booleanValue] Boolean value. Can be used for entities with binary values, or for checkboxes.
  /// [dateValue] Date value. Includes year, month, day. See also: https://github.com/googleapis/googleapis/blob/master/google/type/date.proto
  /// [datetimeValue] DateTime value. Includes date, time, and timezone. See also: https://github.com/googleapis/googleapis/blob/master/google/type/datetime.proto
  /// [floatValue] Float value.
  /// [integerValue] Integer value.
  /// [moneyValue] Money value. See also: https://github.com/googleapis/googleapis/blob/master/google/type/money.proto
  /// [text] Optional. An optional field to store a normalized string. For some entity types, one of respective `structured_value` fields may also be populated. Also not all the types of `structured_value` will be normalized. For example, some processors may not generate `float` or `integer` normalized text by default. Below are sample formats mapped to structured values. - Money/Currency type (`money_value`) is in the ISO 4217 text format. - Date type (`date_value`) is in the ISO 8601 text format. - Datetime type (`datetime_value`) is in the ISO 8601 text format.
  const GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse({
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
      'addressValue': pulumi.Input.mapInputValue<GoogleTypePostalAddressResponse, Map<String, dynamic>>(addressValue, (value) => value.toMap()),
      'booleanValue': booleanValue,
      'dateValue': pulumi.Input.mapInputValue<GoogleTypeDateResponse, Map<String, dynamic>>(dateValue, (value) => value.toMap()),
      'datetimeValue': pulumi.Input.mapInputValue<GoogleTypeDateTimeResponse, Map<String, dynamic>>(datetimeValue, (value) => value.toMap()),
      'floatValue': floatValue,
      'integerValue': integerValue,
      'moneyValue': pulumi.Input.mapInputValue<GoogleTypeMoneyResponse, Map<String, dynamic>>(moneyValue, (value) => value.toMap()),
      'text': text,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse(
      addressValue: pulumi.Input.fromValue(GoogleTypePostalAddressResponse.fromMap((map['addressValue']! as Map).cast<String, dynamic>())),
      booleanValue: pulumi.Input.fromValue(map['booleanValue'] as bool),
      dateValue: pulumi.Input.fromValue(GoogleTypeDateResponse.fromMap((map['dateValue']! as Map).cast<String, dynamic>())),
      datetimeValue: pulumi.Input.fromValue(GoogleTypeDateTimeResponse.fromMap((map['datetimeValue']! as Map).cast<String, dynamic>())),
      floatValue: pulumi.Input.fromValue(map['floatValue'] as double),
      integerValue: pulumi.Input.fromValue(map['integerValue'] as int),
      moneyValue: pulumi.Input.fromValue(GoogleTypeMoneyResponse.fromMap((map['moneyValue']! as Map).cast<String, dynamic>())),
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
