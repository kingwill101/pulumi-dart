import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Specifies how to match against the value of the header. If not specified, a default value of EXACT is used.
enum GrpcRouteHeaderMatchTypeNetworkservicesV1beta1 implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  exact("EXACT"),
  regularExpression("REGULAR_EXPRESSION");

  const GrpcRouteHeaderMatchTypeNetworkservicesV1beta1(this.wireValue);
  @override
  final String wireValue;

  static GrpcRouteHeaderMatchTypeNetworkservicesV1beta1 fromValue(String value) {
    for (final item in GrpcRouteHeaderMatchTypeNetworkservicesV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GrpcRouteHeaderMatchTypeNetworkservicesV1beta1 value: $value');
  }
}
