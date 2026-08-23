/// Traffic VPC egress settings. If not provided, it defaults to PRIVATE_RANGES_ONLY.
enum GoogleCloudRunV2VpcAccessEgress {
  vpcEgressUnspecified("VPC_EGRESS_UNSPECIFIED"),
  allTraffic("ALL_TRAFFIC"),
  privateRangesOnly("PRIVATE_RANGES_ONLY");

  const GoogleCloudRunV2VpcAccessEgress(this.wireValue);
  final String wireValue;

  static GoogleCloudRunV2VpcAccessEgress fromValue(String value) {
    for (final item in GoogleCloudRunV2VpcAccessEgress.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudRunV2VpcAccessEgress value: $value');
  }
}
