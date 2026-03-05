// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSQuotaInfosQuotaInfoDimensionsInfoDetail {
  /// The value currently in effect and being enforced.
  final pulumi.Input<String> value;

  /// Creates a new [GetSQuotaInfosQuotaInfoDimensionsInfoDetail].
  /// [value] The value currently in effect and being enforced.
  GetSQuotaInfosQuotaInfoDimensionsInfoDetail({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory GetSQuotaInfosQuotaInfoDimensionsInfoDetail.fromMap(Map<String, dynamic> map) {
    return GetSQuotaInfosQuotaInfoDimensionsInfoDetail(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

