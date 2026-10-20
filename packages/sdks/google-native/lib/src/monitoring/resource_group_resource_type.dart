import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource type of the group members.
enum ResourceGroupResourceType implements pulumi.PulumiEnum<String> {
  resourceTypeUnspecified("RESOURCE_TYPE_UNSPECIFIED"),
  instance("INSTANCE"),
  awsElbLoadBalancer("AWS_ELB_LOAD_BALANCER");

  const ResourceGroupResourceType(this.wireValue);
  @override
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
