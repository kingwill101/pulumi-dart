// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_value_response.dart';

/// The set of columns' values that share the same ldiversity value
class GooglePrivacyDlpV2KAnonymityEquivalenceClassResponse {
  /// Size of the equivalence class, for example number of rows with the above set of values.
  final pulumi.Input<String> equivalenceClassSize;
  /// Set of values defining the equivalence class. One value per quasi-identifier column in the original KAnonymity metric message. The order is always the same as the original request.
  final pulumi.Input<List<GooglePrivacyDlpV2ValueResponse>> quasiIdsValues;

  /// Creates a new [GooglePrivacyDlpV2KAnonymityEquivalenceClassResponse].
  /// [equivalenceClassSize] Size of the equivalence class, for example number of rows with the above set of values.
  /// [quasiIdsValues] Set of values defining the equivalence class. One value per quasi-identifier column in the original KAnonymity metric message. The order is always the same as the original request.
  GooglePrivacyDlpV2KAnonymityEquivalenceClassResponse({
    required this.equivalenceClassSize,
    required this.quasiIdsValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'equivalenceClassSize': equivalenceClassSize,
      'quasiIdsValues': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2ValueResponse>, List<Map<String, dynamic>>>(quasiIdsValues, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2ValueResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GooglePrivacyDlpV2KAnonymityEquivalenceClassResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2KAnonymityEquivalenceClassResponse(
      equivalenceClassSize: pulumi.Input.fromValue(map['equivalenceClassSize'] as String),
      quasiIdsValues: pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2ValueResponse>(map['quasiIdsValues']!, (value) => GooglePrivacyDlpV2ValueResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

