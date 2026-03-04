/// The resource type of the group members.
enum ResourceGroupResourceType {
  resourceTypeUnspecified("RESOURCE_TYPE_UNSPECIFIED"),
  instance("INSTANCE"),
  awsElbLoadBalancer("AWS_ELB_LOAD_BALANCER");

  const ResourceGroupResourceType(this.wireValue);
  final String wireValue;

  static ResourceGroupResourceType fromValue(String value) {
    for (final item in ResourceGroupResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceGroupResourceType value: $value');
  }
}
