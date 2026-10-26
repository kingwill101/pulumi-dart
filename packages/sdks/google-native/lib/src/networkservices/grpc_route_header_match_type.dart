import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Specifies how to match against the value of the header. If not specified, a default value of EXACT is used.
enum GrpcRouteHeaderMatchType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  exact("EXACT"),
  regularExpression("REGULAR_EXPRESSION");

  const GrpcRouteHeaderMatchType(this.wireValue);
  @override
  final String wireValue;

  static GrpcRouteHeaderMatchType fromValue(String value) {
    for (final item in GrpcRouteHeaderMatchType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GrpcRouteHeaderMatchType value: $value');
  }
}
