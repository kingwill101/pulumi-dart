// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_squota_infos_quota_info_dimensions_info_detail.dart';

class GetSQuotaInfosQuotaInfoDimensionsInfo {
  /// The applicable regions or zones of this dimensions info. The field will be set to `['global']` for quotas that are not per region or per zone. Otherwise, it will be set to the list of locations this dimension info is applicable to.
  final pulumi.Input<List<String>> applicableLocations;
  /// The quota details for a map of dimensions.
  final pulumi.Input<List<GetSQuotaInfosQuotaInfoDimensionsInfoDetail>> details;
  /// The map of dimensions for this dimensions info. The key of a map entry is "region", "zone" or the name of a service specific dimension, and the value of a map entry is the value of the dimension. If a dimension does not appear in the map of dimensions, the dimensions info applies to all the dimension values except for those that have another DimenisonInfo instance configured for the specific value. Example: {"provider" : "Foo Inc"} where "provider" is a service specific dimension of a quota.
  final pulumi.Input<Map<String, String>> dimensions;

  /// Creates a new [GetSQuotaInfosQuotaInfoDimensionsInfo].
  /// [applicableLocations] The applicable regions or zones of this dimensions info. The field will be set to `['global']` for quotas that are not per region or per zone. Otherwise, it will be set to the list of locations this dimension info is applicable to.
  /// [details] The quota details for a map of dimensions.
  /// [dimensions] The map of dimensions for this dimensions info. The key of a map entry is "region", "zone" or the name of a service specific dimension, and the value of a map entry is the value of the dimension. If a dimension does not appear in the map of dimensions, the dimensions info applies to all the dimension values except for those that have another DimenisonInfo instance configured for the specific value. Example: {"provider" : "Foo Inc"} where "provider" is a service specific dimension of a quota.
  const GetSQuotaInfosQuotaInfoDimensionsInfo({
    required this.applicableLocations,
    required this.details,
    required this.dimensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicableLocations': applicableLocations,
      'details': pulumi.Input.mapInputValue<List<GetSQuotaInfosQuotaInfoDimensionsInfoDetail>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<GetSQuotaInfosQuotaInfoDimensionsInfoDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dimensions': dimensions,
    };
  }

  factory GetSQuotaInfosQuotaInfoDimensionsInfo.fromMap(Map<String, dynamic> map) {
    return GetSQuotaInfosQuotaInfoDimensionsInfo(
      applicableLocations: pulumi.Input.fromValue((map['applicableLocations'] as List).cast<String>()),
      details: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSQuotaInfosQuotaInfoDimensionsInfoDetail>(map['details']!, (value) => GetSQuotaInfosQuotaInfoDimensionsInfoDetail.fromMap((value as Map).cast<String, dynamic>()))),
      dimensions: pulumi.Input.fromValue((map['dimensions'] as Map).cast<String, String>()),
    );
  }
}
