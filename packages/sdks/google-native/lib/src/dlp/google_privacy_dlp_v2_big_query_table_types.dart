// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_table_types_types_item.dart';

/// The types of BigQuery tables supported by Cloud DLP.
class GooglePrivacyDlpV2BigQueryTableTypes {
  /// A set of BigQuery table types.
  final pulumi.Input<List<GooglePrivacyDlpV2BigQueryTableTypesTypesItem>>?
  types;

  /// Creates a new [GooglePrivacyDlpV2BigQueryTableTypes].
  /// [types] A set of BigQuery table types.
  GooglePrivacyDlpV2BigQueryTableTypes({this.types});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'types':
          ?pulumi.Input.mapOptionalInputValue<
            List<GooglePrivacyDlpV2BigQueryTableTypesTypesItem>,
            List<String>
          >(
            types,
            (value) =>
                pulumi.Input.encodeList<
                  GooglePrivacyDlpV2BigQueryTableTypesTypesItem,
                  String
                >(value, (value) => value.wireValue),
          ),
    };
  }

  factory GooglePrivacyDlpV2BigQueryTableTypes.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2BigQueryTableTypes(
      types: (() {
        final guardedValue = map['types'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<GooglePrivacyDlpV2BigQueryTableTypesTypesItem>(
            guardedValue,
            (value) => GooglePrivacyDlpV2BigQueryTableTypesTypesItem.fromValue(
              value as String,
            ),
          ),
        );
      })(),
    );
  }
}
