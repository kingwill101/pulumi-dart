import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Specifies how to match against the name. If not specified, a default value of "EXACT" is used.
enum GrpcRouteMethodMatchType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  exact("EXACT"),
  regularExpression("REGULAR_EXPRESSION");

  const GrpcRouteMethodMatchType(this.wireValue);
  @override
  final String wireValue;

  static GrpcRouteMethodMatchType fromValue(String value) {
    for (final item in GrpcRouteMethodMatchType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GrpcRouteMethodMatchType value: $value');
  }
}
