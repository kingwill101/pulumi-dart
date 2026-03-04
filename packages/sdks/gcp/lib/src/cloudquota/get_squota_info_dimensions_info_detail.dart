// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSQuotaInfoDimensionsInfoDetail {
  /// The value currently in effect and being enforced.
  final pulumi.Input<String> value;

  /// Creates a new [GetSQuotaInfoDimensionsInfoDetail].
  /// [value] The value currently in effect and being enforced.
  GetSQuotaInfoDimensionsInfoDetail({required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory GetSQuotaInfoDimensionsInfoDetail.fromMap(Map<String, dynamic> map) {
    return GetSQuotaInfoDimensionsInfoDetail(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
