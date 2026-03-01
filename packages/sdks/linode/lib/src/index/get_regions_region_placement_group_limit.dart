// ignore_for_file: unused_element, unnecessary_cast


class GetRegionsRegionPlacementGroupLimit {
  /// The maximum number of Linodes allowed to be assigned to a placement group in this region.
  final int maximumLinodesPerPg;
  /// The maximum number of placement groups allowed for the current user in this region.
  final int maximumPgsPerCustomer;

  /// Creates a new [GetRegionsRegionPlacementGroupLimit].
  /// [maximumLinodesPerPg] The maximum number of Linodes allowed to be assigned to a placement group in this region.
  /// [maximumPgsPerCustomer] The maximum number of placement groups allowed for the current user in this region.
  GetRegionsRegionPlacementGroupLimit({
    required this.maximumLinodesPerPg,
    required this.maximumPgsPerCustomer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumLinodesPerPg': maximumLinodesPerPg,
      'maximumPgsPerCustomer': maximumPgsPerCustomer,
    };
  }

  factory GetRegionsRegionPlacementGroupLimit.fromMap(Map<String, dynamic> map) {
    return GetRegionsRegionPlacementGroupLimit(
      maximumLinodesPerPg: map['maximumLinodesPerPg'] as int,
      maximumPgsPerCustomer: map['maximumPgsPerCustomer'] as int,
    );
  }
}

