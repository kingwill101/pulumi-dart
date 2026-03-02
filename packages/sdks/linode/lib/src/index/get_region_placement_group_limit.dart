// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionPlacementGroupLimit {
  /// The maximum number of Linodes allowed to be assigned to a placement group in this region.
  final pulumi.Input<int> maximumLinodesPerPg;
  /// The maximum number of placement groups allowed for the current user in this region.
  final pulumi.Input<int> maximumPgsPerCustomer;

  /// Creates a new [GetRegionPlacementGroupLimit].
  /// [maximumLinodesPerPg] The maximum number of Linodes allowed to be assigned to a placement group in this region.
  /// [maximumPgsPerCustomer] The maximum number of placement groups allowed for the current user in this region.
  GetRegionPlacementGroupLimit({
    required this.maximumLinodesPerPg,
    required this.maximumPgsPerCustomer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumLinodesPerPg': maximumLinodesPerPg,
      'maximumPgsPerCustomer': maximumPgsPerCustomer,
    };
  }

  factory GetRegionPlacementGroupLimit.fromMap(Map<String, dynamic> map) {
    return GetRegionPlacementGroupLimit(
      maximumLinodesPerPg: (map['maximumLinodesPerPg'] as int).input(),
      maximumPgsPerCustomer: (map['maximumPgsPerCustomer'] as int).input(),
    );
  }
}

